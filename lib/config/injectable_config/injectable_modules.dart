import 'package:dart_injectable_example/config/dio_config/dio_base.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class LibraryModule {
  @singleton
  Future<Dio> dio(DioBase base) async {
    return base.createDio();
  }
}
