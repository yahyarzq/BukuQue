

import 'package:shared_preferences/shared_preferences.dart';

Future saveGuruSharedPreferences(String value, String name) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("teacher_id", value);
  preferences.setString("teacher_name", name);
}