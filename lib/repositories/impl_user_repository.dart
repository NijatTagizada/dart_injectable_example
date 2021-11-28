import 'package:dart_injectable_example/config/injectable_config/injectable_config.dart';
import 'package:dart_injectable_example/config/retrofit_config/api_services.dart';
import 'package:dart_injectable_example/contractors/i_user_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ImplUserRepository implements IUserRepository {
  @override
  Future<String> getUsers() async {
    try {
      print('Getting data...\n');

      ApiServices services = locator.get();
      await services.users();
      return Future.value('Success');
    } on DioError catch (_) {
      return Future.value('Failure');
    }
  }
}
