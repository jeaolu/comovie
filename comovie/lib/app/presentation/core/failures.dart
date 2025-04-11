import 'package:comovie/app/presentation/core/constants/app_constants.dart';

abstract class Failure {
  final String message;
  Failure({this.message = AppConstants.error});
}

class InternetConnectionFailure extends Failure {
  InternetConnectionFailure(
      {super.message = AppConstants.checkInternetConnection});
}

class ServerFailure extends Failure {
  ServerFailure({super.message = AppConstants.serverError});
}

class TimeoutFailure extends Failure {
  TimeoutFailure({super.message = AppConstants.timeoutError});
}

class NotFoundFailure extends Failure {}
