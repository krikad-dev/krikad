import 'dart:convert';
import 'dart:developer';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_starter/configurations/network/api_constants.dart';
import 'package:flutter_starter/configurations/network/api_response.dart';
import 'package:flutter_starter/configurations/network/network_manager.dart';
import 'package:flutter_starter/configurations/network/network_request.dart';
import 'package:flutter_starter/features/auth/authentication.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final FirebaseAuth _auth;
  int? _resendToken;
  String? _verificationId;
  ConfirmationResult? _confirmationResult;

  AuthRepo(this._auth);

  // Send OTP for web
  Future<void> sentOtpForWeb(String phoneNo) async {
    try {
      _confirmationResult = await _auth.signInWithPhoneNumber(
        '+91${phoneNo.trim()}',
      );
      log(_confirmationResult.toString());
    } catch (e) {
      log('Error sending OTP for web: $e');
    }
  }

  // Send OTP for mobile
  Future<void> sendOtp(
    String phoneNo,
    Function(int resendToken) isCodeSent,
    VoidCallback onError,
  ) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+91${phoneNo.trim()}',
        timeout: const Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          final userCredentials = await _auth.signInWithCredential(phoneAuthCredential);
          handlePostLogin(userCredentials);
        },
        verificationFailed: (FirebaseAuthException error) {
          onError();
          throw error;
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          _resendToken = forceResendingToken;
          _verificationId = verificationId;
          if (_resendToken != null) {
            isCodeSent(_resendToken!);
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
        forceResendingToken: _resendToken,
      );
    } catch (e) {
      log('Error sending OTP: $e');
    }
  }

  // Verify OTP
  Future<void> verifyOtp(String otp) async {
    try {
      if (kIsWeb) {
        final userCredential = await _confirmationResult!.confirm(otp);
        handlePostLogin(userCredential);
        return;
      }
      final credential = PhoneAuthProvider.credential(verificationId: _verificationId ?? '', smsCode: otp);
      final userCredential = await _auth.signInWithCredential(credential);
      handlePostLogin(userCredential);
    } catch (e) {
      log('Error verifying OTP: $e');
    }
  }

  // Handle post verification actions for web
  Future<void> handlePostVerificationWeb(UserCredential userCredential) async {
    if (userCredential.user != null) {
      String? token = await _auth.currentUser!.getIdToken();
      final user = await getUserDetails();
      if (user == null) {
        return;
      }
      AuthCubit.instance.login(user);
    }
  }

  // Handle post login actions
  Future<void> handlePostLogin(UserCredential userCredential) async {
    if (userCredential.user != null) {
      String? token = await _auth.currentUser!.getIdToken();
      final user = await getUserDetails();
      if (user == null) {
        return;
      }
      AuthCubit.instance.login(user);
    }
  }

  // Logout
  Future<void> logout() => _auth.signOut();

  // Get user details
  Future<AppUser?> getUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');

    if (userJson != null) {
      final Map<String, dynamic> userMap = json.decode(userJson);
      return AppUser.fromJson(userMap);
    } else {
      try {
        // WidgetsBinding.instance.addPostFrameCallback((_) {
        //   DjangoflowAppSnackbar.showInfo(
        //     'Loading User Details',
        //   );
        // });

        final request = NetworkRequest(
          usersUrl,
          RequestMethod.get,
          isAuthorized: true,
        );
        final result = await NetworkManager.instance.perform(request);
        if (result.status == Status.ok && result.response!.statusCode == 200) {
          final List<dynamic> usersList = result.data['data']['users'];
          final user = usersList.firstWhere(
            (user) => user['mobile_number'] == _auth.currentUser!.phoneNumber!.replaceFirst('+91', ''),
            orElse: () => null,
          );
          if (user != null) {
            final appUser = AppUser.fromJson(user);

            await prefs.setString('user', json.encode(appUser.toJson()));

            return appUser;
          } else {
            DjangoflowAppSnackbar.showError(
              'User not registered',
            );
            log("User with mobile number ${_auth.currentUser!.phoneNumber}, not found.");
          }
        }
      } catch (e) {
        log('Error fetching user details: $e');
      }
      return null;
    }
  }
}
