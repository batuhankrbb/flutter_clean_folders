import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
/* 
* Stateful olmasının sebebi şu: Stateless ekrana sadece bir şeyler çizmek için var. 
* buraya sorumluluk yükleyeceğimiz için stateful yapmak daha mantıklı.
* Bu sayede ekranlarda init işlemini ve dispose işlemini de rahatlıkla ele alabiliyoruz
*/

/*
? Bunu bütün widgetlar yerine sadece screen için olan ekran widgetlarında yani kısaca ekranlarda kullanacağız. Çünkü bunun içinde ViewModel vb. tanımlıyoruz.
? Viewmodel vb. Tüm widgetlarda olmasına gerek yok. Hatta çoğu küçük widgetin mesela ekran içindeki card widgetinin vb stful olmasına bile gerek yok.
? Bunu sadece sayfalara yaparak artık sayfaları yönetme imkanına sahip olacağım mesela internet kontrolünü tüm sayfalarda yapabilirim.
*/

//* Kısacası ViewModel yapısına çok uygun bir base yapıyoruz. Bunun tabiiki böyle olması şart değil ama ana mantık burada Tüm sayfaları kaplayan ve Tüm sayfaların türediği bir Base View yapmak

//? Örnek kullanım: Bütün sayfalarda internet olmazsa çıkan bir pop-up veya dialog olsun. Bunun için tüm sayfalarda tek tek tanımlamak yerine tüm sayfaları BaseView dan türetip BaseView içinde bunu tanımlamak süper olur.


class BaseView<T extends Store> extends StatefulWidget {
  BaseView(
      {Key key,
      @required this.viewModel,
      this.onModelReady,
      this.onDispose,
      @required this.onPageBuilder})
      : super(key: key);

  final T viewModel; //Aslında burada veriyoruz diğer yerlerde döndürüyoruz ama bi mantığı yok. Yani var ama yok. Biz bunu yapıyoruz çünkü her ekranımızın ViewModel almasını zorlamak istiyoruz. Kısacası BaseView kullanınca her ekran o viewmodeli seve seve alıcak.
  final Function(T model) onModelReady;
  final VoidCallback onDispose;
  final Widget Function(BuildContext context, T value) onPageBuilder;

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) {
      widget.onModelReady(widget.viewModel);
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) {
      widget.onDispose(); //eğer adam dispose verdiyse onu çalıştırıyor
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel); //dışarıdan gelen buildi return ediyor
  }
}











//? KULLANIM
/*

class TestView extends StatelessWidget {
  const TestView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: "ViewModel",
      onDispose: () {
        //viewmodel öldürme işlemleri vb vb.
      },
      onModelReady: (viewModel) {
        viewModel = "ViewModel";
        //viewmodel tanıma, başlangıç işlemlerini yapma vb vb.
      },
      onPageBuilder: (context, viewModel) {
        return Text("Burası aslında bildiğin build metodu olarak çalışacak.");
      },
    );
  }
}

*/