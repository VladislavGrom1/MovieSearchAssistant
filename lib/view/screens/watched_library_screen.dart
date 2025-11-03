import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/watched_library_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_alert_widget.dart';
import 'package:movie_search_assistant/view/widgets/preview_film_card.dart';

class WatchedLibraryScreen extends GetView<WatchedLibraryController>{
  WatchedLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    if (!Get.isRegistered<WatchedLibraryController>()) {
      Get.put(WatchedLibraryController());
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text("Просмотрено", style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Obx(() {
            final films = controller.filmsWatched.value;
          
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
                child: CustomAlertWidget(description: "Для сохранения фильма - измените его статус просмотра"),
              );
            }
          
            return Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  children: [
                    Flexible(child: watchedLibraryFilms()),
                  ],
                )
            );
          }
          ),
      )
    );
  }

   Widget watchedLibraryFilms() {
    return ListView.separated(
      itemCount: controller.filmsWatched.value!.length,
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
              arguments: controller.filmsWatched.value![index].kinopoiskId,
              id: NavigatorIds.watchedLibrary,
            );
            await controller.getFilmWatchedCollection();
          },
          child: PreviewFilmCard.fromStorage(controller.filmsWatched.value![index])
        );
      },
    );
  }
} 