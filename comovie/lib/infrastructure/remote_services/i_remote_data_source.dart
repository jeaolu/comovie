import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';


abstract class IRemoteDataSource {
  Future<List<MovieModel>> getAllMovies();
}