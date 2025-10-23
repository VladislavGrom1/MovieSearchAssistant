// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Season extends Season {
  @override
  final int number;
  @override
  final BuiltList<Episode> episodes;

  factory _$Season([void Function(SeasonBuilder)? updates]) =>
      (SeasonBuilder()..update(updates))._build();

  _$Season._({required this.number, required this.episodes}) : super._();
  @override
  Season rebuild(void Function(SeasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonBuilder toBuilder() => SeasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Season &&
        number == other.number &&
        episodes == other.episodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Season')
          ..add('number', number)
          ..add('episodes', episodes))
        .toString();
  }
}

class SeasonBuilder implements Builder<Season, SeasonBuilder> {
  _$Season? _$v;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  ListBuilder<Episode>? _episodes;
  ListBuilder<Episode> get episodes =>
      _$this._episodes ??= ListBuilder<Episode>();
  set episodes(ListBuilder<Episode>? episodes) => _$this._episodes = episodes;

  SeasonBuilder() {
    Season._defaults(this);
  }

  SeasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _episodes = $v.episodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Season other) {
    _$v = other as _$Season;
  }

  @override
  void update(void Function(SeasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Season build() => _build();

  _$Season _build() {
    _$Season _$result;
    try {
      _$result = _$v ??
          _$Season._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'Season', 'number'),
            episodes: episodes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodes';
        episodes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Season', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
