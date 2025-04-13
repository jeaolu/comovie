// lib/di/injectable_module.dart
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class InjectableModule {
  // @LazySingleton()
  // AppRouter get appRouter => AppRouter();

  @LazySingleton()
  Dio get dio => Dio();
}
