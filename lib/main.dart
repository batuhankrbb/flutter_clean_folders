import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/core/constants/app_constants.dart';
import 'package:flutter_templ_mvvm/core/init/language/language_manager.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANGUAGE_ASSET_PATH,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test App"),
        ),
        body: Center(
          child: Container(
            child: Text("Hello World!"),
          ),
        ),
      ),
    );
  }
}
