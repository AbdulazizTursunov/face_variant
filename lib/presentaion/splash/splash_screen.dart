import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:face_variant/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _init() async {
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      context.go('/tab_box');
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ClipRRect(
              child: Image.asset(AppImage.logo))),
    ),);
  }
}
