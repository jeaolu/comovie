import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';

class GetMoviesResponseDto {
  final String status;
  final String message;
  final GetMoviesResponseData? data;

  const GetMoviesResponseDto({
    required this.status,
    required this.message,
    this.data,
  });

  factory GetMoviesResponseDto.fromDomain(GetMoviesResponseObject responseObject) {
    return GetMoviesResponseDto(
      status: responseObject.status,
      message: responseObject.message,
      data: responseObject.data,
    );
  }

  GetMoviesResponseObject toDomain() => GetMoviesResponseObject(
        status: status,
        message: message,
        data: data,
      );

  factory GetMoviesResponseDto.fromMap(Map<String, dynamic> map) {
    return GetMoviesResponseDto(
      status: map['status'] ?? '',
      message: map['message'] ?? '',
      data: map.containsKey('data') ? GetMoviesResponseData.fromMap(map['data']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'data': data?.toMap(),
    };
  }
}

class GetMoviesResponseData {
  final String id;

  const GetMoviesResponseData({required this.id});

  factory GetMoviesResponseData.fromMap(Map<String, dynamic> map) {
    return GetMoviesResponseData(
      id: map['id'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }
}

