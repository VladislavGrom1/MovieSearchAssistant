// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourceResponseItems extends ExternalSourceResponseItems {
  @override
  final String? url;
  @override
  final String? platform;
  @override
  final String? logoUrl;
  @override
  final int? positiveRating;
  @override
  final int? negativeRating;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;

  factory _$ExternalSourceResponseItems(
          [void Function(ExternalSourceResponseItemsBuilder)? updates]) =>
      (ExternalSourceResponseItemsBuilder()..update(updates))._build();

  _$ExternalSourceResponseItems._(
      {this.url,
      this.platform,
      this.logoUrl,
      this.positiveRating,
      this.negativeRating,
      this.author,
      this.title,
      this.description})
      : super._();
  @override
  ExternalSourceResponseItems rebuild(
          void Function(ExternalSourceResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalSourceResponseItemsBuilder toBuilder() =>
      ExternalSourceResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourceResponseItems &&
        url == other.url &&
        platform == other.platform &&
        logoUrl == other.logoUrl &&
        positiveRating == other.positiveRating &&
        negativeRating == other.negativeRating &&
        author == other.author &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, positiveRating.hashCode);
    _$hash = $jc(_$hash, negativeRating.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSourceResponseItems')
          ..add('url', url)
          ..add('platform', platform)
          ..add('logoUrl', logoUrl)
          ..add('positiveRating', positiveRating)
          ..add('negativeRating', negativeRating)
          ..add('author', author)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class ExternalSourceResponseItemsBuilder
    implements
        Builder<ExternalSourceResponseItems,
            ExternalSourceResponseItemsBuilder> {
  _$ExternalSourceResponseItems? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  int? _positiveRating;
  int? get positiveRating => _$this._positiveRating;
  set positiveRating(int? positiveRating) =>
      _$this._positiveRating = positiveRating;

  int? _negativeRating;
  int? get negativeRating => _$this._negativeRating;
  set negativeRating(int? negativeRating) =>
      _$this._negativeRating = negativeRating;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ExternalSourceResponseItemsBuilder() {
    ExternalSourceResponseItems._defaults(this);
  }

  ExternalSourceResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _platform = $v.platform;
      _logoUrl = $v.logoUrl;
      _positiveRating = $v.positiveRating;
      _negativeRating = $v.negativeRating;
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourceResponseItems other) {
    _$v = other as _$ExternalSourceResponseItems;
  }

  @override
  void update(void Function(ExternalSourceResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourceResponseItems build() => _build();

  _$ExternalSourceResponseItems _build() {
    final _$result = _$v ??
        _$ExternalSourceResponseItems._(
          url: url,
          platform: platform,
          logoUrl: logoUrl,
          positiveRating: positiveRating,
          negativeRating: negativeRating,
          author: author,
          title: title,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
