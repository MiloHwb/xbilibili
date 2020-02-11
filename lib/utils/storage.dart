import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static Future<void> setString(key, value) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String> getString(key) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  static Future<void> remove(key) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }
}
