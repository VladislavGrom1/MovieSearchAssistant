// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premiere_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiereResponse extends PremiereResponse {
  @override
  final int total;
  @override
  final BuiltList<PremiereResponseItem> items;

  factory _$PremiereResponse(
          [void Function(PremiereResponseBuilder)? updates]) =>
      (PremiereResponseBuilder()..update(updates))._build();

  _$PremiereResponse._({required this.total, required this.items}) : super._();
  @override
  PremiereResponse rebuild(void Function(PremiereResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiereResponseBuilder toBuilder() =>
      PremiereResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiereResponse &&
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
    return (newBuiltValueToStringHelper(r'PremiereResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class PremiereResponseBuilder
    implements Builder<PremiereResponse, PremiereResponseBuilder> {
  _$PremiereResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<PremiereResponseItem>? _items;
  ListBuilder<PremiereResponseItem> get items =>
      _$this._items ??= ListBuilder<PremiereResponseItem>();
  set items(ListBuilder<PremiereResponseItem>? items) => _$this._items = items;

  PremiereResponseBuilder() {
    PremiereResponse._defaults(this);
  }

  PremiereResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiereResponse other) {
    _$v = other as _$PremiereResponse;
  }

  @override
  void update(void Function(PremiereResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiereResponse build() => _build();

  _$PremiereResponse _build() {
    _$PremiereResponse _$result;
    try {
      _$result = _$v ??
          _$PremiereResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'PremiereResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiereResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
