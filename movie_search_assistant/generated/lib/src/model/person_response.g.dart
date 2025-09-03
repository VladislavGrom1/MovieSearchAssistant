// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonResponseSexEnum _$personResponseSexEnum_MALE =
    const PersonResponseSexEnum._('MALE');
const PersonResponseSexEnum _$personResponseSexEnum_FEMALE =
    const PersonResponseSexEnum._('FEMALE');

PersonResponseSexEnum _$personResponseSexEnumValueOf(String name) {
  switch (name) {
    case 'MALE':
      return _$personResponseSexEnum_MALE;
    case 'FEMALE':
      return _$personResponseSexEnum_FEMALE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PersonResponseSexEnum> _$personResponseSexEnumValues =
    BuiltSet<PersonResponseSexEnum>(const <PersonResponseSexEnum>[
  _$personResponseSexEnum_MALE,
  _$personResponseSexEnum_FEMALE,
]);

Serializer<PersonResponseSexEnum> _$personResponseSexEnumSerializer =
    _$PersonResponseSexEnumSerializer();

class _$PersonResponseSexEnumSerializer
    implements PrimitiveSerializer<PersonResponseSexEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
  };

  @override
  final Iterable<Type> types = const <Type>[PersonResponseSexEnum];
  @override
  final String wireName = 'PersonResponseSexEnum';

  @override
  Object serialize(Serializers serializers, PersonResponseSexEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonResponseSexEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonResponseSexEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PersonResponse extends PersonResponse {
  @override
  final int personId;
  @override
  final String? webUrl;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final PersonResponseSexEnum? sex;
  @override
  final String posterUrl;
  @override
  final String? growth;
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
  final int? hasAwards;
  @override
  final String? profession;
  @override
  final BuiltList<String> facts;
  @override
  final BuiltList<PersonResponseSpouses> spouses;
  @override
  final BuiltList<PersonResponseFilms> films;

  factory _$PersonResponse([void Function(PersonResponseBuilder)? updates]) =>
      (PersonResponseBuilder()..update(updates))._build();

  _$PersonResponse._(
      {required this.personId,
      this.webUrl,
      this.nameRu,
      this.nameEn,
      this.sex,
      required this.posterUrl,
      this.growth,
      this.birthday,
      this.death,
      this.age,
      this.birthplace,
      this.deathplace,
      this.hasAwards,
      this.profession,
      required this.facts,
      required this.spouses,
      required this.films})
      : super._();
  @override
  PersonResponse rebuild(void Function(PersonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonResponseBuilder toBuilder() => PersonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonResponse &&
        personId == other.personId &&
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
        hasAwards == other.hasAwards &&
        profession == other.profession &&
        facts == other.facts &&
        spouses == other.spouses &&
        films == other.films;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
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
    _$hash = $jc(_$hash, hasAwards.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, facts.hashCode);
    _$hash = $jc(_$hash, spouses.hashCode);
    _$hash = $jc(_$hash, films.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonResponse')
          ..add('personId', personId)
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
          ..add('hasAwards', hasAwards)
          ..add('profession', profession)
          ..add('facts', facts)
          ..add('spouses', spouses)
          ..add('films', films))
        .toString();
  }
}

class PersonResponseBuilder
    implements Builder<PersonResponse, PersonResponseBuilder> {
  _$PersonResponse? _$v;

  int? _personId;
  int? get personId => _$this._personId;
  set personId(int? personId) => _$this._personId = personId;

  String? _webUrl;
  String? get webUrl => _$this._webUrl;
  set webUrl(String? webUrl) => _$this._webUrl = webUrl;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  PersonResponseSexEnum? _sex;
  PersonResponseSexEnum? get sex => _$this._sex;
  set sex(PersonResponseSexEnum? sex) => _$this._sex = sex;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _growth;
  String? get growth => _$this._growth;
  set growth(String? growth) => _$this._growth = growth;

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

  int? _hasAwards;
  int? get hasAwards => _$this._hasAwards;
  set hasAwards(int? hasAwards) => _$this._hasAwards = hasAwards;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  ListBuilder<String>? _facts;
  ListBuilder<String> get facts => _$this._facts ??= ListBuilder<String>();
  set facts(ListBuilder<String>? facts) => _$this._facts = facts;

  ListBuilder<PersonResponseSpouses>? _spouses;
  ListBuilder<PersonResponseSpouses> get spouses =>
      _$this._spouses ??= ListBuilder<PersonResponseSpouses>();
  set spouses(ListBuilder<PersonResponseSpouses>? spouses) =>
      _$this._spouses = spouses;

  ListBuilder<PersonResponseFilms>? _films;
  ListBuilder<PersonResponseFilms> get films =>
      _$this._films ??= ListBuilder<PersonResponseFilms>();
  set films(ListBuilder<PersonResponseFilms>? films) => _$this._films = films;

  PersonResponseBuilder() {
    PersonResponse._defaults(this);
  }

  PersonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
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
      _hasAwards = $v.hasAwards;
      _profession = $v.profession;
      _facts = $v.facts.toBuilder();
      _spouses = $v.spouses.toBuilder();
      _films = $v.films.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonResponse other) {
    _$v = other as _$PersonResponse;
  }

  @override
  void update(void Function(PersonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonResponse build() => _build();

  _$PersonResponse _build() {
    _$PersonResponse _$result;
    try {
      _$result = _$v ??
          _$PersonResponse._(
            personId: BuiltValueNullFieldError.checkNotNull(
                personId, r'PersonResponse', 'personId'),
            webUrl: webUrl,
            nameRu: nameRu,
            nameEn: nameEn,
            sex: sex,
            posterUrl: BuiltValueNullFieldError.checkNotNull(
                posterUrl, r'PersonResponse', 'posterUrl'),
            growth: growth,
            birthday: birthday,
            death: death,
            age: age,
            birthplace: birthplace,
            deathplace: deathplace,
            hasAwards: hasAwards,
            profession: profession,
            facts: facts.build(),
            spouses: spouses.build(),
            films: films.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'facts';
        facts.build();
        _$failedField = 'spouses';
        spouses.build();
        _$failedField = 'films';
        films.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PersonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
