import 'package:bloc_test/bloc_test.dart';
import 'package:comovie/application/get_movies/movie_bloc.dart';
import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/domain/i_get_movies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';




// class MockMovieRepository extends Mock implements IGetMoviesRepository {}

// void main() {
//   late MockMovieRepository mockRepo;
//   late MovieBloc movieBloc;

//   final mockMovies = [
//     MovieModel(id: 1, title: 'Dune', overview: 'Epic sci-fi', imageUrl: 'img1'),
//     MovieModel(id: 2, title: 'Oppenheimer', overview: 'Atomic story', imageUrl: 'img2'),
//   ];

//   setUp(() {
//     mockRepo = MockMovieRepository();
//     movieBloc = MovieBloc(mockRepo);
//   });

//   tearDown(() {
//     movieBloc.close();
//   });

//   blocTest<MovieBloc, MovieState>(
//     'emits [loading, success] when GetMovies succeeds',
//     build: () {
//       when(mockRepo.getAllMovies()).thenAnswer((_) async => Right(mockMovies));
//       return movieBloc;
//     },
//     act: (bloc) => bloc.add(GetMovies()),
//     expect: () => [
//       movieBloc.state.copyWith(isLoading: true, errorMessage: null),
//       movieBloc.state.copyWith(isLoading: false, movies: mockMovies),
//     ],
//   );

//   blocTest<MovieBloc, MovieState>(
//     'emits [loading, error] when GetMovies fails',
//     build: () {
//       when(mockRepo.getAllMovies())
//           .thenAnswer((_) async => const Left('Server error'));
//       return movieBloc;
//     },
//     act: (bloc) => bloc.add(GetMovies()),
//     expect: () => [
//       movieBloc.state.copyWith(isLoading: true, errorMessage: null),
//       movieBloc.state.copyWith(isLoading: false, errorMessage: 'Server error'),
//     ],
//   );
// }
