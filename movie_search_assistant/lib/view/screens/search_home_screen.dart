import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/search_home_screen_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:movie_search_assistant/view/screens/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/screens/widgets/custom_search_bar.dart';
import 'package:movie_search_assistant/view/screens/widgets/movie_preview_card.dart';

class SearchHomeScreen extends GetView<SearchHomeScreenController> {
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchBar(
                      textEditingController:
                          controller.searchTextEditingController),
                  // SearchBar(
                  //   shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w))),
                  //   backgroundColor: WidgetStatePropertyAll(AppColors.secondaryThemeGrey),
                  //   elevation: WidgetStatePropertyAll(0),
                  //   leading: Icon(Icons.search, color: AppColors.primaryTextGrey),
                  //   trailing: {
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: Icon(Icons.filter_alt_outlined, color: AppColors.primaryTextGrey)),
                  //   },
                  //   textInputAction: TextInputAction.search,
                  //   controller: controller.searchFormController,
                  //   onTapOutside: (event) => {
                  //     controller.searchFormController
                  //   },
                  //   onSubmitted: (value) async {
                  //     if(value.isNotEmpty){
                  //       try{
                  //         //controller.getKeywordFilms();
                  //         controller.getPremiereFilms();
                  //       } catch(e){
                  //         log(e.toString());
                  //       }
                  //     }
                  //   },
                  // ),
                  SizedBox(height: 13.h),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => categoryFilms(controller.collectionNames[index]), 
                        separatorBuilder: (context, index) => SizedBox(height: 16.w), 
                        itemCount: controller.collectionNames.length)
                    ),
              ]
            )
          ),
      ),
    );
  }

  Widget categoryFilms(String nameCategory) {

    String title;

    switch(nameCategory){
      case("TOP_POPULAR_MOVIES"): title = "Популярные фильмы"; break;
      case("POPULAR_SERIES"): title = "Популярные сериалы"; break;
      case("TOP_250_MOVIES"): title = "Топ 250: фильмы"; break;
      case("TOP_250_TV_SHOWS"): title = "Топ 250: сериалы"; break;
      default: title = "Категория не найдена";
    }

    return Column(
      children: [
      Row(
        children: [
          Text(title, style: CustomTextStyles.m3TitleLarge()),
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.searchCategoryScreen, arguments: nameCategory, id: NavigatorIds.searchHome);
              },
              icon: Icon(Icons.arrow_forward_outlined, color: AppColors.primaryScheme))
        ],
      ),
      Obx(() => controller.isLoading.value
          ? CircularProgressIndicator()
          : SizedBox(
              height: 200.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(width: 12.w),
                  itemBuilder: (context, index) => MoviePreviewCard(
                      film: controller.collectionsFilms[nameCategory]!.items[index])))),
    ]);
  }
}
