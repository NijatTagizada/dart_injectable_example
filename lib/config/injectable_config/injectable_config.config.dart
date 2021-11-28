// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../repositories/impl_user_repository.dart' as _i6;
import '../dio_config/dio_base.dart' as _i3;
import '../dio_config/dio_dev_config.dart' as _i4;
import '../dio_config/dio_prod_config.dart' as _i5;
import '../retrofit_config/api_services.dart' as _i7;
import 'injectable_modules.dart' as _i9;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final libraryModule = _$LibraryModule();
  gh.factory<_i3.DioBase>(() => _i4.DioDevConfig(), registerFor: {_dev});
  gh.factory<_i3.DioBase>(() => _i5.DioProdConfig(), registerFor: {_prod});
  gh.singleton<_i6.ImplUserRepository>(_i6.ImplUserRepository());
  gh.singleton<_i7.ApiServices>(_i7.ApiServices(get<_i3.DioBase>()));
  gh.singletonAsync<_i8.Dio>(() => libraryModule.dio(get<_i3.DioBase>()));
  return get;
}

class _$LibraryModule extends _i9.LibraryModule {}
