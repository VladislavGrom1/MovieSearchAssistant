// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_by_name_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonByNameResponseItemsSexEnum _$personByNameResponseItemsSexEnum_MALE =
    const PersonByNameResponseItemsSexEnum._('MALE');
const PersonByNameResponseItemsSexEnum
    _$personByNameResponseItemsSexEnum_FEMALE =
    const PersonByNameResponseItemsSexEnum._('FEMALE');
const PersonByNameResponseItemsSexEnum
    _$personByNameResponseItemsSexEnum_UNKNOWN =
    const PersonByNameResponseItemsSexEnum._('UNKNOWN');

PersonByNameResponseItemsSexEnum _$personByNameResponseItemsSexEnumValueOf(
    String name) {
  switch (name) {
    case 'MALE':
      return _$personByNameResponseItemsSexEnum_MALE;
    case 'FEMALE':
      return _$personByNameResponseItemsSexEnum_FEMALE;
    case 'UNKNOWN':
      return _$personByNameResponseItemsSexEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PersonByNameResponseItemsSexEnum>
    _$personByNameResponseItemsSexEnumValues = BuiltSet<
        PersonByNameResponseItemsSexEnum>(const <PersonByNameResponseItemsSexEnum>[
  _$personByNameResponseItemsSexEnum_MALE,
  _$personByNameResponseItemsSexEnum_FEMALE,
  _$personByNameResponseItemsSexEnum_UNKNOWN,
]);

Serializer<PersonByNameResponseItemsSexEnum>
    _$personByNameResponseItemsSexEnumSerializer =
    _$PersonByNameResponseItemsSexEnumSerializer();

class _$PersonByNameResponseItemsSexEnumSerializer
    implements PrimitiveSerializer<PersonByNameResponseItemsSexEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[PersonByNameResponseItemsSexEnum];
  @override
  final String wireName = 'PersonByNameResponseItemsSexEnum';

  @override
  Object serialize(
          Serializers serializers, PersonByNameResponseItemsSexEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonByNameResponseItemsSexEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonByNameResponseItemsSexEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PersonByNameResponseItems extends PersonByNameResponseItems {
  @override
  final int? kinopoiskId;
  @override
  final String? webUrl;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final PersonByNameResponseItemsSexEnum? sex;
  @override
  final String? posterUrl;

  factory _$PersonByNameResponseItems(
          [void Function(PersonByNameResponseItemsBuilder)? updates]) =>
      (PersonByNameResponseItemsBuilder()..update(updates))._build();

  _$PersonByNameResponseItems._(
      {this.kinopoiskId,
      this.webUrl,
      this.nameRu,
      this.nameEn,
      this.sex,
      this.posterUrl})
      : super._();
  @override
  PersonByNameResponseItems rebuild(
          void Function(PersonByNameResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonByNameResponseItemsBuilder toBuilder() =>
      PersonByNameResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonByNameResponseItems &&
        kinopoiskId == other.kinopoiskId &&
        webUrl == other.webUrl &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        sex == other.sex &&
        posterUrl == other.posterUrl;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonByNameResponseItems')
          ..add('kinopoiskId', kinopoiskId)
          ..add('webUrl', webUrl)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('sex', sex)
          ..add('posterUrl', posterUrl))
        .toString();
  }
}

class PersonByNameResponseItemsBuilder
    implements
        Builder<PersonByNameResponseItems, PersonByNameResponseItemsBuilder> {
  _$PersonByNameResponseItems? _$v;

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

  PersonByNameResponseItemsSexEnum? _sex;
  PersonByNameResponseItemsSexEnum? get sex => _$this._sex;
  set sex(PersonByNameResponseItemsSexEnum? sex) => _$this._sex = sex;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  PersonByNameResponseItemsBuilder() {
    PersonByNameResponseItems._defaults(this);
  }

  PersonByNameResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _webUrl = $v.webUrl;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _sex = $v.sex;
      _posterUrl = $v.posterUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonByNameResponseItems other) {
    _$v = other as _$PersonByNameResponseItems;
  }

  @override
  void update(void Function(PersonByNameResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonByNameResponseItems build() => _build();

  _$PersonByNameResponseItems _build() {
    final _$result = _$v ??
        _$PersonByNameResponseItems._(
          kinopoiskId: kinopoiskId,
          webUrl: webUrl,
          nameRu: nameRu,
          nameEn: nameEn,
          sex: sex,
          posterUrl: posterUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
