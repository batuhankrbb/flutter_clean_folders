import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter_templ_mvvm/core/base/model/base_error.dart';
import 'package:flutter_templ_mvvm/core/base/model/base_model.dart';

class NetworkManager {
  //Bu bizim APIService işte
  //Bunu singleton düşün

  NetworkManager() {
    final BaseOptions baseOptions = BaseOptions(
        baseUrl: "https://jsonplaceholder.typicode.com",
        headers: {"val": "premium_access_key"});

    _dio.interceptors.add(InterceptorsWrapper(onError: (e, handler) {
      return BaseError(e.message);
    }, onRequest: (options, handler) {
      options.path += "batu";
    }, onResponse: (response, handler) {
      return response.data;
    }));
  }

  Dio _dio;

  Future<dynamic> dioGet<T extends BaseModel>(String urlBilgileri, T model) async {//bu fonksiyon çok iyi ya. Adam url bilgilerini giriyor, convert edilecek modeli giriyor mis gibi convert edilmiş halde alıyor. Modeli kontrol edip burda işlemler yapıyoruz.
    //Bu T basemodelden türüyor ve basemodel içinde fromjson ve tojson metodları her türlü var.
    final response = await _dio.get(
        urlBilgileri); //Yani bunun da her türlü o metodları olacak. Bu yüzden decode edilme tipine bakıyoruz liste olarak mı decode edilsin yoksa direkt map olarak mı diye, ona göre direkt decode edip gönderebiliyoruz.

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;

        if (responseBody is List) {
          return responseBody.map((e) => model.fromJSON(e)).toList();
        } else if (responseBody is Map) {
          return model.fromJSON(responseBody);
        } else {
          //Primitive Type yani direkt int, string falan

        }
    }
  }
}
