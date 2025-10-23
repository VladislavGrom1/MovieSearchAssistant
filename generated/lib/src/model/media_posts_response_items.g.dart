// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_posts_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaPostsResponseItems extends MediaPostsResponseItems {
  @override
  final int? kinopoiskId;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? publishedAt;

  factory _$MediaPostsResponseItems(
          [void Function(MediaPostsResponseItemsBuilder)? updates]) =>
      (MediaPostsResponseItemsBuilder()..update(updates))._build();

  _$MediaPostsResponseItems._(
      {this.kinopoiskId,
      this.imageUrl,
      this.title,
      this.description,
      this.url,
      this.publishedAt})
      : super._();
  @override
  MediaPostsResponseItems rebuild(
          void Function(MediaPostsResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaPostsResponseItemsBuilder toBuilder() =>
      MediaPostsResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaPostsResponseItems &&
        kinopoiskId == other.kinopoiskId &&
        imageUrl == other.imageUrl &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        publishedAt == other.publishedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaPostsResponseItems')
          ..add('kinopoiskId', kinopoiskId)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('publishedAt', publishedAt))
        .toString();
  }
}

class MediaPostsResponseItemsBuilder
    implements
        Builder<MediaPostsResponseItems, MediaPostsResponseItemsBuilder> {
  _$MediaPostsResponseItems? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  MediaPostsResponseItemsBuilder() {
    MediaPostsResponseItems._defaults(this);
  }

  MediaPostsResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _imageUrl = $v.imageUrl;
      _title = $v.title;
      _description = $v.description;
      _url = $v.url;
      _publishedAt = $v.publishedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaPostsResponseItems other) {
    _$v = other as _$MediaPostsResponseItems;
  }

  @override
  void update(void Function(MediaPostsResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaPostsResponseItems build() => _build();

  _$MediaPostsResponseItems _build() {
    final _$result = _$v ??
        _$MediaPostsResponseItems._(
          kinopoiskId: kinopoiskId,
          imageUrl: imageUrl,
          title: title,
          description: description,
          url: url,
          publishedAt: publishedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
