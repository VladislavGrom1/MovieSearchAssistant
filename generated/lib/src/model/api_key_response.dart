//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/api_key_response_daily_quota.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/api_key_response_total_quota.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key_response.g.dart';

/// ApiKeyResponse
///
/// Properties:
/// * [totalQuota]
/// * [dailyQuota]
/// * [accountType]
@BuiltValue()
abstract class ApiKeyResponse
    implements Built<ApiKeyResponse, ApiKeyResponseBuilder> {
  @BuiltValueField(wireName: r'totalQuota')
  ApiKeyResponseTotalQuota get totalQuota;

  @BuiltValueField(wireName: r'dailyQuota')
  ApiKeyResponseDailyQuota get dailyQuota;

  @BuiltValueField(wireName: r'accountType')
  ApiKeyResponseAccountTypeEnum get accountType;
  // enum accountTypeEnum {  FREE,  EXTENDED,  UNLIMITED,  };

  ApiKeyResponse._();

  factory ApiKeyResponse([void updates(ApiKeyResponseBuilder b)]) =
      _$ApiKeyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiKeyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiKeyResponse> get serializer =>
      _$ApiKeyResponseSerializer();
}

class _$ApiKeyResponseSerializer
    implements PrimitiveSerializer<ApiKeyResponse> {
  @override
  final Iterable<Type> types = const [ApiKeyResponse, _$ApiKeyResponse];

  @override
  final String wireName = r'ApiKeyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalQuota';
    yield serializers.serialize(
      object.totalQuota,
      specifiedType: const FullType(ApiKeyResponseTotalQuota),
    );
    yield r'dailyQuota';
    yield serializers.serialize(
      object.dailyQuota,
      specifiedType: const FullType(ApiKeyResponseDailyQuota),
    );
    yield r'accountType';
    yield serializers.serialize(
      object.accountType,
      specifiedType: const FullType(ApiKeyResponseAccountTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiKeyResponse object, {
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
    required ApiKeyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalQuota':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiKeyResponseTotalQuota),
          ) as ApiKeyResponseTotalQuota;
          result.totalQuota.replace(valueDes);
          break;
        case r'dailyQuota':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiKeyResponseDailyQuota),
          ) as ApiKeyResponseDailyQuota;
          result.dailyQuota.replace(valueDes);
          break;
        case r'accountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiKeyResponseAccountTypeEnum),
          ) as ApiKeyResponseAccountTypeEnum;
          result.accountType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiKeyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeyResponseBuilder();
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

class ApiKeyResponseAccountTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FREE')
  static const ApiKeyResponseAccountTypeEnum FREE =
      _$apiKeyResponseAccountTypeEnum_FREE;
  @BuiltValueEnumConst(wireName: r'EXTENDED')
  static const ApiKeyResponseAccountTypeEnum EXTENDED =
      _$apiKeyResponseAccountTypeEnum_EXTENDED;
  @BuiltValueEnumConst(wireName: r'UNLIMITED')
  static const ApiKeyResponseAccountTypeEnum UNLIMITED =
      _$apiKeyResponseAccountTypeEnum_UNLIMITED;

  static Serializer<ApiKeyResponseAccountTypeEnum> get serializer =>
      _$apiKeyResponseAccountTypeEnumSerializer;

  const ApiKeyResponseAccountTypeEnum._(String name) : super(name);

  static BuiltSet<ApiKeyResponseAccountTypeEnum> get values =>
      _$apiKeyResponseAccountTypeEnumValues;
  static ApiKeyResponseAccountTypeEnum valueOf(String name) =>
      _$apiKeyResponseAccountTypeEnumValueOf(name);
}
