import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:dartz/dartz.dart';

abstract class IGetMoviesRepository {
   Future<List<MovieModel>>getAllMovies();
}