import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/domain/i_get_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetMoviesRepository implements IGetMoviesRepository {
  @override
  Future<Either<String, List<GetMoviesResponseObject>>> getAllMovies() {
    // TODO: implement getAllMovies
    throw UnimplementedError();
  }
 
  }
