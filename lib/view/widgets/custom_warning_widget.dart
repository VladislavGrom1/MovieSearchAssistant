import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class CustomWarningWidget extends StatelessWidget {
  CustomWarningWidget({
    super.key,
    required this.description,
  });

  String description;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          "assets/icons/errorIcon.png",
          fit: BoxFit.cover,
        ),
        Text("Ваш список фильмов пуст", style: CustomTextStyles.m3HeadlineMedium(), textAlign: TextAlign.center),
        SizedBox(height: 20.h),
        Text(description, style: CustomTextStyles.m3TitleMedium(), textAlign: TextAlign.center),
      ],
    );
  }

}