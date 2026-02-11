import 'package:first/features/home/presentation/view/home_view.dart';
import 'package:first/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';

abstract class AppRouter {
  static const KSplashView='/';
  static const KHomeView='/homeView';
  static const KBookDetailsView='/bookDetails';
static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashView,
        builder: (BuildContext context, GoRouterState state)=> SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (BuildContext context, GoRouterState state)=> HomeView(),
      ), GoRoute(
        path: KBookDetailsView,
        builder: (BuildContext context, GoRouterState state)=> BookDetailsView(),
      ),

    ],
  );

}