// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:comovie/application/get_movies/movie_bloc.dart' as _i502;
import 'package:comovie/infrastructure/remote_services/http_service/http_services.dart'
    as _i478;
import 'package:comovie/infrastructure/remote_services/http_service/i_http_services.dart'
    as _i690;
import 'package:comovie/infrastructure/remote_services/i_remote_data_source.dart'
    as _i151;
import 'package:comovie/infrastructure/remote_services/remote_data_source.dart'
    as _i154;
import 'package:comovie/infrastructure/get_movies/get_movies_repository.dart'
    as _i419;
import 'package:comovie/domain/i_get_movies_repository.dart' as _i277;
import 'package:comovie/injectable_module.dart' as _i54;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.lazySingleton<_i690.IHttpServices>(
        () => _i478.HttpServices(gh<_i361.Dio>()));
    gh.lazySingleton<_i151.IRemoteDataSource>(
        () => _i154.RemoteDataSource(gh<_i690.IHttpServices>()));
    gh.lazySingleton<_i277.IGetMoviesRepository>(
        () => _i419.GetMoviesRepository(gh<_i151.IRemoteDataSource>()));
    gh.factory<_i502.MovieBloc>(
        () => _i502.MovieBloc(gh<_i277.IGetMoviesRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i54.InjectableModule {}
