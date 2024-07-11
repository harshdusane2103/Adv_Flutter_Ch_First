import 'package:flutter/material.dart';
class CountProvider extends ChangeNotifier
{
  int Count=0;
  bool isDark=false;
  void Themechange()
  {
    isDark=!isDark;
    notifyListeners();
  }
  void countadd()
  {
    Count++;
    notifyListeners();
  }

}