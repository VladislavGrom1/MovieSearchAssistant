// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'award.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Award extends Award {
  @override
  final String name;
  @override
  final bool win;
  @override
  final String? imageUrl;
  @override
  final String nominationName;
  @override
  final int year;
  @override
  final BuiltList<AwardPerson>? persons;

  factory _$Award([void Function(AwardBuilder)? updates]) =>
      (AwardBuilder()..update(updates))._build();

  _$Award._(
      {required this.name,
      required this.win,
      this.imageUrl,
      required this.nominationName,
      required this.year,
      this.persons})
      : super._();
  @override
  Award rebuild(void Function(AwardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwardBuilder toBuilder() => AwardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Award &&
        name == other.name &&
        win == other.win &&
        imageUrl == other.imageUrl &&
        nominationName == other.nominationName &&
        year == other.year &&
        persons == other.persons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, win.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, nominationName.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, persons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Award')
          ..add('name', name)
          ..add('win', win)
          ..add('imageUrl', imageUrl)
          ..add('nominationName', nominationName)
          ..add('year', year)
          ..add('persons', persons))
        .toString();
  }
}

class AwardBuilder implements Builder<Award, AwardBuilder> {
  _$Award? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _win;
  bool? get win => _$this._win;
  set win(bool? win) => _$this._win = win;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _nominationName;
  String? get nominationName => _$this._nominationName;
  set nominationName(String? nominationName) =>
      _$this._nominationName = nominationName;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  ListBuilder<AwardPerson>? _persons;
  ListBuilder<AwardPerson> get persons =>
      _$this._persons ??= ListBuilder<AwardPerson>();
  set persons(ListBuilder<AwardPerson>? persons) => _$this._persons = persons;

  AwardBuilder() {
    Award._defaults(this);
  }

  AwardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _win = $v.win;
      _imageUrl = $v.imageUrl;
      _nominationName = $v.nominationName;
      _year = $v.year;
      _persons = $v.persons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Award other) {
    _$v = other as _$Award;
  }

  @override
  void update(void Function(AwardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Award build() => _build();

  _$Award _build() {
    _$Award _$result;
    try {
      _$result = _$v ??
          _$Award._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Award', 'name'),
            win: BuiltValueNullFieldError.checkNotNull(win, r'Award', 'win'),
            imageUrl: imageUrl,
            nominationName: BuiltValueNullFieldError.checkNotNull(
                nominationName, r'Award', 'nominationName'),
            year: BuiltValueNullFieldError.checkNotNull(year, r'Award', 'year'),
            persons: _persons?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'persons';
        _persons?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Award', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
