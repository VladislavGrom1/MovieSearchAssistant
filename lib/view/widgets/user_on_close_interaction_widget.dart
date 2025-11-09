import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';
import 'package:movie_search_assistant/view/widgets/custom_dialog_widget.dart';

class UserOnCloseInteractionWidget extends StatelessWidget {
  UserOnCloseInteractionWidget(
      {super.key, required this.child, required this.currentNavigatorIndex});

  int currentNavigatorIndex;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          bool canPopInAnyNavigator = false;

          final navigatorKeys = [
            Get.nestedKey(NavigatorIds.searchHome),
            Get.nestedKey(NavigatorIds.userProfile),
            Get.nestedKey(NavigatorIds.watchedLibrary),
            Get.nestedKey(NavigatorIds.willWatching)
          ];

          for (final key in navigatorKeys) {
            if (key?.currentState?.canPop() == true) {
              canPopInAnyNavigator = true;
              break;
            }
          }

          if (canPopInAnyNavigator) {
            Get.back(id: currentNavigatorIndex);
          } else {
            await Get.dialog(
              CustomDialogWidget(
                title: "Выйти из приложения?",
                content: "Вы действительно хотите покинуть приложение?",
                button1: TextButton(
                  onPressed: () => Get.back(),
                  child: Text("Отмена",
                      style: CustomTextStyles.m3TitleMedium(
                              color: AppColors.primaryTextGrey)
                          .copyWith(fontWeight: FontWeight.w800)),
                ),
                button2: TextButton(
                  onPressed: () => SystemNavigator.pop(),
                  child: Text("Выйти",
                      style: CustomTextStyles.m3TitleMedium(
                              color: AppColors.ratingRed)
                          .copyWith(fontWeight: FontWeight.w800)),
                ),
              ),
              barrierDismissible: false,
            );
          }
        },
        child: child,
      );
  }
}
