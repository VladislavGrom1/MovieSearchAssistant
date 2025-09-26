import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/switch_filters_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class SwitchFiltersScreen extends GetView<SwitchFiltersController>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.searchHomeScreen, id: NavigatorIds.searchHome);
          }, 
          icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Поиск фильмов", style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 180.h,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Get.toNamed(Routes.filterScreen, arguments: controller.filterLabels.indexOf(controller.filterLabels[index]), id: NavigatorIds.searchHome);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: SizedBox(
                        height: 48.h,
                        width: 412.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(controller.filterLabels[index], style: CustomTextStyles.m3BodyLarge()),
                            Obx(() => Text(controller.switchFilterData(index), style: CustomTextStyles.m3BodyLarge()))
                          ],
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: AppColors.secondaryThemeGrey,
                  ), 
                  itemCount: 3
                )
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                    alignment: AlignmentGeometry.center,
                    backgroundColor: WidgetStatePropertyAll(AppColors.primaryScheme)
                  ),
                  onPressed: () {
                    // TODO: Переход на окно searchFiltersScreen
                }, 
                child: Text("Показать", style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 40.h)),
                    alignment: AlignmentGeometry.center,
                    backgroundColor: WidgetStatePropertyAll(AppColors.secondaryThemeGrey)
                  ),
                  onPressed: () {
                    controller.resetFilters();
                }, 
                child: Text("Сбросить поиск", style: CustomTextStyles.m3BodyLarge(color: AppColors.primaryTextWhite)),
                ),
              )
            ]
        )
      ),
    );
  }
}