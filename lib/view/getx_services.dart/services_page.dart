import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxstate/view/getx_services.dart/home_services.dart';

class ServicesPage extends GetView<HomeServices> {

  var homeServices = Get.put(HomeServices());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Services'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeServices>(
                 init: controller,
                builder: (homeServices) {
              return Text(
                '${homeServices.counter.value}',
                style: const TextStyle(fontSize: 50),
              );
            }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  homeServices.incremnet();
                },
                child: const Icon(
                  Icons.exposure_plus_1_sharp,
                  size: 40,
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  homeServices.decremnet();
                },
                child:const Icon(
                  Icons.exposure_minus_1_sharp,
                  size: 40,
                )),
          ],
        ),
      ),
    );
  }
}
