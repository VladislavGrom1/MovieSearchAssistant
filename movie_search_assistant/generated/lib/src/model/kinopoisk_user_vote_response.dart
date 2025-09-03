//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/kinopoisk_user_vote_response_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kinopoisk_user_vote_response.g.dart';

/// KinopoiskUserVoteResponse
///
/// Properties:
/// * [total]
/// * [totalPages]
/// * [items]
@BuiltValue()
abstract class KinopoiskUserVoteResponse
    implements
        Built<KinopoiskUserVoteResponse, KinopoiskUserVoteResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'totalPages')
  int get totalPages;

  @BuiltValueField(wireName: r'items')
  BuiltList<KinopoiskUserVoteResponseItems> get items;

  KinopoiskUserVoteResponse._();

  factory KinopoiskUserVoteResponse(
          [void updates(KinopoiskUserVoteResponseBuilder b)]) =
      _$KinopoiskUserVoteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KinopoiskUserVoteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KinopoiskUserVoteResponse> get serializer =>
      _$KinopoiskUserVoteResponseSerializer();
}

class _$KinopoiskUserVoteResponseSerializer
    implements PrimitiveSerializer<KinopoiskUserVoteResponse> {
  @override
  final Iterable<Type> types = const [
    KinopoiskUserVoteResponse,
    _$KinopoiskUserVoteResponse
  ];

  @override
  final String wireName = r'KinopoiskUserVoteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KinopoiskUserVoteResponse object, {
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
          const FullType(BuiltList, [FullType(KinopoiskUserVoteResponseItems)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KinopoiskUserVoteResponse object, {
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
    required KinopoiskUserVoteResponseBuilder result,
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
                BuiltList, [FullType(KinopoiskUserVoteResponseItems)]),
          ) as BuiltList<KinopoiskUserVoteResponseItems>;
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
  KinopoiskUserVoteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KinopoiskUserVoteResponseBuilder();
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
