// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_response_genres.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FiltersResponseGenres extends FiltersResponseGenres {
  @override
  final int? id;
  @override
  final String? genre;

  factory _$FiltersResponseGenres(
          [void Function(FiltersResponseGenresBuilder)? updates]) =>
      (FiltersResponseGenresBuilder()..update(updates))._build();

  _$FiltersResponseGenres._({this.id, this.genre}) : super._();
  @override
  FiltersResponseGenres rebuild(
          void Function(FiltersResponseGenresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FiltersResponseGenresBuilder toBuilder() =>
      FiltersResponseGenresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FiltersResponseGenres &&
        id == other.id &&
        genre == other.genre;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FiltersResponseGenres')
          ..add('id', id)
          ..add('genre', genre))
        .toString();
  }
}

class FiltersResponseGenresBuilder
    implements Builder<FiltersResponseGenres, FiltersResponseGenresBuilder> {
  _$FiltersResponseGenres? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  FiltersResponseGenresBuilder() {
    FiltersResponseGenres._defaults(this);
  }

  FiltersResponseGenresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _genre = $v.genre;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FiltersResponseGenres other) {
    _$v = other as _$FiltersResponseGenres;
  }

  @override
  void update(void Function(FiltersResponseGenresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FiltersResponseGenres build() => _build();

  _$FiltersResponseGenres _build() {
    final _$result = _$v ??
        _$FiltersResponseGenres._(
          id: id,
          genre: genre,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
