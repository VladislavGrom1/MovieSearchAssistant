import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/di_init.dart';
import 'package:movie_search_assistant/view/screens/home_screen.dart';
import 'package:movie_search_assistant/view/screens/themes/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  DiInit.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 927),
      child: GetMaterialApp(
        title: 'Movie Search Assistant',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryDarkThemeBlack,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.secondaryDarkThemeGrey,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondaryDarkThemeGrey),
        ),
        home: HomeScreen()
        )
    );
  }
}

