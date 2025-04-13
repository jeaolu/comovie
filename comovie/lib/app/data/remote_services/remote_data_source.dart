import 'dart:convert';
import 'package:comovie/app/data/remote_services/http_service/i_http_services.dart';
import 'package:comovie/app/data/remote_services/i_remote_data_source.dart';
import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/presentation/core/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSource implements IRemoteDataSource {
  final IHttpServices _iHttpServices;

  RemoteDataSource(this._iHttpServices);
  final headers = {};
  @override
  Future<Either<String, List<MovieModel>>> getAllMovies() async {
    try {
      final res = await _iHttpServices.get(
        ApiConstants.getMovies,
        headers: {
          'x-rapidapi-key':
              "7c2df90d62mshc3c6cca19fe51f2p105b4ajsn72f28ed7637d",
          'x-rapidapi-host': "moviesdatabase.p.rapidapi.com"
        },
      );
      if (res.statusCode == 200) {
        final jsonData = json.decode(res.data);
        final movieResponse = GetMoviesResponseObject.fromJson(jsonData);
        return right(movieResponse.results);
      } else {
        return left('Failed to load movies (status: ${res.statusCode})');
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
