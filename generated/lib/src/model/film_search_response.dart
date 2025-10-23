//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/film_search_response_films.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'film_search_response.g.dart';

/// FilmSearchResponse
///
/// Properties:
/// * [keyword]
/// * [pagesCount]
/// * [searchFilmsCountResult]
/// * [films]
@BuiltValue()
abstract class FilmSearchResponse
    implements Built<FilmSearchResponse, FilmSearchResponseBuilder> {
  @BuiltValueField(wireName: r'keyword')
  String get keyword;

  @BuiltValueField(wireName: r'pagesCount')
  int get pagesCount;

  @BuiltValueField(wireName: r'searchFilmsCountResult')
  int get searchFilmsCountResult;

  @BuiltValueField(wireName: r'films')
  BuiltList<FilmSearchResponseFilms> get films;

  FilmSearchResponse._();

  factory FilmSearchResponse([void updates(FilmSearchResponseBuilder b)]) =
      _$FilmSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilmSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilmSearchResponse> get serializer =>
      _$FilmSearchResponseSerializer();
}

class _$FilmSearchResponseSerializer
    implements PrimitiveSerializer<FilmSearchResponse> {
  @override
  final Iterable<Type> types = const [FilmSearchResponse, _$FilmSearchResponse];

  @override
  final String wireName = r'FilmSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilmSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keyword';
    yield serializers.serialize(
      object.keyword,
      specifiedType: const FullType(String),
    );
    yield r'pagesCount';
    yield serializers.serialize(
      object.pagesCount,
      specifiedType: const FullType(int),
    );
    yield r'searchFilmsCountResult';
    yield serializers.serialize(
      object.searchFilmsCountResult,
      specifiedType: const FullType(int),
    );
    yield r'films';
    yield serializers.serialize(
      object.films,
      specifiedType:
          const FullType(BuiltList, [FullType(FilmSearchResponseFilms)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilmSearchResponse object, {
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
    required FilmSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'pagesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pagesCount = valueDes;
          break;
        case r'searchFilmsCountResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.searchFilmsCountResult = valueDes;
          break;
        case r'films':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FilmSearchResponseFilms)]),
          ) as BuiltList<FilmSearchResponseFilms>;
          result.films.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilmSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilmSearchResponseBuilder();
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
