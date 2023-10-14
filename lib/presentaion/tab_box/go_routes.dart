import 'package:face_variant/presentaion/splash/splash_screen.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/sub_screens/detail_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/settings_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/sub_screen/language_screen.dart';
import 'package:face_variant/presentaion/tab_box/settings_screen/sub_screen/valyuta_screen.dart';
import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        name: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen()),
    GoRoute(
      name: 'tab_box',
        path: '/tab_box',
        builder: (BuildContext context, GoRouterState state) =>
        const TabBox()),
    GoRoute(
      name: 'settings_screen',
        path: '/settings_screen',
        builder: (BuildContext context, GoRouterState state) =>
            const SettingsScreen()),
    GoRoute(
      name: 'detail',
        path: '/detail',
        builder: (BuildContext context, GoRouterState state) =>
            const DetailScreen()),
    GoRoute(
      name: 'language',
        path: '/language',
        builder: (BuildContext context, GoRouterState state) =>
            const LanguageScreen()),
    GoRoute(name: 'valyuta',
        path: '/valyuta',
        builder: (BuildContext context, GoRouterState state) =>
            const ValyutaScreen()),
  ],
);
