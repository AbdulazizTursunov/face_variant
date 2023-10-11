import 'package:face_variant/business_logic/cubits/category_cubit/category_cubit.dart';
import 'package:face_variant/business_logic/cubits/place_cubit/place_cubit.dart';
import 'package:face_variant/presentaion/tab_box/tab_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaceCubit(),
      child: BlocProvider(
        create: (context) => CategoryCubit(),
        child: MaterialApp(
            home: TabBox()
        ),
      ),
    );
  }
}
