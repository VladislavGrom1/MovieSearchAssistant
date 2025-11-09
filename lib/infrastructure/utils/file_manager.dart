import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_search_assistant/controllers/permission_controller.dart';
import 'package:movie_search_assistant/infrastructure/utils/film_mapper.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:path_provider/path_provider.dart';

class FileManager {
  static Future<List<FilmCard>?> importListFilms() async {
    try {
      bool permissionStatus = await PermissionController().checkPermissionManageStorage();

      if(permissionStatus == false){
        log("Пользователь отклонил разрешения");
        return null;
      }

      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
      );

      if (result == null) {
        log("Пользователь отменил выбор файла");
        return null;
      }
      
      final PlatformFile platformFile = result.files.single;
      String jsonString;
      
      if (platformFile.path != null) {
        final File file = File(platformFile.path!);
        jsonString = await file.readAsString();
      } else {
        log("Невозможно прочитать содержимое файла");
        return null;
      }

      final dynamic jsonDynamic = jsonDecode(jsonString);
    
      if (jsonDynamic is! List) {
        log("Ожидался JSON-массив, но получен: ${jsonDynamic.runtimeType}");
        return null;
      }

      final List<Map<String, dynamic>> mapList = [];
      for (final item in jsonDynamic) {
        if (item is Map<String, dynamic>) {
          mapList.add(item);
        } else {
          log("Пропущен некорректный элемент: не является Map: $item");
        }
      }

      List<FilmCard>? listFilmCard = FilmMapper.mapToListFilmCard(mapList);
      return listFilmCard;
    } catch(e) {
      log(e.toString());
      rethrow;
    } 
  }

  static Future<bool> exportListFilms(List<FilmCard>? films) async {
    try {

      if(films == null || films.isEmpty){
        log("Коллекция сохранённых фильмов пустая");
        return false;
      }

      bool permissionStatus = await PermissionController().checkPermissionManageStorage();

      if(permissionStatus == false){
        log("Пользователь отклонил разрешения");
        return false;
      }

      List<Map<String, dynamic>> filmsMap = FilmMapper.listFilmCardToMap(films);
      String jsonString = jsonEncode(filmsMap);
      Uint8List bytes = Uint8List.fromList(utf8.encode(jsonString));
      
      final String? filepath = await FilePicker.platform.saveFile(
        fileName: "MovieSearchAssistantSavedFilms.json",
        type: FileType.custom,
        allowedExtensions: ['json'],
        bytes: bytes
      );
    
      if (filepath == null) {
        log("Пользователь отменил сохранение файла");
        return false;
      }

      log("Файл успешно сохранён: $filepath");
      return true;

    } catch(e) {
      log(e.toString());
      rethrow;
    } 
  }
}