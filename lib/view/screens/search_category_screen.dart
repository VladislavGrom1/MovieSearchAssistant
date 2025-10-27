import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_error_widget.dart';
import 'package:movie_search_assistant/view/widgets/preview_film_card.dart';

class SearchCategoryScreen extends GetView<SearchCategoryController>{
  SearchCategoryScreen({super.key});

  final PageStorageBucket _bucket = PageStorageBucket();
  final PageStorageKey _listViewKey = const PageStorageKey<String>('category_films_list');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text(switchNameCollection(controller.collectionName), style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Obx(() {
          if(controller.isErrorConnection.value){
            return CustomErrorWidget(statusCode: controller.statusCode.value);
          }

          return PageStorage(
          bucket: _bucket, 
          child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                children: [
                  Flexible(child: categoryFilms()),
                ],
              )
          ),
          );

        } 
        ),
      ),
    );
  }

  Widget categoryFilms() {
  return ListView.separated(
    key: _listViewKey,
    controller: controller.scrollController,
    itemCount: controller.collectionFilms.value.items.isEmpty && controller.isLoading.value
        ? 10
        : controller.collectionFilms.value.items.length + (controller.isLoading.value ? 1 : 0),
    separatorBuilder: (context, index) => SizedBox(height: 12.h),
    itemBuilder: (context, index) {
      
      if (controller.collectionFilms.value.items.isEmpty && controller.isLoading.value) {
        return PreviewFilmCard.fromCategory(null);
      }

      if (index == controller.collectionFilms.value.items.length - 1) {
        if (controller.isLoading.value) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return Column(
          children: [
            SizedBox(height: 10.h),
            Divider(thickness: 4.h, color: AppColors.primaryScheme),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.warning_amber_rounded, color: AppColors.primaryScheme, size: 30.h),
                Text("Все фильмы загружены", style: CustomTextStyles.m3BodyLarge().copyWith(fontWeight: FontWeight.w600))
              ],
            ),
            SizedBox(height: 20.h),
          ],
        );
      }

      return InkWell(
        onTap: () {
          Get.toNamed(Routes.filmScreen, arguments: controller.collectionFilms.value.items[index].kinopoiskId, id: NavigatorIds.searchHome);
        },
        child: PreviewFilmCard.fromCategory(controller.collectionFilms.value.items[index])
      );
    },
  );
}
  

  String switchNameCollection(String collectionName){
    String titleCollection;
    switch(collectionName){
      case("TOP_POPULAR_MOVIES"): titleCollection = "Популярные фильмы"; return titleCollection;
      case("POPULAR_SERIES"): titleCollection = "Популярные сериалы"; return titleCollection;
      case("TOP_250_MOVIES"): titleCollection = "Топ 250: фильмы"; return titleCollection;
      case("TOP_250_TV_SHOWS"): titleCollection = "Топ 250: сериалы"; return titleCollection;
      default: titleCollection = "Категория не найдена"; return titleCollection;
    }
  }
} 