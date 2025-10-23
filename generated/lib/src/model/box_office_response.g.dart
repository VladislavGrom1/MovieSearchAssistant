// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_office_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoxOfficeResponse extends BoxOfficeResponse {
  @override
  final int total;
  @override
  final BuiltList<BoxOffice> items;

  factory _$BoxOfficeResponse(
          [void Function(BoxOfficeResponseBuilder)? updates]) =>
      (BoxOfficeResponseBuilder()..update(updates))._build();

  _$BoxOfficeResponse._({required this.total, required this.items}) : super._();
  @override
  BoxOfficeResponse rebuild(void Function(BoxOfficeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoxOfficeResponseBuilder toBuilder() =>
      BoxOfficeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoxOfficeResponse &&
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
    return (newBuiltValueToStringHelper(r'BoxOfficeResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class BoxOfficeResponseBuilder
    implements Builder<BoxOfficeResponse, BoxOfficeResponseBuilder> {
  _$BoxOfficeResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<BoxOffice>? _items;
  ListBuilder<BoxOffice> get items =>
      _$this._items ??= ListBuilder<BoxOffice>();
  set items(ListBuilder<BoxOffice>? items) => _$this._items = items;

  BoxOfficeResponseBuilder() {
    BoxOfficeResponse._defaults(this);
  }

  BoxOfficeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoxOfficeResponse other) {
    _$v = other as _$BoxOfficeResponse;
  }

  @override
  void update(void Function(BoxOfficeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoxOfficeResponse build() => _build();

  _$BoxOfficeResponse _build() {
    _$BoxOfficeResponse _$result;
    try {
      _$result = _$v ??
          _$BoxOfficeResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'BoxOfficeResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BoxOfficeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
