import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';

import '../../infrastructure/navigation/routes.dart';

// TODO: Разобраться с очисткой TextFormField (неправильно перерисовывается виджет при unfocus)

class CustomSearchBar extends StatelessWidget{
  CustomSearchBar({super.key, required this.textEditingController});

  Rx<bool> isFocus = false.obs;
  TextEditingController textEditingController;
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context){
    return SizedBox(
        height: 50.h,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondaryThemeGrey,
            borderRadius: BorderRadius.circular(8.w),
          ),
          child: Obx(() =>
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w), 
                  child: Icon(Icons.search, color: AppColors.primaryTextGrey)
                  ),
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    textInputAction: TextInputAction.search,
                    onEditingComplete: () {
                      isFocus.value = false;
                      focusNode.unfocus();
                    },
                    onTapOutside: (event) {
                      isFocus.value = false;
                      focusNode.unfocus();
                    },
                    onTap: () {
                      isFocus.value = true;
                    },
                    onSubmitted: (keyword) {
                      if(keyword == ""){
                        return;
                      } else{
                        clearTextFormField();
                        Get.toNamed(Routes.seatchKeywordScreen, arguments: keyword, id: NavigatorIds.searchHome);
                      }
                    },
                    cursorColor: AppColors.primaryTextGrey,
                  style: TextStyle(color: AppColors.primaryTextGrey),
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                )
                ),
                  Padding(
                    padding: EdgeInsets.only(left:10.w, right: 10.w),
                    child: isFocus.value
                    ? IconButton(
                      onPressed: () {
                        clearTextFormField();
                      },
                      icon: Icon(Icons.clear, color: AppColors.primaryTextGrey)
                    ) 
                    : IconButton(
                      onPressed: () {
                        clearTextFormField();
                      },
                      icon: Icon(Icons.filter_alt_outlined, color: AppColors.primaryTextGrey)
                    )
                  ),
              ],
            ),
          ),
        ),
    );
  }

  void clearTextFormField(){
    textEditingController.clear();
    textEditingController.text = "";
    isFocus.value = false;
  }
}