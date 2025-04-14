import 'dart:ui';
import 'package:comovie/presentation/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part  'theme_event.dart';
part  'theme_state.dart';
part  'theme_bloc.freezed.dart';


class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(theme: AppTheme.light)) {
    on<_SystemChanged>((event, emit) {
      emit(ThemeState(
        theme: event.brightness == Brightness.dark ? AppTheme.dark : AppTheme.light,
      ));
    });

    on<_Toggle>((event, emit) {
      final isDark = state.theme.brightness == Brightness.dark;
      emit(ThemeState(theme: isDark ? AppTheme.light : AppTheme.dark));
    });
  }
}
