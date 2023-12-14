import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/core/cach_helper.dart';
import 'package:getxstate/view/login_home_language/language_login_controller.dart';

class LogIN extends GetView<LanguageController> {
  const LogIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('log_in'.tr),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          
          // GetStorage
          CachHelper.sharedPref!.setString("key" , 'login');

          Get.offNamed('/home');
        }, child:  Text('log_in'.tr)),
      ),
    );
  }
}
