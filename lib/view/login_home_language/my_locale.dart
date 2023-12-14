import 'package:get/get.dart';

class MyLocale extends Translations{

//LanguageController


  @override
  Map<String, Map<String, String>> get keys => {
    'en':{
      'home_page':'Home Page',

       'sign_out':'Sign out',

      'log_in':'Log In',

      '1':'English',

       '2':'Arabic'
    },
    'ar':{

      'home_page':'الصفحة الرئيسية',
       'sign_out':'تسجيل خروج',
       
      'log_in':'تسجيل دخول',
      
      '1':'إنجليزى',

      '2':'عربى'

    },
  };





}