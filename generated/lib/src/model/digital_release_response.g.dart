// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_release_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigitalReleaseResponse extends DigitalReleaseResponse {
  @override
  final int page;
  @override
  final int total;
  @override
  final BuiltList<DigitalReleaseItem> releases;

  factory _$DigitalReleaseResponse(
          [void Function(DigitalReleaseResponseBuilder)? updates]) =>
      (DigitalReleaseResponseBuilder()..update(updates))._build();

  _$DigitalReleaseResponse._(
      {required this.page, required this.total, required this.releases})
      : super._();
  @override
  DigitalReleaseResponse rebuild(
          void Function(DigitalReleaseResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigitalReleaseResponseBuilder toBuilder() =>
      DigitalReleaseResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigitalReleaseResponse &&
        page == other.page &&
        total == other.total &&
        releases == other.releases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, releases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigitalReleaseResponse')
          ..add('page', page)
          ..add('total', total)
          ..add('releases', releases))
        .toString();
  }
}

class DigitalReleaseResponseBuilder
    implements Builder<DigitalReleaseResponse, DigitalReleaseResponseBuilder> {
  _$DigitalReleaseResponse? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<DigitalReleaseItem>? _releases;
  ListBuilder<DigitalReleaseItem> get releases =>
      _$this._releases ??= ListBuilder<DigitalReleaseItem>();
  set releases(ListBuilder<DigitalReleaseItem>? releases) =>
      _$this._releases = releases;

  DigitalReleaseResponseBuilder() {
    DigitalReleaseResponse._defaults(this);
  }

  DigitalReleaseResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _total = $v.total;
      _releases = $v.releases.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigitalReleaseResponse other) {
    _$v = other as _$DigitalReleaseResponse;
  }

  @override
  void update(void Function(DigitalReleaseResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigitalReleaseResponse build() => _build();

  _$DigitalReleaseResponse _build() {
    _$DigitalReleaseResponse _$result;
    try {
      _$result = _$v ??
          _$DigitalReleaseResponse._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'DigitalReleaseResponse', 'page'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'DigitalReleaseResponse', 'total'),
            releases: releases.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'releases';
        releases.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DigitalReleaseResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
