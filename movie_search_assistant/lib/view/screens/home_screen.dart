import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/home_screen_controller.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});


  // TODO: Подумать, как сделать единую Model для фильмов, чтобы при разных запросах не реализовывать Switch
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SearchBar(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w))),
                backgroundColor: WidgetStatePropertyAll(AppColors.secondaryDarkThemeGrey),
                hintText: "Поиск по названию",
                leading: IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.search, color: AppColors.primaryDarkThemeBlack)
                ),
                textInputAction: TextInputAction.search,
                controller: controller.searchFormController,
                onSubmitted: (value) async {
                  if(value.isNotEmpty){
                    try{
                      controller.getKeywordFilms();
                    } catch(e){
                      log(e.toString());
                    }
                  }
                },
              ),
              SizedBox(height: 40.h),
              TextButton.icon(
                label: Text("Получить фильмы"),
                icon: Icon(Icons.download),
                onPressed: () async {
                  try{
                    controller.getPremiereFilms();
                  } catch(e){
                    log(e.toString());
                  }
                }, 
              ),
              SizedBox(height: 40.h),
              // Expanded(
              //   child: ListView.separated(
              //     itemBuilder: (context, index) => controller.films.value.items.isEmpty 
              //     ? Text("Фильмы отсутствуют")
              //     : ListTile(
              //       titleAlignment: ListTileTitleAlignment.top,
              //       leading: Image.network(controller.films.value.items[index].posterUrl),
              //       title: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(controller.films.value.items.isEmpty ? "Имя неизвестно" : controller.films.value.items[index].nameRu.toString()),
              //         Text(controller.films.value.items.isEmpty ? "Год неизвестен" : controller.films.value.items[index].year.toString()),
              //       ],
              //     ),
              //     ), 
              //     separatorBuilder: (context, index) => Divider(color: Colors.grey, height: 1.h), 
              //     itemCount: controller.films.value.items.isEmpty ? 1 : controller.films.value.items.length),
              // ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => controller.filteredKeywordFilms.value.items.isEmpty
                  ? Text("Фильмы отсутствуют", style: TextStyle(color: AppColors.secondaryDarkThemeGrey))
                  : ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: Image.network(controller.filteredKeywordFilms.value.items[index].posterUrl!),
                    title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.filteredKeywordFilms.value.items.isEmpty 
                        ? "Имя неизвестно" 
                        : controller.filteredKeywordFilms.value.items[index].nameRu.toString(),
                        style: TextStyle(color: AppColors.secondaryDarkThemeGrey)),
                      Text(
                        controller.filteredKeywordFilms.value.items.isEmpty 
                        ? "Год неизвестен" 
                        : controller.filteredKeywordFilms.value.items[index].year.toString(),
                        style: TextStyle(color: AppColors.secondaryDarkThemeGrey)),
                    ],
                  ),
                  ), 
                  separatorBuilder: (context, index) => Divider(color: Colors.grey, height: 1.h), 
                  itemCount: controller.filteredKeywordFilms.value.items.isEmpty ? 1 : controller.filteredKeywordFilms.value.items.length),
              ),
              ]
            )
                    ),
          )
      )
    );
  }

  
}
