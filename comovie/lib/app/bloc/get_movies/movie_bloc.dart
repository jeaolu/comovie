import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/domain/i_get_movies_repository.dart';
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
      final result = await _iMoviesRepository.getAllMovies();
      result.fold(
        (failure) => emit(state.copyWith(isLoading: false, errorMessage: failure)),
        (movies) {
          allMovies = movies;
          emit(state.copyWith(movies: movies, isLoading: false));
        },
      );
    });
    on<LoadNextPage>((event, emit) async {
      if (state.isAppendingPage || state.hasLastPage) return;
      emit(state.copyWith(isAppendingPage: true));
       final result = await _iMoviesRepository.getAllMovies();
      result.fold(
      (failure) => emit(
          state.copyWith(isAppendingPage: false, errorMessage: failure)),
      (newMovies) {
        final updatedMovies = [...state.movies, ...newMovies];
        emit(state.copyWith(
          movies: updatedMovies,
          isAppendingPage: false,
          hasLastPage: newMovies.isEmpty,
        ));
      },
    );
    });
  }
}