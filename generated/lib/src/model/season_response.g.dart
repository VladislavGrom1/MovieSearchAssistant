// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeasonResponse extends SeasonResponse {
  @override
  final int total;
  @override
  final BuiltList<Season> items;

  factory _$SeasonResponse([void Function(SeasonResponseBuilder)? updates]) =>
      (SeasonResponseBuilder()..update(updates))._build();

  _$SeasonResponse._({required this.total, required this.items}) : super._();
  @override
  SeasonResponse rebuild(void Function(SeasonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonResponseBuilder toBuilder() => SeasonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonResponse &&
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
    return (newBuiltValueToStringHelper(r'SeasonResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class SeasonResponseBuilder
    implements Builder<SeasonResponse, SeasonResponseBuilder> {
  _$SeasonResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<Season>? _items;
  ListBuilder<Season> get items => _$this._items ??= ListBuilder<Season>();
  set items(ListBuilder<Season>? items) => _$this._items = items;

  SeasonResponseBuilder() {
    SeasonResponse._defaults(this);
  }

  SeasonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonResponse other) {
    _$v = other as _$SeasonResponse;
  }

  @override
  void update(void Function(SeasonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeasonResponse build() => _build();

  _$SeasonResponse _build() {
    _$SeasonResponse _$result;
    try {
      _$result = _$v ??
          _$SeasonResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'SeasonResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeasonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
