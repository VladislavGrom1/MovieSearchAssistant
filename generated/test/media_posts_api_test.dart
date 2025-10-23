import 'package:test/test.dart';
import 'package:generated/generated.dart';

/// tests for MediaPostsApi
void main() {
  final instance = Generated().getMediaPostsApi();

  group(MediaPostsApi, () {
    // получить медиа новости с сайта кинопоиск
    //
    // Одна страница может содержать до 20 элементов в items.
    //
    //Future<MediaPostsResponse> apiV1MediaPostsGet({ int page }) async
    test('test apiV1MediaPostsGet', () async {
      // TODO
    });
  });
}
