// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'award_person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwardPerson extends AwardPerson {
  @override
  final int kinopoiskId;
  @override
  final String webUrl;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String sex;
  @override
  final String posterUrl;
  @override
  final int? growth;
  @override
  final String? birthday;
  @override
  final String? death;
  @override
  final int? age;
  @override
  final String? birthplace;
  @override
  final String? deathplace;
  @override
  final String? profession;

  factory _$AwardPerson([void Function(AwardPersonBuilder)? updates]) =>
      (AwardPersonBuilder()..update(updates))._build();

  _$AwardPerson._(
      {required this.kinopoiskId,
      required this.webUrl,
      this.nameRu,
      this.nameEn,
      required this.sex,
      required this.posterUrl,
      this.growth,
      this.birthday,
      this.death,
      this.age,
      this.birthplace,
      this.deathplace,
      this.profession})
      : super._();
  @override
  AwardPerson rebuild(void Function(AwardPersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwardPersonBuilder toBuilder() => AwardPersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwardPerson &&
        kinopoiskId == other.kinopoiskId &&
        webUrl == other.webUrl &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        sex == other.sex &&
        posterUrl == other.posterUrl &&
        growth == other.growth &&
        birthday == other.birthday &&
        death == other.death &&
        age == other.age &&
        birthplace == other.birthplace &&
        deathplace == other.deathplace &&
        profession == other.profession;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, webUrl.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, growth.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, death.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, birthplace.hashCode);
    _$hash = $jc(_$hash, deathplace.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwardPerson')
          ..add('kinopoiskId', kinopoiskId)
          ..add('webUrl', webUrl)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('sex', sex)
          ..add('posterUrl', posterUrl)
          ..add('growth', growth)
          ..add('birthday', birthday)
          ..add('death', death)
          ..add('age', age)
          ..add('birthplace', birthplace)
          ..add('deathplace', deathplace)
          ..add('profession', profession))
        .toString();
  }
}

class AwardPersonBuilder implements Builder<AwardPerson, AwardPersonBuilder> {
  _$AwardPerson? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  String? _webUrl;
  String? get webUrl => _$this._webUrl;
  set webUrl(String? webUrl) => _$this._webUrl = webUrl;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  int? _growth;
  int? get growth => _$this._growth;
  set growth(int? growth) => _$this._growth = growth;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _death;
  String? get death => _$this._death;
  set death(String? death) => _$this._death = death;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  String? _birthplace;
  String? get birthplace => _$this._birthplace;
  set birthplace(String? birthplace) => _$this._birthplace = birthplace;

  String? _deathplace;
  String? get deathplace => _$this._deathplace;
  set deathplace(String? deathplace) => _$this._deathplace = deathplace;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  AwardPersonBuilder() {
    AwardPerson._defaults(this);
  }

  AwardPersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _webUrl = $v.webUrl;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _sex = $v.sex;
      _posterUrl = $v.posterUrl;
      _growth = $v.growth;
      _birthday = $v.birthday;
      _death = $v.death;
      _age = $v.age;
      _birthplace = $v.birthplace;
      _deathplace = $v.deathplace;
      _profession = $v.profession;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwardPerson other) {
    _$v = other as _$AwardPerson;
  }

  @override
  void update(void Function(AwardPersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwardPerson build() => _build();

  _$AwardPerson _build() {
    final _$result = _$v ??
        _$AwardPerson._(
          kinopoiskId: BuiltValueNullFieldError.checkNotNull(
              kinopoiskId, r'AwardPerson', 'kinopoiskId'),
          webUrl: BuiltValueNullFieldError.checkNotNull(
              webUrl, r'AwardPerson', 'webUrl'),
          nameRu: nameRu,
          nameEn: nameEn,
          sex:
              BuiltValueNullFieldError.checkNotNull(sex, r'AwardPerson', 'sex'),
          posterUrl: BuiltValueNullFieldError.checkNotNull(
              posterUrl, r'AwardPerson', 'posterUrl'),
          growth: growth,
          birthday: birthday,
          death: death,
          age: age,
          birthplace: birthplace,
          deathplace: deathplace,
          profession: profession,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
