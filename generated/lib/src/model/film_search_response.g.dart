// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_search_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilmSearchResponse extends FilmSearchResponse {
  @override
  final String keyword;
  @override
  final int pagesCount;
  @override
  final int searchFilmsCountResult;
  @override
  final BuiltList<FilmSearchResponseFilms> films;

  factory _$FilmSearchResponse(
          [void Function(FilmSearchResponseBuilder)? updates]) =>
      (FilmSearchResponseBuilder()..update(updates))._build();

  _$FilmSearchResponse._(
      {required this.keyword,
      required this.pagesCount,
      required this.searchFilmsCountResult,
      required this.films})
      : super._();
  @override
  FilmSearchResponse rebuild(
          void Function(FilmSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmSearchResponseBuilder toBuilder() =>
      FilmSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmSearchResponse &&
        keyword == other.keyword &&
        pagesCount == other.pagesCount &&
        searchFilmsCountResult == other.searchFilmsCountResult &&
        films == other.films;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, pagesCount.hashCode);
    _$hash = $jc(_$hash, searchFilmsCountResult.hashCode);
    _$hash = $jc(_$hash, films.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmSearchResponse')
          ..add('keyword', keyword)
          ..add('pagesCount', pagesCount)
          ..add('searchFilmsCountResult', searchFilmsCountResult)
          ..add('films', films))
        .toString();
  }
}

class FilmSearchResponseBuilder
    implements Builder<FilmSearchResponse, FilmSearchResponseBuilder> {
  _$FilmSearchResponse? _$v;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  int? _pagesCount;
  int? get pagesCount => _$this._pagesCount;
  set pagesCount(int? pagesCount) => _$this._pagesCount = pagesCount;

  int? _searchFilmsCountResult;
  int? get searchFilmsCountResult => _$this._searchFilmsCountResult;
  set searchFilmsCountResult(int? searchFilmsCountResult) =>
      _$this._searchFilmsCountResult = searchFilmsCountResult;

  ListBuilder<FilmSearchResponseFilms>? _films;
  ListBuilder<FilmSearchResponseFilms> get films =>
      _$this._films ??= ListBuilder<FilmSearchResponseFilms>();
  set films(ListBuilder<FilmSearchResponseFilms>? films) =>
      _$this._films = films;

  FilmSearchResponseBuilder() {
    FilmSearchResponse._defaults(this);
  }

  FilmSearchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyword = $v.keyword;
      _pagesCount = $v.pagesCount;
      _searchFilmsCountResult = $v.searchFilmsCountResult;
      _films = $v.films.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmSearchResponse other) {
    _$v = other as _$FilmSearchResponse;
  }

  @override
  void update(void Function(FilmSearchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmSearchResponse build() => _build();

  _$FilmSearchResponse _build() {
    _$FilmSearchResponse _$result;
    try {
      _$result = _$v ??
          _$FilmSearchResponse._(
            keyword: BuiltValueNullFieldError.checkNotNull(
                keyword, r'FilmSearchResponse', 'keyword'),
            pagesCount: BuiltValueNullFieldError.checkNotNull(
                pagesCount, r'FilmSearchResponse', 'pagesCount'),
            searchFilmsCountResult: BuiltValueNullFieldError.checkNotNull(
                searchFilmsCountResult,
                r'FilmSearchResponse',
                'searchFilmsCountResult'),
            films: films.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'films';
        films.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilmSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
