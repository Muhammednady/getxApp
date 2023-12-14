import 'package:get/get.dart';
import 'package:getxstate/core/cach_helper.dart';

//GetxServices -----------> GetxController

class HomeServices extends GetxService{

RxInt counter = CachHelper.sharedPref!.getInt('value')!.obs ?? 0.obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
void incremnet(){
  //counter.value++;
  CachHelper.sharedPref!.setInt('value', counter.value++ );
}

void decremnet(){
  //counter.value--;
  CachHelper.sharedPref!.setInt('value', counter.value-- );
}


 }