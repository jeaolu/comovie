import 'package:bloc/bloc.dart';
import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


part 'movie_event.dart';

part 'movie_state.dart';

part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetMovies getMovies;

  MovieBloc(this.getMovies) : super(MovieState.initial()) {
    on<GetMovies>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));
    });
    on<LoadNextPage>((event, emit) async {
      if (state.isAppendingPage || state.hasLastPage) return;
      emit(state.copyWith(isAppendingPage: true));
    });
  }
}