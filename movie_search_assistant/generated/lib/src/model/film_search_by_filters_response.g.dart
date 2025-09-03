// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_search_by_filters_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilmSearchByFiltersResponse extends FilmSearchByFiltersResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<FilmSearchByFiltersResponseItems> items;

  factory _$FilmSearchByFiltersResponse(
          [void Function(FilmSearchByFiltersResponseBuilder)? updates]) =>
      (FilmSearchByFiltersResponseBuilder()..update(updates))._build();

  _$FilmSearchByFiltersResponse._(
      {required this.total, required this.totalPages, required this.items})
      : super._();
  @override
  FilmSearchByFiltersResponse rebuild(
          void Function(FilmSearchByFiltersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmSearchByFiltersResponseBuilder toBuilder() =>
      FilmSearchByFiltersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmSearchByFiltersResponse &&
        total == other.total &&
        totalPages == other.totalPages &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmSearchByFiltersResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('items', items))
        .toString();
  }
}

class FilmSearchByFiltersResponseBuilder
    implements
        Builder<FilmSearchByFiltersResponse,
            FilmSearchByFiltersResponseBuilder> {
  _$FilmSearchByFiltersResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  ListBuilder<FilmSearchByFiltersResponseItems>? _items;
  ListBuilder<FilmSearchByFiltersResponseItems> get items =>
      _$this._items ??= ListBuilder<FilmSearchByFiltersResponseItems>();
  set items(ListBuilder<FilmSearchByFiltersResponseItems>? items) =>
      _$this._items = items;

  FilmSearchByFiltersResponseBuilder() {
    FilmSearchByFiltersResponse._defaults(this);
  }

  FilmSearchByFiltersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _totalPages = $v.totalPages;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmSearchByFiltersResponse other) {
    _$v = other as _$FilmSearchByFiltersResponse;
  }

  @override
  void update(void Function(FilmSearchByFiltersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmSearchByFiltersResponse build() => _build();

  _$FilmSearchByFiltersResponse _build() {
    _$FilmSearchByFiltersResponse _$result;
    try {
      _$result = _$v ??
          _$FilmSearchByFiltersResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'FilmSearchByFiltersResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'FilmSearchByFiltersResponse', 'totalPages'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilmSearchByFiltersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
