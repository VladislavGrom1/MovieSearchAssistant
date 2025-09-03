import 'package:test/test.dart';
import 'package:generated/generated.dart';

/// tests for StaffApi
void main() {
  final instance = Generated().getStaffApi();

  group(StaffApi, () {
    // получить данные об актерах, режисерах и т.д. по kinopoisk film id
    //
    //Future<BuiltList<StaffResponse>> apiV1StaffGet(int filmId) async
    test('test apiV1StaffGet', () async {
      // TODO
    });

    // получить данные о конкретном человеке по kinopoisk person id
    //
    //Future<PersonResponse> apiV1StaffIdGet(int id) async
    test('test apiV1StaffIdGet', () async {
      // TODO
    });
  });
}
