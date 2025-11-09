import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class CustomDialogWidget extends StatelessWidget {
  CustomDialogWidget({
    super.key, 
    required this.title,
    required this.content,
    required this.button1,
    required this.button2
    });
  // TODO: Дореализовать CustomDialogWidget -> Доделать UserOnCloseInteractionWidget -> Добавить на все экранные формы

  String title;
  String content;
  TextButton button1;
  TextButton button2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.secondaryThemeGrey,
      title: Text(
        title,
        style: CustomTextStyles.m3TitleLarge(color: AppColors.primaryTextGrey)),
      content: Text(
        content,
        style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextGrey).copyWith(fontWeight: FontWeight.w800),
      ),
      actions: [
        button1,
        button2
      ],
    );
  }
}
