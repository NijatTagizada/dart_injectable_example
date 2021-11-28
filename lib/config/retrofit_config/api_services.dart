import 'package:dart_injectable_example/config/dio_config/dio_base.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
part 'api_services.g.dart';

@singleton
@RestApi()
abstract class ApiServices {
  @factoryMethod
  factory ApiServices(DioBase dio) {
    return _ApiServices(dio.createDio());
  }

  @POST('users')
  Future<void> users();
}
