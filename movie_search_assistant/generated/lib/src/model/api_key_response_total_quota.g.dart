// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_response_total_quota.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeyResponseTotalQuota extends ApiKeyResponseTotalQuota {
  @override
  final int value;
  @override
  final int used;

  factory _$ApiKeyResponseTotalQuota(
          [void Function(ApiKeyResponseTotalQuotaBuilder)? updates]) =>
      (ApiKeyResponseTotalQuotaBuilder()..update(updates))._build();

  _$ApiKeyResponseTotalQuota._({required this.value, required this.used})
      : super._();
  @override
  ApiKeyResponseTotalQuota rebuild(
          void Function(ApiKeyResponseTotalQuotaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyResponseTotalQuotaBuilder toBuilder() =>
      ApiKeyResponseTotalQuotaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeyResponseTotalQuota &&
        value == other.value &&
        used == other.used;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiKeyResponseTotalQuota')
          ..add('value', value)
          ..add('used', used))
        .toString();
  }
}

class ApiKeyResponseTotalQuotaBuilder
    implements
        Builder<ApiKeyResponseTotalQuota, ApiKeyResponseTotalQuotaBuilder> {
  _$ApiKeyResponseTotalQuota? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  int? _used;
  int? get used => _$this._used;
  set used(int? used) => _$this._used = used;

  ApiKeyResponseTotalQuotaBuilder() {
    ApiKeyResponseTotalQuota._defaults(this);
  }

  ApiKeyResponseTotalQuotaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _used = $v.used;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKeyResponseTotalQuota other) {
    _$v = other as _$ApiKeyResponseTotalQuota;
  }

  @override
  void update(void Function(ApiKeyResponseTotalQuotaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeyResponseTotalQuota build() => _build();

  _$ApiKeyResponseTotalQuota _build() {
    final _$result = _$v ??
        _$ApiKeyResponseTotalQuota._(
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'ApiKeyResponseTotalQuota', 'value'),
          used: BuiltValueNullFieldError.checkNotNull(
              used, r'ApiKeyResponseTotalQuota', 'used'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
