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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryScheme,
        child: Icon(Icons.home, color:  AppColors.primaryTextWhite),
        onPressed: () {
          Get.offAndToNamed(Routes.searchHomeScreen, id: NavigatorIds.searchHome);
      }),
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
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                backgroundColor: AppColors.secondaryThemeGrey,
                color: AppColors.primaryTextWhite,
                onRefresh: () async {
                  await controller.resetAndReload();
                },
                child: Obx(() {

                  if(!controller.globalNetworkController.isConnectedToInternet.value){
                        return CustomErrorWidget(statusCode: 0);
                  }
                  
                  if(controller.isErrorConnection.value){
                    return CustomErrorWidget(statusCode: controller.statusCode.value);
                  }
                  
                  return PageStorage(
                    bucket: _bucket, 
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: categoryFilms(),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryFilms() {
    return ListView.separated(
      key: _listViewKey,
      controller: controller.scrollController,
      itemCount: _calculateItemCount(),
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      },
    );
  }

  int _calculateItemCount(){
    final items = controller.collectionFilms.value.items;
    final isLoading = controller.isLoading.value;
    if (items.isEmpty && isLoading) {
      return 10;
    }
    if (items.isEmpty) {
      return 1;
    }
    return items.length + 1;
  }

  Widget _buildListItem(BuildContext context, int index) {
    final items = controller.collectionFilms.value.items;
    
    if (items.isEmpty && controller.isLoading.value) {
      return PreviewFilmCard.fromCategory(null);
    }
    
    if (items.isEmpty) {
      return _buildNoFilmsMessage();
    }

    if (index >= items.length) {
      return _buildBottomWidget();
    }
    
    // Обычная карточка фильма
    return InkWell(
      onTap: () {
        Get.toNamed(
          Routes.filmScreen, 
          arguments: items[index].kinopoiskId, 
          id: NavigatorIds.searchHome
        );
      },
      child: PreviewFilmCard.fromCategory(items[index])
    );
  }

  Widget _buildNoFilmsMessage() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h),
        child: Column(
          children: [
            Icon(Icons.movie_filter_rounded, 
                 color: AppColors.primaryScheme, 
                 size: 60.h),
            SizedBox(height: 16.h),
            Text("Фильмы не найдены", 
                 style: CustomTextStyles.m3BodyLarge().copyWith(
                   fontWeight: FontWeight.w600,
                   color: AppColors.primaryTextGrey
                 )),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomWidget() {
    if (controller.isLoading.value) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryScheme,
          ),
        ),
      );
    }
    
    return Column(
      children: [
        SizedBox(height: 10.h),
        Divider(thickness: 2.h, color: AppColors.primaryScheme),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle_rounded, 
                   color: AppColors.primaryScheme, 
                   size: 24.h),
              SizedBox(width: 8.w),
              Text("Все фильмы загружены", 
                   style: CustomTextStyles.m3BodyMedium().copyWith(
                     fontWeight: FontWeight.w500,
                     color: AppColors.primaryTextGrey
                   )),
            ],
          ),
        ),
      ],
    );
  }

  String switchNameCollection(String collectionName) {
    switch(collectionName) {
      case "TOP_POPULAR_MOVIES": 
        return "Популярные фильмы";
      case "POPULAR_SERIES": 
        return "Популярные сериалы";
      case "TOP_250_MOVIES": 
        return "Топ 250: фильмы";
      case "TOP_250_TV_SHOWS": 
        return "Топ 250: сериалы";
      default: 
        return "Категория не найдена";
    }
  }
}