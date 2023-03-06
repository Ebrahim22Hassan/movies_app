import 'package:flutter/material.dart';
import 'package:movies_app/core/global/theme/app_color/app_color_light.dart';

ThemeData getLightTheme() => ThemeData(
      primaryColor: AppColorsLight.primaryColor,
      appBarTheme: const AppBarTheme(
        color: AppColorsLight.appBarColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all(AppColorsLight.textButtonColor),
        ),
      ),
    );
