// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewResponse extends ReviewResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final int totalPositiveReviews;
  @override
  final int totalNegativeReviews;
  @override
  final int totalNeutralReviews;
  @override
  final BuiltList<ReviewResponseItems> items;

  factory _$ReviewResponse([void Function(ReviewResponseBuilder)? updates]) =>
      (ReviewResponseBuilder()..update(updates))._build();

  _$ReviewResponse._(
      {required this.total,
      required this.totalPages,
      required this.totalPositiveReviews,
      required this.totalNegativeReviews,
      required this.totalNeutralReviews,
      required this.items})
      : super._();
  @override
  ReviewResponse rebuild(void Function(ReviewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewResponseBuilder toBuilder() => ReviewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewResponse &&
        total == other.total &&
        totalPages == other.totalPages &&
        totalPositiveReviews == other.totalPositiveReviews &&
        totalNegativeReviews == other.totalNegativeReviews &&
        totalNeutralReviews == other.totalNeutralReviews &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalPositiveReviews.hashCode);
    _$hash = $jc(_$hash, totalNegativeReviews.hashCode);
    _$hash = $jc(_$hash, totalNeutralReviews.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('totalPositiveReviews', totalPositiveReviews)
          ..add('totalNegativeReviews', totalNegativeReviews)
          ..add('totalNeutralReviews', totalNeutralReviews)
          ..add('items', items))
        .toString();
  }
}

class ReviewResponseBuilder
    implements Builder<ReviewResponse, ReviewResponseBuilder> {
  _$ReviewResponse? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalPositiveReviews;
  int? get totalPositiveReviews => _$this._totalPositiveReviews;
  set totalPositiveReviews(int? totalPositiveReviews) =>
      _$this._totalPositiveReviews = totalPositiveReviews;

  int? _totalNegativeReviews;
  int? get totalNegativeReviews => _$this._totalNegativeReviews;
  set totalNegativeReviews(int? totalNegativeReviews) =>
      _$this._totalNegativeReviews = totalNegativeReviews;

  int? _totalNeutralReviews;
  int? get totalNeutralReviews => _$this._totalNeutralReviews;
  set totalNeutralReviews(int? totalNeutralReviews) =>
      _$this._totalNeutralReviews = totalNeutralReviews;

  ListBuilder<ReviewResponseItems>? _items;
  ListBuilder<ReviewResponseItems> get items =>
      _$this._items ??= ListBuilder<ReviewResponseItems>();
  set items(ListBuilder<ReviewResponseItems>? items) => _$this._items = items;

  ReviewResponseBuilder() {
    ReviewResponse._defaults(this);
  }

  ReviewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _totalPages = $v.totalPages;
      _totalPositiveReviews = $v.totalPositiveReviews;
      _totalNegativeReviews = $v.totalNegativeReviews;
      _totalNeutralReviews = $v.totalNeutralReviews;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewResponse other) {
    _$v = other as _$ReviewResponse;
  }

  @override
  void update(void Function(ReviewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewResponse build() => _build();

  _$ReviewResponse _build() {
    _$ReviewResponse _$result;
    try {
      _$result = _$v ??
          _$ReviewResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'ReviewResponse', 'total'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'ReviewResponse', 'totalPages'),
            totalPositiveReviews: BuiltValueNullFieldError.checkNotNull(
                totalPositiveReviews,
                r'ReviewResponse',
                'totalPositiveReviews'),
            totalNegativeReviews: BuiltValueNullFieldError.checkNotNull(
                totalNegativeReviews,
                r'ReviewResponse',
                'totalNegativeReviews'),
            totalNeutralReviews: BuiltValueNullFieldError.checkNotNull(
                totalNeutralReviews, r'ReviewResponse', 'totalNeutralReviews'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReviewResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
