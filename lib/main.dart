import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/app/authentication/test/view/test_view.dart';
import 'package:flutter_templ_mvvm/core/constants/app_constants.dart';
import 'package:flutter_templ_mvvm/core/init/language/language_manager.dart';
import 'package:flutter_templ_mvvm/core/init/notifier/provider_list_setup.dart';
import 'package:flutter_templ_mvvm/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ...ApplicationProvider.instance.singleItems
    ],child: MaterialApp(
      home: TestView(),
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
    ),);
  }

}
