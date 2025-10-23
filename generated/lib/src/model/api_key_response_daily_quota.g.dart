// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_response_daily_quota.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeyResponseDailyQuota extends ApiKeyResponseDailyQuota {
  @override
  final int value;
  @override
  final int used;

  factory _$ApiKeyResponseDailyQuota(
          [void Function(ApiKeyResponseDailyQuotaBuilder)? updates]) =>
      (ApiKeyResponseDailyQuotaBuilder()..update(updates))._build();

  _$ApiKeyResponseDailyQuota._({required this.value, required this.used})
      : super._();
  @override
  ApiKeyResponseDailyQuota rebuild(
          void Function(ApiKeyResponseDailyQuotaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyResponseDailyQuotaBuilder toBuilder() =>
      ApiKeyResponseDailyQuotaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeyResponseDailyQuota &&
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
    return (newBuiltValueToStringHelper(r'ApiKeyResponseDailyQuota')
          ..add('value', value)
          ..add('used', used))
        .toString();
  }
}

class ApiKeyResponseDailyQuotaBuilder
    implements
        Builder<ApiKeyResponseDailyQuota, ApiKeyResponseDailyQuotaBuilder> {
  _$ApiKeyResponseDailyQuota? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  int? _used;
  int? get used => _$this._used;
  set used(int? used) => _$this._used = used;

  ApiKeyResponseDailyQuotaBuilder() {
    ApiKeyResponseDailyQuota._defaults(this);
  }

  ApiKeyResponseDailyQuotaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _used = $v.used;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKeyResponseDailyQuota other) {
    _$v = other as _$ApiKeyResponseDailyQuota;
  }

  @override
  void update(void Function(ApiKeyResponseDailyQuotaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeyResponseDailyQuota build() => _build();

  _$ApiKeyResponseDailyQuota _build() {
    final _$result = _$v ??
        _$ApiKeyResponseDailyQuota._(
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'ApiKeyResponseDailyQuota', 'value'),
          used: BuiltValueNullFieldError.checkNotNull(
              used, r'ApiKeyResponseDailyQuota', 'used'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
