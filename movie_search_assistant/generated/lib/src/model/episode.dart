//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode.g.dart';

/// Episode
///
/// Properties:
/// * [seasonNumber]
/// * [episodeNumber]
/// * [nameRu]
/// * [nameEn]
/// * [synopsis]
/// * [releaseDate]
@BuiltValue()
abstract class Episode implements Built<Episode, EpisodeBuilder> {
  @BuiltValueField(wireName: r'seasonNumber')
  int get seasonNumber;

  @BuiltValueField(wireName: r'episodeNumber')
  int get episodeNumber;

  @BuiltValueField(wireName: r'nameRu')
  String? get nameRu;

  @BuiltValueField(wireName: r'nameEn')
  String? get nameEn;

  @BuiltValueField(wireName: r'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: r'releaseDate')
  String? get releaseDate;

  Episode._();

  factory Episode([void updates(EpisodeBuilder b)]) = _$Episode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EpisodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Episode> get serializer => _$EpisodeSerializer();
}

class _$EpisodeSerializer implements PrimitiveSerializer<Episode> {
  @override
  final Iterable<Type> types = const [Episode, _$Episode];

  @override
  final String wireName = r'Episode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Episode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seasonNumber';
    yield serializers.serialize(
      object.seasonNumber,
      specifiedType: const FullType(int),
    );
    yield r'episodeNumber';
    yield serializers.serialize(
      object.episodeNumber,
      specifiedType: const FullType(int),
    );
    yield r'nameRu';
    yield object.nameRu == null
        ? null
        : serializers.serialize(
            object.nameRu,
            specifiedType: const FullType.nullable(String),
          );
    yield r'nameEn';
    yield object.nameEn == null
        ? null
        : serializers.serialize(
            object.nameEn,
            specifiedType: const FullType.nullable(String),
          );
    yield r'synopsis';
    yield object.synopsis == null
        ? null
        : serializers.serialize(
            object.synopsis,
            specifiedType: const FullType.nullable(String),
          );
    yield r'releaseDate';
    yield object.releaseDate == null
        ? null
        : serializers.serialize(
            object.releaseDate,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    Episode object, {
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
    required EpisodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'episodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeNumber = valueDes;
          break;
        case r'nameRu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameRu = valueDes;
          break;
        case r'nameEn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameEn = valueDes;
          break;
        case r'synopsis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.synopsis = valueDes;
          break;
        case r'releaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  Episode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EpisodeBuilder();
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
