// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/navigator.dart';
// import 'package:get/get.dart';
// import 'package:getxstate/core/cach_helper.dart';

// class MyMiddleWare implements GetMiddleware{
//   @override
//   int? priority = 1;
// @override
//   RouteSettings? redirect(String? route) {
//     if(CachHelper.sharedPref!.getString('key')!= null){
      
//          return const RouteSettings(name: '/home');
//     }
//      return null;

//   }

//   @override
//   List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
//     // TODO: implement onBindingsStart
//     throw UnimplementedError();
//   }

//   @override
//   GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
//     // TODO: implement onPageBuildStart
//     throw UnimplementedError();
//   }

//   @override
//   Widget onPageBuilt(Widget page) {
//     // TODO: implement onPageBuilt
//     throw UnimplementedError();
//   }

//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     return GetPage(name: name, page: page)
//   }

//   @override
//   void onPageDispose() {
//     // TODO: implement onPageDispose
//   }

  
//   @override
//   Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
//     // TODO: implement redirectDelegate
//     throw UnimplementedError();
//   }

// }