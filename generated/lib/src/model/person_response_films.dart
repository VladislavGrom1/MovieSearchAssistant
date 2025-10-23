//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_response_films.g.dart';

/// PersonResponseFilms
///
/// Properties:
/// * [filmId]
/// * [nameRu]
/// * [nameEn]
/// * [rating]
/// * [general]
/// * [description]
/// * [professionKey]
@BuiltValue()
abstract class PersonResponseFilms
    implements Built<PersonResponseFilms, PersonResponseFilmsBuilder> {
  @BuiltValueField(wireName: r'filmId')
  int? get filmId;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'rating')
  String? get rating;

  @BuiltValueField(wireName: r'general')
  bool? get general;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'professionKey')
  PersonResponseFilmsProfessionKeyEnum? get professionKey;
  // enum professionKeyEnum {  WRITER,  OPERATOR,  EDITOR,  COMPOSER,  PRODUCER_USSR,  HIMSELF,  HERSELF,  HRONO_TITR_MALE,  HRONO_TITR_FEMALE,  TRANSLATOR,  DIRECTOR,  DESIGN,  PRODUCER,  ACTOR,  VOICE_DIRECTOR,  UNKNOWN,  };

  PersonResponseFilms._();

  factory PersonResponseFilms([void updates(PersonResponseFilmsBuilder b)]) =
      _$PersonResponseFilms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonResponseFilmsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonResponseFilms> get serializer =>
      _$PersonResponseFilmsSerializer();
}

class _$PersonResponseFilmsSerializer
    implements PrimitiveSerializer<PersonResponseFilms> {
  @override
  final Iterable<Type> types = const [
    PersonResponseFilms,
    _$PersonResponseFilms
  ];

  @override
  final String wireName = r'PersonResponseFilms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonResponseFilms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filmId != null) {
      yield r'filmId';
      yield serializers.serialize(
        object.filmId,
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
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.general != null) {
      yield r'general';
      yield serializers.serialize(
        object.general,
        specifiedType: const FullType(bool),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.professionKey != null) {
      yield r'professionKey';
      yield serializers.serialize(
        object.professionKey,
        specifiedType: const FullType(PersonResponseFilmsProfessionKeyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonResponseFilms object, {
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
    required PersonResponseFilmsBuilder result,
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
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rating = valueDes;
          break;
        case r'general':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.general = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'professionKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonResponseFilmsProfessionKeyEnum),
          ) as PersonResponseFilmsProfessionKeyEnum;
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
  PersonResponseFilms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonResponseFilmsBuilder();
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

class PersonResponseFilmsProfessionKeyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WRITER')
  static const PersonResponseFilmsProfessionKeyEnum WRITER =
      _$personResponseFilmsProfessionKeyEnum_WRITER;
  @BuiltValueEnumConst(wireName: r'OPERATOR')
  static const PersonResponseFilmsProfessionKeyEnum OPERATOR =
      _$personResponseFilmsProfessionKeyEnum_OPERATOR;
  @BuiltValueEnumConst(wireName: r'EDITOR')
  static const PersonResponseFilmsProfessionKeyEnum EDITOR =
      _$personResponseFilmsProfessionKeyEnum_EDITOR;
  @BuiltValueEnumConst(wireName: r'COMPOSER')
  static const PersonResponseFilmsProfessionKeyEnum COMPOSER =
      _$personResponseFilmsProfessionKeyEnum_COMPOSER;
  @BuiltValueEnumConst(wireName: r'PRODUCER_USSR')
  static const PersonResponseFilmsProfessionKeyEnum PRODUCER_USSR =
      _$personResponseFilmsProfessionKeyEnum_PRODUCER_USSR;
  @BuiltValueEnumConst(wireName: r'HIMSELF')
  static const PersonResponseFilmsProfessionKeyEnum HIMSELF =
      _$personResponseFilmsProfessionKeyEnum_HIMSELF;
  @BuiltValueEnumConst(wireName: r'HERSELF')
  static const PersonResponseFilmsProfessionKeyEnum HERSELF =
      _$personResponseFilmsProfessionKeyEnum_HERSELF;
  @BuiltValueEnumConst(wireName: r'HRONO_TITR_MALE')
  static const PersonResponseFilmsProfessionKeyEnum HRONO_TITR_MALE =
      _$personResponseFilmsProfessionKeyEnum_HRONO_TITR_MALE;
  @BuiltValueEnumConst(wireName: r'HRONO_TITR_FEMALE')
  static const PersonResponseFilmsProfessionKeyEnum HRONO_TITR_FEMALE =
      _$personResponseFilmsProfessionKeyEnum_HRONO_TITR_FEMALE;
  @BuiltValueEnumConst(wireName: r'TRANSLATOR')
  static const PersonResponseFilmsProfessionKeyEnum TRANSLATOR =
      _$personResponseFilmsProfessionKeyEnum_TRANSLATOR;
  @BuiltValueEnumConst(wireName: r'DIRECTOR')
  static const PersonResponseFilmsProfessionKeyEnum DIRECTOR =
      _$personResponseFilmsProfessionKeyEnum_DIRECTOR;
  @BuiltValueEnumConst(wireName: r'DESIGN')
  static const PersonResponseFilmsProfessionKeyEnum DESIGN =
      _$personResponseFilmsProfessionKeyEnum_DESIGN;
  @BuiltValueEnumConst(wireName: r'PRODUCER')
  static const PersonResponseFilmsProfessionKeyEnum PRODUCER =
      _$personResponseFilmsProfessionKeyEnum_PRODUCER;
  @BuiltValueEnumConst(wireName: r'ACTOR')
  static const PersonResponseFilmsProfessionKeyEnum ACTOR =
      _$personResponseFilmsProfessionKeyEnum_ACTOR;
  @BuiltValueEnumConst(wireName: r'VOICE_DIRECTOR')
  static const PersonResponseFilmsProfessionKeyEnum VOICE_DIRECTOR =
      _$personResponseFilmsProfessionKeyEnum_VOICE_DIRECTOR;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const PersonResponseFilmsProfessionKeyEnum UNKNOWN =
      _$personResponseFilmsProfessionKeyEnum_UNKNOWN;

  static Serializer<PersonResponseFilmsProfessionKeyEnum> get serializer =>
      _$personResponseFilmsProfessionKeyEnumSerializer;

  const PersonResponseFilmsProfessionKeyEnum._(String name) : super(name);

  static BuiltSet<PersonResponseFilmsProfessionKeyEnum> get values =>
      _$personResponseFilmsProfessionKeyEnumValues;
  static PersonResponseFilmsProfessionKeyEnum valueOf(String name) =>
      _$personResponseFilmsProfessionKeyEnumValueOf(name);
}
