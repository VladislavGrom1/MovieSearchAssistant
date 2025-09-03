// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_country.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DistributionCountry extends DistributionCountry {
  @override
  final String country;

  factory _$DistributionCountry(
          [void Function(DistributionCountryBuilder)? updates]) =>
      (DistributionCountryBuilder()..update(updates))._build();

  _$DistributionCountry._({required this.country}) : super._();
  @override
  DistributionCountry rebuild(
          void Function(DistributionCountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistributionCountryBuilder toBuilder() =>
      DistributionCountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistributionCountry && country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DistributionCountry')
          ..add('country', country))
        .toString();
  }
}

class DistributionCountryBuilder
    implements
        Builder<DistributionCountry, DistributionCountryBuilder>,
        CountryBuilder {
  _$DistributionCountry? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(covariant String? country) => _$this._country = country;

  DistributionCountryBuilder() {
    DistributionCountry._defaults(this);
  }

  DistributionCountryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DistributionCountry other) {
    _$v = other as _$DistributionCountry;
  }

  @override
  void update(void Function(DistributionCountryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DistributionCountry build() => _build();

  _$DistributionCountry _build() {
    final _$result = _$v ??
        _$DistributionCountry._(
          country: BuiltValueNullFieldError.checkNotNull(
              country, r'DistributionCountry', 'country'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
