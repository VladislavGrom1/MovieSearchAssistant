import 'package:flutter/material.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';

class CustomTextStyles {
  
  static TextStyle m3TitleLarge({Color? color}){ 
      return TextStyle(
      fontSize: 22,
      height: 22/28,
      letterSpacing: 0,
      color: color ??AppColors.primaryTextGrey,
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
}
