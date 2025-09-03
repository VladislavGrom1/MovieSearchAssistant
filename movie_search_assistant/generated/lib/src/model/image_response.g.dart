// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageResponse extends ImageResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<ImageResponseItems> items;

  factory _$ImageResponse([void Function(ImageResponseBuilder)? updates]) =>
      (ImageResponseBuilder()..update(updates))._build();

  _$ImageResponse._(
      {required this.total, required this.totalPages, required this.items})
      : super._();
  @override
  ImageResponse rebuild(void Function(ImageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageResponseBuilder toBuilder() => ImageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageResponse &&
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
    return (newBuiltValueToStringHelper(r'ImageResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('items', items))
        .toString();
  }
}

class ImageResponseBuilder
    implements Builder<ImageResponse, ImageResponseBuilder> {
  _$ImageResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  ListBuilder<ImageResponseItems>? _items;
  ListBuilder<ImageResponseItems> get items =>
      _$this._items ??= ListBuilder<ImageResponseItems>();
  set items(ListBuilder<ImageResponseItems>? items) => _$this._items = items;

  ImageResponseBuilder() {
    ImageResponse._defaults(this);
  }

  ImageResponseBuilder get _$this {
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
  void replace(ImageResponse other) {
    _$v = other as _$ImageResponse;
  }

  @override
  void update(void Function(ImageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageResponse build() => _build();

  _$ImageResponse _build() {
    _$ImageResponse _$result;
    try {
      _$result = _$v ??
          _$ImageResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'ImageResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'ImageResponse', 'totalPages'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ImageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
