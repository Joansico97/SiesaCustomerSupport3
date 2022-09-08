import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siesa_customer_support_web_3/components/cursos_virtuales_page/cursos_virtuales_page.dart';
import 'package:siesa_customer_support_web_3/components/home_page/home_page.dart';

part './routes_hanlder.dart';

class GoRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: <GoRoute>[
      GoRoute(
        path: '/home',
        builder: _homePageBuilder,
      ),
      GoRoute(
        path: '/cursosVirtuales/:curso',
        builder: cursosVirtualesPageBuilder,
      ),
    ],
    errorBuilder: notFoundPage,
    urlPathStrategy: UrlPathStrategy.path,
  );
}
