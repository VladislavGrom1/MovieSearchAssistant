import 'package:flutter/material.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';

class CustomTextStyles {
  
  static TextStyle m3TitleLarge({Color? color}){ 
      return TextStyle(
      fontSize: 22,
      height: 22/23,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: color ??AppColors.primaryTextGrey,
    );
  }

  static TextStyle m3TitleLarge2({Color? color}){
    return TextStyle(
      fontSize: 18,
      height: 18/19,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.primaryTextGrey,
    );
  }

  static TextStyle m3BodySmall({Color? color}){
    return TextStyle(
      fontSize: 12,
      height: 1.2,
      letterSpacing: 0.4,
      color: color ?? AppColors.primaryTextGrey
    );
  }

  static TextStyle m3LabelSmall({Color? color}){ 
      return TextStyle(
      fontSize: 11,
      height: 11/16,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
      color: color ??AppColors.primaryTextGrey,
    );
  }

  static TextStyle m3LabelLarge({Color? color}){ 
      return TextStyle(
      fontSize: 12,
      height: 14/16,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w700,
      color: color ??AppColors.primaryTextGrey,
    );
  }

  static TextStyle m3LabelMedium({Color? color}){
    return TextStyle(
      fontSize: 12,
      height: 12/16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.primaryTextGrey
    );
  }
}
