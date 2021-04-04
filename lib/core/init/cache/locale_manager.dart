import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager {
  SharedPreferences preferences;

  LocaleManager() {
    SharedPreferences.getInstance().then((value) => preferences = value);
  }
  
}
