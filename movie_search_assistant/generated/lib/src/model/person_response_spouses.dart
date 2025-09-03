//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_response_spouses.g.dart';

/// PersonResponseSpouses
///
/// Properties:
/// * [personId]
/// * [name]
/// * [divorced]
/// * [divorcedReason]
/// * [sex]
/// * [children]
/// * [webUrl]
/// * [relation]
@BuiltValue()
abstract class PersonResponseSpouses
    implements Built<PersonResponseSpouses, PersonResponseSpousesBuilder> {
  @BuiltValueField(wireName: r'personId')
  int? get personId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'divorced')
  bool? get divorced;

  @BuiltValueField(wireName: r'divorcedReason')
  String? get divorcedReason;

  @BuiltValueField(wireName: r'sex')
  PersonResponseSpousesSexEnum? get sex;
  // enum sexEnum {  MALE,  FEMALE,  };

  @BuiltValueField(wireName: r'children')
  int? get children;

  @BuiltValueField(wireName: r'webUrl')
  String? get webUrl;

  @BuiltValueField(wireName: r'relation')
  String? get relation;

  PersonResponseSpouses._();

  factory PersonResponseSpouses(
      [void updates(PersonResponseSpousesBuilder b)]) = _$PersonResponseSpouses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonResponseSpousesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonResponseSpouses> get serializer =>
      _$PersonResponseSpousesSerializer();
}

class _$PersonResponseSpousesSerializer
    implements PrimitiveSerializer<PersonResponseSpouses> {
  @override
  final Iterable<Type> types = const [
    PersonResponseSpouses,
    _$PersonResponseSpouses
  ];

  @override
  final String wireName = r'PersonResponseSpouses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonResponseSpouses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.personId != null) {
      yield r'personId';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.divorced != null) {
      yield r'divorced';
      yield serializers.serialize(
        object.divorced,
        specifiedType: const FullType(bool),
      );
    }
    if (object.divorcedReason != null) {
      yield r'divorcedReason';
      yield serializers.serialize(
        object.divorcedReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType: const FullType(PersonResponseSpousesSexEnum),
      );
    }
    if (object.children != null) {
      yield r'children';
      yield serializers.serialize(
        object.children,
        specifiedType: const FullType(int),
      );
    }
    if (object.webUrl != null) {
      yield r'webUrl';
      yield serializers.serialize(
        object.webUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.relation != null) {
      yield r'relation';
      yield serializers.serialize(
        object.relation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonResponseSpouses object, {
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
    required PersonResponseSpousesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.personId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'divorced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.divorced = valueDes;
          break;
        case r'divorcedReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.divorcedReason = valueDes;
          break;
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonResponseSpousesSexEnum),
          ) as PersonResponseSpousesSexEnum;
          result.sex = valueDes;
          break;
        case r'children':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.children = valueDes;
          break;
        case r'webUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webUrl = valueDes;
          break;
        case r'relation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.relation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonResponseSpouses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonResponseSpousesBuilder();
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

class PersonResponseSpousesSexEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MALE')
  static const PersonResponseSpousesSexEnum MALE =
      _$personResponseSpousesSexEnum_MALE;
  @BuiltValueEnumConst(wireName: r'FEMALE')
  static const PersonResponseSpousesSexEnum FEMALE =
      _$personResponseSpousesSexEnum_FEMALE;

  static Serializer<PersonResponseSpousesSexEnum> get serializer =>
      _$personResponseSpousesSexEnumSerializer;

  const PersonResponseSpousesSexEnum._(String name) : super(name);

  static BuiltSet<PersonResponseSpousesSexEnum> get values =>
      _$personResponseSpousesSexEnumValues;
  static PersonResponseSpousesSexEnum valueOf(String name) =>
      _$personResponseSpousesSexEnumValueOf(name);
}
