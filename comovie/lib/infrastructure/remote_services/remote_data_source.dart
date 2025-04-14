import 'dart:convert';
import 'package:comovie/infrastructure/remote_services/http_service/i_http_services.dart';
import 'package:comovie/infrastructure/remote_services/i_remote_data_source.dart';
import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/infrastructure/remote_services/internet_checker/internet_info.dart';
import 'package:comovie/presentation/core/api_execptions.dart';
import 'package:comovie/presentation/core/execptions.dart';
import 'package:comovie/presentation/core/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSource implements IRemoteDataSource {
  final IHttpServices _iHttpServices;
  final INetworkInfo _networkInfo;

  RemoteDataSource(this._iHttpServices, this._networkInfo);

  @override
  Future<List<MovieModel>> getAllMovies() async {

     if (!await _networkInfo.isConnected) {
       throw NoInternetConnectionException();
    } else{
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
}

