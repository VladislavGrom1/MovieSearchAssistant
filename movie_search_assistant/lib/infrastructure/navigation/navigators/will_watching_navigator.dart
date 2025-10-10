import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/will_watching_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/will_watching_screen.dart';

class WillWatchingNavigator extends StatelessWidget{
  WillWatchingNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.willWatching),
      onGenerateRoute: (settings) {
        // TODO: Заменить if на вложенный экран, когда он появится
        if(settings.name == Routes.willWatchingScreen){
          return GetPageRoute(
            settings: settings,
            page: () => WillWatchingScreen(),
          );
        } else{
          Get.put(WillWatchingController());
          return GetPageRoute(
            settings: settings,
            page: () => WillWatchingScreen(),
          );
        }
      },
    );
  }
}