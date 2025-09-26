import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/filter_controller.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/controllers/switch_filters_controller.dart';
import 'package:movie_search_assistant/controllers/search_keyword_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/filter_screen.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/switch_filters_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/search_keyword_screen.dart';

class SearchHomeNavigator extends StatelessWidget{
  SearchHomeNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.searchHome),
      onGenerateRoute: (settings) {

        if(settings.name == Routes.filterScreen){
          int filterName = settings.arguments as int;

          if (Get.isRegistered<FilterController>()) {
            Get.delete<FilterController>();
          }

          Get.put(FilterController(filterId: filterName));
          return GetPageRoute(
            settings: settings,
            page: () => FilterScreen()
          );
        }
        
        if(settings.name == Routes.switchFiltersScreen){
          Get.put(SwitchFiltersController());
          return GetPageRoute(
            settings: settings,
            page: () => SwitchFiltersScreen()
          );
        }

        if(settings.name == Routes.seatchKeywordScreen){
          String keyword = settings.arguments.toString();

          if (Get.isRegistered<SearchKeywordController>()) {
            Get.delete<SearchKeywordController>();
          }

          Get.put(SearchKeywordController(keyword: keyword));
          return GetPageRoute(
            settings: settings,
            page: () => SearchKeywordScreen(keyword: keyword)
          );
        }
        
        if(settings.name == Routes.searchCategoryScreen) {
          String collectionName = settings.arguments.toString();

          if (Get.isRegistered<SearchCategoryController>()) {
            Get.delete<SearchCategoryController>();
          }
          
          Get.put(SearchCategoryController(collectionName: collectionName));
          return GetPageRoute(
            settings: settings,
            page: () => SearchCategoryScreen(),
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