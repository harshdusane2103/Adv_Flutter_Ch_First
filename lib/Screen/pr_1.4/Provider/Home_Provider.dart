import 'package:flutter/material.dart';
class HomeProvider extends ChangeNotifier
{
  bool isDark=false;
  void Themechange()
  {
    isDark=!isDark;
    notifyListeners();
  }

}