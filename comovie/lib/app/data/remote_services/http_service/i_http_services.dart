import 'package:comovie/presentation/core/response.dart';

abstract class IHttpServices {
  Future<Response> get(String url, {Map<String, dynamic>? params,Map<String, String>? headers});
  Future<Response> post(String url, {dynamic body, Map<String, String>? headers});
  Future<Response> put(String url, {dynamic body});
  Future<Response> delete(String url);
  Future<Response>patch(String url, {dynamic body, Map<String, String>? headers});
}