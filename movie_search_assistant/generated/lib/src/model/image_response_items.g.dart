// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageResponseItems extends ImageResponseItems {
  @override
  final String? imageUrl;
  @override
  final String? previewUrl;

  factory _$ImageResponseItems(
          [void Function(ImageResponseItemsBuilder)? updates]) =>
      (ImageResponseItemsBuilder()..update(updates))._build();

  _$ImageResponseItems._({this.imageUrl, this.previewUrl}) : super._();
  @override
  ImageResponseItems rebuild(
          void Function(ImageResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageResponseItemsBuilder toBuilder() =>
      ImageResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageResponseItems &&
        imageUrl == other.imageUrl &&
        previewUrl == other.previewUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, previewUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageResponseItems')
          ..add('imageUrl', imageUrl)
          ..add('previewUrl', previewUrl))
        .toString();
  }
}

class ImageResponseItemsBuilder
    implements Builder<ImageResponseItems, ImageResponseItemsBuilder> {
  _$ImageResponseItems? _$v;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _previewUrl;
  String? get previewUrl => _$this._previewUrl;
  set previewUrl(String? previewUrl) => _$this._previewUrl = previewUrl;

  ImageResponseItemsBuilder() {
    ImageResponseItems._defaults(this);
  }

  ImageResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _previewUrl = $v.previewUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageResponseItems other) {
    _$v = other as _$ImageResponseItems;
  }

  @override
  void update(void Function(ImageResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageResponseItems build() => _build();

  _$ImageResponseItems _build() {
    final _$result = _$v ??
        _$ImageResponseItems._(
          imageUrl: imageUrl,
          previewUrl: previewUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
