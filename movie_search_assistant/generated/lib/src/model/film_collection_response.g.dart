// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_collection_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilmCollectionResponse extends FilmCollectionResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<FilmCollectionResponseItems> items;

  factory _$FilmCollectionResponse(
          [void Function(FilmCollectionResponseBuilder)? updates]) =>
      (FilmCollectionResponseBuilder()..update(updates))._build();

  _$FilmCollectionResponse._(
      {required this.total, required this.totalPages, required this.items})
      : super._();
  @override
  FilmCollectionResponse rebuild(
          void Function(FilmCollectionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmCollectionResponseBuilder toBuilder() =>
      FilmCollectionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmCollectionResponse &&
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
    return (newBuiltValueToStringHelper(r'FilmCollectionResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('items', items))
        .toString();
  }
}

class FilmCollectionResponseBuilder
    implements Builder<FilmCollectionResponse, FilmCollectionResponseBuilder> {
  _$FilmCollectionResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  ListBuilder<FilmCollectionResponseItems>? _items;
  ListBuilder<FilmCollectionResponseItems> get items =>
      _$this._items ??= ListBuilder<FilmCollectionResponseItems>();
  set items(ListBuilder<FilmCollectionResponseItems>? items) =>
      _$this._items = items;

  FilmCollectionResponseBuilder() {
    FilmCollectionResponse._defaults(this);
  }

  FilmCollectionResponseBuilder get _$this {
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
  void replace(FilmCollectionResponse other) {
    _$v = other as _$FilmCollectionResponse;
  }

  @override
  void update(void Function(FilmCollectionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmCollectionResponse build() => _build();

  _$FilmCollectionResponse _build() {
    _$FilmCollectionResponse _$result;
    try {
      _$result = _$v ??
          _$FilmCollectionResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'FilmCollectionResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'FilmCollectionResponse', 'totalPages'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilmCollectionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
