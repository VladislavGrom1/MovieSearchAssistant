// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_response_countries.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FiltersResponseCountries extends FiltersResponseCountries {
  @override
  final int? id;
  @override
  final String? country;

  factory _$FiltersResponseCountries(
          [void Function(FiltersResponseCountriesBuilder)? updates]) =>
      (FiltersResponseCountriesBuilder()..update(updates))._build();

  _$FiltersResponseCountries._({this.id, this.country}) : super._();
  @override
  FiltersResponseCountries rebuild(
          void Function(FiltersResponseCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FiltersResponseCountriesBuilder toBuilder() =>
      FiltersResponseCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FiltersResponseCountries &&
        id == other.id &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FiltersResponseCountries')
          ..add('id', id)
          ..add('country', country))
        .toString();
  }
}

class FiltersResponseCountriesBuilder
    implements
        Builder<FiltersResponseCountries, FiltersResponseCountriesBuilder> {
  _$FiltersResponseCountries? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  FiltersResponseCountriesBuilder() {
    FiltersResponseCountries._defaults(this);
  }

  FiltersResponseCountriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FiltersResponseCountries other) {
    _$v = other as _$FiltersResponseCountries;
  }

  @override
  void update(void Function(FiltersResponseCountriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FiltersResponseCountries build() => _build();

  _$FiltersResponseCountries _build() {
    final _$result = _$v ??
        _$FiltersResponseCountries._(
          id: id,
          country: country,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
