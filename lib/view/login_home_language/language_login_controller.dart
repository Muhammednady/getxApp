import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/core/cach_helper.dart';

class LanguageController extends GetxController {
  static LanguageController I = Get.put(LanguageController());

  getMyLocale() {
    return const Locale('en');
  }

  void changeLanguage({String? code}) {
    Get.updateLocale(Locale(code!));

    CachHelper.sharedPref!.setString('code', code);
  }

  Locale? getInitialLang() {
    return CachHelper.sharedPref!.getString('code') == null
        ? Get.deviceLocale
        : Locale(CachHelper.sharedPref!.getString('code')!);
  }
}
