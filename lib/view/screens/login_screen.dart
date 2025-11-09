import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_dialog_widget.dart';
import 'package:movie_search_assistant/view/widgets/custom_snack_bar.dart';
import 'package:movie_search_assistant/view/widgets/user_on_close_interaction_widget.dart';
import 'package:url_launcher/url_launcher.dart';

// TODO: Когда открывается клавиатура UI выходит за границы

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Get.dialog(
          CustomDialogWidget(
        title: "Выйти из приложения?", 
        content: "Вы действительно хотите покинуть приложение?", 
        button1: TextButton(
          onPressed: () {
            Get.back();
          }, 
          child: Text("Отмена", style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextGrey).copyWith(fontWeight: FontWeight.w800)),
        ), 
        button2: TextButton(
          onPressed: () {
            SystemNavigator.pop();
          }, 
          child: Text("Выйти", style: CustomTextStyles.m3TitleMedium(color: AppColors.ratingRed).copyWith(fontWeight: FontWeight.w800)),
        ), 
        ),
        );
      },
      child: Scaffold(
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
                      child: Text.rich(
                        TextSpan(
                          style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextGrey)
                              .copyWith(fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(text: "Для использования возможностей приложения Вам потребуется зарегистрироваться на сайте "),
                            TextSpan(
                              text: "kinopoiskapiunofficial.tech",
                              style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryScheme)
                                  .copyWith(fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  try{
                                    launchUrl(
                                      Uri.parse('https://kinopoiskapiunofficial.tech/?ysclid=mhhq2ui52t844352392'),
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } catch(e){
                                    log(e.toString());
                                    CustomSnackBar.showError(title: "Ошибка", message: "Не удалось совершить переход по ссылке");
                                  }
                                },
                            ),
                            TextSpan(text: "."),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
        
                        if (!controller.globalNetworkController.isConnectedToInternet.value){
                            CustomSnackBar.showError(title: "Ошибка", message: "Пожалуйста, проверьте интернет соединение");
                            return;
                          }
        
                        if (apiKey.isEmpty) {
                          CustomSnackBar.showError(title: "Ошибка", message: "Пожалуйста, введите API Key");
                          return;
                        }
        
                        try {
                          bool apiKeyIsValid = await controller.entryApiKey();
                          if (apiKeyIsValid) {
                            Get.offAllNamed(Routes.navigationScreen);
                          } else if (!controller.globalNetworkController.isConnectedToInternet.value){
                            CustomSnackBar.showError(title: "Ошибка", message: "Пожалуйста, проверьте корректность API Key");
                            return;
                          }
                        } catch (e) {
                          log(e.toString());
                        }
                      },
                      child: Text("Проверить API Key",
                          style: CustomTextStyles.m3TitleMedium(color: AppColors.primaryTextWhite).copyWith(fontWeight: FontWeight.w800)),
                    ),
                    SizedBox(height: 10.h),
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
            )
      ),
    );
  }
}
