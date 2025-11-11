import 'dart:io';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/infrastructure/storage/film_storage.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:test/test.dart';

void main() {

  late FilmStorage filmStorage;
  late Directory tempDir;

  setUpAll(() async {
    filmStorage = FilmStorage();
    tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);
    Hive.registerAdapter(FilmCardAdapter());
  });

  tearDownAll(() async {
    await Hive.close();
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  });

  setUp(() async {
    await Hive.openBox<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
  });

  tearDown(() async {
    final box = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
    await box.clear();
    await box.close();
  });

  group("FilmStorage", () {
    test("Функция addFilm должна сохранить фильм в локальное хранилище", () async {
      final film = FilmCard(
        kinopoiskId: -1,
        nameRu: "Test Film 1",
        description: "Test Film",
      );
      await filmStorage.addFilm(film);      
      final storedFilm = await filmStorage.getFilm(-1);
      expect(storedFilm, isNotNull);
      expect(storedFilm!.nameRu, 'Test Film 1');
    });

    test("Функция getFilm должна выдать Null при попытке получить фильм, отсутствующий в локальном хранилище", () async {
      final film = await filmStorage.getFilm(999);
      expect(film, isNull);
    });

    test('Функция getAllFilms должна вернуть все сохраненные фильмы в локальном хранилище', () async {
      final film1 = FilmCard(kinopoiskId: 1, nameRu: 'Test Film 1');
      final film2 = FilmCard(kinopoiskId: 2, nameRu: 'Test Film 2');

      await filmStorage.addFilm(film1);
      await filmStorage.addFilm(film2);

      final films = await filmStorage.getAllFilms();
      expect(films, isNotNull);
      expect(films!.length, 2);
      expect(films.map((f) => f.kinopoiskId).toList(), [1, 2]);
    });

    test('Функция removeFilm должна удалить фильм из локального хранилища по его Id', () async {
      final film = FilmCard(kinopoiskId: 5, nameRu: 'Test Film 1');
      await filmStorage.addFilm(film);
      await filmStorage.removeFilm(5);
      final deletedFilm = await filmStorage.getFilm(5);
      expect(deletedFilm, isNull);
    });

    test('Функция removeAllFilms должна удалить все фильмы из локального хранилища', () async {
      await filmStorage.addFilm(FilmCard(kinopoiskId: 10, nameRu: 'Test Film 1'));
      await filmStorage.addFilm(FilmCard(kinopoiskId: 11, nameRu: 'Test Film 2'));

      await filmStorage.removeAllFilms();

      final films = await filmStorage.getAllFilms();
      expect(films, isNotNull);
      expect(films!.isEmpty, isTrue);
    });
    
  });
}