import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable_config.config.dart';

GetIt locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies(String env) {
  $initGetIt(
    locator,
    environment: env,
  );
}
