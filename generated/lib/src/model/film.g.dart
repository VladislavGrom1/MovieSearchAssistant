// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilmProductionStatusEnum _$filmProductionStatusEnum_FILMING =
    const FilmProductionStatusEnum._('FILMING');
const FilmProductionStatusEnum _$filmProductionStatusEnum_PRE_PRODUCTION =
    const FilmProductionStatusEnum._('PRE_PRODUCTION');
const FilmProductionStatusEnum _$filmProductionStatusEnum_COMPLETED =
    const FilmProductionStatusEnum._('COMPLETED');
const FilmProductionStatusEnum _$filmProductionStatusEnum_ANNOUNCED =
    const FilmProductionStatusEnum._('ANNOUNCED');
const FilmProductionStatusEnum _$filmProductionStatusEnum_UNKNOWN =
    const FilmProductionStatusEnum._('UNKNOWN');
const FilmProductionStatusEnum _$filmProductionStatusEnum_POST_PRODUCTION =
    const FilmProductionStatusEnum._('POST_PRODUCTION');

FilmProductionStatusEnum _$filmProductionStatusEnumValueOf(String name) {
  switch (name) {
    case 'FILMING':
      return _$filmProductionStatusEnum_FILMING;
    case 'PRE_PRODUCTION':
      return _$filmProductionStatusEnum_PRE_PRODUCTION;
    case 'COMPLETED':
      return _$filmProductionStatusEnum_COMPLETED;
    case 'ANNOUNCED':
      return _$filmProductionStatusEnum_ANNOUNCED;
    case 'UNKNOWN':
      return _$filmProductionStatusEnum_UNKNOWN;
    case 'POST_PRODUCTION':
      return _$filmProductionStatusEnum_POST_PRODUCTION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmProductionStatusEnum> _$filmProductionStatusEnumValues =
    BuiltSet<FilmProductionStatusEnum>(const <FilmProductionStatusEnum>[
  _$filmProductionStatusEnum_FILMING,
  _$filmProductionStatusEnum_PRE_PRODUCTION,
  _$filmProductionStatusEnum_COMPLETED,
  _$filmProductionStatusEnum_ANNOUNCED,
  _$filmProductionStatusEnum_UNKNOWN,
  _$filmProductionStatusEnum_POST_PRODUCTION,
]);

const FilmTypeEnum _$filmTypeEnum_FILM = const FilmTypeEnum._('FILM');
const FilmTypeEnum _$filmTypeEnum_VIDEO = const FilmTypeEnum._('VIDEO');
const FilmTypeEnum _$filmTypeEnum_TV_SERIES = const FilmTypeEnum._('TV_SERIES');
const FilmTypeEnum _$filmTypeEnum_MINI_SERIES =
    const FilmTypeEnum._('MINI_SERIES');
const FilmTypeEnum _$filmTypeEnum_TV_SHOW = const FilmTypeEnum._('TV_SHOW');

FilmTypeEnum _$filmTypeEnumValueOf(String name) {
  switch (name) {
    case 'FILM':
      return _$filmTypeEnum_FILM;
    case 'VIDEO':
      return _$filmTypeEnum_VIDEO;
    case 'TV_SERIES':
      return _$filmTypeEnum_TV_SERIES;
    case 'MINI_SERIES':
      return _$filmTypeEnum_MINI_SERIES;
    case 'TV_SHOW':
      return _$filmTypeEnum_TV_SHOW;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmTypeEnum> _$filmTypeEnumValues =
    BuiltSet<FilmTypeEnum>(const <FilmTypeEnum>[
  _$filmTypeEnum_FILM,
  _$filmTypeEnum_VIDEO,
  _$filmTypeEnum_TV_SERIES,
  _$filmTypeEnum_MINI_SERIES,
  _$filmTypeEnum_TV_SHOW,
]);

Serializer<FilmProductionStatusEnum> _$filmProductionStatusEnumSerializer =
    _$FilmProductionStatusEnumSerializer();
Serializer<FilmTypeEnum> _$filmTypeEnumSerializer = _$FilmTypeEnumSerializer();

class _$FilmProductionStatusEnumSerializer
    implements PrimitiveSerializer<FilmProductionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FILMING': 'FILMING',
    'PRE_PRODUCTION': 'PRE_PRODUCTION',
    'COMPLETED': 'COMPLETED',
    'ANNOUNCED': 'ANNOUNCED',
    'UNKNOWN': 'UNKNOWN',
    'POST_PRODUCTION': 'POST_PRODUCTION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FILMING': 'FILMING',
    'PRE_PRODUCTION': 'PRE_PRODUCTION',
    'COMPLETED': 'COMPLETED',
    'ANNOUNCED': 'ANNOUNCED',
    'UNKNOWN': 'UNKNOWN',
    'POST_PRODUCTION': 'POST_PRODUCTION',
  };

  @override
  final Iterable<Type> types = const <Type>[FilmProductionStatusEnum];
  @override
  final String wireName = 'FilmProductionStatusEnum';

  @override
  Object serialize(Serializers serializers, FilmProductionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmProductionStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmProductionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilmTypeEnumSerializer implements PrimitiveSerializer<FilmTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FILM': 'FILM',
    'VIDEO': 'VIDEO',
    'TV_SERIES': 'TV_SERIES',
    'MINI_SERIES': 'MINI_SERIES',
    'TV_SHOW': 'TV_SHOW',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FILM': 'FILM',
    'VIDEO': 'VIDEO',
    'TV_SERIES': 'TV_SERIES',
    'MINI_SERIES': 'MINI_SERIES',
    'TV_SHOW': 'TV_SHOW',
  };

  @override
  final Iterable<Type> types = const <Type>[FilmTypeEnum];
  @override
  final String wireName = 'FilmTypeEnum';

  @override
  Object serialize(Serializers serializers, FilmTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Film extends Film {
  @override
  final int kinopoiskId;
  @override
  final String? kinopoiskHDId;
  @override
  final String? imdbId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? nameOriginal;
  @override
  final String posterUrl;
  @override
  final String posterUrlPreview;
  @override
  final String? coverUrl;
  @override
  final String? logoUrl;
  @override
  final int reviewsCount;
  @override
  final num? ratingGoodReview;
  @override
  final int? ratingGoodReviewVoteCount;
  @override
  final num? ratingKinopoisk;
  @override
  final int? ratingKinopoiskVoteCount;
  @override
  final num? ratingImdb;
  @override
  final int? ratingImdbVoteCount;
  @override
  final num? ratingFilmCritics;
  @override
  final int? ratingFilmCriticsVoteCount;
  @override
  final num? ratingAwait;
  @override
  final int? ratingAwaitCount;
  @override
  final num? ratingRfCritics;
  @override
  final int? ratingRfCriticsVoteCount;
  @override
  final String webUrl;
  @override
  final int? year;
  @override
  final int? filmLength;
  @override
  final String? slogan;
  @override
  final String? description;
  @override
  final String? shortDescription;
  @override
  final String? editorAnnotation;
  @override
  final bool isTicketsAvailable;
  @override
  final FilmProductionStatusEnum? productionStatus;
  @override
  final FilmTypeEnum type;
  @override
  final String? ratingMpaa;
  @override
  final String? ratingAgeLimits;
  @override
  final bool? hasImax;
  @override
  final bool? has3D;
  @override
  final String lastSync;
  @override
  final BuiltList<Country> countries;
  @override
  final BuiltList<Genre> genres;
  @override
  final int? startYear;
  @override
  final int? endYear;
  @override
  final bool? serial;
  @override
  final bool? shortFilm;
  @override
  final bool? completed;

  factory _$Film([void Function(FilmBuilder)? updates]) =>
      (FilmBuilder()..update(updates))._build();

  _$Film._(
      {required this.kinopoiskId,
      this.kinopoiskHDId,
      this.imdbId,
      this.nameRu,
      this.nameEn,
      this.nameOriginal,
      required this.posterUrl,
      required this.posterUrlPreview,
      this.coverUrl,
      this.logoUrl,
      required this.reviewsCount,
      this.ratingGoodReview,
      this.ratingGoodReviewVoteCount,
      this.ratingKinopoisk,
      this.ratingKinopoiskVoteCount,
      this.ratingImdb,
      this.ratingImdbVoteCount,
      this.ratingFilmCritics,
      this.ratingFilmCriticsVoteCount,
      this.ratingAwait,
      this.ratingAwaitCount,
      this.ratingRfCritics,
      this.ratingRfCriticsVoteCount,
      required this.webUrl,
      this.year,
      this.filmLength,
      this.slogan,
      this.description,
      this.shortDescription,
      this.editorAnnotation,
      required this.isTicketsAvailable,
      this.productionStatus,
      required this.type,
      this.ratingMpaa,
      this.ratingAgeLimits,
      this.hasImax,
      this.has3D,
      required this.lastSync,
      required this.countries,
      required this.genres,
      this.startYear,
      this.endYear,
      this.serial,
      this.shortFilm,
      this.completed})
      : super._();
  @override
  Film rebuild(void Function(FilmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmBuilder toBuilder() => FilmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Film &&
        kinopoiskId == other.kinopoiskId &&
        kinopoiskHDId == other.kinopoiskHDId &&
        imdbId == other.imdbId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        nameOriginal == other.nameOriginal &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview &&
        coverUrl == other.coverUrl &&
        logoUrl == other.logoUrl &&
        reviewsCount == other.reviewsCount &&
        ratingGoodReview == other.ratingGoodReview &&
        ratingGoodReviewVoteCount == other.ratingGoodReviewVoteCount &&
        ratingKinopoisk == other.ratingKinopoisk &&
        ratingKinopoiskVoteCount == other.ratingKinopoiskVoteCount &&
        ratingImdb == other.ratingImdb &&
        ratingImdbVoteCount == other.ratingImdbVoteCount &&
        ratingFilmCritics == other.ratingFilmCritics &&
        ratingFilmCriticsVoteCount == other.ratingFilmCriticsVoteCount &&
        ratingAwait == other.ratingAwait &&
        ratingAwaitCount == other.ratingAwaitCount &&
        ratingRfCritics == other.ratingRfCritics &&
        ratingRfCriticsVoteCount == other.ratingRfCriticsVoteCount &&
        webUrl == other.webUrl &&
        year == other.year &&
        filmLength == other.filmLength &&
        slogan == other.slogan &&
        description == other.description &&
        shortDescription == other.shortDescription &&
        editorAnnotation == other.editorAnnotation &&
        isTicketsAvailable == other.isTicketsAvailable &&
        productionStatus == other.productionStatus &&
        type == other.type &&
        ratingMpaa == other.ratingMpaa &&
        ratingAgeLimits == other.ratingAgeLimits &&
        hasImax == other.hasImax &&
        has3D == other.has3D &&
        lastSync == other.lastSync &&
        countries == other.countries &&
        genres == other.genres &&
        startYear == other.startYear &&
        endYear == other.endYear &&
        serial == other.serial &&
        shortFilm == other.shortFilm &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, kinopoiskHDId.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, nameOriginal.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jc(_$hash, coverUrl.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, ratingGoodReview.hashCode);
    _$hash = $jc(_$hash, ratingGoodReviewVoteCount.hashCode);
    _$hash = $jc(_$hash, ratingKinopoisk.hashCode);
    _$hash = $jc(_$hash, ratingKinopoiskVoteCount.hashCode);
    _$hash = $jc(_$hash, ratingImdb.hashCode);
    _$hash = $jc(_$hash, ratingImdbVoteCount.hashCode);
    _$hash = $jc(_$hash, ratingFilmCritics.hashCode);
    _$hash = $jc(_$hash, ratingFilmCriticsVoteCount.hashCode);
    _$hash = $jc(_$hash, ratingAwait.hashCode);
    _$hash = $jc(_$hash, ratingAwaitCount.hashCode);
    _$hash = $jc(_$hash, ratingRfCritics.hashCode);
    _$hash = $jc(_$hash, ratingRfCriticsVoteCount.hashCode);
    _$hash = $jc(_$hash, webUrl.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, filmLength.hashCode);
    _$hash = $jc(_$hash, slogan.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, editorAnnotation.hashCode);
    _$hash = $jc(_$hash, isTicketsAvailable.hashCode);
    _$hash = $jc(_$hash, productionStatus.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ratingMpaa.hashCode);
    _$hash = $jc(_$hash, ratingAgeLimits.hashCode);
    _$hash = $jc(_$hash, hasImax.hashCode);
    _$hash = $jc(_$hash, has3D.hashCode);
    _$hash = $jc(_$hash, lastSync.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, endYear.hashCode);
    _$hash = $jc(_$hash, serial.hashCode);
    _$hash = $jc(_$hash, shortFilm.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Film')
          ..add('kinopoiskId', kinopoiskId)
          ..add('kinopoiskHDId', kinopoiskHDId)
          ..add('imdbId', imdbId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('nameOriginal', nameOriginal)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview)
          ..add('coverUrl', coverUrl)
          ..add('logoUrl', logoUrl)
          ..add('reviewsCount', reviewsCount)
          ..add('ratingGoodReview', ratingGoodReview)
          ..add('ratingGoodReviewVoteCount', ratingGoodReviewVoteCount)
          ..add('ratingKinopoisk', ratingKinopoisk)
          ..add('ratingKinopoiskVoteCount', ratingKinopoiskVoteCount)
          ..add('ratingImdb', ratingImdb)
          ..add('ratingImdbVoteCount', ratingImdbVoteCount)
          ..add('ratingFilmCritics', ratingFilmCritics)
          ..add('ratingFilmCriticsVoteCount', ratingFilmCriticsVoteCount)
          ..add('ratingAwait', ratingAwait)
          ..add('ratingAwaitCount', ratingAwaitCount)
          ..add('ratingRfCritics', ratingRfCritics)
          ..add('ratingRfCriticsVoteCount', ratingRfCriticsVoteCount)
          ..add('webUrl', webUrl)
          ..add('year', year)
          ..add('filmLength', filmLength)
          ..add('slogan', slogan)
          ..add('description', description)
          ..add('shortDescription', shortDescription)
          ..add('editorAnnotation', editorAnnotation)
          ..add('isTicketsAvailable', isTicketsAvailable)
          ..add('productionStatus', productionStatus)
          ..add('type', type)
          ..add('ratingMpaa', ratingMpaa)
          ..add('ratingAgeLimits', ratingAgeLimits)
          ..add('hasImax', hasImax)
          ..add('has3D', has3D)
          ..add('lastSync', lastSync)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('startYear', startYear)
          ..add('endYear', endYear)
          ..add('serial', serial)
          ..add('shortFilm', shortFilm)
          ..add('completed', completed))
        .toString();
  }
}

class FilmBuilder implements Builder<Film, FilmBuilder> {
  _$Film? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _kinopoiskHDId;
  String? get kinopoiskHDId => _$this._kinopoiskHDId;
  set kinopoiskHDId(String? kinopoiskHDId) =>
      _$this._kinopoiskHDId = kinopoiskHDId;

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

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  String? _coverUrl;
  String? get coverUrl => _$this._coverUrl;
  set coverUrl(String? coverUrl) => _$this._coverUrl = coverUrl;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  num? _ratingGoodReview;
  num? get ratingGoodReview => _$this._ratingGoodReview;
  set ratingGoodReview(num? ratingGoodReview) =>
      _$this._ratingGoodReview = ratingGoodReview;

  int? _ratingGoodReviewVoteCount;
  int? get ratingGoodReviewVoteCount => _$this._ratingGoodReviewVoteCount;
  set ratingGoodReviewVoteCount(int? ratingGoodReviewVoteCount) =>
      _$this._ratingGoodReviewVoteCount = ratingGoodReviewVoteCount;

  num? _ratingKinopoisk;
  num? get ratingKinopoisk => _$this._ratingKinopoisk;
  set ratingKinopoisk(num? ratingKinopoisk) =>
      _$this._ratingKinopoisk = ratingKinopoisk;

  int? _ratingKinopoiskVoteCount;
  int? get ratingKinopoiskVoteCount => _$this._ratingKinopoiskVoteCount;
  set ratingKinopoiskVoteCount(int? ratingKinopoiskVoteCount) =>
      _$this._ratingKinopoiskVoteCount = ratingKinopoiskVoteCount;

  num? _ratingImdb;
  num? get ratingImdb => _$this._ratingImdb;
  set ratingImdb(num? ratingImdb) => _$this._ratingImdb = ratingImdb;

  int? _ratingImdbVoteCount;
  int? get ratingImdbVoteCount => _$this._ratingImdbVoteCount;
  set ratingImdbVoteCount(int? ratingImdbVoteCount) =>
      _$this._ratingImdbVoteCount = ratingImdbVoteCount;

  num? _ratingFilmCritics;
  num? get ratingFilmCritics => _$this._ratingFilmCritics;
  set ratingFilmCritics(num? ratingFilmCritics) =>
      _$this._ratingFilmCritics = ratingFilmCritics;

  int? _ratingFilmCriticsVoteCount;
  int? get ratingFilmCriticsVoteCount => _$this._ratingFilmCriticsVoteCount;
  set ratingFilmCriticsVoteCount(int? ratingFilmCriticsVoteCount) =>
      _$this._ratingFilmCriticsVoteCount = ratingFilmCriticsVoteCount;

  num? _ratingAwait;
  num? get ratingAwait => _$this._ratingAwait;
  set ratingAwait(num? ratingAwait) => _$this._ratingAwait = ratingAwait;

  int? _ratingAwaitCount;
  int? get ratingAwaitCount => _$this._ratingAwaitCount;
  set ratingAwaitCount(int? ratingAwaitCount) =>
      _$this._ratingAwaitCount = ratingAwaitCount;

  num? _ratingRfCritics;
  num? get ratingRfCritics => _$this._ratingRfCritics;
  set ratingRfCritics(num? ratingRfCritics) =>
      _$this._ratingRfCritics = ratingRfCritics;

  int? _ratingRfCriticsVoteCount;
  int? get ratingRfCriticsVoteCount => _$this._ratingRfCriticsVoteCount;
  set ratingRfCriticsVoteCount(int? ratingRfCriticsVoteCount) =>
      _$this._ratingRfCriticsVoteCount = ratingRfCriticsVoteCount;

  String? _webUrl;
  String? get webUrl => _$this._webUrl;
  set webUrl(String? webUrl) => _$this._webUrl = webUrl;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _filmLength;
  int? get filmLength => _$this._filmLength;
  set filmLength(int? filmLength) => _$this._filmLength = filmLength;

  String? _slogan;
  String? get slogan => _$this._slogan;
  set slogan(String? slogan) => _$this._slogan = slogan;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _editorAnnotation;
  String? get editorAnnotation => _$this._editorAnnotation;
  set editorAnnotation(String? editorAnnotation) =>
      _$this._editorAnnotation = editorAnnotation;

  bool? _isTicketsAvailable;
  bool? get isTicketsAvailable => _$this._isTicketsAvailable;
  set isTicketsAvailable(bool? isTicketsAvailable) =>
      _$this._isTicketsAvailable = isTicketsAvailable;

  FilmProductionStatusEnum? _productionStatus;
  FilmProductionStatusEnum? get productionStatus => _$this._productionStatus;
  set productionStatus(FilmProductionStatusEnum? productionStatus) =>
      _$this._productionStatus = productionStatus;

  FilmTypeEnum? _type;
  FilmTypeEnum? get type => _$this._type;
  set type(FilmTypeEnum? type) => _$this._type = type;

  String? _ratingMpaa;
  String? get ratingMpaa => _$this._ratingMpaa;
  set ratingMpaa(String? ratingMpaa) => _$this._ratingMpaa = ratingMpaa;

  String? _ratingAgeLimits;
  String? get ratingAgeLimits => _$this._ratingAgeLimits;
  set ratingAgeLimits(String? ratingAgeLimits) =>
      _$this._ratingAgeLimits = ratingAgeLimits;

  bool? _hasImax;
  bool? get hasImax => _$this._hasImax;
  set hasImax(bool? hasImax) => _$this._hasImax = hasImax;

  bool? _has3D;
  bool? get has3D => _$this._has3D;
  set has3D(bool? has3D) => _$this._has3D = has3D;

  String? _lastSync;
  String? get lastSync => _$this._lastSync;
  set lastSync(String? lastSync) => _$this._lastSync = lastSync;

  ListBuilder<Country>? _countries;
  ListBuilder<Country> get countries =>
      _$this._countries ??= ListBuilder<Country>();
  set countries(ListBuilder<Country>? countries) =>
      _$this._countries = countries;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  int? _startYear;
  int? get startYear => _$this._startYear;
  set startYear(int? startYear) => _$this._startYear = startYear;

  int? _endYear;
  int? get endYear => _$this._endYear;
  set endYear(int? endYear) => _$this._endYear = endYear;

  bool? _serial;
  bool? get serial => _$this._serial;
  set serial(bool? serial) => _$this._serial = serial;

  bool? _shortFilm;
  bool? get shortFilm => _$this._shortFilm;
  set shortFilm(bool? shortFilm) => _$this._shortFilm = shortFilm;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  FilmBuilder() {
    Film._defaults(this);
  }

  FilmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _kinopoiskHDId = $v.kinopoiskHDId;
      _imdbId = $v.imdbId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _nameOriginal = $v.nameOriginal;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _coverUrl = $v.coverUrl;
      _logoUrl = $v.logoUrl;
      _reviewsCount = $v.reviewsCount;
      _ratingGoodReview = $v.ratingGoodReview;
      _ratingGoodReviewVoteCount = $v.ratingGoodReviewVoteCount;
      _ratingKinopoisk = $v.ratingKinopoisk;
      _ratingKinopoiskVoteCount = $v.ratingKinopoiskVoteCount;
      _ratingImdb = $v.ratingImdb;
      _ratingImdbVoteCount = $v.ratingImdbVoteCount;
      _ratingFilmCritics = $v.ratingFilmCritics;
      _ratingFilmCriticsVoteCount = $v.ratingFilmCriticsVoteCount;
      _ratingAwait = $v.ratingAwait;
      _ratingAwaitCount = $v.ratingAwaitCount;
      _ratingRfCritics = $v.ratingRfCritics;
      _ratingRfCriticsVoteCount = $v.ratingRfCriticsVoteCount;
      _webUrl = $v.webUrl;
      _year = $v.year;
      _filmLength = $v.filmLength;
      _slogan = $v.slogan;
      _description = $v.description;
      _shortDescription = $v.shortDescription;
      _editorAnnotation = $v.editorAnnotation;
      _isTicketsAvailable = $v.isTicketsAvailable;
      _productionStatus = $v.productionStatus;
      _type = $v.type;
      _ratingMpaa = $v.ratingMpaa;
      _ratingAgeLimits = $v.ratingAgeLimits;
      _hasImax = $v.hasImax;
      _has3D = $v.has3D;
      _lastSync = $v.lastSync;
      _countries = $v.countries.toBuilder();
      _genres = $v.genres.toBuilder();
      _startYear = $v.startYear;
      _endYear = $v.endYear;
      _serial = $v.serial;
      _shortFilm = $v.shortFilm;
      _completed = $v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Film other) {
    _$v = other as _$Film;
  }

  @override
  void update(void Function(FilmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Film build() => _build();

  _$Film _build() {
    _$Film _$result;
    try {
      _$result = _$v ??
          _$Film._(
            kinopoiskId: BuiltValueNullFieldError.checkNotNull(
                kinopoiskId, r'Film', 'kinopoiskId'),
            kinopoiskHDId: kinopoiskHDId,
            imdbId: imdbId,
            nameRu: nameRu,
            nameEn: nameEn,
            nameOriginal: nameOriginal,
            posterUrl: BuiltValueNullFieldError.checkNotNull(
                posterUrl, r'Film', 'posterUrl'),
            posterUrlPreview: BuiltValueNullFieldError.checkNotNull(
                posterUrlPreview, r'Film', 'posterUrlPreview'),
            coverUrl: coverUrl,
            logoUrl: logoUrl,
            reviewsCount: BuiltValueNullFieldError.checkNotNull(
                reviewsCount, r'Film', 'reviewsCount'),
            ratingGoodReview: ratingGoodReview,
            ratingGoodReviewVoteCount: ratingGoodReviewVoteCount,
            ratingKinopoisk: ratingKinopoisk,
            ratingKinopoiskVoteCount: ratingKinopoiskVoteCount,
            ratingImdb: ratingImdb,
            ratingImdbVoteCount: ratingImdbVoteCount,
            ratingFilmCritics: ratingFilmCritics,
            ratingFilmCriticsVoteCount: ratingFilmCriticsVoteCount,
            ratingAwait: ratingAwait,
            ratingAwaitCount: ratingAwaitCount,
            ratingRfCritics: ratingRfCritics,
            ratingRfCriticsVoteCount: ratingRfCriticsVoteCount,
            webUrl: BuiltValueNullFieldError.checkNotNull(
                webUrl, r'Film', 'webUrl'),
            year: year,
            filmLength: filmLength,
            slogan: slogan,
            description: description,
            shortDescription: shortDescription,
            editorAnnotation: editorAnnotation,
            isTicketsAvailable: BuiltValueNullFieldError.checkNotNull(
                isTicketsAvailable, r'Film', 'isTicketsAvailable'),
            productionStatus: productionStatus,
            type: BuiltValueNullFieldError.checkNotNull(type, r'Film', 'type'),
            ratingMpaa: ratingMpaa,
            ratingAgeLimits: ratingAgeLimits,
            hasImax: hasImax,
            has3D: has3D,
            lastSync: BuiltValueNullFieldError.checkNotNull(
                lastSync, r'Film', 'lastSync'),
            countries: countries.build(),
            genres: genres.build(),
            startYear: startYear,
            endYear: endYear,
            serial: serial,
            shortFilm: shortFilm,
            completed: completed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Film', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
