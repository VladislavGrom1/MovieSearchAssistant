import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/controllers/film_controller.dart';
import 'package:movie_search_assistant/controllers/filter_controller.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/controllers/switch_filters_controller.dart';
import 'package:movie_search_assistant/controllers/search_filters_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/view/screens/film_screen.dart';
import 'package:movie_search_assistant/view/screens/filter_screen.dart';
import 'package:movie_search_assistant/view/screens/search_category_screen.dart';
import 'package:movie_search_assistant/view/screens/switch_filters_screen.dart';
import 'package:movie_search_assistant/view/screens/search_home_screen.dart';
import 'package:movie_search_assistant/view/screens/search_filters_screen.dart';

class SearchHomeNavigator extends StatelessWidget{
  SearchHomeNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return Navigator(
      key: Get.nestedKey(NavigatorIds.searchHome),
      onGenerateRoute: (settings) {

        if(settings.name == Routes.filmScreen){

          int idFilm = settings.arguments as int;
          
          if (Get.isRegistered<FilmController>()) {
            Get.delete<FilmController>();
          }

          Get.put(FilmController(idFilm: idFilm));
          return GetPageRoute(
            settings: settings,
            page: () => FilmScreen()
          );
        }

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

        if(settings.name == Routes.searchFiltersScreen){

          Map<dynamic, dynamic> arguments = settings.arguments as Map;
          
          String? keyword;
          BuiltList<int>? countries;
          BuiltList<int>? genres;
          int? yearsFrom;
          int? yearsTo;
          
          if(arguments["id"] == "CustomSearchBar"){
            keyword = arguments["keyword"];
          }

          if(arguments["id"] == "SwitchFilterScreen"){
            countries = arguments["countries"];
            genres = arguments["genres"];
            yearsFrom = arguments["years"][0];
            yearsTo = arguments["years"][1];
          }
          
          if (Get.isRegistered<SearchFiltersController>()) {
            Get.delete<SearchFiltersController>();
          }

          Get.put(SearchFiltersController(
            keyword: keyword,
            countries: countries,
            genres: genres,
            yearFrom: yearsFrom,
            yearTo: yearsTo));
            
          return GetPageRoute(
            settings: settings,
            page: () => SearchFiltersScreen()
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