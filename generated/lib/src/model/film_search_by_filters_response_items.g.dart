// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_search_by_filters_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_FILM =
    const FilmSearchByFiltersResponseItemsTypeEnum._('FILM');
const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_TV_SHOW =
    const FilmSearchByFiltersResponseItemsTypeEnum._('TV_SHOW');
const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_VIDEO =
    const FilmSearchByFiltersResponseItemsTypeEnum._('VIDEO');
const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_MINI_SERIES =
    const FilmSearchByFiltersResponseItemsTypeEnum._('MINI_SERIES');
const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_TV_SERIES =
    const FilmSearchByFiltersResponseItemsTypeEnum._('TV_SERIES');
const FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnum_UNKNOWN =
    const FilmSearchByFiltersResponseItemsTypeEnum._('UNKNOWN');

FilmSearchByFiltersResponseItemsTypeEnum
    _$filmSearchByFiltersResponseItemsTypeEnumValueOf(String name) {
  switch (name) {
    case 'FILM':
      return _$filmSearchByFiltersResponseItemsTypeEnum_FILM;
    case 'TV_SHOW':
      return _$filmSearchByFiltersResponseItemsTypeEnum_TV_SHOW;
    case 'VIDEO':
      return _$filmSearchByFiltersResponseItemsTypeEnum_VIDEO;
    case 'MINI_SERIES':
      return _$filmSearchByFiltersResponseItemsTypeEnum_MINI_SERIES;
    case 'TV_SERIES':
      return _$filmSearchByFiltersResponseItemsTypeEnum_TV_SERIES;
    case 'UNKNOWN':
      return _$filmSearchByFiltersResponseItemsTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmSearchByFiltersResponseItemsTypeEnum>
    _$filmSearchByFiltersResponseItemsTypeEnumValues = BuiltSet<
        FilmSearchByFiltersResponseItemsTypeEnum>(const <FilmSearchByFiltersResponseItemsTypeEnum>[
  _$filmSearchByFiltersResponseItemsTypeEnum_FILM,
  _$filmSearchByFiltersResponseItemsTypeEnum_TV_SHOW,
  _$filmSearchByFiltersResponseItemsTypeEnum_VIDEO,
  _$filmSearchByFiltersResponseItemsTypeEnum_MINI_SERIES,
  _$filmSearchByFiltersResponseItemsTypeEnum_TV_SERIES,
  _$filmSearchByFiltersResponseItemsTypeEnum_UNKNOWN,
]);

Serializer<FilmSearchByFiltersResponseItemsTypeEnum>
    _$filmSearchByFiltersResponseItemsTypeEnumSerializer =
    _$FilmSearchByFiltersResponseItemsTypeEnumSerializer();

class _$FilmSearchByFiltersResponseItemsTypeEnumSerializer
    implements PrimitiveSerializer<FilmSearchByFiltersResponseItemsTypeEnum> {
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
    FilmSearchByFiltersResponseItemsTypeEnum
  ];
  @override
  final String wireName = 'FilmSearchByFiltersResponseItemsTypeEnum';

  @override
  Object serialize(Serializers serializers,
          FilmSearchByFiltersResponseItemsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmSearchByFiltersResponseItemsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmSearchByFiltersResponseItemsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilmSearchByFiltersResponseItems
    extends FilmSearchByFiltersResponseItems {
  @override
  final int? kinopoiskId;
  @override
  final String? imdbId;
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
  final num? ratingImdb;
  @override
  final num? year;
  @override
  final FilmSearchByFiltersResponseItemsTypeEnum? type;
  @override
  final String? posterUrl;
  @override
  final String? posterUrlPreview;

  factory _$FilmSearchByFiltersResponseItems(
          [void Function(FilmSearchByFiltersResponseItemsBuilder)? updates]) =>
      (FilmSearchByFiltersResponseItemsBuilder()..update(updates))._build();

  _$FilmSearchByFiltersResponseItems._(
      {this.kinopoiskId,
      this.imdbId,
      this.nameRu,
      this.nameEn,
      this.nameOriginal,
      this.countries,
      this.genres,
      this.ratingKinopoisk,
      this.ratingImdb,
      this.year,
      this.type,
      this.posterUrl,
      this.posterUrlPreview})
      : super._();
  @override
  FilmSearchByFiltersResponseItems rebuild(
          void Function(FilmSearchByFiltersResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmSearchByFiltersResponseItemsBuilder toBuilder() =>
      FilmSearchByFiltersResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmSearchByFiltersResponseItems &&
        kinopoiskId == other.kinopoiskId &&
        imdbId == other.imdbId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        nameOriginal == other.nameOriginal &&
        countries == other.countries &&
        genres == other.genres &&
        ratingKinopoisk == other.ratingKinopoisk &&
        ratingImdb == other.ratingImdb &&
        year == other.year &&
        type == other.type &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, nameOriginal.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, ratingKinopoisk.hashCode);
    _$hash = $jc(_$hash, ratingImdb.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmSearchByFiltersResponseItems')
          ..add('kinopoiskId', kinopoiskId)
          ..add('imdbId', imdbId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('nameOriginal', nameOriginal)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('ratingKinopoisk', ratingKinopoisk)
          ..add('ratingImdb', ratingImdb)
          ..add('year', year)
          ..add('type', type)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview))
        .toString();
  }
}

class FilmSearchByFiltersResponseItemsBuilder
    implements
        Builder<FilmSearchByFiltersResponseItems,
            FilmSearchByFiltersResponseItemsBuilder> {
  _$FilmSearchByFiltersResponseItems? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

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

  num? _ratingImdb;
  num? get ratingImdb => _$this._ratingImdb;
  set ratingImdb(num? ratingImdb) => _$this._ratingImdb = ratingImdb;

  num? _year;
  num? get year => _$this._year;
  set year(num? year) => _$this._year = year;

  FilmSearchByFiltersResponseItemsTypeEnum? _type;
  FilmSearchByFiltersResponseItemsTypeEnum? get type => _$this._type;
  set type(FilmSearchByFiltersResponseItemsTypeEnum? type) =>
      _$this._type = type;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  FilmSearchByFiltersResponseItemsBuilder() {
    FilmSearchByFiltersResponseItems._defaults(this);
  }

  FilmSearchByFiltersResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _imdbId = $v.imdbId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _nameOriginal = $v.nameOriginal;
      _countries = $v.countries?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _ratingKinopoisk = $v.ratingKinopoisk;
      _ratingImdb = $v.ratingImdb;
      _year = $v.year;
      _type = $v.type;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmSearchByFiltersResponseItems other) {
    _$v = other as _$FilmSearchByFiltersResponseItems;
  }

  @override
  void update(void Function(FilmSearchByFiltersResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmSearchByFiltersResponseItems build() => _build();

  _$FilmSearchByFiltersResponseItems _build() {
    _$FilmSearchByFiltersResponseItems _$result;
    try {
      _$result = _$v ??
          _$FilmSearchByFiltersResponseItems._(
            kinopoiskId: kinopoiskId,
            imdbId: imdbId,
            nameRu: nameRu,
            nameEn: nameEn,
            nameOriginal: nameOriginal,
            countries: _countries?.build(),
            genres: _genres?.build(),
            ratingKinopoisk: ratingKinopoisk,
            ratingImdb: ratingImdb,
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
            r'FilmSearchByFiltersResponseItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
