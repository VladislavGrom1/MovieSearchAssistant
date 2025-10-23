//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/filters_response_countries.dart';
import 'package:generated/src/model/filters_response_genres.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filters_response.g.dart';

/// FiltersResponse
///
/// Properties:
/// * [genres]
/// * [countries]
@BuiltValue()
abstract class FiltersResponse
    implements Built<FiltersResponse, FiltersResponseBuilder> {
  @BuiltValueField(wireName: r'genres')
  BuiltList<FiltersResponseGenres> get genres;

  @BuiltValueField(wireName: r'countries')
  BuiltList<FiltersResponseCountries> get countries;

  FiltersResponse._();

  factory FiltersResponse([void updates(FiltersResponseBuilder b)]) =
      _$FiltersResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FiltersResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FiltersResponse> get serializer =>
      _$FiltersResponseSerializer();
}

class _$FiltersResponseSerializer
    implements PrimitiveSerializer<FiltersResponse> {
  @override
  final Iterable<Type> types = const [FiltersResponse, _$FiltersResponse];

  @override
  final String wireName = r'FiltersResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FiltersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'genres';
    yield serializers.serialize(
      object.genres,
      specifiedType:
          const FullType(BuiltList, [FullType(FiltersResponseGenres)]),
    );
    yield r'countries';
    yield serializers.serialize(
      object.countries,
      specifiedType:
          const FullType(BuiltList, [FullType(FiltersResponseCountries)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FiltersResponse object, {
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
    required FiltersResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FiltersResponseGenres)]),
          ) as BuiltList<FiltersResponseGenres>;
          result.genres.replace(valueDes);
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FiltersResponseCountries)]),
          ) as BuiltList<FiltersResponseCountries>;
          result.countries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FiltersResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FiltersResponseBuilder();
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
