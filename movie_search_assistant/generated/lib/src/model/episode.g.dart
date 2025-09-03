// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Episode extends Episode {
  @override
  final int seasonNumber;
  @override
  final int episodeNumber;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? synopsis;
  @override
  final String? releaseDate;

  factory _$Episode([void Function(EpisodeBuilder)? updates]) =>
      (EpisodeBuilder()..update(updates))._build();

  _$Episode._(
      {required this.seasonNumber,
      required this.episodeNumber,
      this.nameRu,
      this.nameEn,
      this.synopsis,
      this.releaseDate})
      : super._();
  @override
  Episode rebuild(void Function(EpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeBuilder toBuilder() => EpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Episode &&
        seasonNumber == other.seasonNumber &&
        episodeNumber == other.episodeNumber &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        synopsis == other.synopsis &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, episodeNumber.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, synopsis.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Episode')
          ..add('seasonNumber', seasonNumber)
          ..add('episodeNumber', episodeNumber)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('synopsis', synopsis)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class EpisodeBuilder implements Builder<Episode, EpisodeBuilder> {
  _$Episode? _$v;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  int? _episodeNumber;
  int? get episodeNumber => _$this._episodeNumber;
  set episodeNumber(int? episodeNumber) =>
      _$this._episodeNumber = episodeNumber;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _synopsis;
  String? get synopsis => _$this._synopsis;
  set synopsis(String? synopsis) => _$this._synopsis = synopsis;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  EpisodeBuilder() {
    Episode._defaults(this);
  }

  EpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seasonNumber = $v.seasonNumber;
      _episodeNumber = $v.episodeNumber;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _synopsis = $v.synopsis;
      _releaseDate = $v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Episode other) {
    _$v = other as _$Episode;
  }

  @override
  void update(void Function(EpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Episode build() => _build();

  _$Episode _build() {
    final _$result = _$v ??
        _$Episode._(
          seasonNumber: BuiltValueNullFieldError.checkNotNull(
              seasonNumber, r'Episode', 'seasonNumber'),
          episodeNumber: BuiltValueNullFieldError.checkNotNull(
              episodeNumber, r'Episode', 'episodeNumber'),
          nameRu: nameRu,
          nameEn: nameEn,
          synopsis: synopsis,
          releaseDate: releaseDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
