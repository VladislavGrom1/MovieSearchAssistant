import 'package:flutter/material.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';

class WillWatchingScreen extends StatelessWidget{
  WillWatchingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryThemeBlack,
      body: Center(
        child: Text("Буду смотреть", style: TextStyle(color: Colors.white))
      )
    );
  }
} 