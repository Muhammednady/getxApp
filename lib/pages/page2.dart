import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getxstate/controller/homecontroller.dart';

class Page2 extends StatelessWidget {
   Page2({super.key});
  
 HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: GetBuilder<HomeController>(
          //init: HomeController(),
          builder: (xcontroller) {
          return Text('${xcontroller.count1}',style:const TextStyle(fontSize: 50 ),);
        }),
      ),
    );
  }
}
