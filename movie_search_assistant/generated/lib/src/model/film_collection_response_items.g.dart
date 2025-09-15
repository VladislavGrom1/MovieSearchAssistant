// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_collection_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_FILM =
    const FilmCollectionResponseItemsTypeEnum._('FILM');
const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_TV_SHOW =
    const FilmCollectionResponseItemsTypeEnum._('TV_SHOW');
const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_VIDEO =
    const FilmCollectionResponseItemsTypeEnum._('VIDEO');
const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_MINI_SERIES =
    const FilmCollectionResponseItemsTypeEnum._('MINI_SERIES');
const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_TV_SERIES =
    const FilmCollectionResponseItemsTypeEnum._('TV_SERIES');
const FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnum_UNKNOWN =
    const FilmCollectionResponseItemsTypeEnum._('UNKNOWN');

FilmCollectionResponseItemsTypeEnum
    _$filmCollectionResponseItemsTypeEnumValueOf(String name) {
  switch (name) {
    case 'FILM':
      return _$filmCollectionResponseItemsTypeEnum_FILM;
    case 'TV_SHOW':
      return _$filmCollectionResponseItemsTypeEnum_TV_SHOW;
    case 'VIDEO':
      return _$filmCollectionResponseItemsTypeEnum_VIDEO;
    case 'MINI_SERIES':
      return _$filmCollectionResponseItemsTypeEnum_MINI_SERIES;
    case 'TV_SERIES':
      return _$filmCollectionResponseItemsTypeEnum_TV_SERIES;
    case 'UNKNOWN':
      return _$filmCollectionResponseItemsTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmCollectionResponseItemsTypeEnum>
    _$filmCollectionResponseItemsTypeEnumValues = BuiltSet<
        FilmCollectionResponseItemsTypeEnum>(const <FilmCollectionResponseItemsTypeEnum>[
  _$filmCollectionResponseItemsTypeEnum_FILM,
  _$filmCollectionResponseItemsTypeEnum_TV_SHOW,
  _$filmCollectionResponseItemsTypeEnum_VIDEO,
  _$filmCollectionResponseItemsTypeEnum_MINI_SERIES,
  _$filmCollectionResponseItemsTypeEnum_TV_SERIES,
  _$filmCollectionResponseItemsTypeEnum_UNKNOWN,
]);

Serializer<FilmCollectionResponseItemsTypeEnum>
    _$filmCollectionResponseItemsTypeEnumSerializer =
    _$FilmCollectionResponseItemsTypeEnumSerializer();

class _$FilmCollectionResponseItemsTypeEnumSerializer
    implements PrimitiveSerializer<FilmCollectionResponseItemsTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FILM': 'FILM',
    'TV_SHOW': 'TV_SHOW',
    'VIDEO': 'VIDEO',
    'MINI_SERIES': 'MINI_SERIES',
    'TV_SERIES': 'TV_SERIES',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FILM': 'FILM',
    'TV_SHOW': 'TV_SHOW',
    'VIDEO': 'VIDEO',
    'MINI_SERIES': 'MINI_SERIES',
    'TV_SERIES': 'TV_SERIES',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FilmCollectionResponseItemsTypeEnum
  ];
  @override
  final String wireName = 'FilmCollectionResponseItemsTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FilmCollectionResponseItemsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmCollectionResponseItemsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmCollectionResponseItemsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilmCollectionResponseItems extends FilmCollectionResponseItems {
  @override
  final int? kinopoiskId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? nameOriginal;
  @override
  final BuiltList<Country>? countries;
  @override
  final BuiltList<Genre>? genres;
  @override
  final num? ratingKinopoisk;
  @override
  final num? ratingImbd;
  @override
  final int? year;
  @override
  final FilmCollectionResponseItemsTypeEnum? type;
  @override
  final String? posterUrl;
  @override
  final String? posterUrlPreview;

  factory _$FilmCollectionResponseItems(
          [void Function(FilmCollectionResponseItemsBuilder)? updates]) =>
      (FilmCollectionResponseItemsBuilder()..update(updates))._build();

  _$FilmCollectionResponseItems._(
      {this.kinopoiskId,
      this.nameRu,
      this.nameEn,
      this.nameOriginal,
      this.countries,
      this.genres,
      this.ratingKinopoisk,
      this.ratingImbd,
      this.year,
      this.type,
      this.posterUrl,
      this.posterUrlPreview})
      : super._();
  @override
  FilmCollectionResponseItems rebuild(
          void Function(FilmCollectionResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmCollectionResponseItemsBuilder toBuilder() =>
      FilmCollectionResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmCollectionResponseItems &&
        kinopoiskId == other.kinopoiskId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        nameOriginal == other.nameOriginal &&
        countries == other.countries &&
        genres == other.genres &&
        ratingKinopoisk == other.ratingKinopoisk &&
        ratingImbd == other.ratingImbd &&
        year == other.year &&
        type == other.type &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, nameOriginal.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, ratingKinopoisk.hashCode);
    _$hash = $jc(_$hash, ratingImbd.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmCollectionResponseItems')
          ..add('kinopoiskId', kinopoiskId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('nameOriginal', nameOriginal)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('ratingKinopoisk', ratingKinopoisk)
          ..add('ratingImbd', ratingImbd)
          ..add('year', year)
          ..add('type', type)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview))
        .toString();
  }
}

