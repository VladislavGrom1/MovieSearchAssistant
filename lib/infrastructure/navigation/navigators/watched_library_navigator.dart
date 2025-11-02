import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/film_controller.dart';
import 'package:movie_search_assistant/controllers/watched_library_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/film_screen.dart';
import 'package:movie_search_assistant/view/screens/watched_library_screen.dart';

class WatchedLibraryNavigator extends StatelessWidget{
  WatchedLibraryNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.watchedLibrary),
      onGenerateRoute: (settings) {
        if(settings.name == Routes.filmScreen){

          int idFilm = settings.arguments as int;

          final tag = '${NavigatorIds.watchedLibrary}_$idFilm';
          if (Get.isRegistered<FilmController>(tag: tag)) {
            Get.delete<FilmController>(tag: tag);
          }
          Get.put(FilmController(idFilm: idFilm, navId: NavigatorIds.watchedLibrary), tag: tag);

          return GetPageRoute(
            settings: settings,
            page: () => FilmScreen(idFilm: idFilm, navId: NavigatorIds.watchedLibrary)
          );
        } else{
          Get.put(WatchedLibraryController(), permanent: true);
          return GetPageRoute(
            settings: settings,
            page: () => WatchedLibraryScreen(),
          );
        }
      },
    );
  }
}