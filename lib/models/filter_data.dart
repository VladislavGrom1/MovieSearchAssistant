import 'package:movie_search_assistant/constants/countries_ids.dart';
import 'package:movie_search_assistant/constants/genres_ids.dart';

// TODO: Изменить абстрактный класс под dynamic items

abstract class FilterData {
  String get filterName;
  Map<String, dynamic> get items;
  FilterType get type;
}

enum FilterType {countries, genres, years}

class CountriesFilterData implements FilterData{
  @override
  String get filterName => "Страны";

  @override
  Map<String, dynamic> get items => CountriesIds.countriesMap;

  @override
  FilterType get type => FilterType.countries;
}

class GenresFilterData implements FilterData{
  @override
  String get filterName => "Жанры";

  @override
  Map<String, dynamic> get items => GenresIds.genresMap;

  @override
  FilterType get type => FilterType.genres;
}

class YearsFilterData implements FilterData{
  @override
  String get filterName => "Годы";

  @override
  Map<String, dynamic> get items => _generateYears();

  @override get type => FilterType.years;

  Map<String, dynamic> _generateYears(){
    final currentYear = DateTime.now().year + 1;
    final years = <String, dynamic>{"Все годы": "Все годы"};
    for (int year = currentYear; year >= 2020; year--) {
      years[year.toString()] = year.toString();
    }
    for (int yearMin = 2010, yearMax = 2019; yearMin >= 1900; yearMin = yearMin-10, yearMax = yearMax-10)
    {
      years["$yearMin-$yearMax"] = "$yearMin-$yearMax";
    }
    return years;
  }
}

