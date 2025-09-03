//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:generated/src/model/episode.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season.g.dart';

/// Season
///
/// Properties:
/// * [number]
/// * [episodes]
@BuiltValue()
abstract class Season implements Built<Season, SeasonBuilder> {
  @BuiltValueField(wireName: r'number')
  int get number;

  @BuiltValueField(wireName: r'episodes')
  BuiltList<Episode> get episodes;

  Season._();

  factory Season([void updates(SeasonBuilder b)]) = _$Season;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Season> get serializer => _$SeasonSerializer();
}

class _$SeasonSerializer implements PrimitiveSerializer<Season> {
  @override
  final Iterable<Type> types = const [Season, _$Season];

  @override
  final String wireName = r'Season';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Season object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(int),
    );
    yield r'episodes';
    yield serializers.serialize(
      object.episodes,
      specifiedType: const FullType(BuiltList, [FullType(Episode)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Season object, {
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
    required SeasonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        case r'episodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Episode)]),
          ) as BuiltList<Episode>;
          result.episodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Season deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonBuilder();
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
