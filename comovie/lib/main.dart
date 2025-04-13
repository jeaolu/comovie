import 'package:comovie/app/presentation/core/cool_movie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const CoolMovieApp());
}
