import 'package:comovie/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


@module
abstract class InjectableModule {
  // @LazySingleton()
  // AppRouter get appRouter => AppRouter();

  @LazySingleton()
  Dio get dio => Dio();

  @LazySingleton()
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker.createInstance();

}