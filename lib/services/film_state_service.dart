import 'package:get/get.dart';

import 'package:get/get.dart';

class FilmStateService extends GetxService {
  static FilmStateService get to => Get.find();

  final updatedFilmIds = <int>{}.obs;
  
  void notifyFilmUpdated(int filmId) {
    updatedFilmIds.add(filmId);
  }
}