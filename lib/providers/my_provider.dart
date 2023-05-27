import 'package:flutter/material.dart';
import 'package:islami_c8_friday/shared_prefs.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void init(){
    String myTheme = SharedPrefs.getTheme();
    if(myTheme == "light"){
      themeMode = ThemeMode.light;
    }else{
      themeMode = ThemeMode.dark;
    }
    languageCode = SharedPrefs.getLanguage();
  }
  void changeLanguage(String lang) {
    languageCode = lang;
    SharedPrefs.setLanguage(lang);
    notifyListeners();
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    if(mode == ThemeMode.dark){
      SharedPrefs.setTheme("dark");
    }else{
      SharedPrefs.setTheme("light");
    }
    notifyListeners();
  }

  String getLang() {
    return languageCode;
  }
}
