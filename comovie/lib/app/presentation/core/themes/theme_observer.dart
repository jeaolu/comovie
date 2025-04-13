import 'package:comovie/app/presentation/core/themes/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ThemeObserver extends StatefulWidget {
  final Widget child;

  const ThemeObserver({super.key, required this.child});

  @override
  State<ThemeObserver> createState() => _ThemeObserverState();
}

class _ThemeObserverState extends State<ThemeObserver> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    context.read<ThemeBloc>().add(ThemeEvent.systemChanged(brightness));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
