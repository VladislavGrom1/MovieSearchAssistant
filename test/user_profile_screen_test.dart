import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/user_profile_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/infrastructure/storage/film_storage.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/view/screens/user_profile_screen.dart';

class MockUserRepository extends UserRepository {
  @override
  Future<String?> getUserApiKeyFromStorage() async => "mock-api-key-123";
}

class MockUserStorage extends UserStorage {
  
}

class MockFilmStorage extends FilmStorage{

}

class MockFilmRepository extends FilmRepository {
  @override
  Future<void> removeAllFilmsFromStorage() async {}

  @override
  Future<List<FilmCard>?> getAllFilmsFromStorage() async => null;

  @override
  Future<void> addFilmInStorage(FilmCard film) async {}

  @override
  Future<bool> filmIsExistInStorage(int? kinopoiskId) async => false;
}

// === ТЕСТ ===

void main() {
  group('UserProfileScreen', () {
    setUpAll(() {
      Get.put<UserStorage>(MockUserStorage());
      Get.put<FilmStorage>(MockFilmStorage());
      Get.put<UserRepository>(MockUserRepository(), permanent: true);
      Get.put<FilmRepository>(MockFilmRepository(), permanent: true);
      Get.put<UserProfileController>(UserProfileController(), permanent: true);
    });

    tearDownAll(() {
      Get.reset();
    });

    testWidgets('должен отображать заголовок "Профиль"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('Профиль'), findsOneWidget);
    });

    testWidgets('должен отображать API Key', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('mock-api-key-123'), findsOneWidget);
    });

    testWidgets('должен отображать кнопку "Изменить API Key"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('Изменить API Key'), findsOneWidget);
    });

    testWidgets('должен отображать кнопки "Экспорт" и "Импорт"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('Экспорт'), findsOneWidget);
      expect(find.text('Импорт'), findsOneWidget);
    });

    testWidgets('должен отображать кнопку "Очистить коллекцию фильмов"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('Очистить коллекцию фильмов'), findsOneWidget);
    });

    testWidgets('должен отображать футер с версией и разработчиком', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: UserProfileScreen(),
            routes: {
              Routes.userProfileScreen: (_) => UserProfileScreen(),
            },
          ),
        ),
      );

      expect(find.text('Movie Search Assistant'), findsOneWidget);
      expect(find.text('Version 1.0.0'), findsOneWidget);
      expect(find.text('Developer: Vladislav "Grom" Vaganov'), findsOneWidget);
    });
  });
}