//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/company.dart';
import 'package:generated/src/model/distribution_country.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'distribution.g.dart';

/// Distribution
///
/// Properties:
/// * [type]
/// * [subType]
/// * [date]
/// * [reRelease]
/// * [country]
/// * [companies]
@BuiltValue()
abstract class Distribution
    implements Built<Distribution, DistributionBuilder> {
  @BuiltValueField(wireName: r'type')
  DistributionTypeEnum get type;
  // enum typeEnum {  LOCAL,  COUNTRY_SPECIFIC,  PREMIERE,  ALL,  WORLD_PREMIER,  };

  @BuiltValueField(wireName: r'subType')
  DistributionSubTypeEnum? get subType;
  // enum subTypeEnum {  CINEMA,  DVD,  DIGITAL,  BLURAY,  };

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'reRelease')
  bool? get reRelease;

  @BuiltValueField(wireName: r'country')
  DistributionCountry get country;

  @BuiltValueField(wireName: r'companies')
  BuiltList<Company> get companies;

  Distribution._();

  factory Distribution([void updates(DistributionBuilder b)]) = _$Distribution;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistributionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Distribution> get serializer => _$DistributionSerializer();
}

class _$DistributionSerializer implements PrimitiveSerializer<Distribution> {
  @override
  final Iterable<Type> types = const [Distribution, _$Distribution];

  @override
  final String wireName = r'Distribution';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Distribution object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DistributionTypeEnum),
    );
    yield r'subType';
    yield object.subType == null
        ? null
        : serializers.serialize(
            object.subType,
            specifiedType: const FullType.nullable(DistributionSubTypeEnum),
          );
    yield r'date';
    yield object.date == null
        ? null
        : serializers.serialize(
            object.date,
            specifiedType: const FullType.nullable(String),
          );
    yield r'reRelease';
    yield object.reRelease == null
        ? null
        : serializers.serialize(
            object.reRelease,
            specifiedType: const FullType.nullable(bool),
          );
    yield r'country';
    yield serializers.serialize(
      object.country,
      specifiedType: const FullType(DistributionCountry),
    );
    yield r'companies';
    yield serializers.serialize(
      object.companies,
      specifiedType: const FullType(BuiltList, [FullType(Company)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Distribution object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DistributionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DistributionTypeEnum),
          ) as DistributionTypeEnum;
          result.type = valueDes;
          break;
        case r'subType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DistributionSubTypeEnum),
          ) as DistributionSubTypeEnum?;
          if (valueDes == null) continue;
          result.subType = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'reRelease':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reRelease = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DistributionCountry),
          ) as DistributionCountry;
          result.country.replace(valueDes);
          break;
        case r'companies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Company)]),
          ) as BuiltList<Company>;
          result.companies.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Distribution deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistributionBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class DistributionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LOCAL')
  static const DistributionTypeEnum LOCAL = _$distributionTypeEnum_LOCAL;
  @BuiltValueEnumConst(wireName: r'COUNTRY_SPECIFIC')
  static const DistributionTypeEnum COUNTRY_SPECIFIC =
      _$distributionTypeEnum_COUNTRY_SPECIFIC;
  @BuiltValueEnumConst(wireName: r'PREMIERE')
  static const DistributionTypeEnum PREMIERE = _$distributionTypeEnum_PREMIERE;
  @BuiltValueEnumConst(wireName: r'ALL')
  static const DistributionTypeEnum ALL = _$distributionTypeEnum_ALL;
  @BuiltValueEnumConst(wireName: r'WORLD_PREMIER')
  static const DistributionTypeEnum WORLD_PREMIER =
      _$distributionTypeEnum_WORLD_PREMIER;

  static Serializer<DistributionTypeEnum> get serializer =>
      _$distributionTypeEnumSerializer;

  const DistributionTypeEnum._(String name) : super(name);

  static BuiltSet<DistributionTypeEnum> get values =>
      _$distributionTypeEnumValues;
  static DistributionTypeEnum valueOf(String name) =>
      _$distributionTypeEnumValueOf(name);
}

class DistributionSubTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CINEMA')
  static const DistributionSubTypeEnum CINEMA =
      _$distributionSubTypeEnum_CINEMA;
  @BuiltValueEnumConst(wireName: r'DVD')
  static const DistributionSubTypeEnum DVD = _$distributionSubTypeEnum_DVD;
  @BuiltValueEnumConst(wireName: r'DIGITAL')
  static const DistributionSubTypeEnum DIGITAL =
      _$distributionSubTypeEnum_DIGITAL;
  @BuiltValueEnumConst(wireName: r'BLURAY')
  static const DistributionSubTypeEnum BLURAY =
      _$distributionSubTypeEnum_BLURAY;

  static Serializer<DistributionSubTypeEnum> get serializer =>
      _$distributionSubTypeEnumSerializer;

  const DistributionSubTypeEnum._(String name) : super(name);

  static BuiltSet<DistributionSubTypeEnum> get values =>
      _$distributionSubTypeEnumValues;
  static DistributionSubTypeEnum valueOf(String name) =>
      _$distributionSubTypeEnumValueOf(name);
}
