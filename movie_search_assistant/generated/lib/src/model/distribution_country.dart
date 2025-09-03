//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'distribution_country.g.dart';

/// DistributionCountry
///
/// Properties:
/// * [country]
@BuiltValue()
abstract class DistributionCountry
    implements Country, Built<DistributionCountry, DistributionCountryBuilder> {
  DistributionCountry._();

  factory DistributionCountry([void updates(DistributionCountryBuilder b)]) =
      _$DistributionCountry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistributionCountryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DistributionCountry> get serializer =>
      _$DistributionCountrySerializer();
}

class _$DistributionCountrySerializer
    implements PrimitiveSerializer<DistributionCountry> {
  @override
  final Iterable<Type> types = const [
    DistributionCountry,
    _$DistributionCountry
  ];

  @override
  final String wireName = r'DistributionCountry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DistributionCountry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'country';
    yield serializers.serialize(
      object.country,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DistributionCountry object, {
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
    required DistributionCountryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DistributionCountry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistributionCountryBuilder();
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
