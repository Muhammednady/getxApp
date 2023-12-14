import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/controller/homecontroller.dart';

class Page1 extends StatelessWidget {
   Page1({super.key});

// HomeController controller = Get.put(HomeController());
 HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
   // var controller = HomeController.I;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: GetBuilder<HomeController>(
                    builder: (xcontroller) {
                     // print('Rebuild count1');
                      return Text('${xcontroller.count1}');
                    }),
              ),
          
              Center(
                child: GetBuilder<HomeController>(
                    builder: (xcontroller){
                     // print('Rebuild count2');
                      return Text('${xcontroller.count2}');
                    }),
              ),
              
              Center(
                child: GetBuilder<HomeController>(//Obx
                    builder: (xcontroller) {
                     // print('Rebuild sum');
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        buildw(),
                        const SizedBox(height: 10,),
                        Text('${xcontroller.sum}')
                      ],);
                    }),
              ),

             GetBuilder(
              init: HomeController(),
              builder:(controller)=> Column(children: [
               const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){ 
                  controller.increment1(); //count1.value.obs changes //once
              }, child: const Text('+1')),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                  controller.decrement1();
              }, child: const Text('-1')),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){ 
                  controller.increment2();//count2.value.obs changes
              }, child: const Text('+2')),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                 controller.decrement2();
              }, child: const Text('-2')),
             ],))
            ],
          ),
        ));
  }

  Widget buildw(){
  //  print('=============Getx rebuilds All==============');
    return Text('============================');
  }
}
