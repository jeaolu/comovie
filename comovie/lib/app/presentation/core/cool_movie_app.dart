import 'package:comovie/app/presentation/core/cool_movie.dart';
import 'package:comovie/app/presentation/core/themes/theme_observer.dart';
class CoolMovieApp extends StatelessWidget {
  const CoolMovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (_) => ThemeBloc()
            ..add(ThemeEvent.systemChanged(
              WidgetsBinding.instance.platformDispatcher.platformBrightness,
            )),
        ),
        BlocProvider<MovieBloc>(
          create: (_) => locator<MovieBloc>(),
        ),
      ],
      child: ThemeObserver( 
    child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.theme,
          home: const MovieHomePage(),
        );
      },
    ),
  ),
);
  }
}