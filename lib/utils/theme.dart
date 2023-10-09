import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color.dart';


class AppTheme{
  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.white,
          titleTextStyle: TextStyle(
              color: AppColors.white
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.white,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark
          )
      ),
      textTheme:const  TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.titleColor,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'Lato'
          ),
          displayMedium: TextStyle(
              color: AppColors.black,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato'
          ),
          displaySmall: TextStyle(
              color: AppColors.black,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato'
          ),
          headlineMedium: TextStyle(
              color: AppColors.black,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          headlineSmall: TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato'
          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          titleMedium: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          titleSmall: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          labelMedium: TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          labelSmall: TextStyle(
              color: AppColors.black,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          bodyMedium: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          bodySmall: TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          )

      )
  );

  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.black,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light
          )
      ),
      textTheme:const  TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.white,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'Lato'
          ),
          displayMedium: TextStyle(
              color: AppColors.white,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato'
          ),
          displaySmall: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato'
          ),
          headlineMedium: TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          headlineSmall: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato'

          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          titleMedium: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          titleSmall: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato'
          ),
          labelMedium: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          labelSmall: TextStyle(
              color: AppColors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          bodyMedium: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          ),
          bodySmall: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato'
          )

      )
  );
}