import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/global_network_controller.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/infrastructure/storage/film_storage.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';
import 'package:movie_search_assistant/view/screens/login_screen.dart';
import 'package:movie_search_assistant/services/di_init.dart';

class MockUserRepository extends UserRepository {
  Future<void> addUserApiKeyInStorage(String key) async {}
}   

class MockGlobalApiService extends GlobalApiService {
  Future<bool> validateApiKey(String key) async => true;
}

class MockGlobalNetworkController extends GlobalNetworkController {
  @override
  final RxBool _isConnected = true.obs;

  @override
  RxBool get isConnectedToInternet => _isConnected;

  @override
  void onInit() {
  }
}

class MockUserStorage extends UserStorage {
  
}
class MockFilmStorage extends FilmStorage{

}

void main() {
  group('LoginScreen', () {
    setUpAll(() {
      Get.put<GlobalNetworkController>(MockGlobalNetworkController(), permanent: true);
      Get.put<UserStorage>(MockUserStorage(), permanent: true);
      Get.put<FilmStorage>(MockFilmStorage(), permanent: true);
      Get.put<UserRepository>(MockUserRepository(), permanent: true);
      Get.put<GlobalApiService>(MockGlobalApiService(), permanent: true);
      Get.put<LoginController>(LoginController(), permanent: true);
    });

    tearDownAll(() {
      Get.reset();
    });

    testWidgets('должен отображать заголовок "Movie Search Assistant"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: LoginScreen(),
            routes: {
              Routes.loginScreen: (_) => LoginScreen(),
            },
          ),
        ),
      );

      expect(find.text('Movie Search Assistant'), findsOneWidget);
    });

    testWidgets('должен отображать TextFormField с API Key', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: LoginScreen(),
            routes: {
              Routes.loginScreen: (_) => LoginScreen(),
            },
          ),
        ),
      );

      expect(find.byKey(const Key('apiTextFormField')), findsOneWidget);
    });

    testWidgets('должен отображать кнопку "Проверить API Key"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: LoginScreen(),
            routes: {
              Routes.loginScreen: (_) => LoginScreen(),
            },
          ),
        ),
      );

      expect(find.text('Проверить API Key'), findsOneWidget);
    });

    testWidgets('должен отображать кнопку "Пропустить"', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(412, 927),
          child: GetMaterialApp(
            home: LoginScreen(),
            routes: {
              Routes.loginScreen: (_) => LoginScreen(),
            },
          ),
        ),
      );

      expect(find.text('Пропустить'), findsOneWidget);
    });
  });
}