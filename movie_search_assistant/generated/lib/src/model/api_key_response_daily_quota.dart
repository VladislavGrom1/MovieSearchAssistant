//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key_response_daily_quota.g.dart';

/// ApiKeyResponseDailyQuota
///
/// Properties:
/// * [value]
/// * [used]
@BuiltValue()
abstract class ApiKeyResponseDailyQuota
    implements
        Built<ApiKeyResponseDailyQuota, ApiKeyResponseDailyQuotaBuilder> {
  @BuiltValueField(wireName: r'value')
  int get value;

  @BuiltValueField(wireName: r'used')
  int get used;

  ApiKeyResponseDailyQuota._();

  factory ApiKeyResponseDailyQuota(
          [void updates(ApiKeyResponseDailyQuotaBuilder b)]) =
      _$ApiKeyResponseDailyQuota;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiKeyResponseDailyQuotaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiKeyResponseDailyQuota> get serializer =>
      _$ApiKeyResponseDailyQuotaSerializer();
}

class _$ApiKeyResponseDailyQuotaSerializer
    implements PrimitiveSerializer<ApiKeyResponseDailyQuota> {
  @override
  final Iterable<Type> types = const [
    ApiKeyResponseDailyQuota,
    _$ApiKeyResponseDailyQuota
  ];

  @override
  final String wireName = r'ApiKeyResponseDailyQuota';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiKeyResponseDailyQuota object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
    yield r'used';
    yield serializers.serialize(
      object.used,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiKeyResponseDailyQuota object, {
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
    required ApiKeyResponseDailyQuotaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        case r'used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.used = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiKeyResponseDailyQuota deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeyResponseDailyQuotaBuilder();
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
