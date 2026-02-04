import 'package:flutter/material.dart';
import 'package:khmer_movie_app/app/core/values/text_style.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodySmall: AppTextStyles.small,
      bodyMedium: AppTextStyles.medium,
      bodyLarge: AppTextStyles.large,
      headlineLarge: AppTextStyles.extraLarge,
    ),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodySmall: AppTextStyles.small,
      bodyMedium: AppTextStyles.medium,
      bodyLarge: AppTextStyles.large,
      headlineLarge: AppTextStyles.extraLarge,
    ),
  );
}
