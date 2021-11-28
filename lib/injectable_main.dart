import 'package:dart_injectable_example/config/injectable_config/injectable_config.dart';
import 'package:dart_injectable_example/contractors/i_user_repository.dart';
import 'package:dart_injectable_example/repositories/impl_user_repository.dart';
import 'package:injectable/injectable.dart';

injectableMain() async {
  configureDependencies(Environment.dev);

  IUserRepository loginRepository = ImplUserRepository();
  String response = await loginRepository.getUsers();
  print(response);
}
