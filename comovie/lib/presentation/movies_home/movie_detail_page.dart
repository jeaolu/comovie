import 'package:auto_route/auto_route.dart';
import 'package:comovie/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: movie.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  movie.imageUrl!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FadeInUp(
              duration: const Duration(milliseconds: 600),
              child: Text(
                movie.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 20),
            FadeInDownBig(
              duration: const Duration(milliseconds: 600),
              child: const Text("Overview:")),
            const SizedBox(height: 8),
            FadeInUp(
              duration: const Duration(milliseconds: 600),
              delay: const Duration(milliseconds: 200),
              child: Text(
                movie.overview,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 20),
            ZoomIn(
              duration: const Duration(milliseconds: 500),
              delay: const Duration(milliseconds: 500),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.play_arrow),
                label: const Text("Watch Trailer"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Trailer Comming Soon")),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
