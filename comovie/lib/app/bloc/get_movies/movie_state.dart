part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
   const factory MovieState({
    required List<MovieModel> movies,
    required bool isLoading,
    required bool isAppendingPage,
    required bool hasLastPage,
    required String? errorMessage,
  }) = _MovieState;

  factory MovieState.initial() => const MovieState(
    movies: [],
    isLoading: false,
    isAppendingPage: false,
    hasLastPage: false,
    errorMessage: null,
  );
}