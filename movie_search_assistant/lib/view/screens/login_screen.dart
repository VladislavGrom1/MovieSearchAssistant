import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.secondaryThemeGrey,
      body: Container(
        height: 400.h,
        width: 200.w,
        color: AppColors.primaryScheme,
        child: Text("Окно ввода токена", style: CustomTextStyles.m3LabelLarge()),
      ),
    );
  }
}