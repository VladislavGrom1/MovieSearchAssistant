//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'award_person.g.dart';

/// AwardPerson
///
/// Properties:
/// * [kinopoiskId]
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
/// * [profession]
@BuiltValue()
abstract class AwardPerson implements Built<AwardPerson, AwardPersonBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int get kinopoiskId;

  @BuiltValueField(wireName: r'webUrl')
  String get webUrl;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'sex')
  String get sex;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'growth')
  int? get growth;

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

  @BuiltValueField(wireName: r'profession')
  String? get profession;

  AwardPerson._();

  factory AwardPerson([void updates(AwardPersonBuilder b)]) = _$AwardPerson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwardPersonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwardPerson> get serializer => _$AwardPersonSerializer();
}

class _$AwardPersonSerializer implements PrimitiveSerializer<AwardPerson> {
  @override
  final Iterable<Type> types = const [AwardPerson, _$AwardPerson];

  @override
  final String wireName = r'AwardPerson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwardPerson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinopoiskId';
    yield serializers.serialize(
      object.kinopoiskId,
      specifiedType: const FullType(int),
    );
    yield r'webUrl';
    yield serializers.serialize(
      object.webUrl,
      specifiedType: const FullType(String),
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
    yield serializers.serialize(
      object.sex,
      specifiedType: const FullType(String),
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
            specifiedType: const FullType.nullable(int),
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
    yield r'profession';
    yield object.profession == null
        ? null
        : serializers.serialize(
            object.profession,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwardPerson object, {
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
    required AwardPersonBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType.nullable(int),
          ) as int?;
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
        case r'profession':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profession = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwardPerson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwardPersonBuilder();
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
