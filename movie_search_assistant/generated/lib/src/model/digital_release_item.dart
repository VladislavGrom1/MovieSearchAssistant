//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/country.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digital_release_item.g.dart';

/// DigitalReleaseItem
///
/// Properties:
/// * [filmId]
/// * [nameRu]
/// * [nameEn]
/// * [year]
/// * [posterUrl]
/// * [posterUrlPreview]
/// * [countries]
/// * [genres]
/// * [rating]
/// * [ratingVoteCount]
/// * [expectationsRating]
/// * [expectationsRatingVoteCount]
/// * [duration]
/// * [releaseDate]
@BuiltValue()
abstract class DigitalReleaseItem
    implements Built<DigitalReleaseItem, DigitalReleaseItemBuilder> {
  @BuiltValueField(wireName: r'filmId')
  int get filmId;

  @BuiltValueField(wireName: r'nameRu')
  String get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String get nameEn;

  @BuiltValueField(wireName: r'year')
  int get year;

  @BuiltValueField(wireName: r'posterUrl')
  String get posterUrl;

  @BuiltValueField(wireName: r'posterUrlPreview')
  String get posterUrlPreview;

  @BuiltValueField(wireName: r'countries')
  BuiltList<Country> get countries;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre> get genres;

  @BuiltValueField(wireName: r'rating')
  num get rating;

  @BuiltValueField(wireName: r'ratingVoteCount')
  int get ratingVoteCount;

  @BuiltValueField(wireName: r'expectationsRating')
  num get expectationsRating;

  @BuiltValueField(wireName: r'expectationsRatingVoteCount')
  int get expectationsRatingVoteCount;

  @BuiltValueField(wireName: r'duration')
  int get duration;

  @BuiltValueField(wireName: r'releaseDate')
  String get releaseDate;

  DigitalReleaseItem._();

  factory DigitalReleaseItem([void updates(DigitalReleaseItemBuilder b)]) =
      _$DigitalReleaseItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigitalReleaseItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigitalReleaseItem> get serializer =>
      _$DigitalReleaseItemSerializer();
}

class _$DigitalReleaseItemSerializer
    implements PrimitiveSerializer<DigitalReleaseItem> {
  @override
  final Iterable<Type> types = const [DigitalReleaseItem, _$DigitalReleaseItem];

  @override
  final String wireName = r'DigitalReleaseItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigitalReleaseItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filmId';
    yield serializers.serialize(
      object.filmId,
      specifiedType: const FullType(int),
    );
    yield r'nameRu';
    yield serializers.serialize(
      object.nameRu,
      specifiedType: const FullType(String),
    );
    yield r'nameEn';
    yield serializers.serialize(
      object.nameEn,
      specifiedType: const FullType(String),
    );
    yield r'year';
    yield serializers.serialize(
      object.year,
      specifiedType: const FullType(int),
    );
    yield r'posterUrl';
    yield serializers.serialize(
      object.posterUrl,
      specifiedType: const FullType(String),
    );
    yield r'posterUrlPreview';
    yield serializers.serialize(
      object.posterUrlPreview,
      specifiedType: const FullType(String),
    );
    yield r'countries';
    yield serializers.serialize(
      object.countries,
      specifiedType: const FullType(BuiltList, [FullType(Country)]),
    );
    yield r'genres';
    yield serializers.serialize(
      object.genres,
      specifiedType: const FullType(BuiltList, [FullType(Genre)]),
    );
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(num),
    );
    yield r'ratingVoteCount';
    yield serializers.serialize(
      object.ratingVoteCount,
      specifiedType: const FullType(int),
    );
    yield r'expectationsRating';
    yield serializers.serialize(
      object.expectationsRating,
      specifiedType: const FullType(num),
    );
    yield r'expectationsRatingVoteCount';
    yield serializers.serialize(
      object.expectationsRatingVoteCount,
      specifiedType: const FullType(int),
    );
    yield r'duration';
    yield serializers.serialize(
      object.duration,
      specifiedType: const FullType(int),
    );
    yield r'releaseDate';
    yield serializers.serialize(
      object.releaseDate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DigitalReleaseItem object, {
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
    required DigitalReleaseItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filmId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.filmId = valueDes;
          break;
        case r'nameRu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameRu = valueDes;
          break;
        case r'nameEn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameEn = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'posterUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrl = valueDes;
          break;
        case r'posterUrlPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.posterUrlPreview = valueDes;
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Country)]),
          ) as BuiltList<Country>;
          result.countries.replace(valueDes);
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Genre)]),
          ) as BuiltList<Genre>;
          result.genres.replace(valueDes);
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rating = valueDes;
          break;
        case r'ratingVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ratingVoteCount = valueDes;
          break;
        case r'expectationsRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectationsRating = valueDes;
          break;
        case r'expectationsRatingVoteCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expectationsRatingVoteCount = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'releaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.releaseDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigitalReleaseItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigitalReleaseItemBuilder();
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
