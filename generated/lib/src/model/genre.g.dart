// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Genre extends Genre {
  @override
  final String genre;

  factory _$Genre([void Function(GenreBuilder)? updates]) =>
      (GenreBuilder()..update(updates))._build();

  _$Genre._({required this.genre}) : super._();
  @override
  Genre rebuild(void Function(GenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreBuilder toBuilder() => GenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genre && genre == other.genre;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Genre')..add('genre', genre))
        .toString();
  }
}

class GenreBuilder implements Builder<Genre, GenreBuilder> {
  _$Genre? _$v;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  GenreBuilder() {
    Genre._defaults(this);
  }

  GenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genre = $v.genre;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genre other) {
    _$v = other as _$Genre;
  }

  @override
  void update(void Function(GenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Genre build() => _build();

  _$Genre _build() {
    final _$result = _$v ??
        _$Genre._(
          genre:
              BuiltValueNullFieldError.checkNotNull(genre, r'Genre', 'genre'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
