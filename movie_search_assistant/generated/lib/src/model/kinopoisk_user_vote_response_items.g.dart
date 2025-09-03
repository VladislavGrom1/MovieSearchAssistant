// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinopoisk_user_vote_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_FILM =
    const KinopoiskUserVoteResponseItemsTypeEnum._('FILM');
const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SHOW =
    const KinopoiskUserVoteResponseItemsTypeEnum._('TV_SHOW');
const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_VIDEO =
    const KinopoiskUserVoteResponseItemsTypeEnum._('VIDEO');
const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_MINI_SERIES =
    const KinopoiskUserVoteResponseItemsTypeEnum._('MINI_SERIES');
const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SERIES =
    const KinopoiskUserVoteResponseItemsTypeEnum._('TV_SERIES');
const KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnum_UNKNOWN =
    const KinopoiskUserVoteResponseItemsTypeEnum._('UNKNOWN');

KinopoiskUserVoteResponseItemsTypeEnum
    _$kinopoiskUserVoteResponseItemsTypeEnumValueOf(String name) {
  switch (name) {
    case 'FILM':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_FILM;
    case 'TV_SHOW':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SHOW;
    case 'VIDEO':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_VIDEO;
    case 'MINI_SERIES':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_MINI_SERIES;
    case 'TV_SERIES':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SERIES;
    case 'UNKNOWN':
      return _$kinopoiskUserVoteResponseItemsTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KinopoiskUserVoteResponseItemsTypeEnum>
    _$kinopoiskUserVoteResponseItemsTypeEnumValues = BuiltSet<
        KinopoiskUserVoteResponseItemsTypeEnum>(const <KinopoiskUserVoteResponseItemsTypeEnum>[
  _$kinopoiskUserVoteResponseItemsTypeEnum_FILM,
  _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SHOW,
  _$kinopoiskUserVoteResponseItemsTypeEnum_VIDEO,
  _$kinopoiskUserVoteResponseItemsTypeEnum_MINI_SERIES,
  _$kinopoiskUserVoteResponseItemsTypeEnum_TV_SERIES,
  _$kinopoiskUserVoteResponseItemsTypeEnum_UNKNOWN,
]);

Serializer<KinopoiskUserVoteResponseItemsTypeEnum>
    _$kinopoiskUserVoteResponseItemsTypeEnumSerializer =
    _$KinopoiskUserVoteResponseItemsTypeEnumSerializer();

class _$KinopoiskUserVoteResponseItemsTypeEnumSerializer
    implements PrimitiveSerializer<KinopoiskUserVoteResponseItemsTypeEnum> {
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
    KinopoiskUserVoteResponseItemsTypeEnum
  ];
  @override
  final String wireName = 'KinopoiskUserVoteResponseItemsTypeEnum';

  @override
  Object serialize(Serializers serializers,
          KinopoiskUserVoteResponseItemsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KinopoiskUserVoteResponseItemsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KinopoiskUserVoteResponseItemsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KinopoiskUserVoteResponseItems extends KinopoiskUserVoteResponseItems {
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
  final String? year;
  @override
  final KinopoiskUserVoteResponseItemsTypeEnum? type;
  @override
  final String? posterUrl;
  @override
  final String? posterUrlPreview;
  @override
  final int? userRating;

  factory _$KinopoiskUserVoteResponseItems(
          [void Function(KinopoiskUserVoteResponseItemsBuilder)? updates]) =>
      (KinopoiskUserVoteResponseItemsBuilder()..update(updates))._build();

  _$KinopoiskUserVoteResponseItems._(
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
      this.posterUrlPreview,
      this.userRating})
      : super._();
  @override
  KinopoiskUserVoteResponseItems rebuild(
          void Function(KinopoiskUserVoteResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinopoiskUserVoteResponseItemsBuilder toBuilder() =>
      KinopoiskUserVoteResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinopoiskUserVoteResponseItems &&
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
        posterUrlPreview == other.posterUrlPreview &&
        userRating == other.userRating;
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
    _$hash = $jc(_$hash, userRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KinopoiskUserVoteResponseItems')
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
          ..add('posterUrlPreview', posterUrlPreview)
          ..add('userRating', userRating))
        .toString();
  }
}

class KinopoiskUserVoteResponseItemsBuilder
    implements
        Builder<KinopoiskUserVoteResponseItems,
            KinopoiskUserVoteResponseItemsBuilder> {
  _$KinopoiskUserVoteResponseItems? _$v;

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

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  KinopoiskUserVoteResponseItemsTypeEnum? _type;
  KinopoiskUserVoteResponseItemsTypeEnum? get type => _$this._type;
  set type(KinopoiskUserVoteResponseItemsTypeEnum? type) => _$this._type = type;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  int? _userRating;
  int? get userRating => _$this._userRating;
  set userRating(int? userRating) => _$this._userRating = userRating;

  KinopoiskUserVoteResponseItemsBuilder() {
    KinopoiskUserVoteResponseItems._defaults(this);
  }

  KinopoiskUserVoteResponseItemsBuilder get _$this {
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
      _userRating = $v.userRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinopoiskUserVoteResponseItems other) {
    _$v = other as _$KinopoiskUserVoteResponseItems;
  }

  @override
  void update(void Function(KinopoiskUserVoteResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinopoiskUserVoteResponseItems build() => _build();

  _$KinopoiskUserVoteResponseItems _build() {
    _$KinopoiskUserVoteResponseItems _$result;
    try {
      _$result = _$v ??
          _$KinopoiskUserVoteResponseItems._(
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
            userRating: userRating,
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
            r'KinopoiskUserVoteResponseItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
