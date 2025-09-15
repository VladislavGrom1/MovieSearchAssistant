import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';

class SearchHomeNavigator extends StatelessWidget{
  SearchHomeNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.searchHome),
      onGenerateRoute: (settings) {
        if(settings.name == Routes.searchCategoryScreen){
          String nameCollection = settings.arguments.toString();
          return GetPageRoute(
            settings: settings,
            page: () => SearchCategoryScreen(nameCollection: nameCollection),
          );
        } else{
          return GetPageRoute(
            settings: settings, 
            page: () => SearchHomeScreen(),
          );
        }
      },
    );
  }
}