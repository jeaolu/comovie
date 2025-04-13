class MovieModel {
  final int id;
  final String title;
  final String overview;
  final String imageUrl;

  MovieModel({
    required this.id,
    required this.title,
    required this.overview,
    required this.imageUrl,
  });
}


  MovieModel mapToMovie(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      imageUrl: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
    );
  }