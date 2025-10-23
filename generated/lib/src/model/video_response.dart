//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/video_response_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'video_response.g.dart';

/// VideoResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class VideoResponse
    implements Built<VideoResponse, VideoResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<VideoResponseItems> get items;

  VideoResponse._();

  factory VideoResponse([void updates(VideoResponseBuilder b)]) =
      _$VideoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VideoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VideoResponse> get serializer =>
      _$VideoResponseSerializer();
}

class _$VideoResponseSerializer implements PrimitiveSerializer<VideoResponse> {
  @override
  final Iterable<Type> types = const [VideoResponse, _$VideoResponse];

  @override
  final String wireName = r'VideoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VideoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(VideoResponseItems)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VideoResponse object, {
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
    required VideoResponseBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(VideoResponseItems)]),
          ) as BuiltList<VideoResponseItems>;
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
  VideoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VideoResponseBuilder();
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
