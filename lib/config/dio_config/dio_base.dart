import 'package:dio/dio.dart';

abstract class DioBase {
  String baseUrl();

  Dio createDio() {
    Dio dio = Dio();

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl(),
      headers: {
        'Accept': 'application/json',
        'Content': 'application/json',
      },
    );

    dio.options = options;

    return dio;
  }
}
