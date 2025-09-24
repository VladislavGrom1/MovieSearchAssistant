
import 'package:get/get.dart';

class SwitchFiltersController extends GetxController{

  List<String> filterLabels = ["Страны", "Жанры", "Годы"];

  RxMap<String, String> filterValues = <String, String>{
    "Страны": "Все страны",
    "Жанры": "Все жанры",
    "Годы": "Все годы"
  }.obs;

}