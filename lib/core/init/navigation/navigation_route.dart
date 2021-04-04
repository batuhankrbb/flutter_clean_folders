import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_templ_mvvm/app/authentication/test/view/test_view.dart';
import 'package:flutter_templ_mvvm/core/constants/navigation_constant.dart';

class NavigationRoute {
  //Burayı singleton düşün
  //

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstant.TEST_VIEW:
        return buildMaterialPageRoute(TestView());
      default:
        return buildMaterialPageRoute(Text("Error View"));
    }
  }

  MaterialPageRoute buildMaterialPageRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
