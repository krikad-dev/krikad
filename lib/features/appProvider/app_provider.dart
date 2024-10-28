import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_update/in_app_update.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    checkAppUpdate();
  }

  void checkAppUpdate() async {
    if (kIsWeb) {
      return;
    }

    if (!Platform.isAndroid) {
      return;
    }

    final androidInfo = await DeviceInfoPlugin().androidInfo;
    if (!androidInfo.isPhysicalDevice || kDebugMode) {
      return;
    }

    try {
      InAppUpdate.checkForUpdate().then((info) {
        if (info.updateAvailability != UpdateAvailability.updateAvailable) {
          return;
        }

        final priority = info.updatePriority;

        if (priority == 5) {
          InAppUpdate.performImmediateUpdate();
        } else {
          InAppUpdate.startFlexibleUpdate().then((_) {
            InAppUpdate.completeFlexibleUpdate().then((_) {
              DjangoflowAppSnackbar.showInfo('New version installed successfully');
            }).catchError((e) {
              DjangoflowAppSnackbar.showError('Update failed with error code: $e');
            });
          }).catchError((e) {
            DjangoflowAppSnackbar.showError('Update failed with error code: $e');
          });
        }
      });
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
