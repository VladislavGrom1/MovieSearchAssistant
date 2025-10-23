// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_sequels_and_prequels_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilmSequelsAndPrequelsResponseRelationTypeEnum
    _$filmSequelsAndPrequelsResponseRelationTypeEnum_SEQUEL =
    const FilmSequelsAndPrequelsResponseRelationTypeEnum._('SEQUEL');
const FilmSequelsAndPrequelsResponseRelationTypeEnum
    _$filmSequelsAndPrequelsResponseRelationTypeEnum_PREQUEL =
    const FilmSequelsAndPrequelsResponseRelationTypeEnum._('PREQUEL');
const FilmSequelsAndPrequelsResponseRelationTypeEnum
    _$filmSequelsAndPrequelsResponseRelationTypeEnum_REMAKE =
    const FilmSequelsAndPrequelsResponseRelationTypeEnum._('REMAKE');
const FilmSequelsAndPrequelsResponseRelationTypeEnum
    _$filmSequelsAndPrequelsResponseRelationTypeEnum_UNKNOWN =
    const FilmSequelsAndPrequelsResponseRelationTypeEnum._('UNKNOWN');

FilmSequelsAndPrequelsResponseRelationTypeEnum
    _$filmSequelsAndPrequelsResponseRelationTypeEnumValueOf(String name) {
  switch (name) {
    case 'SEQUEL':
      return _$filmSequelsAndPrequelsResponseRelationTypeEnum_SEQUEL;
    case 'PREQUEL':
      return _$filmSequelsAndPrequelsResponseRelationTypeEnum_PREQUEL;
    case 'REMAKE':
      return _$filmSequelsAndPrequelsResponseRelationTypeEnum_REMAKE;
    case 'UNKNOWN':
      return _$filmSequelsAndPrequelsResponseRelationTypeEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilmSequelsAndPrequelsResponseRelationTypeEnum>
    _$filmSequelsAndPrequelsResponseRelationTypeEnumValues = BuiltSet<
        FilmSequelsAndPrequelsResponseRelationTypeEnum>(const <FilmSequelsAndPrequelsResponseRelationTypeEnum>[
  _$filmSequelsAndPrequelsResponseRelationTypeEnum_SEQUEL,
  _$filmSequelsAndPrequelsResponseRelationTypeEnum_PREQUEL,
  _$filmSequelsAndPrequelsResponseRelationTypeEnum_REMAKE,
  _$filmSequelsAndPrequelsResponseRelationTypeEnum_UNKNOWN,
]);

Serializer<FilmSequelsAndPrequelsResponseRelationTypeEnum>
    _$filmSequelsAndPrequelsResponseRelationTypeEnumSerializer =
    _$FilmSequelsAndPrequelsResponseRelationTypeEnumSerializer();

class _$FilmSequelsAndPrequelsResponseRelationTypeEnumSerializer
    implements
        PrimitiveSerializer<FilmSequelsAndPrequelsResponseRelationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SEQUEL': 'SEQUEL',
    'PREQUEL': 'PREQUEL',
    'REMAKE': 'REMAKE',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SEQUEL': 'SEQUEL',
    'PREQUEL': 'PREQUEL',
    'REMAKE': 'REMAKE',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FilmSequelsAndPrequelsResponseRelationTypeEnum
  ];
  @override
  final String wireName = 'FilmSequelsAndPrequelsResponseRelationTypeEnum';

  @override
  Object serialize(Serializers serializers,
          FilmSequelsAndPrequelsResponseRelationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilmSequelsAndPrequelsResponseRelationTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilmSequelsAndPrequelsResponseRelationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FilmSequelsAndPrequelsResponse extends FilmSequelsAndPrequelsResponse {
  @override
  final int filmId;
  @override
  final String nameRu;
  @override
  final String nameEn;
  @override
  final String nameOriginal;
  @override
  final String posterUrl;
  @override
  final String posterUrlPreview;
  @override
  final FilmSequelsAndPrequelsResponseRelationTypeEnum relationType;

  factory _$FilmSequelsAndPrequelsResponse(
          [void Function(FilmSequelsAndPrequelsResponseBuilder)? updates]) =>
      (FilmSequelsAndPrequelsResponseBuilder()..update(updates))._build();

  _$FilmSequelsAndPrequelsResponse._(
      {required this.filmId,
      required this.nameRu,
      required this.nameEn,
      required this.nameOriginal,
      required this.posterUrl,
      required this.posterUrlPreview,
      required this.relationType})
      : super._();
  @override
  FilmSequelsAndPrequelsResponse rebuild(
          void Function(FilmSequelsAndPrequelsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilmSequelsAndPrequelsResponseBuilder toBuilder() =>
      FilmSequelsAndPrequelsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilmSequelsAndPrequelsResponse &&
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
    return (newBuiltValueToStringHelper(r'FilmSequelsAndPrequelsResponse')
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

class FilmSequelsAndPrequelsResponseBuilder
    implements
        Builder<FilmSequelsAndPrequelsResponse,
            FilmSequelsAndPrequelsResponseBuilder> {
  _$FilmSequelsAndPrequelsResponse? _$v;

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

  FilmSequelsAndPrequelsResponseRelationTypeEnum? _relationType;
  FilmSequelsAndPrequelsResponseRelationTypeEnum? get relationType =>
      _$this._relationType;
  set relationType(
          FilmSequelsAndPrequelsResponseRelationTypeEnum? relationType) =>
      _$this._relationType = relationType;

  FilmSequelsAndPrequelsResponseBuilder() {
    FilmSequelsAndPrequelsResponse._defaults(this);
  }

  FilmSequelsAndPrequelsResponseBuilder get _$this {
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
  void replace(FilmSequelsAndPrequelsResponse other) {
    _$v = other as _$FilmSequelsAndPrequelsResponse;
  }

  @override
  void update(void Function(FilmSequelsAndPrequelsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilmSequelsAndPrequelsResponse build() => _build();

  _$FilmSequelsAndPrequelsResponse _build() {
    final _$result = _$v ??
        _$FilmSequelsAndPrequelsResponse._(
          filmId: BuiltValueNullFieldError.checkNotNull(
              filmId, r'FilmSequelsAndPrequelsResponse', 'filmId'),
          nameRu: BuiltValueNullFieldError.checkNotNull(
              nameRu, r'FilmSequelsAndPrequelsResponse', 'nameRu'),
          nameEn: BuiltValueNullFieldError.checkNotNull(
              nameEn, r'FilmSequelsAndPrequelsResponse', 'nameEn'),
          nameOriginal: BuiltValueNullFieldError.checkNotNull(
              nameOriginal, r'FilmSequelsAndPrequelsResponse', 'nameOriginal'),
          posterUrl: BuiltValueNullFieldError.checkNotNull(
              posterUrl, r'FilmSequelsAndPrequelsResponse', 'posterUrl'),
          posterUrlPreview: BuiltValueNullFieldError.checkNotNull(
              posterUrlPreview,
              r'FilmSequelsAndPrequelsResponse',
              'posterUrlPreview'),
          relationType: BuiltValueNullFieldError.checkNotNull(
              relationType, r'FilmSequelsAndPrequelsResponse', 'relationType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
