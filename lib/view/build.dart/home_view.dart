import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxstate/controller/homecontroller.dart';

class HomeView extends GetView<HomeController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Google Map')),
      body: Center(
       // child: GoogleMap,
      ),
    );
  }

}