// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_by_name_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PersonByNameResponse extends PersonByNameResponse {
  @override
  final int total;
  @override
  final BuiltList<PersonByNameResponseItems> items;

  factory _$PersonByNameResponse(
          [void Function(PersonByNameResponseBuilder)? updates]) =>
      (PersonByNameResponseBuilder()..update(updates))._build();

  _$PersonByNameResponse._({required this.total, required this.items})
      : super._();
  @override
  PersonByNameResponse rebuild(
          void Function(PersonByNameResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonByNameResponseBuilder toBuilder() =>
      PersonByNameResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonByNameResponse &&
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
    return (newBuiltValueToStringHelper(r'PersonByNameResponse')
          ..add('total', total)
          ..add('items', items))
        .toString();
  }
}

class PersonByNameResponseBuilder
    implements Builder<PersonByNameResponse, PersonByNameResponseBuilder> {
  _$PersonByNameResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<PersonByNameResponseItems>? _items;
  ListBuilder<PersonByNameResponseItems> get items =>
      _$this._items ??= ListBuilder<PersonByNameResponseItems>();
  set items(ListBuilder<PersonByNameResponseItems>? items) =>
      _$this._items = items;

  PersonByNameResponseBuilder() {
    PersonByNameResponse._defaults(this);
  }

  PersonByNameResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonByNameResponse other) {
    _$v = other as _$PersonByNameResponse;
  }

  @override
  void update(void Function(PersonByNameResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonByNameResponse build() => _build();

  _$PersonByNameResponse _build() {
    _$PersonByNameResponse _$result;
    try {
      _$result = _$v ??
          _$PersonByNameResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'PersonByNameResponse', 'total'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PersonByNameResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
