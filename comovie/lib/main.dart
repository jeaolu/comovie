import 'package:comovie/presentation/core/cool_movie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(CoolMovieApp());
}
