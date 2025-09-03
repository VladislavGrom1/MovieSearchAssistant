//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/fact.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fact_response.g.dart';

/// FactResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class FactResponse
    implements Built<FactResponse, FactResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<Fact> get items;

  FactResponse._();

  factory FactResponse([void updates(FactResponseBuilder b)]) = _$FactResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FactResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FactResponse> get serializer => _$FactResponseSerializer();
}

class _$FactResponseSerializer implements PrimitiveSerializer<FactResponse> {
  @override
  final Iterable<Type> types = const [FactResponse, _$FactResponse];

  @override
  final String wireName = r'FactResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FactResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(Fact)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FactResponse object, {
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
    required FactResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Fact)]),
          ) as BuiltList<Fact>;
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
  FactResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FactResponseBuilder();
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
