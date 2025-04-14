// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:comovie/application/get_movies/movie_bloc.dart' as _i885;
import 'package:comovie/domain/i_get_movies_repository.dart' as _i388;
import 'package:comovie/infrastructure/get_movies/get_movies_repository.dart'
    as _i86;
import 'package:comovie/infrastructure/remote_services/http_service/http_services.dart'
    as _i703;
import 'package:comovie/infrastructure/remote_services/http_service/i_http_services.dart'
    as _i598;
import 'package:comovie/infrastructure/remote_services/i_remote_data_source.dart'
    as _i795;
import 'package:comovie/infrastructure/remote_services/internet_checker/internet_info.dart'
    as _i845;
import 'package:comovie/infrastructure/remote_services/remote_data_source.dart'
    as _i391;
import 'package:comovie/injectable_module.dart' as _i54;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => injectableModule.connectionChecker);
    gh.lazySingleton<_i598.IHttpServices>(
        () => _i703.HttpServices(gh<_i361.Dio>()));
    gh.lazySingleton<_i795.IRemoteDataSource>(
        () => _i391.RemoteDataSource(gh<_i598.IHttpServices>()));
    gh.lazySingleton<_i845.INetworkInfo>(
        () => _i845.NetworkInfo(gh<_i973.InternetConnectionChecker>()));
    gh.lazySingleton<_i388.IGetMoviesRepository>(
        () => _i86.GetMoviesRepository(gh<_i795.IRemoteDataSource>()));
    gh.factory<_i885.MovieBloc>(
        () => _i885.MovieBloc(gh<_i388.IGetMoviesRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i54.InjectableModule {}
