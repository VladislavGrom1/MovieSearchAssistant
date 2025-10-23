// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response_spouses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonResponseSpousesSexEnum _$personResponseSpousesSexEnum_MALE =
    const PersonResponseSpousesSexEnum._('MALE');
const PersonResponseSpousesSexEnum _$personResponseSpousesSexEnum_FEMALE =
    const PersonResponseSpousesSexEnum._('FEMALE');

PersonResponseSpousesSexEnum _$personResponseSpousesSexEnumValueOf(
    String name) {
  switch (name) {
    case 'MALE':
      return _$personResponseSpousesSexEnum_MALE;
    case 'FEMALE':
      return _$personResponseSpousesSexEnum_FEMALE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PersonResponseSpousesSexEnum>
    _$personResponseSpousesSexEnumValues =
    BuiltSet<PersonResponseSpousesSexEnum>(const <PersonResponseSpousesSexEnum>[
  _$personResponseSpousesSexEnum_MALE,
  _$personResponseSpousesSexEnum_FEMALE,
]);

Serializer<PersonResponseSpousesSexEnum>
    _$personResponseSpousesSexEnumSerializer =
    _$PersonResponseSpousesSexEnumSerializer();

class _$PersonResponseSpousesSexEnumSerializer
    implements PrimitiveSerializer<PersonResponseSpousesSexEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MALE': 'MALE',
    'FEMALE': 'FEMALE',
  };

  @override
  final Iterable<Type> types = const <Type>[PersonResponseSpousesSexEnum];
  @override
  final String wireName = 'PersonResponseSpousesSexEnum';

  @override
  Object serialize(Serializers serializers, PersonResponseSpousesSexEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonResponseSpousesSexEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonResponseSpousesSexEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PersonResponseSpouses extends PersonResponseSpouses {
  @override
  final int? personId;
  @override
  final String? name;
  @override
  final bool? divorced;
  @override
  final String? divorcedReason;
  @override
  final PersonResponseSpousesSexEnum? sex;
  @override
  final int? children;
  @override
  final String? webUrl;
  @override
  final String? relation;

  factory _$PersonResponseSpouses(
          [void Function(PersonResponseSpousesBuilder)? updates]) =>
      (PersonResponseSpousesBuilder()..update(updates))._build();

  _$PersonResponseSpouses._(
      {this.personId,
      this.name,
      this.divorced,
      this.divorcedReason,
      this.sex,
      this.children,
      this.webUrl,
      this.relation})
      : super._();
  @override
  PersonResponseSpouses rebuild(
          void Function(PersonResponseSpousesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonResponseSpousesBuilder toBuilder() =>
      PersonResponseSpousesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonResponseSpouses &&
        personId == other.personId &&
        name == other.name &&
        divorced == other.divorced &&
        divorcedReason == other.divorcedReason &&
        sex == other.sex &&
        children == other.children &&
        webUrl == other.webUrl &&
        relation == other.relation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, divorced.hashCode);
    _$hash = $jc(_$hash, divorcedReason.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jc(_$hash, webUrl.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonResponseSpouses')
          ..add('personId', personId)
          ..add('name', name)
          ..add('divorced', divorced)
          ..add('divorcedReason', divorcedReason)
          ..add('sex', sex)
          ..add('children', children)
          ..add('webUrl', webUrl)
          ..add('relation', relation))
        .toString();
  }
}

class PersonResponseSpousesBuilder
    implements Builder<PersonResponseSpouses, PersonResponseSpousesBuilder> {
  _$PersonResponseSpouses? _$v;

  int? _personId;
  int? get personId => _$this._personId;
  set personId(int? personId) => _$this._personId = personId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _divorced;
  bool? get divorced => _$this._divorced;
  set divorced(bool? divorced) => _$this._divorced = divorced;

  String? _divorcedReason;
  String? get divorcedReason => _$this._divorcedReason;
  set divorcedReason(String? divorcedReason) =>
      _$this._divorcedReason = divorcedReason;

  PersonResponseSpousesSexEnum? _sex;
  PersonResponseSpousesSexEnum? get sex => _$this._sex;
  set sex(PersonResponseSpousesSexEnum? sex) => _$this._sex = sex;

  int? _children;
  int? get children => _$this._children;
  set children(int? children) => _$this._children = children;

  String? _webUrl;
  String? get webUrl => _$this._webUrl;
  set webUrl(String? webUrl) => _$this._webUrl = webUrl;

  String? _relation;
  String? get relation => _$this._relation;
  set relation(String? relation) => _$this._relation = relation;

  PersonResponseSpousesBuilder() {
    PersonResponseSpouses._defaults(this);
  }

  PersonResponseSpousesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _name = $v.name;
      _divorced = $v.divorced;
      _divorcedReason = $v.divorcedReason;
      _sex = $v.sex;
      _children = $v.children;
      _webUrl = $v.webUrl;
      _relation = $v.relation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonResponseSpouses other) {
    _$v = other as _$PersonResponseSpouses;
  }

  @override
  void update(void Function(PersonResponseSpousesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonResponseSpouses build() => _build();

  _$PersonResponseSpouses _build() {
    final _$result = _$v ??
        _$PersonResponseSpouses._(
          personId: personId,
          name: name,
          divorced: divorced,
          divorcedReason: divorcedReason,
          sex: sex,
          children: children,
          webUrl: webUrl,
          relation: relation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
