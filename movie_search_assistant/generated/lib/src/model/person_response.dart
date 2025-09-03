//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/person_response_spouses.dart';
import 'package:generated/src/model/person_response_films.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_response.g.dart';

/// PersonResponse
///
/// Properties:
/// * [personId]
/// * [webUrl]
/// * [nameRu]
/// * [nameEn]
/// * [sex]
/// * [posterUrl]
/// * [growth]
/// * [birthday]
/// * [death]
/// * [age]
/// * [birthplace]
/// * [deathplace]
/// * [hasAwards]
/// * [profession]
/// * [facts]
/// * [spouses]
/// * [films]
@BuiltValue()
abstract class PersonResponse
    implements Built<PersonResponse, PersonResponseBuilder> {
  @BuiltValueField(wireName: r'personId')
  int get personId;

  @BuiltValueField(wireName: r'webUrl')
  String? get webUrl;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'sex')
  PersonResponseSexEnum? get sex;
  // enum sexEnum {  MALE,  FEMALE,  };

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'growth')
  String? get growth;

  @BuiltValueField(wireName: r'birthday')
  String? get birthday;

  @BuiltValueField(wireName: r'death')
  String? get death;

  @BuiltValueField(wireName: r'age')
  int? get age;

  @BuiltValueField(wireName: r'birthplace')
  String? get birthplace;

  @BuiltValueField(wireName: r'deathplace')
  String? get deathplace;

  @BuiltValueField(wireName: r'hasAwards')
  int? get hasAwards;

  @BuiltValueField(wireName: r'profession')
  String? get profession;

  @BuiltValueField(wireName: r'facts')
  BuiltList<String> get facts;

  @BuiltValueField(wireName: r'spouses')
  BuiltList<PersonResponseSpouses> get spouses;

  @BuiltValueField(wireName: r'films')
  BuiltList<PersonResponseFilms> get films;

  PersonResponse._();

  factory PersonResponse([void updates(PersonResponseBuilder b)]) =
      _$PersonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonResponse> get serializer =>
      _$PersonResponseSerializer();
}

class _$PersonResponseSerializer
    implements PrimitiveSerializer<PersonResponse> {
  @override
  final Iterable<Type> types = const [PersonResponse, _$PersonResponse];

  @override
  final String wireName = r'PersonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(int),
    );
    yield r'webUrl';
    yield object.webUrl == null
        ? null
        : serializers.serialize(
            object.webUrl,
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
    yield r'sex';
    yield object.sex == null
        ? null
        : serializers.serialize(
            object.sex,
            specifiedType: const FullType.nullable(PersonResponseSexEnum),
          );
    yield r'posterUrl';
    yield serializers.serialize(
      object.posterUrl,
      specifiedType: const FullType(String),
    );
    yield r'growth';
    yield object.growth == null
        ? null
        : serializers.serialize(
            object.growth,
            specifiedType: const FullType.nullable(String),
          );
    yield r'birthday';
    yield object.birthday == null
        ? null
        : serializers.serialize(
            object.birthday,
            specifiedType: const FullType.nullable(String),
          );
    yield r'death';
    yield object.death == null
        ? null
        : serializers.serialize(
            object.death,
            specifiedType: const FullType.nullable(String),
          );
    yield r'age';
    yield object.age == null
        ? null
        : serializers.serialize(
            object.age,
            specifiedType: const FullType.nullable(int),
          );
    yield r'birthplace';
    yield object.birthplace == null
        ? null
        : serializers.serialize(
            object.birthplace,
            specifiedType: const FullType.nullable(String),
          );
    yield r'deathplace';
    yield object.deathplace == null
        ? null
        : serializers.serialize(
            object.deathplace,
            specifiedType: const FullType.nullable(String),
          );
    yield r'hasAwards';
    yield object.hasAwards == null
        ? null
        : serializers.serialize(
            object.hasAwards,
            specifiedType: const FullType.nullable(int),
          );
    yield r'profession';
    yield object.profession == null
        ? null
        : serializers.serialize(
            object.profession,
            specifiedType: const FullType.nullable(String),
          );
    yield r'facts';
    yield serializers.serialize(
      object.facts,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'spouses';
    yield serializers.serialize(
      object.spouses,
      specifiedType:
          const FullType(BuiltList, [FullType(PersonResponseSpouses)]),
    );
    yield r'films';
    yield serializers.serialize(
      object.films,
      specifiedType: const FullType(BuiltList, [FullType(PersonResponseFilms)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonResponse object, {
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
    required PersonResponseBuilder result,
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
        case r'webUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(PersonResponseSexEnum),
          ) as PersonResponseSexEnum?;
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
        case r'growth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.growth = valueDes;
          break;
        case r'birthday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.birthday = valueDes;
          break;
        case r'death':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.death = valueDes;
          break;
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.age = valueDes;
          break;
        case r'birthplace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.birthplace = valueDes;
          break;
        case r'deathplace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deathplace = valueDes;
          break;
        case r'hasAwards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.hasAwards = valueDes;
          break;
        case r'profession':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profession = valueDes;
          break;
        case r'facts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.facts.replace(valueDes);
          break;
        case r'spouses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PersonResponseSpouses)]),
          ) as BuiltList<PersonResponseSpouses>;
          result.spouses.replace(valueDes);
          break;
        case r'films':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PersonResponseFilms)]),
          ) as BuiltList<PersonResponseFilms>;
          result.films.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonResponseBuilder();
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

class PersonResponseSexEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MALE')
  static const PersonResponseSexEnum MALE = _$personResponseSexEnum_MALE;
  @BuiltValueEnumConst(wireName: r'FEMALE')
  static const PersonResponseSexEnum FEMALE = _$personResponseSexEnum_FEMALE;

  static Serializer<PersonResponseSexEnum> get serializer =>
      _$personResponseSexEnumSerializer;

  const PersonResponseSexEnum._(String name) : super(name);

  static BuiltSet<PersonResponseSexEnum> get values =>
      _$personResponseSexEnumValues;
  static PersonResponseSexEnum valueOf(String name) =>
      _$personResponseSexEnumValueOf(name);
}
