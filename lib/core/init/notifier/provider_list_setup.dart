import 'package:flutter_templ_mvvm/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProvider {
  static ApplicationProvider _instance;

  static ApplicationProvider get instance {
    if (_instance == null) {
      _instance = ApplicationProvider._init();
    }
    return _instance;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [Provider(create: (_) => ThemeNotifier(),)]; //Bunlar da bir sınıfı farklı widgetlara dağıtma amaçlı olanlar

  List<SingleChildWidget> dependItems = []; //İçinde ProxyProviderlar olacak iki provider alıyor ve iki duruma göre sonuç döndürüyor. 

  List<SingleChildWidget> uiChangesItems = []; //Bu da klasik UI etkileyen providerlar
}
