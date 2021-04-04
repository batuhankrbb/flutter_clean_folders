import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_templ_mvvm/core/init/theme/app_theme.dart';
import 'package:flutter_templ_mvvm/core/init/theme/app_theme_dark.dart';
import 'package:flutter_templ_mvvm/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;

  ThemeData get currentTheme =>
      _currentTheme; //bunu normalde localde vb tutucaz.

  void changeTheme(AppThemes theme) {
    switch (theme) {
      case AppThemes.LIGHT:
        _currentTheme = AppThemeLight.instance.theme;
        break;
      case AppThemes.DARK:
        _currentTheme = AppThemeDark.instance.theme;
        break;
    }
    notifyListeners();
  }
  
}
