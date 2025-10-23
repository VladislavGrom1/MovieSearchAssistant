//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filters_response_countries.g.dart';

/// FiltersResponseCountries
///
/// Properties:
/// * [id]
/// * [country]
@BuiltValue()
abstract class FiltersResponseCountries
    implements
        Built<FiltersResponseCountries, FiltersResponseCountriesBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'country')
  String? get country;

  FiltersResponseCountries._();

  factory FiltersResponseCountries(
          [void updates(FiltersResponseCountriesBuilder b)]) =
      _$FiltersResponseCountries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FiltersResponseCountriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FiltersResponseCountries> get serializer =>
      _$FiltersResponseCountriesSerializer();
}

class _$FiltersResponseCountriesSerializer
    implements PrimitiveSerializer<FiltersResponseCountries> {
  @override
  final Iterable<Type> types = const [
    FiltersResponseCountries,
    _$FiltersResponseCountries
  ];

  @override
  final String wireName = r'FiltersResponseCountries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FiltersResponseCountries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FiltersResponseCountries object, {
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
    required FiltersResponseCountriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
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
  FiltersResponseCountries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FiltersResponseCountriesBuilder();
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
