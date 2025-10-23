// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_posts_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaPostsResponse extends MediaPostsResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<MediaPostsResponseItems> items;

  factory _$MediaPostsResponse(
          [void Function(MediaPostsResponseBuilder)? updates]) =>
      (MediaPostsResponseBuilder()..update(updates))._build();

  _$MediaPostsResponse._(
      {required this.total, required this.totalPages, required this.items})
      : super._();
  @override
  MediaPostsResponse rebuild(
          void Function(MediaPostsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaPostsResponseBuilder toBuilder() =>
      MediaPostsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaPostsResponse &&
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
    return (newBuiltValueToStringHelper(r'MediaPostsResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('items', items))
        .toString();
  }
}

class MediaPostsResponseBuilder
    implements Builder<MediaPostsResponse, MediaPostsResponseBuilder> {
  _$MediaPostsResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  ListBuilder<MediaPostsResponseItems>? _items;
  ListBuilder<MediaPostsResponseItems> get items =>
      _$this._items ??= ListBuilder<MediaPostsResponseItems>();
  set items(ListBuilder<MediaPostsResponseItems>? items) =>
      _$this._items = items;

  MediaPostsResponseBuilder() {
    MediaPostsResponse._defaults(this);
  }

  MediaPostsResponseBuilder get _$this {
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
  void replace(MediaPostsResponse other) {
    _$v = other as _$MediaPostsResponse;
  }

  @override
  void update(void Function(MediaPostsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaPostsResponse build() => _build();

  _$MediaPostsResponse _build() {
    _$MediaPostsResponse _$result;
    try {
      _$result = _$v ??
          _$MediaPostsResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'MediaPostsResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'MediaPostsResponse', 'totalPages'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaPostsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
