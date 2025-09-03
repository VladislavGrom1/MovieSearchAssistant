// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_WRITER =
    const StaffResponseProfessionKeyEnum._('WRITER');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_OPERATOR =
    const StaffResponseProfessionKeyEnum._('OPERATOR');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_EDITOR =
    const StaffResponseProfessionKeyEnum._('EDITOR');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_COMPOSER =
    const StaffResponseProfessionKeyEnum._('COMPOSER');
const StaffResponseProfessionKeyEnum
    _$staffResponseProfessionKeyEnum_PRODUCER_USSR =
    const StaffResponseProfessionKeyEnum._('PRODUCER_USSR');
const StaffResponseProfessionKeyEnum
    _$staffResponseProfessionKeyEnum_TRANSLATOR =
    const StaffResponseProfessionKeyEnum._('TRANSLATOR');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_DIRECTOR =
    const StaffResponseProfessionKeyEnum._('DIRECTOR');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_DESIGN =
    const StaffResponseProfessionKeyEnum._('DESIGN');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_PRODUCER =
    const StaffResponseProfessionKeyEnum._('PRODUCER');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_ACTOR =
    const StaffResponseProfessionKeyEnum._('ACTOR');
const StaffResponseProfessionKeyEnum
    _$staffResponseProfessionKeyEnum_VOICE_DIRECTOR =
    const StaffResponseProfessionKeyEnum._('VOICE_DIRECTOR');
const StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnum_UNKNOWN =
    const StaffResponseProfessionKeyEnum._('UNKNOWN');

