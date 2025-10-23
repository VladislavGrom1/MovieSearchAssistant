//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_sequels_and_prequels_response.g.dart';

/// FilmSequelsAndPrequelsResponse
///
/// Properties:
/// * [filmId]
/// * [nameRu]
/// * [nameEn]
/// * [nameOriginal]
/// * [posterUrl]
/// * [posterUrlPreview]
/// * [relationType]
@BuiltValue()
abstract class FilmSequelsAndPrequelsResponse
    implements
        Built<FilmSequelsAndPrequelsResponse,
            FilmSequelsAndPrequelsResponseBuilder> {
  @BuiltValueField(wireName: r'filmId')
  int get filmId;

  @BuiltValueField(wireName: r'nameRu')
  String get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String get nameEn;

  @BuiltValueField(wireName: r'nameOriginal')
  String get nameOriginal;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String get posterUrlPreview;

  @BuiltValueField(wireName: r'relationType')
  FilmSequelsAndPrequelsResponseRelationTypeEnum get relationType;
  // enum relationTypeEnum {  SEQUEL,  PREQUEL,  REMAKE,  UNKNOWN,  };

  FilmSequelsAndPrequelsResponse._();

  factory FilmSequelsAndPrequelsResponse(
          [void updates(FilmSequelsAndPrequelsResponseBuilder b)]) =
      _$FilmSequelsAndPrequelsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmSequelsAndPrequelsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmSequelsAndPrequelsResponse> get serializer =>
      _$FilmSequelsAndPrequelsResponseSerializer();
}

class _$FilmSequelsAndPrequelsResponseSerializer
    implements PrimitiveSerializer<FilmSequelsAndPrequelsResponse> {
  @override
  final Iterable<Type> types = const [
    FilmSequelsAndPrequelsResponse,
    _$FilmSequelsAndPrequelsResponse
  ];

  @override
  final String wireName = r'FilmSequelsAndPrequelsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmSequelsAndPrequelsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filmId';
    yield serializers.serialize(
      object.filmId,
      specifiedType: const FullType(int),
    );
    yield r'nameRu';
    yield serializers.serialize(
      object.nameRu,
      specifiedType: const FullType(String),
    );
    yield r'nameEn';
    yield serializers.serialize(
      object.nameEn,
      specifiedType: const FullType(String),
    );
    yield r'nameOriginal';
    yield serializers.serialize(
      object.nameOriginal,
      specifiedType: const FullType(String),
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
    yield r'relationType';
    yield serializers.serialize(
      object.relationType,
      specifiedType:
          const FullType(FilmSequelsAndPrequelsResponseRelationTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilmSequelsAndPrequelsResponse object, {
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
    required FilmSequelsAndPrequelsResponseBuilder result,
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
        case r'nameOriginal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'relationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(FilmSequelsAndPrequelsResponseRelationTypeEnum),
          ) as FilmSequelsAndPrequelsResponseRelationTypeEnum;
          result.relationType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilmSequelsAndPrequelsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmSequelsAndPrequelsResponseBuilder();
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

class FilmSequelsAndPrequelsResponseRelationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SEQUEL')
  static const FilmSequelsAndPrequelsResponseRelationTypeEnum SEQUEL =
      _$filmSequelsAndPrequelsResponseRelationTypeEnum_SEQUEL;
  @BuiltValueEnumConst(wireName: r'PREQUEL')
  static const FilmSequelsAndPrequelsResponseRelationTypeEnum PREQUEL =
      _$filmSequelsAndPrequelsResponseRelationTypeEnum_PREQUEL;
  @BuiltValueEnumConst(wireName: r'REMAKE')
  static const FilmSequelsAndPrequelsResponseRelationTypeEnum REMAKE =
      _$filmSequelsAndPrequelsResponseRelationTypeEnum_REMAKE;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const FilmSequelsAndPrequelsResponseRelationTypeEnum UNKNOWN =
      _$filmSequelsAndPrequelsResponseRelationTypeEnum_UNKNOWN;

  static Serializer<FilmSequelsAndPrequelsResponseRelationTypeEnum>
      get serializer =>
          _$filmSequelsAndPrequelsResponseRelationTypeEnumSerializer;

  const FilmSequelsAndPrequelsResponseRelationTypeEnum._(String name)
      : super(name);

  static BuiltSet<FilmSequelsAndPrequelsResponseRelationTypeEnum> get values =>
      _$filmSequelsAndPrequelsResponseRelationTypeEnumValues;
  static FilmSequelsAndPrequelsResponseRelationTypeEnum valueOf(String name) =>
      _$filmSequelsAndPrequelsResponseRelationTypeEnumValueOf(name);
}
