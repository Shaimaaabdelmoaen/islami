import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
  ThemeMode currentTheme=ThemeMode.light;
  void changeTheme(ThemeMode newTheme){
    if(newTheme==currentTheme)return;
    currentTheme=newTheme;
    notifyListeners();
  }
  String getBackgroundImage(){
    return currentTheme ==ThemeMode.dark
        ?"assets/images/dark_bg.png"
        :"assets/images/main_background.png";
  }
  bool isDarkEnable(){
    return currentTheme ==ThemeMode.dark;
  }
}