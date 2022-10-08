import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );
  TextStyle displayMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  TextStyle displaySmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineSmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 22,
  );
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 18,
  );
  TextStyle titleSmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 14,
  );
  TextStyle labelLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 14,
  );
  TextStyle labelMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 12,
  );
  TextStyle labelSmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 11,
  );
  TextStyle bodyLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 16,
  );
  TextStyle bodyMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 14,
  );
  TextStyle bodySmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 12,
  );
}
