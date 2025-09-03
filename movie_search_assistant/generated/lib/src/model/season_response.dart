//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/season.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season_response.g.dart';

/// SeasonResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class SeasonResponse
    implements Built<SeasonResponse, SeasonResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<Season> get items;

  SeasonResponse._();

  factory SeasonResponse([void updates(SeasonResponseBuilder b)]) =
      _$SeasonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeasonResponse> get serializer =>
      _$SeasonResponseSerializer();
}

class _$SeasonResponseSerializer
    implements PrimitiveSerializer<SeasonResponse> {
  @override
  final Iterable<Type> types = const [SeasonResponse, _$SeasonResponse];

  @override
  final String wireName = r'SeasonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeasonResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(Season)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SeasonResponse object, {
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
    required SeasonResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Season)]),
          ) as BuiltList<Season>;
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
  SeasonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonResponseBuilder();
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
