import 'package:test/test.dart';
import 'package:generated/generated.dart';

/// tests for KpUsersApi
void main() {
  final instance = Generated().getKpUsersApi();

  group(KpUsersApi, () {
    // получить данные об оценках пользователя
    //
    // Одна страница может содержать до 20 элементов в items. Доступны не все оценки пользователя, а примерно 1500 последних
    //
    //Future<KinopoiskUserVoteResponse> apiV1KpUsersIdVotesGet(int id, { int page }) async
    test('test apiV1KpUsersIdVotesGet', () async {
      // TODO
    });
  });
}
