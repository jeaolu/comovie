
import 'package:dio/dio.dart';

class HttpRetryInterceptor extends Interceptor {
  final Dio client;
  final Function(String) encryptString;
  Map<String, int> failedRequestRegistry = {};

  HttpRetryInterceptor({required this.client, required this.encryptString});


  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if(failedRequestRegistry.containsKey(response.requestOptions.path)) {
      failedRequestRegistry.remove(response.requestOptions.path);
    }
    handler.next(response);
  }


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_isXRequestIDError(err)) {
      RequestOptions request = err.requestOptions;
      if (!failedRequestRegistry.containsKey(request.path)) {
        failedRequestRegistry[request.path] = 0;
      } else {
        failedRequestRegistry[request.path] =
            failedRequestRegistry[request.path]! + 1;
      }
      if (failedRequestRegistry[request.path]! < 3) {
        try {
          client.request(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            cancelToken: request.cancelToken,
            onSendProgress: request.onSendProgress,
            onReceiveProgress: request.onReceiveProgress,
          );
        }catch (e){
          handler.next(err);
        }
      }else{
        handler.next(err);
      }
    }else {
      handler.next(err);
    }
  }
}

bool _isXRequestIDError(DioException err) {
  return err.response!.statusCode == 400 &&
      err.response!.data['status'].toString() == '429';
}