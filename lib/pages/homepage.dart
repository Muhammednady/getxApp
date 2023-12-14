import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/controller/homecontroller.dart';
import 'package:getxstate/pages/page1.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

    // void getController(){
    //   Get.lazyPut(() => HomeController(),fenix: true);

    // }
  @override
  Widget build(BuildContext context) {
   // getController();
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

           // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Page1()));

            //Navigator.of(context).pushNamed('/page1');
            // Get.to(()=>Page1());

            Get.toNamed('/page1');//push

            },child:const Text('page 1')),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
             Get.toNamed('/page2');//push and replacement
            },child:const Text('page 2')),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
               Get.toNamed('/page3');//push and removeUntil
            },child:const Text('page 3')),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
            Navigator.of(context).maybePop();
            //  Navigator.of(context).pop();
             //Get.back();
            },child:const Text('back')),
          ],
        ),
      ),

    );
  }
}