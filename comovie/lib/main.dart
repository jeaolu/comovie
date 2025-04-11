import 'package:comovie/app/bloc/get_movies/movie_bloc.dart';
import 'package:comovie/injector.dart';
import 'package:comovie/presentation/pages/movies_home/movie_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: BlocProvider(
        create: (_) => locator<MovieBloc>(),
        child: const MovieHomePage(),
      ),
    );
  }
}