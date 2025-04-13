import 'package:comovie/app/data/remote_services/http_service/i_http_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
@LazySingleton(as: IHttpServices)
class HttpServices implements IHttpServices {
  final Dio _dio;


  HttpServices(this._dio,) {
    _dio.options.receiveTimeout = const Duration(milliseconds: 60 * 1000);
    _dio.options.sendTimeout = const Duration(milliseconds: 60 * 1000);
    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
  }

  @override
  Future<Response> delete(String url, {Map<String, String>? headers}) async {
    return await _dio.delete(
      url,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response> get(String url,
      {Map<String, dynamic>? params, Map<String, String>? headers}) async {
    return await _dio.get(
      url,
      queryParameters: params,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response> post(String url,
      {dynamic body, Map<String, String>? headers}) async {
    return await _dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response> put(String url,
      {dynamic body, Map<String, String>? headers}) async {
    return await _dio.put(
      url,
      data: body,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response> patch(String url,
      {body, Map<String, String>? headers}) async {
    return await _dio.patch(
      url,
      data: body,
      options: Options(headers: headers),
    );
  }
}
