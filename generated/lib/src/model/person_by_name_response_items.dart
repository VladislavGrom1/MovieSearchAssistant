//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_by_name_response_items.g.dart';

/// PersonByNameResponseItems
///
/// Properties:
/// * [kinopoiskId]
/// * [webUrl]
/// * [nameRu]
/// * [nameEn]
/// * [sex]
/// * [posterUrl]
@BuiltValue()
abstract class PersonByNameResponseItems
    implements
        Built<PersonByNameResponseItems, PersonByNameResponseItemsBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int? get kinopoiskId;

  @BuiltValueField(wireName: r'webUrl')
  String? get webUrl;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'sex')
  PersonByNameResponseItemsSexEnum? get sex;
  // enum sexEnum {  MALE,  FEMALE,  UNKNOWN,  };

  @BuiltValueField(wireName: r'posterUrl')
  String? get posterUrl;

  PersonByNameResponseItems._();

  factory PersonByNameResponseItems(
          [void updates(PersonByNameResponseItemsBuilder b)]) =
      _$PersonByNameResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonByNameResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonByNameResponseItems> get serializer =>
      _$PersonByNameResponseItemsSerializer();
}

class _$PersonByNameResponseItemsSerializer
    implements PrimitiveSerializer<PersonByNameResponseItems> {
  @override
  final Iterable<Type> types = const [
    PersonByNameResponseItems,
    _$PersonByNameResponseItems
  ];

  @override
  final String wireName = r'PersonByNameResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonByNameResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinopoiskId != null) {
      yield r'kinopoiskId';
      yield serializers.serialize(
        object.kinopoiskId,
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
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType:
            const FullType.nullable(PersonByNameResponseItemsSexEnum),
      );
    }
    if (object.posterUrl != null) {
      yield r'posterUrl';
      yield serializers.serialize(
        object.posterUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonByNameResponseItems object, {
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
    required PersonByNameResponseItemsBuilder result,
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
        case r'webUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webUrl = valueDes;
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
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(PersonByNameResponseItemsSexEnum),
          ) as PersonByNameResponseItemsSexEnum?;
          if (valueDes == null) continue;
          result.sex = valueDes;
          break;
        case r'posterUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonByNameResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonByNameResponseItemsBuilder();
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

class PersonByNameResponseItemsSexEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MALE')
  static const PersonByNameResponseItemsSexEnum MALE =
      _$personByNameResponseItemsSexEnum_MALE;
  @BuiltValueEnumConst(wireName: r'FEMALE')
  static const PersonByNameResponseItemsSexEnum FEMALE =
      _$personByNameResponseItemsSexEnum_FEMALE;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const PersonByNameResponseItemsSexEnum UNKNOWN =
      _$personByNameResponseItemsSexEnum_UNKNOWN;

  static Serializer<PersonByNameResponseItemsSexEnum> get serializer =>
      _$personByNameResponseItemsSexEnumSerializer;

  const PersonByNameResponseItemsSexEnum._(String name) : super(name);

  static BuiltSet<PersonByNameResponseItemsSexEnum> get values =>
      _$personByNameResponseItemsSexEnumValues;
  static PersonByNameResponseItemsSexEnum valueOf(String name) =>
      _$personByNameResponseItemsSexEnumValueOf(name);
}
