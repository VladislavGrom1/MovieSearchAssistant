// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FiltersResponse extends FiltersResponse {
  @override
  final BuiltList<FiltersResponseGenres> genres;
  @override
  final BuiltList<FiltersResponseCountries> countries;

  factory _$FiltersResponse([void Function(FiltersResponseBuilder)? updates]) =>
      (FiltersResponseBuilder()..update(updates))._build();

  _$FiltersResponse._({required this.genres, required this.countries})
      : super._();
  @override
  FiltersResponse rebuild(void Function(FiltersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FiltersResponseBuilder toBuilder() => FiltersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FiltersResponse &&
        genres == other.genres &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FiltersResponse')
          ..add('genres', genres)
          ..add('countries', countries))
        .toString();
  }
}

class FiltersResponseBuilder
    implements Builder<FiltersResponse, FiltersResponseBuilder> {
  _$FiltersResponse? _$v;

  ListBuilder<FiltersResponseGenres>? _genres;
  ListBuilder<FiltersResponseGenres> get genres =>
      _$this._genres ??= ListBuilder<FiltersResponseGenres>();
  set genres(ListBuilder<FiltersResponseGenres>? genres) =>
      _$this._genres = genres;

  ListBuilder<FiltersResponseCountries>? _countries;
  ListBuilder<FiltersResponseCountries> get countries =>
      _$this._countries ??= ListBuilder<FiltersResponseCountries>();
  set countries(ListBuilder<FiltersResponseCountries>? countries) =>
      _$this._countries = countries;

  FiltersResponseBuilder() {
    FiltersResponse._defaults(this);
  }

  FiltersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genres = $v.genres.toBuilder();
      _countries = $v.countries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FiltersResponse other) {
    _$v = other as _$FiltersResponse;
  }

  @override
  void update(void Function(FiltersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FiltersResponse build() => _build();

  _$FiltersResponse _build() {
    _$FiltersResponse _$result;
    try {
      _$result = _$v ??
          _$FiltersResponse._(
            genres: genres.build(),
            countries: countries.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FiltersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
