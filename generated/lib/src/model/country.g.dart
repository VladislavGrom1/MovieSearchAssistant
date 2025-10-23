// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class CountryBuilder {
  void replace(Country other);
  void update(void Function(CountryBuilder) updates);
  String? get country;
  set country(String? country);
}

class _$$Country extends $Country {
  @override
  final String country;

  factory _$$Country([void Function($CountryBuilder)? updates]) =>
      ($CountryBuilder()..update(updates))._build();

  _$$Country._({required this.country}) : super._();
  @override
  $Country rebuild(void Function($CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CountryBuilder toBuilder() => $CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Country && country == other.country;
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
    return (newBuiltValueToStringHelper(r'$Country')..add('country', country))
        .toString();
  }
}

class $CountryBuilder
    implements Builder<$Country, $CountryBuilder>, CountryBuilder {
  _$$Country? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(covariant String? country) => _$this._country = country;

  $CountryBuilder() {
    $Country._defaults(this);
  }

  $CountryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Country other) {
    _$v = other as _$$Country;
  }

  @override
  void update(void Function($CountryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Country build() => _build();

  _$$Country _build() {
    final _$result = _$v ??
        _$$Country._(
          country: BuiltValueNullFieldError.checkNotNull(
              country, r'$Country', 'country'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
