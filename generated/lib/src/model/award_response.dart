//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/award.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'award_response.g.dart';

/// AwardResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class AwardResponse
    implements Built<AwardResponse, AwardResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<Award> get items;

  AwardResponse._();

  factory AwardResponse([void updates(AwardResponseBuilder b)]) =
      _$AwardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwardResponse> get serializer =>
      _$AwardResponseSerializer();
}

class _$AwardResponseSerializer implements PrimitiveSerializer<AwardResponse> {
  @override
  final Iterable<Type> types = const [AwardResponse, _$AwardResponse];

  @override
  final String wireName = r'AwardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwardResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(Award)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwardResponse object, {
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
    required AwardResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Award)]),
          ) as BuiltList<Award>;
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
  AwardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwardResponseBuilder();
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
