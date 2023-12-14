import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/core/constants.dart';
import 'package:getxstate/core/cach_helper.dart';
import 'package:getxstate/view/login_home_language/language_login_controller.dart';


class LanguageHome extends GetView<LanguageController> {
   LanguageHome({super.key});
 //LanguageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('home_page'.tr),
      ),
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {

        LanguageController.I.changeLanguage(code: ENGLISH);

        }, child:  Text('1'.tr)),

        const SizedBox(height: 20,),

        ElevatedButton(onPressed: () {
           
        LanguageController.I.changeLanguage(code: ARABIC);


        }, child:  Text('2'.tr)),

          const SizedBox(height: 20,),

          ElevatedButton(onPressed: () {
          Get.offNamed('/');
          CachHelper.sharedPref!.remove('key');
        }, child:  Text('sign_out'.tr)),
        ],
      ))
    );
  }
}