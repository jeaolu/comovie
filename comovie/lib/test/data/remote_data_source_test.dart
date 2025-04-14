import 'dart:convert';
import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/infrastructure/remote_services/http_service/i_http_services.dart';
import 'package:comovie/infrastructure/remote_services/remote_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';

class MockHttpService extends Mock implements IHttpServices {}

void main() {
  late MockHttpService mockHttpService;
  late RemoteDataSource dataSource;

  setUp(() {
    mockHttpService = MockHttpService();
    dataSource = RemoteDataSource(mockHttpService);
  });

  group('RemoteDataSource.getAllMovies', () {
    test('returns List<MovieModel> on status 200', () async {
      final fakeJson = {
        "results": [
          {
            "id": 1,
            "title": "Test Movie",
            "overview": "Overview",
            "poster_path": "/img.jpg"
          }
        ]
      };

      final response = Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 200,
        data: jsonEncode(fakeJson),
      );

      when(() => mockHttpService.get(any())).thenAnswer((_) async => response);

      final movies = await dataSource.getAllMovies();

      expect(movies, isA<List<MovieModel>>());
      expect(movies.first.title, "Test Movie");
    });

    test('throws Exception on non-200 response', () async {
      final response = Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 500,
        data: 'Server error',
      );

      when(() => mockHttpService.get(any())).thenAnswer((_) async => response);

      expect(() => dataSource.getAllMovies(), throwsException);
    });
  });
}
