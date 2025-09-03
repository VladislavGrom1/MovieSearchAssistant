//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_search_response_films.g.dart';

/// FilmSearchResponseFilms
///
/// Properties:
/// * [filmId]
/// * [nameRu]
/// * [nameEn]
/// * [type]
/// * [year]
/// * [description]
/// * [filmLength]
/// * [countries]
/// * [genres]
/// * [rating]
/// * [ratingVoteCount]
/// * [posterUrl]
/// * [posterUrlPreview]
@BuiltValue()
abstract class FilmSearchResponseFilms
    implements Built<FilmSearchResponseFilms, FilmSearchResponseFilmsBuilder> {
  @BuiltValueField(wireName: r'filmId')
  int? get filmId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'type')
  FilmSearchResponseFilmsTypeEnum? get type;
  // enum typeEnum {  FILM,  TV_SHOW,  VIDEO,  MINI_SERIES,  TV_SERIES,  UNKNOWN,  };

  @BuiltValueField(wireName: r'year')
  String? get year;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'filmLength')
  String? get filmLength;

  @BuiltValueField(wireName: r'countries')
  BuiltList<Country>? get countries;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre>? get genres;

  @BuiltValueField(wireName: r'rating')
  String? get rating;

  @BuiltValueField(wireName: r'ratingVoteCount')
  int? get ratingVoteCount;

  @BuiltValueField(wireName: r'posterUrl')
  String? get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String? get posterUrlPreview;

  FilmSearchResponseFilms._();

  factory FilmSearchResponseFilms(
          [void updates(FilmSearchResponseFilmsBuilder b)]) =
      _$FilmSearchResponseFilms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmSearchResponseFilmsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmSearchResponseFilms> get serializer =>
      _$FilmSearchResponseFilmsSerializer();
}

class _$FilmSearchResponseFilmsSerializer
    implements PrimitiveSerializer<FilmSearchResponseFilms> {
  @override
  final Iterable<Type> types = const [
    FilmSearchResponseFilms,
    _$FilmSearchResponseFilms
  ];

  @override
  final String wireName = r'FilmSearchResponseFilms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmSearchResponseFilms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filmId != null) {
      yield r'filmId';
      yield serializers.serialize(
        object.filmId,
        specifiedType: const FullType(int),
      );
    }
    if (object.nameRu != null) {
      yield r'nameRu';
      yield serializers.serialize(
        object.nameRu,
        specifiedType: const FullType(String),
      );
    }
    if (object.nameEn != null) {
      yield r'nameEn';
      yield serializers.serialize(
        object.nameEn,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FilmSearchResponseFilmsTypeEnum),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.filmLength != null) {
      yield r'filmLength';
      yield serializers.serialize(
        object.filmLength,
        specifiedType: const FullType(String),
      );
    }
    if (object.countries != null) {
      yield r'countries';
      yield serializers.serialize(
        object.countries,
        specifiedType: const FullType(BuiltList, [FullType(Country)]),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(Genre)]),
      );
    }
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingVoteCount != null) {
      yield r'ratingVoteCount';
      yield serializers.serialize(
        object.ratingVoteCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.posterUrl != null) {
      yield r'posterUrl';
      yield serializers.serialize(
        object.posterUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.posterUrlPreview != null) {
      yield r'posterUrlPreview';
      yield serializers.serialize(
        object.posterUrlPreview,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilmSearchResponseFilms object, {
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
    required FilmSearchResponseFilmsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filmId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.filmId = valueDes;
          break;
        case r'nameRu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameRu = valueDes;
          break;
        case r'nameEn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameEn = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilmSearchResponseFilmsTypeEnum),
          ) as FilmSearchResponseFilmsTypeEnum;
          result.type = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.year = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'filmLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filmLength = valueDes;
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
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rating = valueDes;
          break;
        case r'ratingVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ratingVoteCount = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilmSearchResponseFilms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmSearchResponseFilmsBuilder();
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

class FilmSearchResponseFilmsTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FILM')
  static const FilmSearchResponseFilmsTypeEnum FILM =
      _$filmSearchResponseFilmsTypeEnum_FILM;
  @BuiltValueEnumConst(wireName: r'TV_SHOW')
  static const FilmSearchResponseFilmsTypeEnum TV_SHOW =
      _$filmSearchResponseFilmsTypeEnum_TV_SHOW;
  @BuiltValueEnumConst(wireName: r'VIDEO')
  static const FilmSearchResponseFilmsTypeEnum VIDEO =
      _$filmSearchResponseFilmsTypeEnum_VIDEO;
  @BuiltValueEnumConst(wireName: r'MINI_SERIES')
  static const FilmSearchResponseFilmsTypeEnum MINI_SERIES =
      _$filmSearchResponseFilmsTypeEnum_MINI_SERIES;
  @BuiltValueEnumConst(wireName: r'TV_SERIES')
  static const FilmSearchResponseFilmsTypeEnum TV_SERIES =
      _$filmSearchResponseFilmsTypeEnum_TV_SERIES;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const FilmSearchResponseFilmsTypeEnum UNKNOWN =
      _$filmSearchResponseFilmsTypeEnum_UNKNOWN;

  static Serializer<FilmSearchResponseFilmsTypeEnum> get serializer =>
      _$filmSearchResponseFilmsTypeEnumSerializer;

  const FilmSearchResponseFilmsTypeEnum._(String name) : super(name);

  static BuiltSet<FilmSearchResponseFilmsTypeEnum> get values =>
      _$filmSearchResponseFilmsTypeEnumValues;
  static FilmSearchResponseFilmsTypeEnum valueOf(String name) =>
      _$filmSearchResponseFilmsTypeEnumValueOf(name);
}
