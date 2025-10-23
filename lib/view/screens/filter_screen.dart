import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/filter_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/themes/colors.dart' show AppColors;
import 'package:movie_search_assistant/view/themes/custom_text_styles.dart';

class FilterScreen extends GetView<FilterController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryThemeBlack,
        iconTheme: IconThemeData(
          color: AppColors.primaryTextGrey
        ),
        centerTitle: true,
        title: Text(controller.filterData!.filterName, style: CustomTextStyles.m3TitleLarge()),
      ),
      backgroundColor: AppColors.primaryThemeBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      controller.pickFilterValue(controller.filterData!.items.values.elementAt(index));
                      Get.offAllNamed(Routes.switchFiltersScreen, id: NavigatorIds.searchHome);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: SizedBox(
                        height: 48.h,
                        width: 412.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(controller.filterData!.items.keys.elementAt(index), style: CustomTextStyles.m3BodyLarge()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: AppColors.secondaryThemeGrey,
                  ), 
                  itemCount: controller.filterData!.items.length
                ),
            )
          ]
        ),
      ),
    );
  }

}