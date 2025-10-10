import 'package:hive/hive.dart';
part 'user_api_key_info.g.dart';

@HiveType(typeId: 0)
class UserApiKeyInfo {
  @HiveField(0)
  String? apikey;
  @HiveField(1)
  int? requestCount;
  @HiveField(2)
  int? requestUsedCount;
  @HiveField(3)
  String? accountType;

  UserApiKeyInfo(this.apikey, this.requestCount, this.requestUsedCount, this.accountType);
}