class FilmCollectionResponseItemsBuilder
    implements
        Builder<FilmCollectionResponseItems,
            FilmCollectionResponseItemsBuilder> {
  _$FilmCollectionResponseItems? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _nameOriginal;
  String? get nameOriginal => _$this._nameOriginal;
  set nameOriginal(String? nameOriginal) => _$this._nameOriginal = nameOriginal;

  ListBuilder<Country>? _countries;
  ListBuilder<Country> get countries =>
      _$this._countries ??= ListBuilder<Country>();
  set countries(ListBuilder<Country>? countries) =>
      _$this._countries = countries;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  num? _ratingKinopoisk;
  num? get ratingKinopoisk => _$this._ratingKinopoisk;
  set ratingKinopoisk(num? ratingKinopoisk) =>
      _$this._ratingKinopoisk = ratingKinopoisk;

  num? _ratingImbd;
  num? get ratingImbd => _$this._ratingImbd;
  set ratingImbd(num? ratingImbd) => _$this._ratingImbd = ratingImbd;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  FilmCollectionResponseItemsTypeEnum? _type;
  FilmCollectionResponseItemsTypeEnum? get type => _$this._type;
  set type(FilmCollectionResponseItemsTypeEnum? type) => _$this._type = type;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  FilmCollectionResponseItemsBuilder() {
    FilmCollectionResponseItems._defaults(this);
  }

  FilmCollectionResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _nameOriginal = $v.nameOriginal;
      _countries = $v.countries?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _ratingKinopoisk = $v.ratingKinopoisk;
      _ratingImbd = $v.ratingImbd;
      _year = $v.year;
      _type = $v.type;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmCollectionResponseItems other) {
    _$v = other as _$FilmCollectionResponseItems;
  }

  @override
  void update(void Function(FilmCollectionResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmCollectionResponseItems build() => _build();

  _$FilmCollectionResponseItems _build() {
    _$FilmCollectionResponseItems _$result;
    try {
      _$result = _$v ??
          _$FilmCollectionResponseItems._(
            kinopoiskId: kinopoiskId,
            nameRu: nameRu,
            nameEn: nameEn,
            nameOriginal: nameOriginal,
            countries: _countries?.build(),
            genres: _genres?.build(),
            ratingKinopoisk: ratingKinopoisk,
            ratingImbd: ratingImbd,
            year: year,
            type: type,
            posterUrl: posterUrl,
            posterUrlPreview: posterUrlPreview,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        _countries?.build();
        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilmCollectionResponseItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
