import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class CustomSnackBar {
  static void showError({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
  }) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)
            .copyWith(fontWeight: FontWeight.w800, height: 1.3),
      ),
      messageText: Text(
        message,
        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)
            .copyWith(fontWeight: FontWeight.w400, height: 1.3),
      ),
      icon: Icon(Icons.error, color: AppColors.primaryTextWhite),
      snackPosition: position,
      backgroundColor: AppColors.ratingRed,
      colorText: AppColors.primaryTextWhite,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }

  static void showSuccess({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
  }) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)
            .copyWith(fontWeight: FontWeight.w800, height: 1.3),
      ),
      messageText: Text(
        message,
        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)
            .copyWith(fontWeight: FontWeight.w400, height: 1.3),
      ),
      icon: Icon(Icons.check_circle, color: AppColors.primaryTextWhite),
      snackPosition: position,
      backgroundColor: AppColors.ratingGreen,
      colorText: AppColors.primaryTextWhite,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }
}