import 'package:comovie/app/bloc/get_movies/movie_bloc.dart';
import 'package:comovie/app/domain/get_movies/get_movies_repository.dart';
import 'package:comovie/app/domain/i_get_movies_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<IGetMoviesRepository>(()=> GetMoviesRepository());
  locator.registerFactory(() => MovieBloc(locator()));
}