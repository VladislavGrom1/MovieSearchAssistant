// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinopoisk_user_vote_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinopoiskUserVoteResponse extends KinopoiskUserVoteResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<KinopoiskUserVoteResponseItems> items;

  factory _$KinopoiskUserVoteResponse(
          [void Function(KinopoiskUserVoteResponseBuilder)? updates]) =>
      (KinopoiskUserVoteResponseBuilder()..update(updates))._build();

  _$KinopoiskUserVoteResponse._(
      {required this.total, required this.totalPages, required this.items})
      : super._();
  @override
  KinopoiskUserVoteResponse rebuild(
          void Function(KinopoiskUserVoteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinopoiskUserVoteResponseBuilder toBuilder() =>
      KinopoiskUserVoteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinopoiskUserVoteResponse &&
        total == other.total &&
        totalPages == other.totalPages &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KinopoiskUserVoteResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('items', items))
        .toString();
  }
}

class KinopoiskUserVoteResponseBuilder
    implements
        Builder<KinopoiskUserVoteResponse, KinopoiskUserVoteResponseBuilder> {
  _$KinopoiskUserVoteResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  ListBuilder<KinopoiskUserVoteResponseItems>? _items;
  ListBuilder<KinopoiskUserVoteResponseItems> get items =>
      _$this._items ??= ListBuilder<KinopoiskUserVoteResponseItems>();
  set items(ListBuilder<KinopoiskUserVoteResponseItems>? items) =>
      _$this._items = items;

  KinopoiskUserVoteResponseBuilder() {
    KinopoiskUserVoteResponse._defaults(this);
  }

  KinopoiskUserVoteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _totalPages = $v.totalPages;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinopoiskUserVoteResponse other) {
    _$v = other as _$KinopoiskUserVoteResponse;
  }

  @override
  void update(void Function(KinopoiskUserVoteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinopoiskUserVoteResponse build() => _build();

  _$KinopoiskUserVoteResponse _build() {
    _$KinopoiskUserVoteResponse _$result;
    try {
      _$result = _$v ??
          _$KinopoiskUserVoteResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'KinopoiskUserVoteResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'KinopoiskUserVoteResponse', 'totalPages'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KinopoiskUserVoteResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
