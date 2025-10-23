import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/movie_library_screen.dart';

class MovieLibraryNavigator extends StatelessWidget{
  MovieLibraryNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.movieLibrary),
      onGenerateRoute: (settings) {
        // TODO: Заменить if на вложенный экран, когда он появится
        if(settings.name == Routes.movieLibraryScreen){
          return GetPageRoute(
            settings: settings,
            page: () => MovieLibraryScreen(),
          );
        } else{
          return GetPageRoute(
            settings: settings,
            page: () => MovieLibraryScreen(),
          );
        }
      },
    );
  }
}