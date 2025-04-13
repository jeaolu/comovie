// import 'package:comovie/app/data/get_movies_dto/get_movies_response_dto.dart';

// class GetMoviesResponseObject {
//   final String status;
//   final String message;
//   final GetMoviesResponseData? data;

//   const GetMoviesResponseObject({
//     required this.status,
//     required this.message,
//     this.data,
//   });

//   factory GetMoviesResponseObject.empty() => GetMoviesResponseObject(
//         status: '',
//         message: '',
//         data: null,
//       );

//   GetMoviesResponseObject copyWith({
//     String? status,
//     String? message,
//     GetMoviesResponseData? data,
//   }) {
//     return GetMoviesResponseObject(
//       status: status ?? this.status,
//       message: message ?? this.message,
//       data: data ?? this.data,
//     );
//   }

//   @override
//   int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

//   @override
//   bool operator ==(Object other) {
//     if (identical(other, this)) return true;
//     return other is GetMoviesResponseObject && other.hashCode == hashCode;
//   }
// }

class GetMoviesResponseObject {
  final List<MovieModel> results;
  final int? page;
  final int? totalPages;
  final int? totalResults;

  GetMoviesResponseObject({
    required this.results,
    this.page,
    this.totalPages,
    this.totalResults,
  });

  factory GetMoviesResponseObject.fromJson(Map<String, dynamic> json) {
    final resultsList = (json['results'] as List?)
        ?.map((item) => MovieModel.fromJson(item))
        .toList();

    return GetMoviesResponseObject(
      results: resultsList ?? [],
      page: json['page'],
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}

class MovieModel {
  final String id;
  final String title;
  final int? year;
  final String? releaseDate;
  final String? imageUrl;

  MovieModel({
    required this.id,
    required this.title,
    this.year,
    this.releaseDate,
    this.imageUrl,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'] ?? '',
      title: json['originalTitleText']?['text'] ?? 'No title',
      year: json['releaseYear']?['year'],
      releaseDate: json['releaseDate']?['day'] != null && json['releaseDate']?['month'] != null && json['releaseDate']?['year'] != null
          ? '${json['releaseDate']['year']}-${json['releaseDate']['month'].toString().padLeft(2, '0')}-${json['releaseDate']['day'].toString().padLeft(2, '0')}'
          : null,
      imageUrl: json['primaryImage']?['url'],
    );
  }
}