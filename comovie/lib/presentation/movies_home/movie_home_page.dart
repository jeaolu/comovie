import 'package:auto_route/auto_route.dart';
import 'package:comovie/application/get_movies/movie_bloc.dart';
import 'package:comovie/presentation/movies_home/widgets/movie_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


@RoutePage()
class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cool Movie Explorer')),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const SpinKitFadingCube( 
  color: Colors.red,
  size: 25,
);
          }
          if (state.errorMessage != null) {
            return Center(child: Text('Error: Something Went Wrong!!'));
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



