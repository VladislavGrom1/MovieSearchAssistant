//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/distribution.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'distribution_response.g.dart';

/// DistributionResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class DistributionResponse
    implements Built<DistributionResponse, DistributionResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<Distribution> get items;

  DistributionResponse._();

  factory DistributionResponse([void updates(DistributionResponseBuilder b)]) =
      _$DistributionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistributionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DistributionResponse> get serializer =>
      _$DistributionResponseSerializer();
}

class _$DistributionResponseSerializer
    implements PrimitiveSerializer<DistributionResponse> {
  @override
  final Iterable<Type> types = const [
    DistributionResponse,
    _$DistributionResponse
  ];

  @override
  final String wireName = r'DistributionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DistributionResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(Distribution)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DistributionResponse object, {
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
    required DistributionResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Distribution)]),
          ) as BuiltList<Distribution>;
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
  DistributionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistributionResponseBuilder();
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
