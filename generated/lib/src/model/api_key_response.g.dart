// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiKeyResponseAccountTypeEnum _$apiKeyResponseAccountTypeEnum_FREE =
    const ApiKeyResponseAccountTypeEnum._('FREE');
const ApiKeyResponseAccountTypeEnum _$apiKeyResponseAccountTypeEnum_EXTENDED =
    const ApiKeyResponseAccountTypeEnum._('EXTENDED');
const ApiKeyResponseAccountTypeEnum _$apiKeyResponseAccountTypeEnum_UNLIMITED =
    const ApiKeyResponseAccountTypeEnum._('UNLIMITED');

ApiKeyResponseAccountTypeEnum _$apiKeyResponseAccountTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'FREE':
      return _$apiKeyResponseAccountTypeEnum_FREE;
    case 'EXTENDED':
      return _$apiKeyResponseAccountTypeEnum_EXTENDED;
    case 'UNLIMITED':
      return _$apiKeyResponseAccountTypeEnum_UNLIMITED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ApiKeyResponseAccountTypeEnum>
    _$apiKeyResponseAccountTypeEnumValues = BuiltSet<
        ApiKeyResponseAccountTypeEnum>(const <ApiKeyResponseAccountTypeEnum>[
  _$apiKeyResponseAccountTypeEnum_FREE,
  _$apiKeyResponseAccountTypeEnum_EXTENDED,
  _$apiKeyResponseAccountTypeEnum_UNLIMITED,
]);

Serializer<ApiKeyResponseAccountTypeEnum>
    _$apiKeyResponseAccountTypeEnumSerializer =
    _$ApiKeyResponseAccountTypeEnumSerializer();

class _$ApiKeyResponseAccountTypeEnumSerializer
    implements PrimitiveSerializer<ApiKeyResponseAccountTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FREE': 'FREE',
    'EXTENDED': 'EXTENDED',
    'UNLIMITED': 'UNLIMITED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FREE': 'FREE',
    'EXTENDED': 'EXTENDED',
    'UNLIMITED': 'UNLIMITED',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiKeyResponseAccountTypeEnum];
  @override
  final String wireName = 'ApiKeyResponseAccountTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ApiKeyResponseAccountTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ApiKeyResponseAccountTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApiKeyResponseAccountTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ApiKeyResponse extends ApiKeyResponse {
  @override
  final ApiKeyResponseTotalQuota totalQuota;
  @override
  final ApiKeyResponseDailyQuota dailyQuota;
  @override
  final ApiKeyResponseAccountTypeEnum accountType;

  factory _$ApiKeyResponse([void Function(ApiKeyResponseBuilder)? updates]) =>
      (ApiKeyResponseBuilder()..update(updates))._build();

  _$ApiKeyResponse._(
      {required this.totalQuota,
      required this.dailyQuota,
      required this.accountType})
      : super._();
  @override
  ApiKeyResponse rebuild(void Function(ApiKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyResponseBuilder toBuilder() => ApiKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeyResponse &&
        totalQuota == other.totalQuota &&
        dailyQuota == other.dailyQuota &&
        accountType == other.accountType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalQuota.hashCode);
    _$hash = $jc(_$hash, dailyQuota.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiKeyResponse')
          ..add('totalQuota', totalQuota)
          ..add('dailyQuota', dailyQuota)
          ..add('accountType', accountType))
        .toString();
  }
}

class ApiKeyResponseBuilder
    implements Builder<ApiKeyResponse, ApiKeyResponseBuilder> {
  _$ApiKeyResponse? _$v;

  ApiKeyResponseTotalQuotaBuilder? _totalQuota;
  ApiKeyResponseTotalQuotaBuilder get totalQuota =>
      _$this._totalQuota ??= ApiKeyResponseTotalQuotaBuilder();
  set totalQuota(ApiKeyResponseTotalQuotaBuilder? totalQuota) =>
      _$this._totalQuota = totalQuota;

  ApiKeyResponseDailyQuotaBuilder? _dailyQuota;
  ApiKeyResponseDailyQuotaBuilder get dailyQuota =>
      _$this._dailyQuota ??= ApiKeyResponseDailyQuotaBuilder();
  set dailyQuota(ApiKeyResponseDailyQuotaBuilder? dailyQuota) =>
      _$this._dailyQuota = dailyQuota;

  ApiKeyResponseAccountTypeEnum? _accountType;
  ApiKeyResponseAccountTypeEnum? get accountType => _$this._accountType;
  set accountType(ApiKeyResponseAccountTypeEnum? accountType) =>
      _$this._accountType = accountType;

  ApiKeyResponseBuilder() {
    ApiKeyResponse._defaults(this);
  }

  ApiKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalQuota = $v.totalQuota.toBuilder();
      _dailyQuota = $v.dailyQuota.toBuilder();
      _accountType = $v.accountType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKeyResponse other) {
    _$v = other as _$ApiKeyResponse;
  }

  @override
  void update(void Function(ApiKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeyResponse build() => _build();

  _$ApiKeyResponse _build() {
    _$ApiKeyResponse _$result;
    try {
      _$result = _$v ??
          _$ApiKeyResponse._(
            totalQuota: totalQuota.build(),
            dailyQuota: dailyQuota.build(),
            accountType: BuiltValueNullFieldError.checkNotNull(
                accountType, r'ApiKeyResponse', 'accountType'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'totalQuota';
        totalQuota.build();
        _$failedField = 'dailyQuota';
        dailyQuota.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiKeyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
