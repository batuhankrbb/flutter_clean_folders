import 'package:flutter/material.dart';

class NavigationService {
  static NavigationService _instance = NavigationService._init();

  static NavigationService get insantance => _instance;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateToPage({String path, Object object}) async{
    await navigatorKey.currentState.pushNamed(path, arguments: object);
  }

  void navigateToPageClear({String path, Object object}) async{
    await navigatorKey.currentState.pushNamedAndRemoveUntil(path,removeAllOldRoutes,arguments: object);
  }

  final removeAllOldRoutes = (Route<dynamic> route) => false;
}
