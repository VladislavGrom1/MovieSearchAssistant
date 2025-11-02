import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/change_api_key_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ChangeApiKeyScreen extends GetView<ChangeApiKeyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryThemeBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        title:
            Text("Изменение API Key", style: CustomTextStyles.m3TitleLarge()),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.primaryTextGrey),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            SizedBox(height: 10.h),
                            Text("Текущий API Key",
                                style: CustomTextStyles.m3TitleLarge()),
                            SizedBox(height: 10.h),
                            Card(
                                color: AppColors.secondaryThemeGrey,
                                child: SizedBox(
                                    height: 44.h,
                                    child: Center(
                                        child: Text(
                                            controller.currentUserApiKey
                                                        .value ==
                                                    null
                                                ? "API Key не введён"
                                                : controller
                                                    .currentUserApiKey.value
                                                    .toString(),
                                            style: CustomTextStyles
                                                .m3TitleMedium())))),
                            SizedBox(height: 20.h),
                            Center(
                              child: Text.rich(
                                TextSpan(
                                  style: CustomTextStyles.m3BodyLarge(
                                          color: AppColors.primaryTextGrey)
                                      .copyWith(fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                        text:
                                            "Для использования возможностей приложения Вам потребуется зарегистрироваться на сайте "),
                                    TextSpan(
                                      text: "kinopoiskapiunofficial.tech",
                                      style: CustomTextStyles.m3BodyLarge(
                                              color: AppColors.primaryScheme)
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          try {
                                            launchUrl(
                                              Uri.parse(
                                                  'https://kinopoiskapiunofficial.tech/?ysclid=mhhq2ui52t844352392'),
                                              mode: LaunchMode
                                                  .externalApplication,
                                            );
                                          } catch (e) {
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
                            Text("Новый API Key",
                                style: CustomTextStyles.m3TitleLarge()),
                            SizedBox(height: 20.h),
                            TextFormField(
                              controller: controller.textEditingController,
                              style: CustomTextStyles.m3BodyLarge(
                                  color: AppColors.primaryScheme),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[a-zA-Z0-9\-_]')),
                              ],
                              decoration: InputDecoration(
                                label: Text("Новый API Key",
                                    style: CustomTextStyles.m3BodyLarge(
                                        color: AppColors.primaryScheme)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.primaryScheme),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.primaryScheme),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.primaryScheme),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.primaryScheme),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize: WidgetStatePropertyAll(
                                      Size(double.infinity, 40.h)),
                                  alignment: AlignmentGeometry.center,
                                  backgroundColor: WidgetStatePropertyAll(
                                      AppColors.primaryScheme)),
                              onPressed: () async {
                                final apiKey = controller
                                    .textEditingController.text
                                    .trim();
                                if (!controller.globalNetworkController
                                    .isConnectedToInternet.value) {
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
                                    CustomSnackBar.showSuccess(title: "Успешно", message: "API Key успешно сохранён");
                                    Get.back(id: NavigatorIds.userProfile, result: true);
                                  } else {
                                    CustomSnackBar.showError(title: "Ошибка", message: "Пожалуйста, проверьте корректность API Key");
                                    return;
                                  }
                                } catch (e) {
                                  log(e.toString());
                                }
                              },
                              child: Text("Сохранить изменения",
                                  style: CustomTextStyles.m3TitleMedium(
                                          color: AppColors.primaryTextWhite)
                                      .copyWith(fontWeight: FontWeight.w800)),
                            ),
                          ]),
              ))),
    );
  }
}
