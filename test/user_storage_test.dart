import 'dart:io';

import 'package:hive/hive.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';
import 'package:movie_search_assistant/models/user_api_key_info.dart';
import 'package:test/test.dart';

void main() {

  late UserStorage userStorage;
  late Directory tempDir;

  setUpAll(() async {
    userStorage = UserStorage();
    tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);
    Hive.registerAdapter(UserApiKeyInfoAdapter());
  });

  tearDownAll(() async {
    await Hive.close();
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  });

  setUp(() async {
    await Hive.openBox<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
  });

  tearDown(() async {
    final box = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
    await box.clear();
    await box.close();
  });

  group("UserStorage", () {
    test("Функция addUserApiKey должна сохранить фильм в локальное хранилище", () async {
      final userApiKeyInfo = UserApiKeyInfo("TestApiKey", null, null, null);
      await userStorage.addUserApiKey(userApiKeyInfo.apikey!);    
      final storedUserApiKey = await userStorage.getUserApiKey();
      expect(storedUserApiKey, isNotNull);
      expect(storedUserApiKey, 'TestApiKey');
    });

    test("Функция getUserApiKey должна выдать Null при попытке получить ApiKey, отсутствующий в локальном хранилище", () async {
      final userApiKeyInfo = await userStorage.getUserApiKey();
      expect(userApiKeyInfo, isNull);
    });

    test('Функция removeUserApiKey должна удалить UserApiKey из локального хранилища', () async {
      final userApiKeyInfo = UserApiKeyInfo("TestApiKey", null, null, null);
      await userStorage.addUserApiKey(userApiKeyInfo.apikey!);
      await userStorage.removeUserApiKey();
      final deletedUserApiKey = await userStorage.getUserApiKey();
      expect(deletedUserApiKey, isNull);
    });

  });
}