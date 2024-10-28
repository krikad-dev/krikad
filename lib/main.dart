import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/app_builder.dart';
import 'package:flutter_starter/configurations/network/application_error.dart';
import 'package:flutter_starter/l10n/language_provider.dart';
import 'package:flutter_starter/utils/extensions/app_dio_exception.dart';
import 'package:flutter_starter/utils/extensions/extensions.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'configurations/router/router.dart';
import 'features/appProvider/app_provider.dart';

Future<void> main() async {
  DjangoflowAppRunner.run(onException: (exception, stackTrace) {
    if (exception is FirebaseAuthException) {
      DjangoflowAppSnackbar.showError(exception.userFriendlyMessage);
    } else if (exception is DioException) {
      DjangoflowAppSnackbar.showError(exception.userFriendlyMessage);
    } else if (exception is ApplicationError) {
      DjangoflowAppSnackbar.showError(exception.errorMsg);
    } else {
      log(exception.toString(), stackTrace: stackTrace);
    }
  }, rootWidgetBuilder: (appBuilder) async {
    String? initialDeepLink;
    final appLinksRepository = AppLinksRepository();
    AppCubit.initialState = const AppState(
      themeMode: ThemeMode.light,
    );

    await Hive.initFlutter();

    
    await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
    );
    const fatalError = true;

    // Configure crashylytics
    // Non-async exceptions
    // FlutterError.onError = (errorDetails) {
    //   if (fatalError) {
    //     // If you want to record a "fatal" exception
    //     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    //     // ignore: dead_code
    //   } else {
    //     // If you want to record a "non-fatal" exception
    //     FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    //   }
    // };
    final router = AppRouter(navigatorKey: navigatorKey);
    if (!kIsWeb) {
      initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
    }
    final savedLocale = await LanguageProvider.getSavedLocale();

    return ChangeNotifierProvider(create: (_) {
      return LanguageProvider(savedLocale);
    }, builder: (context, child) {
      final provider = Provider.of<LanguageProvider>(context);

      return ChangeNotifierProvider<AppProvider>(create: (_) {
        return AppProvider();
      }, builder: (context, child) {
        Provider.of<AppProvider>(context);
        return CustomAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
          provider: provider,
        );
      });
    });
  });
}
