// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_film_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelatedFilmResponse extends RelatedFilmResponse {
  @override
  final int total;
  @override
  final BuiltList<RelatedFilmResponseItems> items;

  factory _$RelatedFilmResponse(
          [void Function(RelatedFilmResponseBuilder)? updates]) =>
      (RelatedFilmResponseBuilder()..update(updates))._build();

  _$RelatedFilmResponse._({required this.total, required this.items})
      : super._();
  @override
  RelatedFilmResponse rebuild(
          void Function(RelatedFilmResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedFilmResponseBuilder toBuilder() =>
      RelatedFilmResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedFilmResponse &&
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
    return (newBuiltValueToStringHelper(r'RelatedFilmResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class RelatedFilmResponseBuilder
    implements Builder<RelatedFilmResponse, RelatedFilmResponseBuilder> {
  _$RelatedFilmResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<RelatedFilmResponseItems>? _items;
  ListBuilder<RelatedFilmResponseItems> get items =>
      _$this._items ??= ListBuilder<RelatedFilmResponseItems>();
  set items(ListBuilder<RelatedFilmResponseItems>? items) =>
      _$this._items = items;

  RelatedFilmResponseBuilder() {
    RelatedFilmResponse._defaults(this);
  }

  RelatedFilmResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedFilmResponse other) {
    _$v = other as _$RelatedFilmResponse;
  }

  @override
  void update(void Function(RelatedFilmResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelatedFilmResponse build() => _build();

  _$RelatedFilmResponse _build() {
    _$RelatedFilmResponse _$result;
    try {
      _$result = _$v ??
          _$RelatedFilmResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'RelatedFilmResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RelatedFilmResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
