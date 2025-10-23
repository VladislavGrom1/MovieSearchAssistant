
import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/models/filter_data.dart';

class SwitchFiltersController extends GetxController{

  List<String> filterLabels = ["Страны", "Жанры", "Годы"];

  CountriesFilterData countriesFilterData = CountriesFilterData();
  GenresFilterData genresFilterData = GenresFilterData();
  YearsFilterData yearsFilterData = YearsFilterData();

  RxMap<String, dynamic> filterValues = <String, dynamic>{
    "Страны": null,
    "Жанры": null,
    "Годы": "Все годы"
  }.obs;

  String switchFilterData(int currentIndex){
    switch(currentIndex){
      case(0):
        if (filterValues["Страны"] == null) {
          return "Все страны";
        } 
        return countriesFilterData.items.entries.firstWhere(
          (entry) => entry.value == filterValues["Страны"]).key.toString();
      case(1):
        if (filterValues["Жанры"] == null) {
          return "Все жанры";
        }
        return genresFilterData.items.entries.firstWhere(
          (entry) => entry.value == filterValues["Жанры"]).key.toString();
      case(2): 
        return filterValues["Годы"];
    }
    return "Значение не найдено";
  }

  BuiltList<int>? countryValueToBuiltList(){
    final countryValue = filterValues["Страны"];
    return countryValue == null ? null : BuiltList<int>([countryValue]);
  }

  BuiltList<int>? genreValueToBuiltList(){
    final genreValue = filterValues["Жанры"];
    return genreValue == null ? null : BuiltList<int>([genreValue]);
  }

  List<int> getYearsValue(){
    if(filterValues["Годы"] == "Все годы"){
      return [1000, 3000];
    }

    if(filterValues["Годы"].toString().contains("-")){
      final parts = filterValues["Годы"].toString().split("-");
      final yearFrom = int.tryParse(parts[0]) ?? 1000;
      final yearsTo = int.tryParse(parts[1]) ?? 3000;
      return [yearFrom, yearsTo];
    } else{
      final year = int.tryParse(filterValues["Годы"].toString()) ?? DateTime.now().year;
      return [year, year];
    }
  }

  void resetFilters(){
    filterValues["Страны"] = null;
    filterValues["Жанры"] = null;
    filterValues["Годы"] = "Все годы";
    filterValues.refresh();
  }

}