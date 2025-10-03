import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/search_filters_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/filter_movie_card.dart';

class SearchFiltersScreen extends GetView<SearchFiltersController> {
  SearchFiltersScreen({super.key});

  final PageStorageBucket _bucket = PageStorageBucket();
  final PageStorageKey _listViewKey =
      const PageStorageKey<String>('keyword_films_list');

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getFilterFilms();
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(color: AppColors.primaryTextGrey),
        centerTitle: true,
        title: Text(
            controller.keyword == null
                ? "Результаты"
                : "Поиск: ${controller.keyword}",
            style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
          child: Obx(() => PageStorage(
              bucket: _bucket,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Column(
                    children: [Flexible(child: keywordFilms())],
                  ))))),
    );
  }

  Widget keywordFilms() {
    return ListView.separated(
      key: _listViewKey,
      controller: controller.scrollController,
      itemCount: controller.filteredKeywordFilms.value.items.isEmpty &&
              controller.isLoading.value
          ? 10
          : controller.filteredKeywordFilms.value.items.length +
              (controller.isLoading.value ? 1 : 0),
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        if (controller.filteredKeywordFilms.value.items.isEmpty &&
            controller.isLoading.value) {
          return FilterMovieCard(film: null);
        }

        if (index == controller.filteredKeywordFilms.value.items.length) {
          if (controller.isLoading.value) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          if (controller.totalPages.value != null &&
              controller.currentPage.value >= controller.totalPages.value!) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Center(
                child: Text(
                  "Все фильмы загружены",
                  style: CustomTextStyles.m3TitleLarge().copyWith(
                    color: AppColors.primaryTextGrey,
                    fontSize: 14.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
        }
        return InkWell(
          onTap: () {
            Get.toNamed(Routes.filmScreen,
                arguments: controller
                    .filteredKeywordFilms.value.items[index].kinopoiskId,
                id: NavigatorIds.searchHome);
          },
          child: FilterMovieCard(
            film: controller.filteredKeywordFilms.value.items[index],
          ),
        );
      },
    );
  }

  String switchNameCollection(String collectionName) {
    String titleCollection;
    switch (collectionName) {
      case ("TOP_POPULAR_MOVIES"):
        titleCollection = "Популярные фильмы";
        return titleCollection;
      case ("POPULAR_SERIES"):
        titleCollection = "Популярные сериалы";
        return titleCollection;
      case ("TOP_250_MOVIES"):
        titleCollection = "Топ 250: фильмы";
        return titleCollection;
      case ("TOP_250_TV_SHOWS"):
        titleCollection = "Топ 250: сериалы";
        return titleCollection;
      default:
        titleCollection = "Категория не найдена";
        return titleCollection;
    }
  }
}
