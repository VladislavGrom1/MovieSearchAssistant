import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryThemeBlack,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70.h),
                Center(
                    child: Text("Movie Search Assistant",
                        style: CustomTextStyles.m3HeadlineLarge(
                            color: AppColors.primaryScheme))),
                SizedBox(height: 60.h),
                Center(
                    child: Text(
                        "Для использования возможностей приложения Вам потребуется зарегистрироваться на сайте kinopoiskapiunofficial.",
                        style: CustomTextStyles.m3BodyLarge(
                                color: AppColors.primaryTextGrey)
                            .copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center)),
                SizedBox(height: 20.h),
                Center(
                    child: Text(
                        "После успешной регистрации введите полученный API Key.",
                        style: CustomTextStyles.m3BodyLarge(
                                color: AppColors.primaryTextGrey)
                            .copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center)),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: controller.textEditingController,
                  style: CustomTextStyles.m3BodyLarge(
                      color: AppColors.primaryScheme),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\-]')),
                  ],
                  decoration: InputDecoration(
                    label: Text("API Key",
                        style: CustomTextStyles.m3BodyLarge(
                            color: AppColors.primaryScheme)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryScheme),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryScheme),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryScheme),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryScheme),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                      alignment: AlignmentGeometry.center,
                      backgroundColor:
                          WidgetStatePropertyAll(AppColors.primaryScheme)),
                  onPressed: () async {
                    final apiKey = controller.textEditingController.text.trim();

                    if (apiKey.isEmpty) {
                      Get.snackbar(
                        "",
                        "",
                        titleText: Text("Ошибка",
                            style: CustomTextStyles.m3BodyLarge(
                                    color: AppColors.primaryThemeBlack)
                                .copyWith(
                                    fontWeight: FontWeight.w800, height: 1.3)),
                        messageText: Text("Пожалуйста, введите API Key",
                            style: CustomTextStyles.m3BodyLarge(
                                    color: AppColors.primaryThemeBlack)
                                .copyWith(
                                    fontWeight: FontWeight.w400, height: 1.3)),
                        icon: Icon(Icons.error,
                            color: AppColors.primaryThemeBlack),
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: AppColors.primaryScheme,
                        colorText: AppColors.primaryThemeBlack,
                      );
                      return;
                    }

                    try {
                      bool apiKeyIsValid = await controller.entryApiKey();

                      if (apiKeyIsValid) {
                        Get.offAllNamed(Routes.navigationScreen);
                      } else {
                        Get.snackbar(
                          "",
                          "",
                          titleText: Text("Ошибка",
                              style: CustomTextStyles.m3BodyLarge(
                                      color: AppColors.primaryThemeBlack)
                                  .copyWith(
                                      fontWeight: FontWeight.w800,
                                      height: 1.3)),
                          messageText: Text(
                              "Пожалуйста, проверьте корректность API Key",
                              style: CustomTextStyles.m3BodyLarge(
                                      color: AppColors.primaryThemeBlack)
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      height: 1.3)),
                          icon: Icon(Icons.error,
                              color: AppColors.primaryThemeBlack),
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: AppColors.primaryScheme,
                          colorText: AppColors.primaryThemeBlack,
                        );
                        return;
                      }
                    } catch (e) {
                      log(e.toString());
                    }
                  },
                  child: Text("Проверить API Key",
                      style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
                ),
                SizedBox(height: 20.h),
                Center(
                    child: Text(
                        "Вы можете ввести API Key позднее на вкладке Профиль в Movie Search Assistant",
                        style: CustomTextStyles.m3BodyLarge(
                                color: AppColors.primaryTextGrey)
                            .copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center)),
                SizedBox(height: 20.h),
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                      alignment: AlignmentGeometry.center,
                      backgroundColor:
                          WidgetStatePropertyAll(AppColors.secondaryThemeGrey)),
                  onPressed: () {
                    Get.offAllNamed(Routes.navigationScreen);
                  },
                  child: Text("Пропустить",
                      style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
                ),
              ],
            ),
          ),
        ));
  }
}
