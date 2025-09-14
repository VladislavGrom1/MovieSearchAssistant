import 'package:flutter/material.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';

class SearchCategoryScreen extends StatelessWidget{
  SearchCategoryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryThemeBlack,
      body: Center(
        child: Text("Категория", style: TextStyle(color: Colors.white))
      )
    );
  }
} 