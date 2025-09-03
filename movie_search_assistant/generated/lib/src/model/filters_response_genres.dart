//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filters_response_genres.g.dart';

/// FiltersResponseGenres
///
/// Properties:
/// * [id]
/// * [genre]
@BuiltValue()
abstract class FiltersResponseGenres
    implements Built<FiltersResponseGenres, FiltersResponseGenresBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'genre')
  String? get genre;

  FiltersResponseGenres._();

  factory FiltersResponseGenres(
      [void updates(FiltersResponseGenresBuilder b)]) = _$FiltersResponseGenres;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FiltersResponseGenresBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FiltersResponseGenres> get serializer =>
      _$FiltersResponseGenresSerializer();
}

class _$FiltersResponseGenresSerializer
    implements PrimitiveSerializer<FiltersResponseGenres> {
  @override
  final Iterable<Type> types = const [
    FiltersResponseGenres,
    _$FiltersResponseGenres
  ];

  @override
  final String wireName = r'FiltersResponseGenres';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FiltersResponseGenres object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.genre != null) {
      yield r'genre';
      yield serializers.serialize(
        object.genre,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FiltersResponseGenres object, {
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
    required FiltersResponseGenresBuilder result,
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
        case r'genre':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.genre = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FiltersResponseGenres deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FiltersResponseGenresBuilder();
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
