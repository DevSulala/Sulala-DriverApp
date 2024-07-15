// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sulala_driver_app/core/config/app_config.dart' as _i3;
import 'package:sulala_driver_app/core/errors/exception_handlers/dio_exception_handler.dart'
    as _i4;
import 'package:sulala_driver_app/core/network/provider/network_module.dart'
    as _i9;
import 'package:sulala_driver_app/core/routes/app_router.dart' as _i5;
import 'package:sulala_driver_app/features/orders/data/datasource/order_remote_datasource.dart'
    as _i7;
import 'package:sulala_driver_app/features/orders/data/repositories/order_repository.dart'
    as _i10;
import 'package:sulala_driver_app/features/profile/data/datasource/profile_remote_datasource.dart'
    as _i8;
import 'package:sulala_driver_app/features/profile/data/repositories/profile_repository.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.factory<_i3.AppConfig>(() => _i3.AppConfig());
    gh.singleton<_i4.DioExceptionsHandler>(() => _i4.DioExceptionsHandler());
    gh.singleton<_i5.AppRouter>(() => _i5.AppRouter());
    await gh.factoryAsync<_i6.Dio>(
      () => networkModule.dio(gh<_i3.AppConfig>()),
      preResolve: true,
    );
    gh.lazySingleton<_i7.OrderRemoteDatasource>(
        () => _i7.OrderRemoteDatasource(gh<_i6.Dio>()));
    gh.lazySingleton<_i8.ProfileRemoteDatasource>(
        () => _i8.ProfileRemoteDatasource(gh<_i6.Dio>()));
    gh.singleton<_i9.NetworkService>(() => _i9.NetworkService(gh<_i6.Dio>()));
    gh.lazySingleton<_i10.OrderRepository>(
        () => _i10.OrderRepository(gh<_i7.OrderRemoteDatasource>()));
    gh.lazySingleton<_i11.ProfileRepository>(
        () => _i11.ProfileRepository(gh<_i8.ProfileRemoteDatasource>()));
    return this;
  }
}

class _$NetworkModule extends _i9.NetworkModule {}
