//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_search_by_filters_response_items.g.dart';

/// FilmSearchByFiltersResponseItems
///
/// Properties:
/// * [kinopoiskId]
/// * [imdbId]
/// * [nameRu]
/// * [nameEn]
/// * [nameOriginal]
/// * [countries]
/// * [genres]
/// * [ratingKinopoisk]
/// * [ratingImdb]
/// * [year]
/// * [type]
/// * [posterUrl]
/// * [posterUrlPreview]
@BuiltValue()
abstract class FilmSearchByFiltersResponseItems
    implements
        Built<FilmSearchByFiltersResponseItems,
            FilmSearchByFiltersResponseItemsBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int? get kinopoiskId;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'nameOriginal')
  String? get nameOriginal;

  @BuiltValueField(wireName: r'countries')
  BuiltList<Country>? get countries;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre>? get genres;

  @BuiltValueField(wireName: r'ratingKinopoisk')
  num? get ratingKinopoisk;

  @BuiltValueField(wireName: r'ratingImdb')
  num? get ratingImdb;

  @BuiltValueField(wireName: r'year')
  num? get year;

  @BuiltValueField(wireName: r'type')
  FilmSearchByFiltersResponseItemsTypeEnum? get type;
  // enum typeEnum {  FILM,  TV_SHOW,  VIDEO,  MINI_SERIES,  TV_SERIES,  UNKNOWN,  };

  @BuiltValueField(wireName: r'posterUrl')
  String? get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String? get posterUrlPreview;

  FilmSearchByFiltersResponseItems._();

  factory FilmSearchByFiltersResponseItems(
          [void updates(FilmSearchByFiltersResponseItemsBuilder b)]) =
      _$FilmSearchByFiltersResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmSearchByFiltersResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmSearchByFiltersResponseItems> get serializer =>
      _$FilmSearchByFiltersResponseItemsSerializer();
}

class _$FilmSearchByFiltersResponseItemsSerializer
    implements PrimitiveSerializer<FilmSearchByFiltersResponseItems> {
  @override
  final Iterable<Type> types = const [
    FilmSearchByFiltersResponseItems,
    _$FilmSearchByFiltersResponseItems
  ];

  @override
  final String wireName = r'FilmSearchByFiltersResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmSearchByFiltersResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinopoiskId != null) {
      yield r'kinopoiskId';
      yield serializers.serialize(
        object.kinopoiskId,
        specifiedType: const FullType(int),
      );
    }
    if (object.imdbId != null) {
      yield r'imdbId';
      yield serializers.serialize(
        object.imdbId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nameRu != null) {
      yield r'nameRu';
      yield serializers.serialize(
        object.nameRu,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nameEn != null) {
      yield r'nameEn';
      yield serializers.serialize(
        object.nameEn,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nameOriginal != null) {
      yield r'nameOriginal';
      yield serializers.serialize(
        object.nameOriginal,
        specifiedType: const FullType.nullable(String),
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
    if (object.ratingKinopoisk != null) {
      yield r'ratingKinopoisk';
      yield serializers.serialize(
        object.ratingKinopoisk,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.ratingImdb != null) {
      yield r'ratingImdb';
      yield serializers.serialize(
        object.ratingImdb,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FilmSearchByFiltersResponseItemsTypeEnum),
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
    FilmSearchByFiltersResponseItems object, {
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
    required FilmSearchByFiltersResponseItemsBuilder result,
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
        case r'ratingKinopoisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingKinopoisk = valueDes;
          break;
        case r'ratingImdb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingImdb = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(FilmSearchByFiltersResponseItemsTypeEnum),
          ) as FilmSearchByFiltersResponseItemsTypeEnum;
          result.type = valueDes;
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
  FilmSearchByFiltersResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmSearchByFiltersResponseItemsBuilder();
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

class FilmSearchByFiltersResponseItemsTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FILM')
  static const FilmSearchByFiltersResponseItemsTypeEnum FILM =
      _$filmSearchByFiltersResponseItemsTypeEnum_FILM;
  @BuiltValueEnumConst(wireName: r'TV_SHOW')
  static const FilmSearchByFiltersResponseItemsTypeEnum TV_SHOW =
      _$filmSearchByFiltersResponseItemsTypeEnum_TV_SHOW;
  @BuiltValueEnumConst(wireName: r'VIDEO')
  static const FilmSearchByFiltersResponseItemsTypeEnum VIDEO =
      _$filmSearchByFiltersResponseItemsTypeEnum_VIDEO;
  @BuiltValueEnumConst(wireName: r'MINI_SERIES')
  static const FilmSearchByFiltersResponseItemsTypeEnum MINI_SERIES =
      _$filmSearchByFiltersResponseItemsTypeEnum_MINI_SERIES;
  @BuiltValueEnumConst(wireName: r'TV_SERIES')
  static const FilmSearchByFiltersResponseItemsTypeEnum TV_SERIES =
      _$filmSearchByFiltersResponseItemsTypeEnum_TV_SERIES;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const FilmSearchByFiltersResponseItemsTypeEnum UNKNOWN =
      _$filmSearchByFiltersResponseItemsTypeEnum_UNKNOWN;

  static Serializer<FilmSearchByFiltersResponseItemsTypeEnum> get serializer =>
      _$filmSearchByFiltersResponseItemsTypeEnumSerializer;

  const FilmSearchByFiltersResponseItemsTypeEnum._(String name) : super(name);

  static BuiltSet<FilmSearchByFiltersResponseItemsTypeEnum> get values =>
      _$filmSearchByFiltersResponseItemsTypeEnumValues;
  static FilmSearchByFiltersResponseItemsTypeEnum valueOf(String name) =>
      _$filmSearchByFiltersResponseItemsTypeEnumValueOf(name);
}
