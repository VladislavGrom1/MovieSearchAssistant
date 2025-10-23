// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'award_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwardResponse extends AwardResponse {
  @override
  final int total;
  @override
  final BuiltList<Award> items;

  factory _$AwardResponse([void Function(AwardResponseBuilder)? updates]) =>
      (AwardResponseBuilder()..update(updates))._build();

  _$AwardResponse._({required this.total, required this.items}) : super._();
  @override
  AwardResponse rebuild(void Function(AwardResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwardResponseBuilder toBuilder() => AwardResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwardResponse &&
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
    return (newBuiltValueToStringHelper(r'AwardResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class AwardResponseBuilder
    implements Builder<AwardResponse, AwardResponseBuilder> {
  _$AwardResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<Award>? _items;
  ListBuilder<Award> get items => _$this._items ??= ListBuilder<Award>();
  set items(ListBuilder<Award>? items) => _$this._items = items;

  AwardResponseBuilder() {
    AwardResponse._defaults(this);
  }

  AwardResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwardResponse other) {
    _$v = other as _$AwardResponse;
  }

  @override
  void update(void Function(AwardResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwardResponse build() => _build();

  _$AwardResponse _build() {
    _$AwardResponse _$result;
    try {
      _$result = _$v ??
          _$AwardResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'AwardResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AwardResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
