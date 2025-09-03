//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'genre.g.dart';

/// Genre
///
/// Properties:
/// * [genre]
@BuiltValue()
abstract class Genre implements Built<Genre, GenreBuilder> {
  @BuiltValueField(wireName: r'genre')
  String get genre;

  Genre._();

  factory Genre([void updates(GenreBuilder b)]) = _$Genre;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GenreBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Genre> get serializer => _$GenreSerializer();
}

class _$GenreSerializer implements PrimitiveSerializer<Genre> {
  @override
  final Iterable<Type> types = const [Genre, _$Genre];

  @override
  final String wireName = r'Genre';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Genre object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'genre';
    yield serializers.serialize(
      object.genre,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Genre object, {
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
    required GenreBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  Genre deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenreBuilder();
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
