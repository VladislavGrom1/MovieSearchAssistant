//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film.g.dart';

/// Film
///
/// Properties:
/// * [kinopoiskId]
/// * [kinopoiskHDId]
/// * [imdbId]
/// * [nameRu]
/// * [nameEn]
/// * [nameOriginal]
/// * [posterUrl]
/// * [posterUrlPreview]
/// * [coverUrl]
/// * [logoUrl]
/// * [reviewsCount]
/// * [ratingGoodReview]
/// * [ratingGoodReviewVoteCount]
/// * [ratingKinopoisk]
/// * [ratingKinopoiskVoteCount]
/// * [ratingImdb]
/// * [ratingImdbVoteCount]
/// * [ratingFilmCritics]
/// * [ratingFilmCriticsVoteCount]
/// * [ratingAwait]
/// * [ratingAwaitCount]
/// * [ratingRfCritics]
/// * [ratingRfCriticsVoteCount]
/// * [webUrl]
/// * [year]
/// * [filmLength]
/// * [slogan]
/// * [description]
/// * [shortDescription]
/// * [editorAnnotation]
/// * [isTicketsAvailable]
/// * [productionStatus]
/// * [type]
/// * [ratingMpaa]
/// * [ratingAgeLimits]
/// * [hasImax]
/// * [has3D]
/// * [lastSync]
/// * [countries]
/// * [genres]
/// * [startYear]
/// * [endYear]
/// * [serial]
/// * [shortFilm]
/// * [completed]
@BuiltValue()
abstract class Film implements Built<Film, FilmBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int get kinopoiskId;

  @BuiltValueField(wireName: r'kinopoiskHDId')
  String? get kinopoiskHDId;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'nameOriginal')
  String? get nameOriginal;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String get posterUrlPreview;

  @BuiltValueField(wireName: r'coverUrl')
  String? get coverUrl;

  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  @BuiltValueField(wireName: r'reviewsCount')
  int get reviewsCount;

  @BuiltValueField(wireName: r'ratingGoodReview')
  num? get ratingGoodReview;

  @BuiltValueField(wireName: r'ratingGoodReviewVoteCount')
  int? get ratingGoodReviewVoteCount;

  @BuiltValueField(wireName: r'ratingKinopoisk')
  num? get ratingKinopoisk;

  @BuiltValueField(wireName: r'ratingKinopoiskVoteCount')
  int? get ratingKinopoiskVoteCount;

  @BuiltValueField(wireName: r'ratingImdb')
  num? get ratingImdb;

  @BuiltValueField(wireName: r'ratingImdbVoteCount')
  int? get ratingImdbVoteCount;

  @BuiltValueField(wireName: r'ratingFilmCritics')
  num? get ratingFilmCritics;

  @BuiltValueField(wireName: r'ratingFilmCriticsVoteCount')
  int? get ratingFilmCriticsVoteCount;

  @BuiltValueField(wireName: r'ratingAwait')
  num? get ratingAwait;

  @BuiltValueField(wireName: r'ratingAwaitCount')
  int? get ratingAwaitCount;

  @BuiltValueField(wireName: r'ratingRfCritics')
  num? get ratingRfCritics;

  @BuiltValueField(wireName: r'ratingRfCriticsVoteCount')
  int? get ratingRfCriticsVoteCount;

  @BuiltValueField(wireName: r'webUrl')
  String get webUrl;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'filmLength')
  int? get filmLength;

  @BuiltValueField(wireName: r'slogan')
  String? get slogan;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'shortDescription')
  String? get shortDescription;

  @BuiltValueField(wireName: r'editorAnnotation')
  String? get editorAnnotation;

  @BuiltValueField(wireName: r'isTicketsAvailable')
  bool get isTicketsAvailable;

  @BuiltValueField(wireName: r'productionStatus')
  FilmProductionStatusEnum? get productionStatus;
  // enum productionStatusEnum {  FILMING,  PRE_PRODUCTION,  COMPLETED,  ANNOUNCED,  UNKNOWN,  POST_PRODUCTION,  };

  @BuiltValueField(wireName: r'type')
  FilmTypeEnum get type;
  // enum typeEnum {  FILM,  VIDEO,  TV_SERIES,  MINI_SERIES,  TV_SHOW,  };

  @BuiltValueField(wireName: r'ratingMpaa')
  String? get ratingMpaa;

  @BuiltValueField(wireName: r'ratingAgeLimits')
  String? get ratingAgeLimits;

  @BuiltValueField(wireName: r'hasImax')
  bool? get hasImax;

  @BuiltValueField(wireName: r'has3D')
  bool? get has3D;

  @BuiltValueField(wireName: r'lastSync')
  String get lastSync;

  @BuiltValueField(wireName: r'countries')
  BuiltList<Country> get countries;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre> get genres;

  @BuiltValueField(wireName: r'startYear')
  int? get startYear;

  @BuiltValueField(wireName: r'endYear')
  int? get endYear;

  @BuiltValueField(wireName: r'serial')
  bool? get serial;

  @BuiltValueField(wireName: r'shortFilm')
  bool? get shortFilm;

  @BuiltValueField(wireName: r'completed')
  bool? get completed;

  Film._();

  factory Film([void updates(FilmBuilder b)]) = _$Film;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Film> get serializer => _$FilmSerializer();
}

