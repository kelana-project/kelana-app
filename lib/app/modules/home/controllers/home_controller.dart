import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelana_app/app/routes/app_pages.dart';
import 'package:kelana_app/core/local/get_storage.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;
  final isDark = Get.isPlatformDarkMode.obs;
  final initialIcon = 0.obs;

  @override
  void onInit() {
    isDark.value =
        GetStorageManager.getStorage.read(GetStorageManager.darkmode) ??
            Get.isPlatformDarkMode;
    if (isDark.value) {
      initialIcon.value = 0;
    } else {
      initialIcon.value = 1;
    }

    super.onInit();
  }

  @override
  void onClose() {}

  void changeTheme(bool val) {
    Get.changeThemeMode(val ? ThemeMode.dark : ThemeMode.light);
    GetStorageManager.getStorage.write(GetStorageManager.darkmode, val);
    isDark.value = val;
  }

  toPage2() {
    Get.toNamed(Routes.read);
  }

  void changeTabIndex(int index) {
    if (index == 3) {
      Get.defaultDialog();
    } else {
      tabIndex.value = index;
    }
  }
}
