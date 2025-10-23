import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/countries_ids.dart';
import 'package:movie_search_assistant/constants/genres_ids.dart';
import 'package:movie_search_assistant/controllers/switch_filters_controller.dart';
import 'package:movie_search_assistant/models/filter_data.dart';

class FilterController extends GetxController{
  FilterController({required this.filterId});

  int filterId;
  FilterData? filterData;

  @override
  void onInit(){
    switchFilterList(filterId);
    super.onInit();
  }

  void pickFilterValue(dynamic selectedValue){
    final switchFiltersController = Get.find<SwitchFiltersController>();
    String filterKey;
    switch (filterId) {
      case 0: filterKey = "Страны"; break;
      case 1: filterKey = "Жанры"; break;
      case 2: filterKey = "Годы"; break;
      default: filterKey = "Страны";
    }
    switchFiltersController.filterValues[filterKey] = selectedValue;
  }

  void switchFilterList(int filterId) async{
    switch (FilterType.values[filterId]) {
      case FilterType.countries:
        filterData = CountriesFilterData();
        break;
      case FilterType.genres:
        filterData = GenresFilterData();
        break;
      case FilterType.years:
        filterData = YearsFilterData();
        break;
    }
  }
}