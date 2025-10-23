// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourceResponse extends ExternalSourceResponse {
  @override
  final int total;
  @override
  final BuiltList<ExternalSourceResponseItems> items;

  factory _$ExternalSourceResponse(
          [void Function(ExternalSourceResponseBuilder)? updates]) =>
      (ExternalSourceResponseBuilder()..update(updates))._build();

  _$ExternalSourceResponse._({required this.total, required this.items})
      : super._();
  @override
  ExternalSourceResponse rebuild(
          void Function(ExternalSourceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalSourceResponseBuilder toBuilder() =>
      ExternalSourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourceResponse &&
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
    return (newBuiltValueToStringHelper(r'ExternalSourceResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class ExternalSourceResponseBuilder
    implements Builder<ExternalSourceResponse, ExternalSourceResponseBuilder> {
  _$ExternalSourceResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<ExternalSourceResponseItems>? _items;
  ListBuilder<ExternalSourceResponseItems> get items =>
      _$this._items ??= ListBuilder<ExternalSourceResponseItems>();
  set items(ListBuilder<ExternalSourceResponseItems>? items) =>
      _$this._items = items;

  ExternalSourceResponseBuilder() {
    ExternalSourceResponse._defaults(this);
  }

  ExternalSourceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourceResponse other) {
    _$v = other as _$ExternalSourceResponse;
  }

  @override
  void update(void Function(ExternalSourceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourceResponse build() => _build();

  _$ExternalSourceResponse _build() {
    _$ExternalSourceResponse _$result;
    try {
      _$result = _$v ??
          _$ExternalSourceResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'ExternalSourceResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExternalSourceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
