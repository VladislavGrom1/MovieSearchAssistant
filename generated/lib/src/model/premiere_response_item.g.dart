// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premiere_response_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiereResponseItem extends PremiereResponseItem {
  @override
  final int kinopoiskId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final int year;
  @override
  final String posterUrl;
  @override
  final String posterUrlPreview;
  @override
  final BuiltList<Country> countries;
  @override
  final BuiltList<Genre> genres;
  @override
  final int? duration;
  @override
  final String premiereRu;

  factory _$PremiereResponseItem(
          [void Function(PremiereResponseItemBuilder)? updates]) =>
      (PremiereResponseItemBuilder()..update(updates))._build();

  _$PremiereResponseItem._(
      {required this.kinopoiskId,
      this.nameRu,
      this.nameEn,
      required this.year,
      required this.posterUrl,
      required this.posterUrlPreview,
      required this.countries,
      required this.genres,
      this.duration,
      required this.premiereRu})
      : super._();
  @override
  PremiereResponseItem rebuild(
          void Function(PremiereResponseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiereResponseItemBuilder toBuilder() =>
      PremiereResponseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiereResponseItem &&
        kinopoiskId == other.kinopoiskId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        year == other.year &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview &&
        countries == other.countries &&
        genres == other.genres &&
        duration == other.duration &&
        premiereRu == other.premiereRu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, premiereRu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiereResponseItem')
          ..add('kinopoiskId', kinopoiskId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('year', year)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('duration', duration)
          ..add('premiereRu', premiereRu))
        .toString();
  }
}

class PremiereResponseItemBuilder
    implements Builder<PremiereResponseItem, PremiereResponseItemBuilder> {
  _$PremiereResponseItem? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  ListBuilder<Country>? _countries;
  ListBuilder<Country> get countries =>
      _$this._countries ??= ListBuilder<Country>();
  set countries(ListBuilder<Country>? countries) =>
      _$this._countries = countries;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _premiereRu;
  String? get premiereRu => _$this._premiereRu;
  set premiereRu(String? premiereRu) => _$this._premiereRu = premiereRu;

  PremiereResponseItemBuilder() {
    PremiereResponseItem._defaults(this);
  }

  PremiereResponseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _year = $v.year;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _countries = $v.countries.toBuilder();
      _genres = $v.genres.toBuilder();
      _duration = $v.duration;
      _premiereRu = $v.premiereRu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiereResponseItem other) {
    _$v = other as _$PremiereResponseItem;
  }

  @override
  void update(void Function(PremiereResponseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiereResponseItem build() => _build();

  _$PremiereResponseItem _build() {
    _$PremiereResponseItem _$result;
    try {
      _$result = _$v ??
          _$PremiereResponseItem._(
            kinopoiskId: BuiltValueNullFieldError.checkNotNull(
                kinopoiskId, r'PremiereResponseItem', 'kinopoiskId'),
            nameRu: nameRu,
            nameEn: nameEn,
            year: BuiltValueNullFieldError.checkNotNull(
                year, r'PremiereResponseItem', 'year'),
            posterUrl: BuiltValueNullFieldError.checkNotNull(
                posterUrl, r'PremiereResponseItem', 'posterUrl'),
            posterUrlPreview: BuiltValueNullFieldError.checkNotNull(
                posterUrlPreview, r'PremiereResponseItem', 'posterUrlPreview'),
            countries: countries.build(),
            genres: genres.build(),
            duration: duration,
            premiereRu: BuiltValueNullFieldError.checkNotNull(
                premiereRu, r'PremiereResponseItem', 'premiereRu'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiereResponseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
