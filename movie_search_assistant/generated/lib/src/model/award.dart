//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/award_person.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'award.g.dart';

/// Award
///
/// Properties:
/// * [name]
/// * [win]
/// * [imageUrl]
/// * [nominationName]
/// * [year]
/// * [persons]
@BuiltValue()
abstract class Award implements Built<Award, AwardBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'win')
  bool get win;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'nominationName')
  String get nominationName;

  @BuiltValueField(wireName: r'year')
  int get year;

  @BuiltValueField(wireName: r'persons')
  BuiltList<AwardPerson>? get persons;

  Award._();

  factory Award([void updates(AwardBuilder b)]) = _$Award;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Award> get serializer => _$AwardSerializer();
}

class _$AwardSerializer implements PrimitiveSerializer<Award> {
  @override
  final Iterable<Type> types = const [Award, _$Award];

  @override
  final String wireName = r'Award';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Award object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'win';
    yield serializers.serialize(
      object.win,
      specifiedType: const FullType(bool),
    );
    yield r'imageUrl';
    yield object.imageUrl == null
        ? null
        : serializers.serialize(
            object.imageUrl,
            specifiedType: const FullType.nullable(String),
          );
    yield r'nominationName';
    yield serializers.serialize(
      object.nominationName,
      specifiedType: const FullType(String),
    );
    yield r'year';
    yield serializers.serialize(
      object.year,
      specifiedType: const FullType(int),
    );
    if (object.persons != null) {
      yield r'persons';
      yield serializers.serialize(
        object.persons,
        specifiedType: const FullType(BuiltList, [FullType(AwardPerson)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Award object, {
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
    required AwardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'win':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.win = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'nominationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nominationName = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'persons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AwardPerson)]),
          ) as BuiltList<AwardPerson>;
          result.persons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Award deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwardBuilder();
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
