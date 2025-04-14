// // // lib/router/router.dart

// // import 'package:auto_route/auto_route.dart';
// // import 'package:flutter/material.dart';


// // part 'router.gr.dart';

// // @AutoRouterConfig(replaceInRouteName: 'Screen,Route') 
// // class AppRouter extends _$AppRouter {
// //   @override
// //   List<AutoRoute> get routes => [
// //     AutoRoute(page: MovieHomeRoute.page, initial: true),
// //     AutoRoute(page: MovieDetailRoute.page),
// //   ];
// // }


// import 'package:auto_route/annotations.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:comovie/app/domain/get_movies/objects/get_movies_response_object.dart';
// import 'package:comovie/app/presentation/pages/movies_home/movie_detail_page.dart';
// import 'package:comovie/app/presentation/pages/movies_home/movie_home_page.dart';
// import 'package:flutter/material.dart';
// part 'app_router.gr.dart';


// @AutoRouterConfig(replaceInRouteName: 'Page,Route')
// class AppRouter extends $AppRouter {
//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(page: MovieHomeRoute.page, initial: true),
//         CustomRoute(
//           page: MovieDetailRoute.page,
//           transitionsBuilder: TransitionsBuilders.fadeIn,
//           durationInMilliseconds: 500,
//         ),
//       ];
// }
