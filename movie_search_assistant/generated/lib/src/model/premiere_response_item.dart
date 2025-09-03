//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premiere_response_item.g.dart';

/// PremiereResponseItem
///
/// Properties:
/// * [kinopoiskId]
/// * [nameRu]
/// * [nameEn]
/// * [year]
/// * [posterUrl]
/// * [posterUrlPreview]
/// * [countries]
/// * [genres]
/// * [duration]
/// * [premiereRu]
@BuiltValue()
abstract class PremiereResponseItem
    implements Built<PremiereResponseItem, PremiereResponseItemBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int get kinopoiskId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'year')
  int get year;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String get posterUrlPreview;

  @BuiltValueField(wireName: r'countries')
  BuiltList<Country> get countries;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre> get genres;

  @BuiltValueField(wireName: r'duration')
  int? get duration;

  @BuiltValueField(wireName: r'premiereRu')
  String get premiereRu;

  PremiereResponseItem._();

  factory PremiereResponseItem([void updates(PremiereResponseItemBuilder b)]) =
      _$PremiereResponseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiereResponseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiereResponseItem> get serializer =>
      _$PremiereResponseItemSerializer();
}

class _$PremiereResponseItemSerializer
    implements PrimitiveSerializer<PremiereResponseItem> {
  @override
  final Iterable<Type> types = const [
    PremiereResponseItem,
    _$PremiereResponseItem
  ];

  @override
  final String wireName = r'PremiereResponseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiereResponseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinopoiskId';
    yield serializers.serialize(
      object.kinopoiskId,
      specifiedType: const FullType(int),
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
    yield r'year';
    yield serializers.serialize(
      object.year,
      specifiedType: const FullType(int),
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
    yield r'duration';
    yield object.duration == null
        ? null
        : serializers.serialize(
            object.duration,
            specifiedType: const FullType.nullable(int),
          );
    yield r'premiereRu';
    yield serializers.serialize(
      object.premiereRu,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiereResponseItem object, {
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
    required PremiereResponseItemBuilder result,
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
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
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
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'premiereRu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.premiereRu = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PremiereResponseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiereResponseItemBuilder();
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
