// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DistributionResponse extends DistributionResponse {
  @override
  final int total;
  @override
  final BuiltList<Distribution> items;

  factory _$DistributionResponse(
          [void Function(DistributionResponseBuilder)? updates]) =>
      (DistributionResponseBuilder()..update(updates))._build();

  _$DistributionResponse._({required this.total, required this.items})
      : super._();
  @override
  DistributionResponse rebuild(
          void Function(DistributionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistributionResponseBuilder toBuilder() =>
      DistributionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistributionResponse &&
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
    return (newBuiltValueToStringHelper(r'DistributionResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class DistributionResponseBuilder
    implements Builder<DistributionResponse, DistributionResponseBuilder> {
  _$DistributionResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<Distribution>? _items;
  ListBuilder<Distribution> get items =>
      _$this._items ??= ListBuilder<Distribution>();
  set items(ListBuilder<Distribution>? items) => _$this._items = items;

  DistributionResponseBuilder() {
    DistributionResponse._defaults(this);
  }

  DistributionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DistributionResponse other) {
    _$v = other as _$DistributionResponse;
  }

  @override
  void update(void Function(DistributionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DistributionResponse build() => _build();

  _$DistributionResponse _build() {
    _$DistributionResponse _$result;
    try {
      _$result = _$v ??
          _$DistributionResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'DistributionResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DistributionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
