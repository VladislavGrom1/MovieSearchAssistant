import 'package:test/test.dart';
import 'package:generated/generated.dart';

/// tests for PersonsApi
void main() {
  final instance = Generated().getPersonsApi();

  group(PersonsApi, () {
    // поиск актеров, режиссеров и т.д. по имени
    //
    // Одна страница может содержать до 50 элементов в items.
    //
    //Future<PersonByNameResponse> apiV1PersonsGet(String name, { int page }) async
    test('test apiV1PersonsGet', () async {
      // TODO
    });
  });
}
