// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VideoResponseItemsSiteEnum _$videoResponseItemsSiteEnum_YOUTUBE =
    const VideoResponseItemsSiteEnum._('YOUTUBE');
const VideoResponseItemsSiteEnum _$videoResponseItemsSiteEnum_KINOPOISK_WIDGET =
    const VideoResponseItemsSiteEnum._('KINOPOISK_WIDGET');
const VideoResponseItemsSiteEnum _$videoResponseItemsSiteEnum_YANDEX_DISK =
    const VideoResponseItemsSiteEnum._('YANDEX_DISK');
const VideoResponseItemsSiteEnum _$videoResponseItemsSiteEnum_UNKNOWN =
    const VideoResponseItemsSiteEnum._('UNKNOWN');

VideoResponseItemsSiteEnum _$videoResponseItemsSiteEnumValueOf(String name) {
  switch (name) {
    case 'YOUTUBE':
      return _$videoResponseItemsSiteEnum_YOUTUBE;
    case 'KINOPOISK_WIDGET':
      return _$videoResponseItemsSiteEnum_KINOPOISK_WIDGET;
    case 'YANDEX_DISK':
      return _$videoResponseItemsSiteEnum_YANDEX_DISK;
    case 'UNKNOWN':
      return _$videoResponseItemsSiteEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VideoResponseItemsSiteEnum> _$videoResponseItemsSiteEnumValues =
    BuiltSet<VideoResponseItemsSiteEnum>(const <VideoResponseItemsSiteEnum>[
  _$videoResponseItemsSiteEnum_YOUTUBE,
  _$videoResponseItemsSiteEnum_KINOPOISK_WIDGET,
  _$videoResponseItemsSiteEnum_YANDEX_DISK,
  _$videoResponseItemsSiteEnum_UNKNOWN,
]);

Serializer<VideoResponseItemsSiteEnum> _$videoResponseItemsSiteEnumSerializer =
    _$VideoResponseItemsSiteEnumSerializer();

class _$VideoResponseItemsSiteEnumSerializer
    implements PrimitiveSerializer<VideoResponseItemsSiteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'YOUTUBE': 'YOUTUBE',
    'KINOPOISK_WIDGET': 'KINOPOISK_WIDGET',
    'YANDEX_DISK': 'YANDEX_DISK',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'YOUTUBE': 'YOUTUBE',
    'KINOPOISK_WIDGET': 'KINOPOISK_WIDGET',
    'YANDEX_DISK': 'YANDEX_DISK',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[VideoResponseItemsSiteEnum];
  @override
  final String wireName = 'VideoResponseItemsSiteEnum';

  @override
  Object serialize(Serializers serializers, VideoResponseItemsSiteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VideoResponseItemsSiteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VideoResponseItemsSiteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VideoResponseItems extends VideoResponseItems {
  @override
  final String? url;
  @override
  final String? name;
  @override
  final VideoResponseItemsSiteEnum? site;

  factory _$VideoResponseItems(
          [void Function(VideoResponseItemsBuilder)? updates]) =>
      (VideoResponseItemsBuilder()..update(updates))._build();

  _$VideoResponseItems._({this.url, this.name, this.site}) : super._();
  @override
  VideoResponseItems rebuild(
          void Function(VideoResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoResponseItemsBuilder toBuilder() =>
      VideoResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoResponseItems &&
        url == other.url &&
        name == other.name &&
        site == other.site;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoResponseItems')
          ..add('url', url)
          ..add('name', name)
          ..add('site', site))
        .toString();
  }
}

class VideoResponseItemsBuilder
    implements Builder<VideoResponseItems, VideoResponseItemsBuilder> {
  _$VideoResponseItems? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  VideoResponseItemsSiteEnum? _site;
  VideoResponseItemsSiteEnum? get site => _$this._site;
  set site(VideoResponseItemsSiteEnum? site) => _$this._site = site;

  VideoResponseItemsBuilder() {
    VideoResponseItems._defaults(this);
  }

  VideoResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _name = $v.name;
      _site = $v.site;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoResponseItems other) {
    _$v = other as _$VideoResponseItems;
  }

  @override
  void update(void Function(VideoResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoResponseItems build() => _build();

  _$VideoResponseItems _build() {
    final _$result = _$v ??
        _$VideoResponseItems._(
          url: url,
          name: name,
          site: site,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
