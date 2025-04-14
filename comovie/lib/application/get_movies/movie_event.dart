part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
 const factory MovieEvent.getMovies() = GetMovies;
  const factory MovieEvent.loadNextPage() = LoadNextPage;
}