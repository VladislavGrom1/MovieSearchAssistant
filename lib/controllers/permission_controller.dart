import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionController {
  late PermissionStatus permissionStatus;
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  Future<bool> checkPermissionManageStorage() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        final sdkVersion = androidInfo.version.sdkInt;
        if (sdkVersion >= 33) {
          permissionStatus = await Permission.accessMediaLocation.request();
          return permissionStatus.isGranted;
        } else {
          permissionStatus = await Permission.storage.request();
          return permissionStatus.isGranted;
        }
      } else {
        // TODO: Проверка и запрос разрешений для IOS
        throw UnimplementedError('Проверка разрешений для управления хранилищем не реализована для iOS');
      }
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }
}