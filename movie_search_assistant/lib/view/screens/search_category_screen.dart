import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:movie_search_assistant/view/screens/themes/custom_text_styles.dart';

class SearchCategoryScreen extends GetView<SearchCategoryController>{
  SearchCategoryScreen({super.key, required this.nameCollection});

  final String nameCollection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text(switchNameCollection(nameCollection), style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: Center(
        child: Text("Категория", style: TextStyle(color: Colors.white))
      )
    );
  }

  String switchNameCollection(String nameCollection){
    String titleCollection;
    switch(nameCollection){
      case("TOP_POPULAR_MOVIES"): titleCollection = "Популярные фильмы"; return titleCollection;
      case("POPULAR_SERIES"): titleCollection = "Популярные сериалы"; return titleCollection;
      case("TOP_250_MOVIES"): titleCollection = "Топ 250: фильмы"; return titleCollection;
      case("TOP_250_TV_SHOWS"): titleCollection = "Топ 250: сериалы"; return titleCollection;
      default: titleCollection = "Категория не найдена"; return titleCollection;
    }
  }
} 