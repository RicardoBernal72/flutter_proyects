import 'package:shared_preferences/shared_preferences.dart';

class ControlAlmacenamiento
{
  static late SharedPreferences pref;
  static Future<void>configurePrefs()async {
    pref = await SharedPreferences.getInstance();
  }
}