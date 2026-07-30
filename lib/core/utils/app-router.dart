import 'package:booky_app/features/home/presentaion/views/home_view.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

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
    ],
  );
}
