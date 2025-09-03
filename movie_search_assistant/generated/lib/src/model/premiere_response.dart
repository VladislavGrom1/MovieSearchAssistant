//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/premiere_response_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'premiere_response.g.dart';

/// PremiereResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class PremiereResponse
    implements Built<PremiereResponse, PremiereResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<PremiereResponseItem> get items;

  PremiereResponse._();

  factory PremiereResponse([void updates(PremiereResponseBuilder b)]) =
      _$PremiereResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PremiereResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PremiereResponse> get serializer =>
      _$PremiereResponseSerializer();
}

class _$PremiereResponseSerializer
    implements PrimitiveSerializer<PremiereResponse> {
  @override
  final Iterable<Type> types = const [PremiereResponse, _$PremiereResponse];

  @override
  final String wireName = r'PremiereResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PremiereResponse object, {
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
          const FullType(BuiltList, [FullType(PremiereResponseItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PremiereResponse object, {
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
    required PremiereResponseBuilder result,
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
            specifiedType:
                const FullType(BuiltList, [FullType(PremiereResponseItem)]),
          ) as BuiltList<PremiereResponseItem>;
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
  PremiereResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PremiereResponseBuilder();
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