class _$FilmSerializer implements PrimitiveSerializer<Film> {
  @override
  final Iterable<Type> types = const [Film, _$Film];

  @override
  final String wireName = r'Film';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Film object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinopoiskId';
    yield serializers.serialize(
      object.kinopoiskId,
      specifiedType: const FullType(int),
    );
    yield r'kinopoiskHDId';
    yield object.kinopoiskHDId == null
        ? null
        : serializers.serialize(
            object.kinopoiskHDId,
            specifiedType: const FullType.nullable(String),
          );
    yield r'imdbId';
    yield object.imdbId == null
        ? null
        : serializers.serialize(
            object.imdbId,
            specifiedType: const FullType.nullable(String),
          );
    yield r'nameRu';
    yield object.nameRu == null
        ? null
        : serializers.serialize(
            object.nameRu,
            specifiedType: const FullType.nullable(String),
          );
    yield r'nameEn';
    yield object.nameEn == null
        ? null
        : serializers.serialize(
            object.nameEn,
            specifiedType: const FullType.nullable(String),
          );
    yield r'nameOriginal';
    yield object.nameOriginal == null
        ? null
        : serializers.serialize(
            object.nameOriginal,
            specifiedType: const FullType.nullable(String),
          );
    yield r'posterUrl';
    yield serializers.serialize(
      object.posterUrl,
      specifiedType: const FullType(String),
    );
    yield r'posterUrlPreview';
    yield serializers.serialize(
      object.posterUrlPreview,
      specifiedType: const FullType(String),
    );
    yield r'coverUrl';
    yield object.coverUrl == null
        ? null
        : serializers.serialize(
            object.coverUrl,
            specifiedType: const FullType.nullable(String),
          );
    yield r'logoUrl';
    yield object.logoUrl == null
        ? null
        : serializers.serialize(
            object.logoUrl,
            specifiedType: const FullType.nullable(String),
          );
    yield r'reviewsCount';
    yield serializers.serialize(
      object.reviewsCount,
      specifiedType: const FullType(int),
    );
    yield r'ratingGoodReview';
    yield object.ratingGoodReview == null
        ? null
        : serializers.serialize(
            object.ratingGoodReview,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingGoodReviewVoteCount';
    yield object.ratingGoodReviewVoteCount == null
        ? null
        : serializers.serialize(
            object.ratingGoodReviewVoteCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'ratingKinopoisk';
    yield object.ratingKinopoisk == null
        ? null
        : serializers.serialize(
            object.ratingKinopoisk,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingKinopoiskVoteCount';
    yield object.ratingKinopoiskVoteCount == null
        ? null
        : serializers.serialize(
            object.ratingKinopoiskVoteCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'ratingImdb';
    yield object.ratingImdb == null
        ? null
        : serializers.serialize(
            object.ratingImdb,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingImdbVoteCount';
    yield object.ratingImdbVoteCount == null
        ? null
        : serializers.serialize(
            object.ratingImdbVoteCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'ratingFilmCritics';
    yield object.ratingFilmCritics == null
        ? null
        : serializers.serialize(
            object.ratingFilmCritics,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingFilmCriticsVoteCount';
    yield object.ratingFilmCriticsVoteCount == null
        ? null
        : serializers.serialize(
            object.ratingFilmCriticsVoteCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'ratingAwait';
    yield object.ratingAwait == null
        ? null
        : serializers.serialize(
            object.ratingAwait,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingAwaitCount';
    yield object.ratingAwaitCount == null
        ? null
        : serializers.serialize(
            object.ratingAwaitCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'ratingRfCritics';
    yield object.ratingRfCritics == null
        ? null
        : serializers.serialize(
            object.ratingRfCritics,
            specifiedType: const FullType.nullable(num),
          );
    yield r'ratingRfCriticsVoteCount';
    yield object.ratingRfCriticsVoteCount == null
        ? null
        : serializers.serialize(
            object.ratingRfCriticsVoteCount,
            specifiedType: const FullType.nullable(int),
          );
    yield r'webUrl';
    yield serializers.serialize(
      object.webUrl,
      specifiedType: const FullType(String),
    );
    yield r'year';
    yield object.year == null
        ? null
        : serializers.serialize(
            object.year,
            specifiedType: const FullType.nullable(int),
          );
    yield r'filmLength';
    yield object.filmLength == null
        ? null
        : serializers.serialize(
            object.filmLength,
            specifiedType: const FullType.nullable(int),
          );
    yield r'slogan';
    yield object.slogan == null
        ? null
        : serializers.serialize(
            object.slogan,
            specifiedType: const FullType.nullable(String),
          );
    yield r'description';
    yield object.description == null
        ? null
        : serializers.serialize(
            object.description,
            specifiedType: const FullType.nullable(String),
          );
    yield r'shortDescription';
    yield object.shortDescription == null
        ? null
        : serializers.serialize(
            object.shortDescription,
            specifiedType: const FullType.nullable(String),
          );
    yield r'editorAnnotation';
    yield object.editorAnnotation == null
        ? null
        : serializers.serialize(
            object.editorAnnotation,
            specifiedType: const FullType.nullable(String),
          );
    yield r'isTicketsAvailable';
    yield serializers.serialize(
      object.isTicketsAvailable,
      specifiedType: const FullType(bool),
    );
    yield r'productionStatus';
    yield object.productionStatus == null
        ? null
        : serializers.serialize(
            object.productionStatus,
            specifiedType: const FullType.nullable(FilmProductionStatusEnum),
          );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FilmTypeEnum),
    );
    yield r'ratingMpaa';
    yield object.ratingMpaa == null
        ? null
        : serializers.serialize(
            object.ratingMpaa,
            specifiedType: const FullType.nullable(String),
          );
    yield r'ratingAgeLimits';
    yield object.ratingAgeLimits == null
        ? null
        : serializers.serialize(
            object.ratingAgeLimits,
            specifiedType: const FullType.nullable(String),
          );
    yield r'hasImax';
    yield object.hasImax == null
        ? null
        : serializers.serialize(
            object.hasImax,
            specifiedType: const FullType.nullable(bool),
          );
    yield r'has3D';
    yield object.has3D == null
        ? null
        : serializers.serialize(
            object.has3D,
            specifiedType: const FullType.nullable(bool),
          );
    yield r'lastSync';
    yield serializers.serialize(
      object.lastSync,
      specifiedType: const FullType(String),
    );
    yield r'countries';
    yield serializers.serialize(
      object.countries,
      specifiedType: const FullType(BuiltList, [FullType(Country)]),
    );
    yield r'genres';
    yield serializers.serialize(
      object.genres,
      specifiedType: const FullType(BuiltList, [FullType(Genre)]),
    );
    yield r'startYear';
    yield object.startYear == null
        ? null
        : serializers.serialize(
            object.startYear,
            specifiedType: const FullType.nullable(int),
          );
    yield r'endYear';
    yield object.endYear == null
        ? null
        : serializers.serialize(
            object.endYear,
            specifiedType: const FullType.nullable(int),
          );
    if (object.serial != null) {
      yield r'serial';
      yield serializers.serialize(
        object.serial,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.shortFilm != null) {
      yield r'shortFilm';
      yield serializers.serialize(
        object.shortFilm,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.completed != null) {
      yield r'completed';
      yield serializers.serialize(
        object.completed,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Film object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinopoiskId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kinopoiskId = valueDes;
          break;
        case r'kinopoiskHDId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kinopoiskHDId = valueDes;
          break;
        case r'imdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imdbId = valueDes;
          break;
        case r'nameRu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameRu = valueDes;
          break;
        case r'nameEn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameEn = valueDes;
          break;
        case r'nameOriginal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameOriginal = valueDes;
          break;
        case r'posterUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrl = valueDes;
          break;
        case r'posterUrlPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrlPreview = valueDes;
          break;
        case r'coverUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverUrl = valueDes;
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoUrl = valueDes;
          break;
        case r'reviewsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reviewsCount = valueDes;
          break;
        case r'ratingGoodReview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingGoodReview = valueDes;
          break;
        case r'ratingGoodReviewVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingGoodReviewVoteCount = valueDes;
          break;
        case r'ratingKinopoisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingKinopoisk = valueDes;
          break;
        case r'ratingKinopoiskVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingKinopoiskVoteCount = valueDes;
          break;
        case r'ratingImdb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingImdb = valueDes;
          break;
        case r'ratingImdbVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingImdbVoteCount = valueDes;
          break;
        case r'ratingFilmCritics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingFilmCritics = valueDes;
          break;
        case r'ratingFilmCriticsVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingFilmCriticsVoteCount = valueDes;
          break;
        case r'ratingAwait':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingAwait = valueDes;
          break;
        case r'ratingAwaitCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingAwaitCount = valueDes;
          break;
        case r'ratingRfCritics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingRfCritics = valueDes;
          break;
        case r'ratingRfCriticsVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingRfCriticsVoteCount = valueDes;
          break;
        case r'webUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webUrl = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'filmLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.filmLength = valueDes;
          break;
        case r'slogan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slogan = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'shortDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortDescription = valueDes;
          break;
        case r'editorAnnotation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.editorAnnotation = valueDes;
          break;
        case r'isTicketsAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTicketsAvailable = valueDes;
          break;
        case r'productionStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FilmProductionStatusEnum),
          ) as FilmProductionStatusEnum?;
          if (valueDes == null) continue;
          result.productionStatus = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilmTypeEnum),
          ) as FilmTypeEnum;
          result.type = valueDes;
          break;
        case r'ratingMpaa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ratingMpaa = valueDes;
          break;
        case r'ratingAgeLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ratingAgeLimits = valueDes;
          break;
        case r'hasImax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasImax = valueDes;
          break;
        case r'has3D':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.has3D = valueDes;
          break;
        case r'lastSync':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastSync = valueDes;
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Country)]),
          ) as BuiltList<Country>;
          result.countries.replace(valueDes);
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Genre)]),
          ) as BuiltList<Genre>;
          result.genres.replace(valueDes);
          break;
        case r'startYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.startYear = valueDes;
          break;
        case r'endYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endYear = valueDes;
          break;
        case r'serial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.serial = valueDes;
          break;
        case r'shortFilm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.shortFilm = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.completed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Film deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class FilmProductionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FILMING')
  static const FilmProductionStatusEnum FILMING =
      _$filmProductionStatusEnum_FILMING;
  @BuiltValueEnumConst(wireName: r'PRE_PRODUCTION')
  static const FilmProductionStatusEnum PRE_PRODUCTION =
      _$filmProductionStatusEnum_PRE_PRODUCTION;
  @BuiltValueEnumConst(wireName: r'COMPLETED')
  static const FilmProductionStatusEnum COMPLETED =
      _$filmProductionStatusEnum_COMPLETED;
  @BuiltValueEnumConst(wireName: r'ANNOUNCED')
  static const FilmProductionStatusEnum ANNOUNCED =
      _$filmProductionStatusEnum_ANNOUNCED;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const FilmProductionStatusEnum UNKNOWN =
      _$filmProductionStatusEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'POST_PRODUCTION')
  static const FilmProductionStatusEnum POST_PRODUCTION =
      _$filmProductionStatusEnum_POST_PRODUCTION;

  static Serializer<FilmProductionStatusEnum> get serializer =>
      _$filmProductionStatusEnumSerializer;

  const FilmProductionStatusEnum._(String name) : super(name);

  static BuiltSet<FilmProductionStatusEnum> get values =>
      _$filmProductionStatusEnumValues;
  static FilmProductionStatusEnum valueOf(String name) =>
      _$filmProductionStatusEnumValueOf(name);
}

class FilmTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FILM')
  static const FilmTypeEnum FILM = _$filmTypeEnum_FILM;
  @BuiltValueEnumConst(wireName: r'VIDEO')
  static const FilmTypeEnum VIDEO = _$filmTypeEnum_VIDEO;
  @BuiltValueEnumConst(wireName: r'TV_SERIES')
  static const FilmTypeEnum TV_SERIES = _$filmTypeEnum_TV_SERIES;
  @BuiltValueEnumConst(wireName: r'MINI_SERIES')
  static const FilmTypeEnum MINI_SERIES = _$filmTypeEnum_MINI_SERIES;
  @BuiltValueEnumConst(wireName: r'TV_SHOW')
  static const FilmTypeEnum TV_SHOW = _$filmTypeEnum_TV_SHOW;

  static Serializer<FilmTypeEnum> get serializer => _$filmTypeEnumSerializer;

  const FilmTypeEnum._(String name) : super(name);

  static BuiltSet<FilmTypeEnum> get values => _$filmTypeEnumValues;
  static FilmTypeEnum valueOf(String name) => _$filmTypeEnumValueOf(name);
}
