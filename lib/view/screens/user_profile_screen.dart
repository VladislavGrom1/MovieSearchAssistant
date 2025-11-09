import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/user_profile_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_snack_bar.dart';

class UserProfileScreen extends GetView<UserProfileController>{
    UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryThemeBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        title: Text("Профиль", style: CustomTextStyles.m3TitleLarge()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Obx(() => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("API Key", style: CustomTextStyles.m3TitleLarge()),
              SizedBox(height: 10.h),
              Card(
                color: AppColors.secondaryThemeGrey,
                child: SizedBox(
                  height: 44.h,
                  child: Center(
                    child: Text(
                      controller.userApiKey.value == null ? "API Key не введён" : controller.userApiKey.value.toString(), 
                      style: CustomTextStyles.m3TitleMedium())
                      )
                  )
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                    alignment: AlignmentGeometry.center,
                    backgroundColor: WidgetStatePropertyAll(AppColors.primaryScheme)
                  ),
                  onPressed: () async {
                    final result = await Get.toNamed(Routes.changeApiKeyScreen, id: NavigatorIds.userProfile);
                    if(result == true){
                      await controller.getUserApiKey();
                    }
                  }, 
                child: Text("Изменить API Key", style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
              ),
              SizedBox(height: 20.h),
              Text("Коллекция фильмов", style: CustomTextStyles.m3TitleLarge()),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    label: Text("Экспорт",
                        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme).copyWith(fontWeight: FontWeight.w800, height: 1.3)),
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side:
                                    BorderSide(color: AppColors.primaryScheme, width: 2))),
                        backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                        iconAlignment: IconAlignment.end,
                        icon: Icon(Icons.import_export, color: AppColors.ratingRed),
                    onPressed: () async {
                        try{
                          final result = await controller.saveFilmsFile();
                            if(result){
                              CustomSnackBar.showSuccess(title: "Успех", message: "Коллекция фильмов успешно сохранена на устройство");
                            } else{
                              CustomSnackBar.showError(title: "Ошибка", message: "Не удалось сохранить коллекцию фильмов на устройство");
                            }
                          } catch(e){
                            log(e.toString());
                        }
                      }
                  ),
                  ElevatedButton.icon(
                    label: Text("Импорт",
                        style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme).copyWith(fontWeight: FontWeight.w800, height: 1.3)),
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side:
                                    BorderSide(color: AppColors.primaryScheme, width: 2))),
                        backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                        iconAlignment: IconAlignment.end,
                        icon: Icon(Icons.import_export, color: AppColors.ratingGreen),
                    onPressed: () async {
                        try{
                          final result = await controller.loadFilmsFile();
                          if(result){
                            CustomSnackBar.showSuccess(title: "Успех", message: "Коллекция фильмов успешно импортирована");
                          } else{
                            CustomSnackBar.showError(title: "Ошибка", message: "Не удалось импортировать коллекцию фильмов");
                          }
                        } catch(e){
                          log(e.toString());
                          CustomSnackBar.showError(title: "Ошибка", message: "Не удалось импортировать коллекцию фильмов");
                        }
                      }
                  ),
              ]),
              SizedBox(height: 10.h),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                    alignment: AlignmentGeometry.center,
                    backgroundColor: WidgetStatePropertyAll(AppColors.ratingRed)
                  ),
                  onPressed: () async {
                    Get.dialog(
                      AlertDialog(
                        backgroundColor: AppColors.secondaryThemeGrey,
                        title: Text("Очистить коллекцию фильмов?", style: CustomTextStyles.m3TitleLarge(color: AppColors.primaryTextGrey)),
                        content: Text(
                          "Вы действительно хотите очистить коллекцию фильмов? Это действие необратимо.", 
                          style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextGrey).copyWith(fontWeight: FontWeight.w800),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Get.back();
                            }, 
                            child: Text("Отмена", style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextGrey).copyWith(fontWeight: FontWeight.w800))
                          ),
                          TextButton(
                            onPressed: () async {
                              Get.back();
                              try{
                                await controller.clearAllFilms();
                                CustomSnackBar.showSuccess(title: "Успех", message: "Коллекция фильмов успешно очищена");
                              } catch(e){
                                log(e.toString());
                                CustomSnackBar.showError(title: "Ошибка", message: "Не удалось очистить коллекцию фильмов");
                              }
                            }, 
                            child: Text("Очистить", style: CustomTextStyles.m3TitleMedium(color: AppColors.ratingRed).copyWith(fontWeight: FontWeight.w800))
                          )
                        ],
                    ));
                  }, 
                child: Text("Очистить коллекцию фильмов", style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                    alignment: AlignmentGeometry.center,
                    backgroundColor: WidgetStatePropertyAll(AppColors.secondaryThemeGrey)
                  ),
                  onPressed: () async {
                    try{
                      await controller.clearCache();
                      CustomSnackBar.showSuccess(title: "Успех", message: "Кэш успешно очищен");
                    } catch(e){
                      log(e.toString());
                      CustomSnackBar.showError(title: "Ошибка", message: "Ошибка очистки кэша");
                    }
                  }, 
                child: Text("Очистить кэш", style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
              ),
            Spacer(),
            Center(child: Text("Movie Search Assistant", style: CustomTextStyles.m3BodySmall().copyWith(fontWeight: FontWeight.w700))),
            Center(child: Text("Version 1.0.0", style: CustomTextStyles.m3BodySmall())),
            Center(child: Text("Developer: Vladislav \"Grom\" Vaganov", style: CustomTextStyles.m3BodySmall()))
            ]
          ),
          )
        )
      ),
    );
  }
} 