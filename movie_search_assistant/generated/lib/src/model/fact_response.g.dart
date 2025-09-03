// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FactResponse extends FactResponse {
  @override
  final int total;
  @override
  final BuiltList<Fact> items;

  factory _$FactResponse([void Function(FactResponseBuilder)? updates]) =>
      (FactResponseBuilder()..update(updates))._build();

  _$FactResponse._({required this.total, required this.items}) : super._();
  @override
  FactResponse rebuild(void Function(FactResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FactResponseBuilder toBuilder() => FactResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FactResponse &&
        total == other.total &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FactResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class FactResponseBuilder
    implements Builder<FactResponse, FactResponseBuilder> {
  _$FactResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<Fact>? _items;
  ListBuilder<Fact> get items => _$this._items ??= ListBuilder<Fact>();
  set items(ListBuilder<Fact>? items) => _$this._items = items;

  FactResponseBuilder() {
    FactResponse._defaults(this);
  }

  FactResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FactResponse other) {
    _$v = other as _$FactResponse;
  }

  @override
  void update(void Function(FactResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FactResponse build() => _build();

  _$FactResponse _build() {
    _$FactResponse _$result;
    try {
      _$result = _$v ??
          _$FactResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'FactResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FactResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
