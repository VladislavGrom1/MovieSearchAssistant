// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_office.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoxOffice extends BoxOffice {
  @override
  final String type;
  @override
  final int amount;
  @override
  final String currencyCode;
  @override
  final String name;
  @override
  final String symbol;

  factory _$BoxOffice([void Function(BoxOfficeBuilder)? updates]) =>
      (BoxOfficeBuilder()..update(updates))._build();

  _$BoxOffice._(
      {required this.type,
      required this.amount,
      required this.currencyCode,
      required this.name,
      required this.symbol})
      : super._();
  @override
  BoxOffice rebuild(void Function(BoxOfficeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoxOfficeBuilder toBuilder() => BoxOfficeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoxOffice &&
        type == other.type &&
        amount == other.amount &&
        currencyCode == other.currencyCode &&
        name == other.name &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoxOffice')
          ..add('type', type)
          ..add('amount', amount)
          ..add('currencyCode', currencyCode)
          ..add('name', name)
          ..add('symbol', symbol))
        .toString();
  }
}

class BoxOfficeBuilder implements Builder<BoxOffice, BoxOfficeBuilder> {
  _$BoxOffice? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _currencyCode;
  String? get currencyCode => _$this._currencyCode;
  set currencyCode(String? currencyCode) => _$this._currencyCode = currencyCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  BoxOfficeBuilder() {
    BoxOffice._defaults(this);
  }

  BoxOfficeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _amount = $v.amount;
      _currencyCode = $v.currencyCode;
      _name = $v.name;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoxOffice other) {
    _$v = other as _$BoxOffice;
  }

  @override
  void update(void Function(BoxOfficeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoxOffice build() => _build();

  _$BoxOffice _build() {
    final _$result = _$v ??
        _$BoxOffice._(
          type:
              BuiltValueNullFieldError.checkNotNull(type, r'BoxOffice', 'type'),
          amount: BuiltValueNullFieldError.checkNotNull(
              amount, r'BoxOffice', 'amount'),
          currencyCode: BuiltValueNullFieldError.checkNotNull(
              currencyCode, r'BoxOffice', 'currencyCode'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'BoxOffice', 'name'),
          symbol: BuiltValueNullFieldError.checkNotNull(
              symbol, r'BoxOffice', 'symbol'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
