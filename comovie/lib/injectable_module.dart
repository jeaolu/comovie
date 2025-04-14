// lib/di/injectable_module.dart
import 'package:comovie/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  // @LazySingleton()
  // AppRouter get appRouter => AppRouter();

  @LazySingleton()
  Dio get dio => Dio();
}
