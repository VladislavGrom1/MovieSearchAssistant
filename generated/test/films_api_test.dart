import 'package:test/test.dart';
import 'package:generated/generated.dart';

/// tests for FilmsApi
void main() {
  final instance = Generated().getFilmsApi();

  group(FilmsApi, () {
    // получить сиквелы и приквелы для фильма по kinopoisk film id
    //
    // tbd
    //
    //Future<BuiltList<FilmSequelsAndPrequelsResponse>> apiV21FilmsIdSequelsAndPrequelsGet(int id) async
    test('test apiV21FilmsIdSequelsAndPrequelsGet', () async {
      // TODO
    });

    // получить список фильмов по ключевым словам
    //
    // Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    //
    //Future<FilmSearchResponse> apiV21FilmsSearchByKeywordGet(String keyword, { int page }) async
    test('test apiV21FilmsSearchByKeywordGet', () async {
      // TODO
    });

    // получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
    //
    // Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    //
    //Future<FilmCollectionResponse> apiV22FilmsCollectionsGet({ String type, int page }) async
    test('test apiV22FilmsCollectionsGet', () async {
      // TODO
    });

    // получить id стран и жанров для использования в /api/v2.2/films
    //
    // Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films
    //
    //Future<FiltersResponse> apiV22FilmsFiltersGet() async
    test('test apiV22FilmsFiltersGet', () async {
      // TODO
    });

    // получить список фильмов по различным фильтрам
    //
    // Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. <i>Используй /api/v2.2/films/filters чтобы получить id стран и жанров.</i>
    //
    //Future<FilmSearchByFiltersResponse> apiV22FilmsGet({ BuiltList<int> countries, BuiltList<int> genres, String order, String type, num ratingFrom, num ratingTo, int yearFrom, int yearTo, String imdbId, String keyword, int page }) async
    test('test apiV22FilmsGet', () async {
      // TODO
    });

    // получить данные о наградах фильма по kinopoisk film id
    //
    // Данный эндпоинт возвращает данные о наградах и премиях фильма.
    //
    //Future<AwardResponse> apiV22FilmsIdAwardsGet(int id) async
    test('test apiV22FilmsIdAwardsGet', () async {
      // TODO
    });

    // получить данные о бюджете и сборах фильма по kinopoisk film id
    //
    // Данный эндпоинт возвращает данные о бюджете и сборах.
    //
    //Future<BoxOfficeResponse> apiV22FilmsIdBoxOfficeGet(int id) async
    test('test apiV22FilmsIdBoxOfficeGet', () async {
      // TODO
    });

    // получить данные о прокате фильма по kinopoisk film id
    //
    // Данный эндпоинт возвращает данные о прокате в разных странах.
    //
    //Future<DistributionResponse> apiV22FilmsIdDistributionsGet(int id) async
    test('test apiV22FilmsIdDistributionsGet', () async {
      // TODO
    });

    // получить список сайтов, где можно посмотреть фильм по kinopoisk film id
    //
    // Возвращает список сайтов с пагинацией. Каждая страница содержит не более чем 20 рецензий.
    //
    //Future<ExternalSourceResponse> apiV22FilmsIdExternalSourcesGet(int id, { int page }) async
    test('test apiV22FilmsIdExternalSourcesGet', () async {
      // TODO
    });

    // получить данные о фактах и ошибках в фильме по kinopoisk film id
    //
    // Данный эндпоинт возвращает список фактов и ошибок в фильме. <br> type - <b>FACT</b>, обозначает интересный факт о фильме. <br> type - <b>BLOOPER</b>, обозначает ошибку в фильме.
    //
    //Future<FactResponse> apiV22FilmsIdFactsGet(int id) async
    test('test apiV22FilmsIdFactsGet', () async {
      // TODO
    });

    // получить данные о фильме по kinopoisk id
    //
    // Данный эндпоинт возвращает базовые данные о фильме. Поле <b>lastSync</b> показывает дату последнего обновления данных.
    //
    //Future<Film> apiV22FilmsIdGet(int id) async
    test('test apiV22FilmsIdGet', () async {
      // TODO
    });

    // получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
    //
    // Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит <b>не более чем 20 фильмов</b>.</br> Доступные изображения:</br> <ul> <li>STILL - кадры</li> <li>SHOOTING - изображения со съемок</li> <li>POSTER - постеры</li> <li>FAN_ART - фан-арты</li> <li>PROMO - промо</li> <li>CONCEPT - концепт-арты</li> <li>WALLPAPER - обои</li> <li>COVER - обложки</li> <li>SCREENSHOT - скриншоты</li> </ul>
    //
    //Future<ImageResponse> apiV22FilmsIdImagesGet(int id, { String type, int page }) async
    test('test apiV22FilmsIdImagesGet', () async {
      // TODO
    });

    // получить список рецензии зрителей по kinopoisk film id
    //
    // Возвращает список рецензии зрителей с пагинацией. Каждая страница содержит не более чем 20 рецензий.
    //
    //Future<ReviewResponse> apiV22FilmsIdReviewsGet(int id, { int page, String order }) async
    test('test apiV22FilmsIdReviewsGet', () async {
      // TODO
    });

    // получить данные о сезонах для сериала по kinopoisk film id
    //
    // Данный эндпоинт возвращает данные о сезонах для сериала.
    //
    //Future<SeasonResponse> apiV22FilmsIdSeasonsGet(int id) async
    test('test apiV22FilmsIdSeasonsGet', () async {
      // TODO
    });

    // получить список похожих фильмов по kinopoisk film id
    //
    //Future<RelatedFilmResponse> apiV22FilmsIdSimilarsGet(int id) async
    test('test apiV22FilmsIdSimilarsGet', () async {
      // TODO
    });

    // получить трейлеры,тизеры,видео для фильма по kinopoisk film id
    //
    // Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно три site:  <br/> <ul><li>YOUTUBE - в этом случае <b>url</b> это просто ссылка на youtube видео.</li><li>YANDEX_DISK - в этом случае <b>url</b> это ссылка на yandex disk.</li><li>KINOPOISK_WIDGET - в этом случае <b>url</b> это ссылка на кинопоиск виджет. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer=1&autoplay=1&cover=1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  <br/><br/>&lt;script src=&quot;https://unpkg.com/@ungap/custom-elements-builtin&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;module&quot; src=&quot;https://unpkg.com/x-frame-bypass&quot;&gt;&lt;/script&gt;<br/>&lt;iframe is=&quot;x-frame-bypass&quot; src=&quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer=1&amp;autoplay=1&amp;cover=1&quot; width=&quot;500&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;</li></ul>
    //
    //Future<VideoResponse> apiV22FilmsIdVideosGet(int id) async
    test('test apiV22FilmsIdVideosGet', () async {
      // TODO
    });

    // получить список кинопремьер
    //
    // Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/
    //
    //Future<PremiereResponse> apiV22FilmsPremieresGet(int year, String month) async
    test('test apiV22FilmsPremieresGet', () async {
      // TODO
    });
  });
}
