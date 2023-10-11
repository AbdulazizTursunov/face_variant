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
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen()),
    GoRoute(
        path: '/tab_box',
        builder: (BuildContext context, GoRouterState state) => const TabBox()),
    GoRoute(
        path: '/settings_screen',
        builder: (BuildContext context, GoRouterState state) =>
            const SettingsScreen()),
    GoRoute(
        path: '/detail',
        builder: (BuildContext context, GoRouterState state) =>
            const DetailScreen()),
    GoRoute(
        path: '/language',
        builder: (BuildContext context, GoRouterState state) =>
            const LanguageScreen()),
    GoRoute(
        path: '/valyuta',
        builder: (BuildContext context, GoRouterState state) =>
            const ValyutaScreen()),
  ],
);
