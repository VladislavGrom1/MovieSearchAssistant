// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_release_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigitalReleaseItem extends DigitalReleaseItem {
  @override
  final int filmId;
  @override
  final String nameRu;
  @override
  final String nameEn;
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
  final num rating;
  @override
  final int ratingVoteCount;
  @override
  final num expectationsRating;
  @override
  final int expectationsRatingVoteCount;
  @override
  final int duration;
  @override
  final String releaseDate;

  factory _$DigitalReleaseItem(
          [void Function(DigitalReleaseItemBuilder)? updates]) =>
      (DigitalReleaseItemBuilder()..update(updates))._build();

  _$DigitalReleaseItem._(
      {required this.filmId,
      required this.nameRu,
      required this.nameEn,
      required this.year,
      required this.posterUrl,
      required this.posterUrlPreview,
      required this.countries,
      required this.genres,
      required this.rating,
      required this.ratingVoteCount,
      required this.expectationsRating,
      required this.expectationsRatingVoteCount,
      required this.duration,
      required this.releaseDate})
      : super._();
  @override
  DigitalReleaseItem rebuild(
          void Function(DigitalReleaseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigitalReleaseItemBuilder toBuilder() =>
      DigitalReleaseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigitalReleaseItem &&
        filmId == other.filmId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        year == other.year &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview &&
        countries == other.countries &&
        genres == other.genres &&
        rating == other.rating &&
        ratingVoteCount == other.ratingVoteCount &&
        expectationsRating == other.expectationsRating &&
        expectationsRatingVoteCount == other.expectationsRatingVoteCount &&
        duration == other.duration &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filmId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingVoteCount.hashCode);
    _$hash = $jc(_$hash, expectationsRating.hashCode);
    _$hash = $jc(_$hash, expectationsRatingVoteCount.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigitalReleaseItem')
          ..add('filmId', filmId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('year', year)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview)
          ..add('countries', countries)
          ..add('genres', genres)
          ..add('rating', rating)
          ..add('ratingVoteCount', ratingVoteCount)
          ..add('expectationsRating', expectationsRating)
          ..add('expectationsRatingVoteCount', expectationsRatingVoteCount)
          ..add('duration', duration)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class DigitalReleaseItemBuilder
    implements Builder<DigitalReleaseItem, DigitalReleaseItemBuilder> {
  _$DigitalReleaseItem? _$v;

  int? _filmId;
  int? get filmId => _$this._filmId;
  set filmId(int? filmId) => _$this._filmId = filmId;

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

  num? _rating;
  num? get rating => _$this._rating;
  set rating(num? rating) => _$this._rating = rating;

  int? _ratingVoteCount;
  int? get ratingVoteCount => _$this._ratingVoteCount;
  set ratingVoteCount(int? ratingVoteCount) =>
      _$this._ratingVoteCount = ratingVoteCount;

  num? _expectationsRating;
  num? get expectationsRating => _$this._expectationsRating;
  set expectationsRating(num? expectationsRating) =>
      _$this._expectationsRating = expectationsRating;

  int? _expectationsRatingVoteCount;
  int? get expectationsRatingVoteCount => _$this._expectationsRatingVoteCount;
  set expectationsRatingVoteCount(int? expectationsRatingVoteCount) =>
      _$this._expectationsRatingVoteCount = expectationsRatingVoteCount;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  DigitalReleaseItemBuilder() {
    DigitalReleaseItem._defaults(this);
  }

  DigitalReleaseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filmId = $v.filmId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _year = $v.year;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _countries = $v.countries.toBuilder();
      _genres = $v.genres.toBuilder();
      _rating = $v.rating;
      _ratingVoteCount = $v.ratingVoteCount;
      _expectationsRating = $v.expectationsRating;
      _expectationsRatingVoteCount = $v.expectationsRatingVoteCount;
      _duration = $v.duration;
      _releaseDate = $v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigitalReleaseItem other) {
    _$v = other as _$DigitalReleaseItem;
  }

  @override
  void update(void Function(DigitalReleaseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigitalReleaseItem build() => _build();

  _$DigitalReleaseItem _build() {
    _$DigitalReleaseItem _$result;
    try {
      _$result = _$v ??
          _$DigitalReleaseItem._(
            filmId: BuiltValueNullFieldError.checkNotNull(
                filmId, r'DigitalReleaseItem', 'filmId'),
            nameRu: BuiltValueNullFieldError.checkNotNull(
                nameRu, r'DigitalReleaseItem', 'nameRu'),
            nameEn: BuiltValueNullFieldError.checkNotNull(
                nameEn, r'DigitalReleaseItem', 'nameEn'),
            year: BuiltValueNullFieldError.checkNotNull(
                year, r'DigitalReleaseItem', 'year'),
            posterUrl: BuiltValueNullFieldError.checkNotNull(
                posterUrl, r'DigitalReleaseItem', 'posterUrl'),
            posterUrlPreview: BuiltValueNullFieldError.checkNotNull(
                posterUrlPreview, r'DigitalReleaseItem', 'posterUrlPreview'),
            countries: countries.build(),
            genres: genres.build(),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'DigitalReleaseItem', 'rating'),
            ratingVoteCount: BuiltValueNullFieldError.checkNotNull(
                ratingVoteCount, r'DigitalReleaseItem', 'ratingVoteCount'),
            expectationsRating: BuiltValueNullFieldError.checkNotNull(
                expectationsRating,
                r'DigitalReleaseItem',
                'expectationsRating'),
            expectationsRatingVoteCount: BuiltValueNullFieldError.checkNotNull(
                expectationsRatingVoteCount,
                r'DigitalReleaseItem',
                'expectationsRatingVoteCount'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'DigitalReleaseItem', 'duration'),
            releaseDate: BuiltValueNullFieldError.checkNotNull(
                releaseDate, r'DigitalReleaseItem', 'releaseDate'),
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
            r'DigitalReleaseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
