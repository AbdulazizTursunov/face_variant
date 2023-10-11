



import 'package:face_variant/presentaion/splash/splash_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/sub_screen/language_screen.dart';
import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'tab_box',
          builder: (BuildContext context, GoRouterState state) {
            return const TabBox();
          },
          routes: <RouteBase>[
            GoRoute(path: 'detail',
            builder: (BuildContext context,GoRouterState state){
              return const LanguageScreen();            }
            )
          ]
        ),
      ],
    ),
  ],
);