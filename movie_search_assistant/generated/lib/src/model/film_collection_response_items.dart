//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_collection_response_items.g.dart';

/// FilmCollectionResponseItems
///
/// Properties:
/// * [kinopoiskId]
/// * [nameRu]
/// * [nameEn]
/// * [nameOriginal]
/// * [countries]
/// * [genres]
/// * [ratingKinopoisk]
/// * [ratingImbd]
/// * [year]
/// * [type]
/// * [posterUrl]
/// * [posterUrlPreview]
@BuiltValue()
abstract class FilmCollectionResponseItems
    implements
        Built<FilmCollectionResponseItems, FilmCollectionResponseItemsBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int? get kinopoiskId;

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

  @BuiltValueField(wireName: r'ratingImbd')
  num? get ratingImbd;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'type')
  FilmCollectionResponseItemsTypeEnum? get type;
  // enum typeEnum {  FILM,  TV_SHOW,  VIDEO,  MINI_SERIES,  TV_SERIES,  UNKNOWN,  };

  @BuiltValueField(wireName: r'posterUrl')
  String? get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String? get posterUrlPreview;

  FilmCollectionResponseItems._();

  factory FilmCollectionResponseItems(
          [void updates(FilmCollectionResponseItemsBuilder b)]) =
      _$FilmCollectionResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmCollectionResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmCollectionResponseItems> get serializer =>
      _$FilmCollectionResponseItemsSerializer();
}

class _$FilmCollectionResponseItemsSerializer
    implements PrimitiveSerializer<FilmCollectionResponseItems> {
  @override
  final Iterable<Type> types = const [
    FilmCollectionResponseItems,
    _$FilmCollectionResponseItems
  ];

  @override
  final String wireName = r'FilmCollectionResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmCollectionResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinopoiskId != null) {
      yield r'kinopoiskId';
      yield serializers.serialize(
        object.kinopoiskId,
        specifiedType: const FullType(int),
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
    if (object.ratingImbd != null) {
      yield r'ratingImbd';
      yield serializers.serialize(
        object.ratingImbd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FilmCollectionResponseItemsTypeEnum),
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
    FilmCollectionResponseItems object, {
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
    required FilmCollectionResponseItemsBuilder result,
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
        case r'ratingImbd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratingImbd = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilmCollectionResponseItemsTypeEnum),
          ) as FilmCollectionResponseItemsTypeEnum;
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
  FilmCollectionResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmCollectionResponseItemsBuilder();
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

class FilmCollectionResponseItemsTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FILM')
  static const FilmCollectionResponseItemsTypeEnum FILM =
      _$filmCollectionResponseItemsTypeEnum_FILM;
  @BuiltValueEnumConst(wireName: r'TV_SHOW')
  static const FilmCollectionResponseItemsTypeEnum TV_SHOW =
      _$filmCollectionResponseItemsTypeEnum_TV_SHOW;
  @BuiltValueEnumConst(wireName: r'VIDEO')
  static const FilmCollectionResponseItemsTypeEnum VIDEO =
      _$filmCollectionResponseItemsTypeEnum_VIDEO;
  @BuiltValueEnumConst(wireName: r'MINI_SERIES')
  static const FilmCollectionResponseItemsTypeEnum MINI_SERIES =
      _$filmCollectionResponseItemsTypeEnum_MINI_SERIES;
  @BuiltValueEnumConst(wireName: r'TV_SERIES')
  static const FilmCollectionResponseItemsTypeEnum TV_SERIES =
      _$filmCollectionResponseItemsTypeEnum_TV_SERIES;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const FilmCollectionResponseItemsTypeEnum UNKNOWN =
      _$filmCollectionResponseItemsTypeEnum_UNKNOWN;

  static Serializer<FilmCollectionResponseItemsTypeEnum> get serializer =>
      _$filmCollectionResponseItemsTypeEnumSerializer;

  const FilmCollectionResponseItemsTypeEnum._(String name) : super(name);

  static BuiltSet<FilmCollectionResponseItemsTypeEnum> get values =>
      _$filmCollectionResponseItemsTypeEnumValues;
  static FilmCollectionResponseItemsTypeEnum valueOf(String name) =>
      _$filmCollectionResponseItemsTypeEnumValueOf(name);
}
