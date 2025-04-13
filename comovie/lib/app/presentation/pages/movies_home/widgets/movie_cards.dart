import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/presentation/pages/movies_home/movie_detail_page.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap: () {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: MovieDetailPage(movie: movie),
          );
        },
      ),
    );
  },
//   onTap: () {
//   context.router.push(MovieDetailRoute(movie: movie));
// },

  child: Padding(
    padding: const EdgeInsets.all(15),
    child: Hero(
      tag: movie.title,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              movie.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(movie.title,style: Theme.of(context).textTheme.headlineSmall,)
        ],
      ),
    ),
  ),
)
;
  }
}
