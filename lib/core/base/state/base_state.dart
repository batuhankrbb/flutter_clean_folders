import 'package:flutter/material.dart';

//base stful
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  //State yerine artık BaseState Kullanılır.
  //... Ekstra Özellikler ve metodlar
  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;

      double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;

      ThemeData get theme => Theme.of(context);
}

//base stless
abstract class BaseStateless extends StatelessWidget {
  //Stateless yerine artık BaseStateless Kullanılır.
  //... Ekstra özellikler ve metodlar
}
