//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fact.g.dart';

/// Fact
///
/// Properties:
/// * [text]
/// * [type]
/// * [spoiler]
@BuiltValue()
abstract class Fact implements Built<Fact, FactBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'type')
  FactTypeEnum get type;
  // enum typeEnum {  FACT,  BLOOPER,  };

  @BuiltValueField(wireName: r'spoiler')
  bool get spoiler;

  Fact._();

  factory Fact([void updates(FactBuilder b)]) = _$Fact;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FactBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Fact> get serializer => _$FactSerializer();
}

class _$FactSerializer implements PrimitiveSerializer<Fact> {
  @override
  final Iterable<Type> types = const [Fact, _$Fact];

  @override
  final String wireName = r'Fact';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Fact object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FactTypeEnum),
    );
    yield r'spoiler';
    yield serializers.serialize(
      object.spoiler,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Fact object, {
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
    required FactBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FactTypeEnum),
          ) as FactTypeEnum;
          result.type = valueDes;
          break;
        case r'spoiler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.spoiler = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Fact deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FactBuilder();
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

class FactTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FACT')
  static const FactTypeEnum FACT = _$factTypeEnum_FACT;
  @BuiltValueEnumConst(wireName: r'BLOOPER')
  static const FactTypeEnum BLOOPER = _$factTypeEnum_BLOOPER;

  static Serializer<FactTypeEnum> get serializer => _$factTypeEnumSerializer;

  const FactTypeEnum._(String name) : super(name);

  static BuiltSet<FactTypeEnum> get values => _$factTypeEnumValues;
  static FactTypeEnum valueOf(String name) => _$factTypeEnumValueOf(name);
}
