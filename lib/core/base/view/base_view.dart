import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/core/base/state/base_state.dart';

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