StaffResponseProfessionKeyEnum _$staffResponseProfessionKeyEnumValueOf(
    String name) {
  switch (name) {
    case 'WRITER':
      return _$staffResponseProfessionKeyEnum_WRITER;
    case 'OPERATOR':
      return _$staffResponseProfessionKeyEnum_OPERATOR;
    case 'EDITOR':
      return _$staffResponseProfessionKeyEnum_EDITOR;
    case 'COMPOSER':
      return _$staffResponseProfessionKeyEnum_COMPOSER;
    case 'PRODUCER_USSR':
      return _$staffResponseProfessionKeyEnum_PRODUCER_USSR;
    case 'TRANSLATOR':
      return _$staffResponseProfessionKeyEnum_TRANSLATOR;
    case 'DIRECTOR':
      return _$staffResponseProfessionKeyEnum_DIRECTOR;
    case 'DESIGN':
      return _$staffResponseProfessionKeyEnum_DESIGN;
    case 'PRODUCER':
      return _$staffResponseProfessionKeyEnum_PRODUCER;
    case 'ACTOR':
      return _$staffResponseProfessionKeyEnum_ACTOR;
    case 'VOICE_DIRECTOR':
      return _$staffResponseProfessionKeyEnum_VOICE_DIRECTOR;
    case 'UNKNOWN':
      return _$staffResponseProfessionKeyEnum_UNKNOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StaffResponseProfessionKeyEnum>
    _$staffResponseProfessionKeyEnumValues = BuiltSet<
        StaffResponseProfessionKeyEnum>(const <StaffResponseProfessionKeyEnum>[
  _$staffResponseProfessionKeyEnum_WRITER,
  _$staffResponseProfessionKeyEnum_OPERATOR,
  _$staffResponseProfessionKeyEnum_EDITOR,
  _$staffResponseProfessionKeyEnum_COMPOSER,
  _$staffResponseProfessionKeyEnum_PRODUCER_USSR,
  _$staffResponseProfessionKeyEnum_TRANSLATOR,
  _$staffResponseProfessionKeyEnum_DIRECTOR,
  _$staffResponseProfessionKeyEnum_DESIGN,
  _$staffResponseProfessionKeyEnum_PRODUCER,
  _$staffResponseProfessionKeyEnum_ACTOR,
  _$staffResponseProfessionKeyEnum_VOICE_DIRECTOR,
  _$staffResponseProfessionKeyEnum_UNKNOWN,
]);

Serializer<StaffResponseProfessionKeyEnum>
    _$staffResponseProfessionKeyEnumSerializer =
    _$StaffResponseProfessionKeyEnumSerializer();

class _$StaffResponseProfessionKeyEnumSerializer
    implements PrimitiveSerializer<StaffResponseProfessionKeyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WRITER': 'WRITER',
    'OPERATOR': 'OPERATOR',
    'EDITOR': 'EDITOR',
    'COMPOSER': 'COMPOSER',
    'PRODUCER_USSR': 'PRODUCER_USSR',
    'TRANSLATOR': 'TRANSLATOR',
    'DIRECTOR': 'DIRECTOR',
    'DESIGN': 'DESIGN',
    'PRODUCER': 'PRODUCER',
    'ACTOR': 'ACTOR',
    'VOICE_DIRECTOR': 'VOICE_DIRECTOR',
    'UNKNOWN': 'UNKNOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WRITER': 'WRITER',
    'OPERATOR': 'OPERATOR',
    'EDITOR': 'EDITOR',
    'COMPOSER': 'COMPOSER',
    'PRODUCER_USSR': 'PRODUCER_USSR',
    'TRANSLATOR': 'TRANSLATOR',
    'DIRECTOR': 'DIRECTOR',
    'DESIGN': 'DESIGN',
    'PRODUCER': 'PRODUCER',
    'ACTOR': 'ACTOR',
    'VOICE_DIRECTOR': 'VOICE_DIRECTOR',
    'UNKNOWN': 'UNKNOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[StaffResponseProfessionKeyEnum];
  @override
  final String wireName = 'StaffResponseProfessionKeyEnum';

  @override
  Object serialize(
          Serializers serializers, StaffResponseProfessionKeyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StaffResponseProfessionKeyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StaffResponseProfessionKeyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StaffResponse extends StaffResponse {
  @override
  final int staffId;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? description;
  @override
  final String posterUrl;
  @override
  final String professionText;
  @override
  final StaffResponseProfessionKeyEnum professionKey;

  factory _$StaffResponse([void Function(StaffResponseBuilder)? updates]) =>
      (StaffResponseBuilder()..update(updates))._build();

  _$StaffResponse._(
      {required this.staffId,
      this.nameRu,
      this.nameEn,
      this.description,
      required this.posterUrl,
      required this.professionText,
      required this.professionKey})
      : super._();
  @override
  StaffResponse rebuild(void Function(StaffResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffResponseBuilder toBuilder() => StaffResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaffResponse &&
        staffId == other.staffId &&
        nameRu == other.nameRu &&
        nameEn == other.nameEn &&
        description == other.description &&
        posterUrl == other.posterUrl &&
        professionText == other.professionText &&
        professionKey == other.professionKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, posterUrl.hashCode);
    _$hash = $jc(_$hash, professionText.hashCode);
    _$hash = $jc(_$hash, professionKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StaffResponse')
          ..add('staffId', staffId)
          ..add('nameRu', nameRu)
          ..add('nameEn', nameEn)
          ..add('description', description)
          ..add('posterUrl', posterUrl)
          ..add('professionText', professionText)
          ..add('professionKey', professionKey))
        .toString();
  }
}

class StaffResponseBuilder
    implements Builder<StaffResponse, StaffResponseBuilder> {
  _$StaffResponse? _$v;

  int? _staffId;
  int? get staffId => _$this._staffId;
  set staffId(int? staffId) => _$this._staffId = staffId;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _professionText;
  String? get professionText => _$this._professionText;
  set professionText(String? professionText) =>
      _$this._professionText = professionText;

  StaffResponseProfessionKeyEnum? _professionKey;
  StaffResponseProfessionKeyEnum? get professionKey => _$this._professionKey;
  set professionKey(StaffResponseProfessionKeyEnum? professionKey) =>
      _$this._professionKey = professionKey;

  StaffResponseBuilder() {
    StaffResponse._defaults(this);
  }

  StaffResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staffId = $v.staffId;
      _nameRu = $v.nameRu;
      _nameEn = $v.nameEn;
      _description = $v.description;
      _posterUrl = $v.posterUrl;
      _professionText = $v.professionText;
      _professionKey = $v.professionKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaffResponse other) {
    _$v = other as _$StaffResponse;
  }

  @override
  void update(void Function(StaffResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaffResponse build() => _build();

  _$StaffResponse _build() {
    final _$result = _$v ??
        _$StaffResponse._(
          staffId: BuiltValueNullFieldError.checkNotNull(
              staffId, r'StaffResponse', 'staffId'),
          nameRu: nameRu,
          nameEn: nameEn,
          description: description,
          posterUrl: BuiltValueNullFieldError.checkNotNull(
              posterUrl, r'StaffResponse', 'posterUrl'),
          professionText: BuiltValueNullFieldError.checkNotNull(
              professionText, r'StaffResponse', 'professionText'),
          professionKey: BuiltValueNullFieldError.checkNotNull(
              professionKey, r'StaffResponse', 'professionKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
