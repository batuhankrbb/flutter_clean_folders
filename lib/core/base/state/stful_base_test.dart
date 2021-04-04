import 'package:flutter/material.dart';

//! BURASI AÇIKLAMA VE DENEME SAYFASIDIR BURAYI BOŞVER

/*

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // State kısmı
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Home"),
    );
  }
}

// Burada en başta T yi tanımlıyoruz StatefulWidget olacak diye.
// Daha sonra aslında aynı normal bir state gibi bunun içine T tipinden bir şey alıyoruz yani StatefulWidget tipinden bir şey alıyoruz.
// Bu da aslında bir state yani bildiğin biz State sınıfını tekrar yazıp bunu genişletiyoruz SOLID deki Open/Closed prensipindeki gibi.
//
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  //build geliyo
}

class TestPage extends StatefulWidget {
  TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends BaseState<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Test State"),
    );
  }
}

class Deneme extends StatelessWidget {
  const Deneme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Deneme"),
    );
  }
}

abstract class OzelStateless extends StatelessWidget {}

// ////////////////////////////////

//abstract class BaseState extends State<StatefulWidget>{ // Bu şekilde yaparsak sadece statefulwidgetten türemiş sınıflar buraya gelebilir. Belki benim bir tane daha base sınıfım var ve onu buraya vermek istiyorum. Bunu bilemeyeceğim için generic kullanıp statefuldan extend eden sınıfları alıcam.

//}

//base stful
abstract class BaseState2<T extends StatefulWidget> extends State<T> {
  //... Ekstra Özellikler
}

class DenemeSayfa extends StatefulWidget {
  DenemeSayfa({Key key}) : super(key: key);

  @override
  _DenemeSayfaState createState() => _DenemeSayfaState();
}

class _DenemeSayfaState extends BaseState2<DenemeSayfa> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//base stless
abstract class OzelBaseStatelessWidget extends StatelessWidget {
  //... Ekstra özellikler ve metodlar
}

class DenemePage extends OzelBaseStatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/