import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstate/controller/homecontroller.dart';
import 'package:getxstate/core/cach_helper.dart';
import 'package:getxstate/view/getx_services.dart/services_page.dart';
import 'package:getxstate/view/login_home_language/language_login_controller.dart';
import 'package:getxstate/core/middleware_login.dart';
import 'package:getxstate/pages/homepage.dart';
import 'package:getxstate/pages/page1.dart';
import 'package:getxstate/pages/page2.dart';
import 'package:getxstate/pages/page3.dart';
import 'package:getxstate/view/build.dart/home.dart';
import 'package:getxstate/view/build.dart/home2.dart';
import 'package:getxstate/view/login_home_language/login.dart';
import 'package:getxstate/view/login_home_language/login_home.dart';
import 'package:getxstate/view/login_home_language/my_locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();

  CachHelper.sharedPref!.setInt('value', 0 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController controller = Get.put(LanguageController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/page1':(context)=> const Page1(),
      //   '/page2':(context)=> const Page2(),
      //   '/page3':(context)=> const Page3(),
      // },
      translations: MyLocale(),

      locale: LanguageController.I.getInitialLang(),

     // initialRoute: getInitialPage(),
      getPages: [
        GetPage(name: '/', page: () => const LogIN() ),
        GetPage(name: '/home', page: () =>  LanguageHome()),
        GetPage(name: '/page3', page: () => const Page3()),

        // GetPage(name: '/page1', page: () => Page1()),
        // GetPage(name: '/page2', page: () => Page2()),
        // GetPage(name: '/page3', page: () => const Page3()),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: ServicesPage(),
     // initialBinding: MyBindings(),
    );
  }

  Locale? getPassedLocale({String? langCode}) {
    Locale locale = Locale(langCode ?? 'en');

    return locale;
  }
}

String getInitialPage(){
  if(CachHelper.sharedPref!.getString('key') != null){
    return '/home';
  }
  return '/';
}

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());

    // Get.put(HomeController() , permanent: true);

    // Get.lazyPut(() => HomeController());

    // Get.lazyPut(() => HomeController(),fenix: true);
  }
}
