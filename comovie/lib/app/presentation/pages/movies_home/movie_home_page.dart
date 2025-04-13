import 'package:comovie/app/presentation/pages/movies_home/widgets/movie_cards.dart';
import 'package:flutter/material.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Explorer')),
      body: ListView.builder(
        itemCount: dummyMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: dummyMovies[index]);
        },
      ),
    );
  }
}