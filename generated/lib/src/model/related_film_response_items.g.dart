// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_film_response_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelatedFilmResponseItemsRelationTypeEnum
    _$relatedFilmResponseItemsRelationTypeEnum_SIMILAR =
    const RelatedFilmResponseItemsRelationTypeEnum._('SIMILAR');

RelatedFilmResponseItemsRelationTypeEnum
    _$relatedFilmResponseItemsRelationTypeEnumValueOf(String name) {
  switch (name) {
    case 'SIMILAR':
      return _$relatedFilmResponseItemsRelationTypeEnum_SIMILAR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelatedFilmResponseItemsRelationTypeEnum>
    _$relatedFilmResponseItemsRelationTypeEnumValues = BuiltSet<
        RelatedFilmResponseItemsRelationTypeEnum>(const <RelatedFilmResponseItemsRelationTypeEnum>[
  _$relatedFilmResponseItemsRelationTypeEnum_SIMILAR,
]);

Serializer<RelatedFilmResponseItemsRelationTypeEnum>
    _$relatedFilmResponseItemsRelationTypeEnumSerializer =
    _$RelatedFilmResponseItemsRelationTypeEnumSerializer();

class _$RelatedFilmResponseItemsRelationTypeEnumSerializer
    implements PrimitiveSerializer<RelatedFilmResponseItemsRelationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SIMILAR': 'SIMILAR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SIMILAR': 'SIMILAR',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RelatedFilmResponseItemsRelationTypeEnum
  ];
  @override
  final String wireName = 'RelatedFilmResponseItemsRelationTypeEnum';

  @override
  Object serialize(Serializers serializers,
          RelatedFilmResponseItemsRelationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RelatedFilmResponseItemsRelationTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RelatedFilmResponseItemsRelationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RelatedFilmResponseItems extends RelatedFilmResponseItems {
  @override
  final int? filmId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? nameOriginal;
  @override
  final String? posterUrl;
  @override
  final String? posterUrlPreview;
  @override
  final RelatedFilmResponseItemsRelationTypeEnum? relationType;

  factory _$RelatedFilmResponseItems(
          [void Function(RelatedFilmResponseItemsBuilder)? updates]) =>
      (RelatedFilmResponseItemsBuilder()..update(updates))._build();

  _$RelatedFilmResponseItems._(
      {this.filmId,
      this.nameRu,
      this.nameEn,
      this.nameOriginal,
      this.posterUrl,
      this.posterUrlPreview,
      this.relationType})
      : super._();
  @override
  RelatedFilmResponseItems rebuild(
          void Function(RelatedFilmResponseItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedFilmResponseItemsBuilder toBuilder() =>
      RelatedFilmResponseItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedFilmResponseItems &&
        filmId == other.filmId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        nameOriginal == other.nameOriginal &&
        posterUrl == other.posterUrl &&
        posterUrlPreview == other.posterUrlPreview &&
        relationType == other.relationType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filmId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, nameOriginal.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, posterUrlPreview.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelatedFilmResponseItems')
          ..add('filmId', filmId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('nameOriginal', nameOriginal)
          ..add('posterUrl', posterUrl)
          ..add('posterUrlPreview', posterUrlPreview)
          ..add('relationType', relationType))
        .toString();
  }
}

class RelatedFilmResponseItemsBuilder
    implements
        Builder<RelatedFilmResponseItems, RelatedFilmResponseItemsBuilder> {
  _$RelatedFilmResponseItems? _$v;

  int? _filmId;
  int? get filmId => _$this._filmId;
  set filmId(int? filmId) => _$this._filmId = filmId;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _nameOriginal;
  String? get nameOriginal => _$this._nameOriginal;
  set nameOriginal(String? nameOriginal) => _$this._nameOriginal = nameOriginal;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _posterUrlPreview;
  String? get posterUrlPreview => _$this._posterUrlPreview;
  set posterUrlPreview(String? posterUrlPreview) =>
      _$this._posterUrlPreview = posterUrlPreview;

  RelatedFilmResponseItemsRelationTypeEnum? _relationType;
  RelatedFilmResponseItemsRelationTypeEnum? get relationType =>
      _$this._relationType;
  set relationType(RelatedFilmResponseItemsRelationTypeEnum? relationType) =>
      _$this._relationType = relationType;

  RelatedFilmResponseItemsBuilder() {
    RelatedFilmResponseItems._defaults(this);
  }

  RelatedFilmResponseItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filmId = $v.filmId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _nameOriginal = $v.nameOriginal;
      _posterUrl = $v.posterUrl;
      _posterUrlPreview = $v.posterUrlPreview;
      _relationType = $v.relationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedFilmResponseItems other) {
    _$v = other as _$RelatedFilmResponseItems;
  }

  @override
  void update(void Function(RelatedFilmResponseItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelatedFilmResponseItems build() => _build();

  _$RelatedFilmResponseItems _build() {
    final _$result = _$v ??
        _$RelatedFilmResponseItems._(
          filmId: filmId,
          nameRu: nameRu,
          nameEn: nameEn,
          nameOriginal: nameOriginal,
          posterUrl: posterUrl,
          posterUrlPreview: posterUrlPreview,
          relationType: relationType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
