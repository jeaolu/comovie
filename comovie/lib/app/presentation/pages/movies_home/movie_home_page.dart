import 'package:comovie/app/bloc/get_movies/movie_bloc.dart';
import 'package:comovie/app/presentation/pages/movies_home/widgets/movie_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class MovieHomeScreen extends StatelessWidget {
//   const MovieHomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Cool Movie Explorer')),
//       body: ListView.builder(
//         itemCount: dummyMovies.length,
//         itemBuilder: (context, index) {
//           return MovieCard(movie: dummyMovies[index]);
//         },
//       ),
//     );
//   }
// }

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cool Movie Explorer')),

      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorMessage != null) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          }

          if (state.movies.isEmpty) {
            return const Center(child: Text('No movies found.'));
          }

          return ListView.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: state.movies[index]);
            },
          );
        },
      ),
    );
  }
}
