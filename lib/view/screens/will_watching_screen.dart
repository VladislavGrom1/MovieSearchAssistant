import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/will_watching_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_warning_widget.dart';
import 'package:movie_search_assistant/view/widgets/custom_error_widget.dart';
import 'package:movie_search_assistant/view/widgets/preview_film_card.dart';

class WillWatchingScreen extends GetView<WillWatchingController>{
  WillWatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    if (!Get.isRegistered<WillWatchingController>()) {
      Get.put(WillWatchingController());
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text("Буду смотреть", style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Obx(() {
            final films = controller.filmsWillWatch.value;
          
            if (films == null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16.h),
                    Text("Загрузка...", style: CustomTextStyles.m3BodyMedium()),
                  ],
                ),
              );
            }
          
            if (films.isEmpty) {
              return Center(
                child: CustomWarningWidget(description: "Для сохранения фильма - измените его статус просмотра"),
              );
            }
          
            return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  children: [
                    Flexible(child: willWatchCollectionFilms()),
                  ],
                )
            );
          }
          ),
      )
    );
  }

   Widget willWatchCollectionFilms() {
    return ListView.separated(
      itemCount: controller.filmsWillWatch.value!.length,
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {

        if (controller.isLoading.value) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(child: CircularProgressIndicator()),
            );
        }
        return InkWell(
          onTap: () async {
            await Get.toNamed(
              Routes.filmScreen,
              arguments: controller.filmsWillWatch.value![index].kinopoiskId,
              id: NavigatorIds.willWatching,
            );
            await controller.getFilmWillWatchingCollection();
          },
          child: PreviewFilmCard.fromStorage(controller.filmsWillWatch.value![index])
        );
      },
    );
  }
} 