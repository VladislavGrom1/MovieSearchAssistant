//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/person_by_name_response_items.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_by_name_response.g.dart';

/// PersonByNameResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class PersonByNameResponse
    implements Built<PersonByNameResponse, PersonByNameResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<PersonByNameResponseItems> get items;

  PersonByNameResponse._();

  factory PersonByNameResponse([void updates(PersonByNameResponseBuilder b)]) =
      _$PersonByNameResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonByNameResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonByNameResponse> get serializer =>
      _$PersonByNameResponseSerializer();
}

class _$PersonByNameResponseSerializer
    implements PrimitiveSerializer<PersonByNameResponse> {
  @override
  final Iterable<Type> types = const [
    PersonByNameResponse,
    _$PersonByNameResponse
  ];

  @override
  final String wireName = r'PersonByNameResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonByNameResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(PersonByNameResponseItems)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonByNameResponse object, {
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
    required PersonByNameResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(PersonByNameResponseItems)]),
          ) as BuiltList<PersonByNameResponseItems>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonByNameResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonByNameResponseBuilder();
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
