import 'package:booky_app/features/home/presentaion/views/home_view.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentaion/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeView='/homeView';
  static const kBookDetailsView='/bookDetailsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) => BookDetailsView(),
      ),
    ],
  );
}
