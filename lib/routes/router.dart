import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part './routes_hanlder.dart';

class GoRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: <GoRoute>[
      GoRoute(
        path: '/home',
        builder: _homePageBuilder,
      ),
      // GoRoute(
      //   path: '/detailPost/:postId',
      //   pageBuilder: _detailPageBuilder,
      // ),
    ],
  );
}
