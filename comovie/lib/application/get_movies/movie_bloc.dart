import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/domain/i_get_movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_event.dart';
part 'movie_state.dart';
part 'movie_bloc.freezed.dart';

@injectable


class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final IGetMoviesRepository _iMoviesRepository;
  List<MovieModel> allMovies = [];

  MovieBloc(this._iMoviesRepository) : super(MovieState.initial()) {
    on<GetMovies>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      try {
        final movies = await _iMoviesRepository.getAllMovies();
        allMovies = movies;
        emit(state.copyWith(movies: movies, isLoading: false));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });

    on<LoadNextPage>((event, emit) async {
      if (state.isAppendingPage || state.hasLastPage) return;
      emit(state.copyWith(isAppendingPage: true));
      try {
        final newMovies = await _iMoviesRepository.getAllMovies();
        final updatedMovies = [...state.movies, ...newMovies];
        emit(state.copyWith(
          movies: updatedMovies,
          isAppendingPage: false,
          hasLastPage: newMovies.isEmpty,
        ));
      } catch (e) {
        emit(state.copyWith(isAppendingPage: false, errorMessage: e.toString()));
      }
    });
  }
}
