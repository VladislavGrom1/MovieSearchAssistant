import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/navigation/route_manager.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/infrastructure/storage/storage_manager.dart';
import 'package:movie_search_assistant/services/di_init.dart';
import 'package:movie_search_assistant/services/film_state_service.dart';
import 'package:movie_search_assistant/services/hive_init.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveInit.init();
  DiInit.init();
  // Очищения хранилищая для теста
  //await StorageManager.clearUserFilmsBox();
  runApp(const MyApp());
}

// TODO: При отсутствии интернета постеры из локального хранилища не загрузятся, т.к там URL

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 927),
      child: GetMaterialApp(
        initialRoute: Routes.rootScreen,
        getPages: RouteManager.getPages(),
        title: 'Movie Search Assistant',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryThemeBlack,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.secondaryThemeGrey,
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryScheme),
        ),
        )
    );
  }
}

