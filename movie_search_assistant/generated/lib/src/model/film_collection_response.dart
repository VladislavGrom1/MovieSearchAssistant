//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/film_collection_response_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_collection_response.g.dart';

/// FilmCollectionResponse
///
/// Properties:
/// * [total]
/// * [totalPages]
/// * [items]
@BuiltValue()
abstract class FilmCollectionResponse
    implements Built<FilmCollectionResponse, FilmCollectionResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'totalPages')
  int get totalPages;

  @BuiltValueField(wireName: r'items')
  BuiltList<FilmCollectionResponseItems> get items;

  FilmCollectionResponse._();

  factory FilmCollectionResponse(
          [void updates(FilmCollectionResponseBuilder b)]) =
      _$FilmCollectionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmCollectionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmCollectionResponse> get serializer =>
      _$FilmCollectionResponseSerializer();
}

class _$FilmCollectionResponseSerializer
    implements PrimitiveSerializer<FilmCollectionResponse> {
  @override
  final Iterable<Type> types = const [
    FilmCollectionResponse,
    _$FilmCollectionResponse
  ];

  @override
  final String wireName = r'FilmCollectionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmCollectionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'totalPages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(FilmCollectionResponseItems)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilmCollectionResponse object, {
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
    required FilmCollectionResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(FilmCollectionResponseItems)]),
          ) as BuiltList<FilmCollectionResponseItems>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilmCollectionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmCollectionResponseBuilder();
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
