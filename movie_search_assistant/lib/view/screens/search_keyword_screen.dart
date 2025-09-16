import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/search_keyword_controller.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:movie_search_assistant/view/screens/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/screens/widgets/movie_card.dart';

class SearchKeywordScreen extends GetView<SearchKeywordController>{
  SearchKeywordScreen({super.key, required this.keyword});

  final String keyword;

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getKeywordFilms(keyword);
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text("Поиск: ${keyword}", style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Obx(() => controller.isLoading.value
            ? CircularProgressIndicator()
            : ListView.separated(
                itemBuilder: (context, index) => MovieCard(film: controller.filteredKeywordFilms.value.items[index]), 
                separatorBuilder: (context, index) => SizedBox(height: 16.h), 
                itemCount: controller.filteredKeywordFilms.value.items.length
              )
            ),
        ),
      ),
    );
  }
} 