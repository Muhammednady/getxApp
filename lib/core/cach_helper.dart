

import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
  static  SharedPreferences? sharedPref;

  static Future<void> init()async{

    sharedPref = await SharedPreferences.getInstance();
    
  }


}