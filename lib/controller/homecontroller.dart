import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController I = Get.put(HomeController());

  // RxInt counter = 0.obs;
  int count1 = 0;
  int count2 = 0;

  void increment1() {
    count1++;
    update();
  }

  void decrement1() {
    count1--;
    update();
  }

  void increment2() {
    count2++;
    update();
  }

  void decrement2() {
    count2--;
    update();
  }

  int get sum => count1 + count2;
}
