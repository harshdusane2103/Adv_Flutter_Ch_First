import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedHomeProvider extends ChangeNotifier
{
  bool isDark =false;
  void ChangeTheme()
  {
    isDark=!isDark;
    setTheme(isDark);
    notifyListeners();
  }
  late SharedPreferences sharedPreferences;
  setTheme(bool value)
  async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
  }
  getTheme()
  async {
    sharedPreferences=await SharedPreferences.getInstance();
    isDark=sharedPreferences.getBool('theme')??false;
    notifyListeners();


  }
  SharedHomeProvider(bool theme)
  {
    isDark=theme;
    notifyListeners();
}

}