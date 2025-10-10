import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/models/user_api_key_info.dart';

class HiveInit {
  
  static Future<void> init() async{
    await Hive.initFlutter();

    Hive.registerAdapter(UserApiKeyInfoAdapter());
    Hive.registerAdapter(FilmCardAdapter());

    await Hive.openBox<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
    await Hive.openBox<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
  }
}