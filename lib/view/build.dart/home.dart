// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getxstate/controller/homecontroller.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.I;
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Page'),),
//       body: Center(
//         child: Obx( //Streaming
//           () => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: (){
//                controller.increment();//.obs when changing
//             },child:const Text('+')),
//             const SizedBox(height: 30,),

//             Text('${controller.counter.value}'),

//             const SizedBox(height: 30,),
//             ElevatedButton(onPressed: (){
//               controller.decrement();
//             },child:const Text('-')),
//             const SizedBox(height: 30,),
            
//             ElevatedButton(onPressed: (){
//             Navigator.of(context).maybePop();
//             //  Navigator.of(context).pop();
//              //Get.back();
//             },child:const Text('back')),
//           ],
//         ),
          
//           )
//       ),
//     );
//   }
// }