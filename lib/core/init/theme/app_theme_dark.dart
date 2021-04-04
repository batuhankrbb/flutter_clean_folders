import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/core/init/theme/app_theme.dart';

class AppThemeDark extends AppTheme{
  static AppThemeDark _instance;

  static AppThemeDark get instance {
    if (_instance == null) {
      _instance = AppThemeDark._init();
    }
    return _instance;
  }

  AppThemeDark._init();

  ThemeData get theme => ThemeData.dark(); //normalde burda kendimiz ThemeData() verip içine dolduruyoruz nasıl olacağına göre. Bu örnek.

}