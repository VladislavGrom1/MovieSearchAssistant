//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'staff_response.g.dart';

/// StaffResponse
///
/// Properties:
/// * [staffId]
/// * [nameRu]
/// * [nameEn]
/// * [description]
/// * [posterUrl]
/// * [professionText]
/// * [professionKey]
@BuiltValue()
abstract class StaffResponse
    implements Built<StaffResponse, StaffResponseBuilder> {
  @BuiltValueField(wireName: r'staffId')
  int get staffId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'professionText')
  String get professionText;

  @BuiltValueField(wireName: r'professionKey')
  StaffResponseProfessionKeyEnum get professionKey;
  // enum professionKeyEnum {  WRITER,  OPERATOR,  EDITOR,  COMPOSER,  PRODUCER_USSR,  TRANSLATOR,  DIRECTOR,  DESIGN,  PRODUCER,  ACTOR,  VOICE_DIRECTOR,  UNKNOWN,  };

  StaffResponse._();

  factory StaffResponse([void updates(StaffResponseBuilder b)]) =
      _$StaffResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StaffResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StaffResponse> get serializer =>
      _$StaffResponseSerializer();
}

class _$StaffResponseSerializer implements PrimitiveSerializer<StaffResponse> {
  @override
  final Iterable<Type> types = const [StaffResponse, _$StaffResponse];

  @override
  final String wireName = r'StaffResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StaffResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'staffId';
    yield serializers.serialize(
      object.staffId,
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
    yield r'description';
    yield object.description == null
        ? null
        : serializers.serialize(
            object.description,
            specifiedType: const FullType.nullable(String),
          );
    yield r'posterUrl';
    yield serializers.serialize(
      object.posterUrl,
      specifiedType: const FullType(String),
    );
    yield r'professionText';
    yield serializers.serialize(
      object.professionText,
      specifiedType: const FullType(String),
    );
    yield r'professionKey';
    yield serializers.serialize(
      object.professionKey,
      specifiedType: const FullType(StaffResponseProfessionKeyEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StaffResponse object, {
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
    required StaffResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'staffId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.staffId = valueDes;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'posterUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrl = valueDes;
          break;
        case r'professionText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.professionText = valueDes;
          break;
        case r'professionKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StaffResponseProfessionKeyEnum),
          ) as StaffResponseProfessionKeyEnum;
          result.professionKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StaffResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaffResponseBuilder();
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

class StaffResponseProfessionKeyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WRITER')
  static const StaffResponseProfessionKeyEnum WRITER =
      _$staffResponseProfessionKeyEnum_WRITER;
  @BuiltValueEnumConst(wireName: r'OPERATOR')
  static const StaffResponseProfessionKeyEnum OPERATOR =
      _$staffResponseProfessionKeyEnum_OPERATOR;
  @BuiltValueEnumConst(wireName: r'EDITOR')
  static const StaffResponseProfessionKeyEnum EDITOR =
      _$staffResponseProfessionKeyEnum_EDITOR;
  @BuiltValueEnumConst(wireName: r'COMPOSER')
  static const StaffResponseProfessionKeyEnum COMPOSER =
      _$staffResponseProfessionKeyEnum_COMPOSER;
  @BuiltValueEnumConst(wireName: r'PRODUCER_USSR')
  static const StaffResponseProfessionKeyEnum PRODUCER_USSR =
      _$staffResponseProfessionKeyEnum_PRODUCER_USSR;
  @BuiltValueEnumConst(wireName: r'TRANSLATOR')
  static const StaffResponseProfessionKeyEnum TRANSLATOR =
      _$staffResponseProfessionKeyEnum_TRANSLATOR;
  @BuiltValueEnumConst(wireName: r'DIRECTOR')
  static const StaffResponseProfessionKeyEnum DIRECTOR =
      _$staffResponseProfessionKeyEnum_DIRECTOR;
  @BuiltValueEnumConst(wireName: r'DESIGN')
  static const StaffResponseProfessionKeyEnum DESIGN =
      _$staffResponseProfessionKeyEnum_DESIGN;
  @BuiltValueEnumConst(wireName: r'PRODUCER')
  static const StaffResponseProfessionKeyEnum PRODUCER =
      _$staffResponseProfessionKeyEnum_PRODUCER;
  @BuiltValueEnumConst(wireName: r'ACTOR')
  static const StaffResponseProfessionKeyEnum ACTOR =
      _$staffResponseProfessionKeyEnum_ACTOR;
  @BuiltValueEnumConst(wireName: r'VOICE_DIRECTOR')
  static const StaffResponseProfessionKeyEnum VOICE_DIRECTOR =
      _$staffResponseProfessionKeyEnum_VOICE_DIRECTOR;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const StaffResponseProfessionKeyEnum UNKNOWN =
      _$staffResponseProfessionKeyEnum_UNKNOWN;

  static Serializer<StaffResponseProfessionKeyEnum> get serializer =>
      _$staffResponseProfessionKeyEnumSerializer;

  const StaffResponseProfessionKeyEnum._(String name) : super(name);

  static BuiltSet<StaffResponseProfessionKeyEnum> get values =>
      _$staffResponseProfessionKeyEnumValues;
  static StaffResponseProfessionKeyEnum valueOf(String name) =>
      _$staffResponseProfessionKeyEnumValueOf(name);
}
