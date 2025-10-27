import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/user_profile_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

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
              SizedBox(height: 20.h),
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
            ]
          ),
          )
        )
      ),
    );
  }
} 