// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewResponseItemsTypeEnum _$reviewResponseItemsTypeEnum_POSITIVE =
    const ReviewResponseItemsTypeEnum._('POSITIVE');
const ReviewResponseItemsTypeEnum _$reviewResponseItemsTypeEnum_NEGATIVE =
    const ReviewResponseItemsTypeEnum._('NEGATIVE');
const ReviewResponseItemsTypeEnum _$reviewResponseItemsTypeEnum_NEUTRAL =
    const ReviewResponseItemsTypeEnum._('NEUTRAL');
const ReviewResponseItemsTypeEnum _$reviewResponseItemsTypeEnum_UNKNOWN =
    const ReviewResponseItemsTypeEnum._('UNKNOWN');

ReviewResponseItemsTypeEnum _$reviewResponseItemsTypeEnumValueOf(String name) {
  switch (name) {
    case 'POSITIVE':
      return _$reviewResponseItemsTypeEnum_POSITIVE;
    case 'NEGATIVE':
      return _$reviewResponseItemsTypeEnum_NEGATIVE;
    case 'NEUTRAL':
      return _$reviewResponseItemsTypeEnum_NEUTRAL;
    case 'UNKNOWN':
      return _$reviewResponseItemsTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReviewResponseItemsTypeEnum>
    _$reviewResponseItemsTypeEnumValues =
    BuiltSet<ReviewResponseItemsTypeEnum>(const <ReviewResponseItemsTypeEnum>[
  _$reviewResponseItemsTypeEnum_POSITIVE,
  _$reviewResponseItemsTypeEnum_NEGATIVE,
  _$reviewResponseItemsTypeEnum_NEUTRAL,
  _$reviewResponseItemsTypeEnum_UNKNOWN,
]);

Serializer<ReviewResponseItemsTypeEnum>
    _$reviewResponseItemsTypeEnumSerializer =
    _$ReviewResponseItemsTypeEnumSerializer();

class _$ReviewResponseItemsTypeEnumSerializer
    implements PrimitiveSerializer<ReviewResponseItemsTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'POSITIVE': 'POSITIVE',
    'NEGATIVE': 'NEGATIVE',
    'NEUTRAL': 'NEUTRAL',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'POSITIVE': 'POSITIVE',
    'NEGATIVE': 'NEGATIVE',
    'NEUTRAL': 'NEUTRAL',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewResponseItemsTypeEnum];
  @override
  final String wireName = 'ReviewResponseItemsTypeEnum';

  @override
  Object serialize(Serializers serializers, ReviewResponseItemsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewResponseItemsTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewResponseItemsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewResponseItems extends ReviewResponseItems {
  @override
  final int? kinopoiskId;
  @override
  final ReviewResponseItemsTypeEnum? type;
  @override
  final String? date;
  @override
  final int? positiveRating;
  @override
  final int? negativeRating;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;

  factory _$ReviewResponseItems(
          [void Function(ReviewResponseItemsBuilder)? updates]) =>
      (ReviewResponseItemsBuilder()..update(updates))._build();

  _$ReviewResponseItems._(
      {this.kinopoiskId,
      this.type,
      this.date,
      this.positiveRating,
      this.negativeRating,
      this.author,
      this.title,
      this.description})
      : super._();
  @override
  ReviewResponseItems rebuild(
          void Function(ReviewResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewResponseItemsBuilder toBuilder() =>
      ReviewResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewResponseItems &&
        kinopoiskId == other.kinopoiskId &&
        type == other.type &&
        date == other.date &&
        positiveRating == other.positiveRating &&
        negativeRating == other.negativeRating &&
        author == other.author &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinopoiskId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, positiveRating.hashCode);
    _$hash = $jc(_$hash, negativeRating.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewResponseItems')
          ..add('kinopoiskId', kinopoiskId)
          ..add('type', type)
          ..add('date', date)
          ..add('positiveRating', positiveRating)
          ..add('negativeRating', negativeRating)
          ..add('author', author)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class ReviewResponseItemsBuilder
    implements Builder<ReviewResponseItems, ReviewResponseItemsBuilder> {
  _$ReviewResponseItems? _$v;

  int? _kinopoiskId;
  int? get kinopoiskId => _$this._kinopoiskId;
  set kinopoiskId(int? kinopoiskId) => _$this._kinopoiskId = kinopoiskId;

  ReviewResponseItemsTypeEnum? _type;
  ReviewResponseItemsTypeEnum? get type => _$this._type;
  set type(ReviewResponseItemsTypeEnum? type) => _$this._type = type;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _positiveRating;
  int? get positiveRating => _$this._positiveRating;
  set positiveRating(int? positiveRating) =>
      _$this._positiveRating = positiveRating;

  int? _negativeRating;
  int? get negativeRating => _$this._negativeRating;
  set negativeRating(int? negativeRating) =>
      _$this._negativeRating = negativeRating;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ReviewResponseItemsBuilder() {
    ReviewResponseItems._defaults(this);
  }

  ReviewResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinopoiskId = $v.kinopoiskId;
      _type = $v.type;
      _date = $v.date;
      _positiveRating = $v.positiveRating;
      _negativeRating = $v.negativeRating;
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewResponseItems other) {
    _$v = other as _$ReviewResponseItems;
  }

  @override
  void update(void Function(ReviewResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewResponseItems build() => _build();

  _$ReviewResponseItems _build() {
    final _$result = _$v ??
        _$ReviewResponseItems._(
          kinopoiskId: kinopoiskId,
          type: type,
          date: date,
          positiveRating: positiveRating,
          negativeRating: negativeRating,
          author: author,
          title: title,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
