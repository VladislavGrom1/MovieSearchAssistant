// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DistributionTypeEnum _$distributionTypeEnum_LOCAL =
    const DistributionTypeEnum._('LOCAL');
const DistributionTypeEnum _$distributionTypeEnum_COUNTRY_SPECIFIC =
    const DistributionTypeEnum._('COUNTRY_SPECIFIC');
const DistributionTypeEnum _$distributionTypeEnum_PREMIERE =
    const DistributionTypeEnum._('PREMIERE');
const DistributionTypeEnum _$distributionTypeEnum_ALL =
    const DistributionTypeEnum._('ALL');
const DistributionTypeEnum _$distributionTypeEnum_WORLD_PREMIER =
    const DistributionTypeEnum._('WORLD_PREMIER');

DistributionTypeEnum _$distributionTypeEnumValueOf(String name) {
  switch (name) {
    case 'LOCAL':
      return _$distributionTypeEnum_LOCAL;
    case 'COUNTRY_SPECIFIC':
      return _$distributionTypeEnum_COUNTRY_SPECIFIC;
    case 'PREMIERE':
      return _$distributionTypeEnum_PREMIERE;
    case 'ALL':
      return _$distributionTypeEnum_ALL;
    case 'WORLD_PREMIER':
      return _$distributionTypeEnum_WORLD_PREMIER;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DistributionTypeEnum> _$distributionTypeEnumValues =
    BuiltSet<DistributionTypeEnum>(const <DistributionTypeEnum>[
  _$distributionTypeEnum_LOCAL,
  _$distributionTypeEnum_COUNTRY_SPECIFIC,
  _$distributionTypeEnum_PREMIERE,
  _$distributionTypeEnum_ALL,
  _$distributionTypeEnum_WORLD_PREMIER,
]);

const DistributionSubTypeEnum _$distributionSubTypeEnum_CINEMA =
    const DistributionSubTypeEnum._('CINEMA');
const DistributionSubTypeEnum _$distributionSubTypeEnum_DVD =
    const DistributionSubTypeEnum._('DVD');
const DistributionSubTypeEnum _$distributionSubTypeEnum_DIGITAL =
    const DistributionSubTypeEnum._('DIGITAL');
const DistributionSubTypeEnum _$distributionSubTypeEnum_BLURAY =
    const DistributionSubTypeEnum._('BLURAY');

DistributionSubTypeEnum _$distributionSubTypeEnumValueOf(String name) {
  switch (name) {
    case 'CINEMA':
      return _$distributionSubTypeEnum_CINEMA;
    case 'DVD':
      return _$distributionSubTypeEnum_DVD;
    case 'DIGITAL':
      return _$distributionSubTypeEnum_DIGITAL;
    case 'BLURAY':
      return _$distributionSubTypeEnum_BLURAY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DistributionSubTypeEnum> _$distributionSubTypeEnumValues =
    BuiltSet<DistributionSubTypeEnum>(const <DistributionSubTypeEnum>[
  _$distributionSubTypeEnum_CINEMA,
  _$distributionSubTypeEnum_DVD,
  _$distributionSubTypeEnum_DIGITAL,
  _$distributionSubTypeEnum_BLURAY,
]);

Serializer<DistributionTypeEnum> _$distributionTypeEnumSerializer =
    _$DistributionTypeEnumSerializer();
Serializer<DistributionSubTypeEnum> _$distributionSubTypeEnumSerializer =
    _$DistributionSubTypeEnumSerializer();

class _$DistributionTypeEnumSerializer
    implements PrimitiveSerializer<DistributionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LOCAL': 'LOCAL',
    'COUNTRY_SPECIFIC': 'COUNTRY_SPECIFIC',
    'PREMIERE': 'PREMIERE',
    'ALL': 'ALL',
    'WORLD_PREMIER': 'WORLD_PREMIER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LOCAL': 'LOCAL',
    'COUNTRY_SPECIFIC': 'COUNTRY_SPECIFIC',
    'PREMIERE': 'PREMIERE',
    'ALL': 'ALL',
    'WORLD_PREMIER': 'WORLD_PREMIER',
  };

  @override
  final Iterable<Type> types = const <Type>[DistributionTypeEnum];
  @override
  final String wireName = 'DistributionTypeEnum';

  @override
  Object serialize(Serializers serializers, DistributionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DistributionTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DistributionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DistributionSubTypeEnumSerializer
    implements PrimitiveSerializer<DistributionSubTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CINEMA': 'CINEMA',
    'DVD': 'DVD',
    'DIGITAL': 'DIGITAL',
    'BLURAY': 'BLURAY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CINEMA': 'CINEMA',
    'DVD': 'DVD',
    'DIGITAL': 'DIGITAL',
    'BLURAY': 'BLURAY',
  };

  @override
  final Iterable<Type> types = const <Type>[DistributionSubTypeEnum];
  @override
  final String wireName = 'DistributionSubTypeEnum';

  @override
  Object serialize(Serializers serializers, DistributionSubTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DistributionSubTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DistributionSubTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Distribution extends Distribution {
  @override
  final DistributionTypeEnum type;
  @override
  final DistributionSubTypeEnum? subType;
  @override
  final String? date;
  @override
  final bool? reRelease;
  @override
  final DistributionCountry country;
  @override
  final BuiltList<Company> companies;

  factory _$Distribution([void Function(DistributionBuilder)? updates]) =>
      (DistributionBuilder()..update(updates))._build();

  _$Distribution._(
      {required this.type,
      this.subType,
      this.date,
      this.reRelease,
      required this.country,
      required this.companies})
      : super._();
  @override
  Distribution rebuild(void Function(DistributionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistributionBuilder toBuilder() => DistributionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Distribution &&
        type == other.type &&
        subType == other.subType &&
        date == other.date &&
        reRelease == other.reRelease &&
        country == other.country &&
        companies == other.companies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reRelease.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, companies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Distribution')
          ..add('type', type)
          ..add('subType', subType)
          ..add('date', date)
          ..add('reRelease', reRelease)
          ..add('country', country)
          ..add('companies', companies))
        .toString();
  }
}

class DistributionBuilder
    implements Builder<Distribution, DistributionBuilder> {
  _$Distribution? _$v;

  DistributionTypeEnum? _type;
  DistributionTypeEnum? get type => _$this._type;
  set type(DistributionTypeEnum? type) => _$this._type = type;

  DistributionSubTypeEnum? _subType;
  DistributionSubTypeEnum? get subType => _$this._subType;
  set subType(DistributionSubTypeEnum? subType) => _$this._subType = subType;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  bool? _reRelease;
  bool? get reRelease => _$this._reRelease;
  set reRelease(bool? reRelease) => _$this._reRelease = reRelease;

  DistributionCountryBuilder? _country;
  DistributionCountryBuilder get country =>
      _$this._country ??= DistributionCountryBuilder();
  set country(DistributionCountryBuilder? country) => _$this._country = country;

  ListBuilder<Company>? _companies;
  ListBuilder<Company> get companies =>
      _$this._companies ??= ListBuilder<Company>();
  set companies(ListBuilder<Company>? companies) =>
      _$this._companies = companies;

  DistributionBuilder() {
    Distribution._defaults(this);
  }

  DistributionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _subType = $v.subType;
      _date = $v.date;
      _reRelease = $v.reRelease;
      _country = $v.country.toBuilder();
      _companies = $v.companies.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Distribution other) {
    _$v = other as _$Distribution;
  }

  @override
  void update(void Function(DistributionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Distribution build() => _build();

  _$Distribution _build() {
    _$Distribution _$result;
    try {
      _$result = _$v ??
          _$Distribution._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Distribution', 'type'),
            subType: subType,
            date: date,
            reRelease: reRelease,
            country: country.build(),
            companies: companies.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        country.build();
        _$failedField = 'companies';
        companies.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Distribution', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
