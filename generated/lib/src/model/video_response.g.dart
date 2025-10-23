// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VideoResponse extends VideoResponse {
  @override
  final int total;
  @override
  final BuiltList<VideoResponseItems> items;

  factory _$VideoResponse([void Function(VideoResponseBuilder)? updates]) =>
      (VideoResponseBuilder()..update(updates))._build();

  _$VideoResponse._({required this.total, required this.items}) : super._();
  @override
  VideoResponse rebuild(void Function(VideoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoResponseBuilder toBuilder() => VideoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoResponse &&
        total == other.total &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class VideoResponseBuilder
    implements Builder<VideoResponse, VideoResponseBuilder> {
  _$VideoResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<VideoResponseItems>? _items;
  ListBuilder<VideoResponseItems> get items =>
      _$this._items ??= ListBuilder<VideoResponseItems>();
  set items(ListBuilder<VideoResponseItems>? items) => _$this._items = items;

  VideoResponseBuilder() {
    VideoResponse._defaults(this);
  }

  VideoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoResponse other) {
    _$v = other as _$VideoResponse;
  }

  @override
  void update(void Function(VideoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoResponse build() => _build();

  _$VideoResponse _build() {
    _$VideoResponse _$result;
    try {
      _$result = _$v ??
          _$VideoResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'VideoResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VideoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
