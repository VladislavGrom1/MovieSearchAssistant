// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FactTypeEnum _$factTypeEnum_FACT = const FactTypeEnum._('FACT');
const FactTypeEnum _$factTypeEnum_BLOOPER = const FactTypeEnum._('BLOOPER');

FactTypeEnum _$factTypeEnumValueOf(String name) {
  switch (name) {
    case 'FACT':
      return _$factTypeEnum_FACT;
    case 'BLOOPER':
      return _$factTypeEnum_BLOOPER;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FactTypeEnum> _$factTypeEnumValues =
    BuiltSet<FactTypeEnum>(const <FactTypeEnum>[
  _$factTypeEnum_FACT,
  _$factTypeEnum_BLOOPER,
]);

Serializer<FactTypeEnum> _$factTypeEnumSerializer = _$FactTypeEnumSerializer();

class _$FactTypeEnumSerializer implements PrimitiveSerializer<FactTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FACT': 'FACT',
    'BLOOPER': 'BLOOPER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FACT': 'FACT',
    'BLOOPER': 'BLOOPER',
  };

  @override
  final Iterable<Type> types = const <Type>[FactTypeEnum];
  @override
  final String wireName = 'FactTypeEnum';

  @override
  Object serialize(Serializers serializers, FactTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FactTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FactTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Fact extends Fact {
  @override
  final String text;
  @override
  final FactTypeEnum type;
  @override
  final bool spoiler;

  factory _$Fact([void Function(FactBuilder)? updates]) =>
      (FactBuilder()..update(updates))._build();

  _$Fact._({required this.text, required this.type, required this.spoiler})
      : super._();
  @override
  Fact rebuild(void Function(FactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FactBuilder toBuilder() => FactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Fact &&
        text == other.text &&
        type == other.type &&
        spoiler == other.spoiler;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, spoiler.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Fact')
          ..add('text', text)
          ..add('type', type)
          ..add('spoiler', spoiler))
        .toString();
  }
}

class FactBuilder implements Builder<Fact, FactBuilder> {
  _$Fact? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  FactTypeEnum? _type;
  FactTypeEnum? get type => _$this._type;
  set type(FactTypeEnum? type) => _$this._type = type;

  bool? _spoiler;
  bool? get spoiler => _$this._spoiler;
  set spoiler(bool? spoiler) => _$this._spoiler = spoiler;

  FactBuilder() {
    Fact._defaults(this);
  }

  FactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _type = $v.type;
      _spoiler = $v.spoiler;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Fact other) {
    _$v = other as _$Fact;
  }

  @override
  void update(void Function(FactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Fact build() => _build();

  _$Fact _build() {
    final _$result = _$v ??
        _$Fact._(
          text: BuiltValueNullFieldError.checkNotNull(text, r'Fact', 'text'),
          type: BuiltValueNullFieldError.checkNotNull(type, r'Fact', 'type'),
          spoiler: BuiltValueNullFieldError.checkNotNull(
              spoiler, r'Fact', 'spoiler'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
