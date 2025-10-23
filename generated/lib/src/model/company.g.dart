// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Company extends Company {
  @override
  final String name;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (CompanyBuilder()..update(updates))._build();

  _$Company._({required this.name}) : super._();
  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Company')..add('name', name))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CompanyBuilder() {
    Company._defaults(this);
  }

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Company build() => _build();

  _$Company _build() {
    final _$result = _$v ??
        _$Company._(
          name: BuiltValueNullFieldError.checkNotNull(name, r'Company', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
