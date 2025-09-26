
import 'package:get/get.dart';
import 'package:movie_search_assistant/models/filter_data.dart';

class SwitchFiltersController extends GetxController{

  List<String> filterLabels = ["Страны", "Жанры", "Годы"];

  CountriesFilterData countriesFilterData = CountriesFilterData();
  GenresFilterData genresFilterData = GenresFilterData();
  YearsFilterData yearsFilterData = YearsFilterData();

  RxMap<String, dynamic> filterValues = <String, dynamic>{
    "Страны": 0,
    "Жанры": 0,
    "Годы": "Все годы"
  }.obs;

  String switchFilterData(int currentIndex){
    switch(currentIndex){
      case(0): 
        return countriesFilterData.items.entries.firstWhere(
          (entry) => entry.value == filterValues["Страны"]).key.toString();
      case(1):
        return genresFilterData.items.entries.firstWhere(
          (entry) => entry.value == filterValues["Жанры"]).key.toString();
      case(2): 
        return filterValues["Годы"];
    }
    return "Значение не найдено";
  }

  void resetFilters(){
    filterValues["Страны"] = 0;
    filterValues["Жанры"] = 0;
    filterValues["Годы"] = "Все годы";
    filterValues.refresh();
  }

}