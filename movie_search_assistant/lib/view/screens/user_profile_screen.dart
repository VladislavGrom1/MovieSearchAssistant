import 'package:flutter/material.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';

class UserProfileScreen extends StatelessWidget{
    UserProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryThemeBlack,
      body: Center(
        child: Text("Профиль", style: TextStyle(color: Colors.white))
      )
    );
  }
} 