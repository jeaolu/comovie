import 'dart:convert';

import 'package:comovie/app/data/remote_services/http_service/http_services.dart';
import 'package:comovie/app/data/remote_services/http_service/i_http_services.dart';
import 'package:comovie/app/data/remote_services/i_remote_data_source.dart';
import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/presentation/core/failures.dart';
import 'package:comovie/app/presentation/core/utils/constants.dart';
import 'package:dartz/dartz.dart';

// class RemoteDataSource implements IRemoteDataSource{
//   final IHttpServices _iHttpServices;

//   RemoteDataSource(this._iHttpServices);
  
//   @override
//   Future<List<GetMoviesResponseObject>> getAllMovies() {
//     // TODO: implement getAllMovies
//     throw UnimplementedError();
//   }
  
//   @override
//   // Future<List<GetMoviesResponseObject>> getAllMovies() async {
    
//   //     final res = await _iHttpServices.get(ApiConstants.getMovies);
//   //     if (res.statusCode == 200) {
//   //     final List<dynamic> jsonResponse = json.decode(res.data) as List<dynamic>;
//   //     return jsonResponse
//   //         .map((jsonItem) => GetMoviesResponseObject.fromJson(jsonItem))
//   //         .toList();
      
//   //     }
//   //     return GetMoviesResponseObject;
      
      
//   //     }

  
// }