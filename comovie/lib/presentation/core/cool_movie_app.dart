import 'package:comovie/presentation/core/cool_movie.dart';
import 'package:comovie/routes/app_router.dart';
import 'package:comovie/presentation/core/themes/theme_observer.dart';

class CoolMovieApp extends StatelessWidget {
  // final _appRouter = getIt<AppRouter>();
   CoolMovieApp({super.key});
  

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
          create: (_) => getIt<MovieBloc>()..add(GetMovies()),
        ),
      ],
      child: ThemeObserver( 
    child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          // routeInformationParser: _appRouter.defaultRouteParser(),
          // routerDelegate: _appRouter.delegate(),

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