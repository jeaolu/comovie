import 'package:comovie/infrastructure/remote_services/i_remote_data_source.dart';
import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/domain/i_get_movies_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGetMoviesRepository)
class GetMoviesRepository implements IGetMoviesRepository {
   final IRemoteDataSource _iRemoteDataSource;

  GetMoviesRepository(this._iRemoteDataSource);
  @override
  Future<List<MovieModel>> getAllMovies()async {
     return await _iRemoteDataSource.getAllMovies();
  }
  }
