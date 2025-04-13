import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:comovie/app/presentation/pages/movies_home/movie_detail_page.dart';
import 'package:flutter/material.dart';



// class MovieCard extends StatelessWidget {
//   final Movie movie;

//   const MovieCard({super.key, required this.movie});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       PageRouteBuilder(
//         transitionDuration: const Duration(milliseconds: 500),
//         pageBuilder: (context, animation, secondaryAnimation) {
//           return FadeTransition(
//             opacity: animation,
//             child: MovieDetailScreen(movie: movie),
//           );
//         },
//       ),
//     );
//   },
// //   onTap: () {
// //   context.router.push(MovieDetailRoute(movie: movie));
// // },

//   child: Padding(
//     padding: const EdgeInsets.all(15),
//     child: Hero(
//       tag: movie.title,
//       child: ClipRRect(
//         borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
//         child: Image.network(
//           movie.imageUrl,
//           height: 200,
//           width: double.infinity,
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ),
// )
// ;
//   }
// }



// final dummyMovies = [
//   Movie(
//     title: "Interstellar",
//     imageUrl: "https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
//     overview: "A group of explorers travel through a wormhole in space...",
//   ),
//   Movie(
//     title: "Inception",
//     imageUrl: "https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
//     overview: "A skilled thief is given a chance at redemption...",
//   ),
// ];


// class Movie {
//   final String title;
//   final String imageUrl;
//   final String overview;

//   Movie({
//     required this.title,
//     required this.imageUrl,
//     required this.overview,
//   });
// }


class MovieCard extends StatelessWidget {
  final MovieModel movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: movie.imageUrl != null
          ? Image.network(movie.imageUrl!, width: 50, fit: BoxFit.cover)
          : const Icon(Icons.movie),
      title: Text(movie.title),
      subtitle: movie.year != null ? Text('Released: ${movie.year}') : null,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MovieDetailScreen(movie: movie),
          ),
        );
      },
    );
  }
}
