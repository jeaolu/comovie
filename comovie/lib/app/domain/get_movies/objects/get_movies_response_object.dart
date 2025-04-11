import 'package:comovie/app/data/get_movies_dto/get_movies_response_dto.dart';

class GetMoviesResponseObject {
  final String status;
  final String message;
  final GetMoviesResponseData? data;

  const GetMoviesResponseObject({
    required this.status,
    required this.message,
    this.data,
  });

  factory GetMoviesResponseObject.empty() => GetMoviesResponseObject(
        status: '',
        message: '',
        data: null,
      );

  GetMoviesResponseObject copyWith({
    String? status,
    String? message,
    GetMoviesResponseData? data,
  }) {
    return GetMoviesResponseObject(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMoviesResponseObject && other.hashCode == hashCode;
  }
}