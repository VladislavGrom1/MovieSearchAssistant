// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_search_response_films.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilmSearchResponseFilmsTypeEnum _$filmSearchResponseFilmsTypeEnum_FILM =
    const FilmSearchResponseFilmsTypeEnum._('FILM');
const FilmSearchResponseFilmsTypeEnum
    _$filmSearchResponseFilmsTypeEnum_TV_SHOW =
    const FilmSearchResponseFilmsTypeEnum._('TV_SHOW');
const FilmSearchResponseFilmsTypeEnum _$filmSearchResponseFilmsTypeEnum_VIDEO =
    const FilmSearchResponseFilmsTypeEnum._('VIDEO');
const FilmSearchResponseFilmsTypeEnum
    _$filmSearchResponseFilmsTypeEnum_MINI_SERIES =
    const FilmSearchResponseFilmsTypeEnum._('MINI_SERIES');
const FilmSearchResponseFilmsTypeEnum
    _$filmSearchResponseFilmsTypeEnum_TV_SERIES =
    const FilmSearchResponseFilmsTypeEnum._('TV_SERIES');
const FilmSearchResponseFilmsTypeEnum
    _$filmSearchResponseFilmsTypeEnum_UNKNOWN =
    const FilmSearchResponseFilmsTypeEnum._('UNKNOWN');

FilmSearchResponseFilmsTypeEnum _$filmSearchResponseFilmsTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'FILM':
      return _$filmSearchResponseFilmsTypeEnum_FILM;
    case 'TV_SHOW':
      return _$filmSearchResponseFilmsTypeEnum_TV_SHOW;
    case 'VIDEO':
      return _$filmSearchResponseFilmsTypeEnum_VIDEO;
    case 'MINI_SERIES':
      return _$filmSearchResponseFilmsTypeEnum_MINI_SERIES;
    case 'TV_SERIES':
      return _$filmSearchResponseFilmsTypeEnum_TV_SERIES;
    case 'UNKNOWN':
      return _$filmSearchResponseFilmsTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmSearchResponseFilmsTypeEnum>
    _$filmSearchResponseFilmsTypeEnumValues = BuiltSet<
        FilmSearchResponseFilmsTypeEnum>(const <FilmSearchResponseFilmsTypeEnum>[
  _$filmSearchResponseFilmsTypeEnum_FILM,
  _$filmSearchResponseFilmsTypeEnum_TV_SHOW,
  _$filmSearchResponseFilmsTypeEnum_VIDEO,
  _$filmSearchResponseFilmsTypeEnum_MINI_SERIES,
  _$filmSearchResponseFilmsTypeEnum_TV_SERIES,
  _$filmSearchResponseFilmsTypeEnum_UNKNOWN,
]);

Serializer<FilmSearchResponseFilmsTypeEnum>
    _$filmSearchResponseFilmsTypeEnumSerializer =
    _$FilmSearchResponseFilmsTypeEnumSerializer();

class _$FilmSearchResponseFilmsTypeEnumSerializer
    implements PrimitiveSerializer<FilmSearchResponseFilmsTypeEnum> {
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
  final Iterable<Type> types = const <Type>[FilmSearchResponseFilmsTypeEnum];
  @override
  final String wireName = 'FilmSearchResponseFilmsTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FilmSearchResponseFilmsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmSearchResponseFilmsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmSearchResponseFilmsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilmSearchResponseFilms extends FilmSearchResponseFilms {
  @override
  final int? filmId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final FilmSearchResponseFilmsTypeEnum? type;
  @override
  final String? year;
  @override
  final String? description;
  @override
  final String? filmLength;
  @override
  final BuiltList<Country>? countries;
  @override
  final BuiltList<Genre>? genres;
  @override
  final String? rating;
  @override
  final int? ratingVoteCount;
  @override
  final String? posterUrl;
  @override
  final String? posterUrlPreview;

  factory _$FilmSearchResponseFilms(
          [void Function(FilmSearchResponseFilmsBuilder)? updates]) =>
      (FilmSearchResponseFilmsBuilder()..update(updates))._build();

  _$FilmSearchResponseFilms._(
      {this.filmId,
      this.nameRu,
      this.nameEn,
      this.type,
      this.year,
      this.description,
      this.filmLength,
      this.countries,
      this.genres,
      this.rating,
      this.ratingVoteCount,
      this.posterUrl,
      this.posterUrlPreview})
      : super._();
  @override
  FilmSearchResponseFilms rebuild(
          void Function(FilmSearchResponseFilmsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmSearchResponseFilmsBuilder toBuilder() =>
      FilmSearchResponseFilmsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmSearchResponseFilms &&
        filmId == other.filmId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        type == other.type &&
        year == other.year &&
        description == other.description &&
        filmLength == other.filmLength &&
        countries == other.countries &&
        genres == other.genres &&
        rating == other.rating &&
        ratingVoteCount == other.ratingVoteCount &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filmId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, filmLength.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingVoteCount.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilmSearchResponseFilms')
          ..add('filmId', filmId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('type', type)
          ..add('year', year)
          ..add('description', description)
          ..add('filmLength', filmLength)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('rating', rating)
          ..add('ratingVoteCount', ratingVoteCount)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview))
        .toString();
  }
}

class FilmSearchResponseFilmsBuilder
    implements
        Builder<FilmSearchResponseFilms, FilmSearchResponseFilmsBuilder> {
  _$FilmSearchResponseFilms? _$v;

  int? _filmId;
  int? get filmId => _$this._filmId;
  set filmId(int? filmId) => _$this._filmId = filmId;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  FilmSearchResponseFilmsTypeEnum? _type;
  FilmSearchResponseFilmsTypeEnum? get type => _$this._type;
  set type(FilmSearchResponseFilmsTypeEnum? type) => _$this._type = type;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _filmLength;
  String? get filmLength => _$this._filmLength;
  set filmLength(String? filmLength) => _$this._filmLength = filmLength;

  ListBuilder<Country>? _countries;
  ListBuilder<Country> get countries =>
      _$this._countries ??= ListBuilder<Country>();
  set countries(ListBuilder<Country>? countries) =>
      _$this._countries = countries;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  int? _ratingVoteCount;
  int? get ratingVoteCount => _$this._ratingVoteCount;
  set ratingVoteCount(int? ratingVoteCount) =>
      _$this._ratingVoteCount = ratingVoteCount;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  FilmSearchResponseFilmsBuilder() {
    FilmSearchResponseFilms._defaults(this);
  }

  FilmSearchResponseFilmsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filmId = $v.filmId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _type = $v.type;
      _year = $v.year;
      _description = $v.description;
      _filmLength = $v.filmLength;
      _countries = $v.countries?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _rating = $v.rating;
      _ratingVoteCount = $v.ratingVoteCount;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilmSearchResponseFilms other) {
    _$v = other as _$FilmSearchResponseFilms;
  }

  @override
  void update(void Function(FilmSearchResponseFilmsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmSearchResponseFilms build() => _build();

  _$FilmSearchResponseFilms _build() {
    _$FilmSearchResponseFilms _$result;
    try {
      _$result = _$v ??
          _$FilmSearchResponseFilms._(
            filmId: filmId,
            nameRu: nameRu,
            nameEn: nameEn,
            type: type,
            year: year,
            description: description,
            filmLength: filmLength,
            countries: _countries?.build(),
            genres: _genres?.build(),
            rating: rating,
            ratingVoteCount: ratingVoteCount,
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
            r'FilmSearchResponseFilms', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
