import 'dart:convert';
import 'package:comovie/app/data/remote_services/http_service/i_http_services.dart';
import 'package:comovie/app/data/remote_services/i_remote_data_source.dart';
import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/presentation/core/api_execptions.dart';
import 'package:comovie/app/presentation/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSource implements IRemoteDataSource {
  final IHttpServices _iHttpServices;

  RemoteDataSource(this._iHttpServices);

  @override
  Future<List<MovieModel>> getAllMovies() async {
    final res = await _iHttpServices.get(ApiConstants.getMovies);
    if (res.statusCode == 200) {
      final List results = res.data['results'];
      return results.map((json) => mapToMovie(json)).toList();
    } else {
      final errorMessage = res.data['status_message'] ?? 'Failed to load movies';
       throw ApiException(errorMessage, statusCode: res.statusCode);
    }
  }
}

