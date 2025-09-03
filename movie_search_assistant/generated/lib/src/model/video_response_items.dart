//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'video_response_items.g.dart';

/// VideoResponseItems
///
/// Properties:
/// * [url]
/// * [name]
/// * [site]
@BuiltValue()
abstract class VideoResponseItems
    implements Built<VideoResponseItems, VideoResponseItemsBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'site')
  VideoResponseItemsSiteEnum? get site;
  // enum siteEnum {  YOUTUBE,  KINOPOISK_WIDGET,  YANDEX_DISK,  UNKNOWN,  };

  VideoResponseItems._();

  factory VideoResponseItems([void updates(VideoResponseItemsBuilder b)]) =
      _$VideoResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VideoResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VideoResponseItems> get serializer =>
      _$VideoResponseItemsSerializer();
}

class _$VideoResponseItemsSerializer
    implements PrimitiveSerializer<VideoResponseItems> {
  @override
  final Iterable<Type> types = const [VideoResponseItems, _$VideoResponseItems];

  @override
  final String wireName = r'VideoResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VideoResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.site != null) {
      yield r'site';
      yield serializers.serialize(
        object.site,
        specifiedType: const FullType(VideoResponseItemsSiteEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VideoResponseItems object, {
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
    required VideoResponseItemsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'site':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VideoResponseItemsSiteEnum),
          ) as VideoResponseItemsSiteEnum;
          result.site = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VideoResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VideoResponseItemsBuilder();
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

class VideoResponseItemsSiteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'YOUTUBE')
  static const VideoResponseItemsSiteEnum YOUTUBE =
      _$videoResponseItemsSiteEnum_YOUTUBE;
  @BuiltValueEnumConst(wireName: r'KINOPOISK_WIDGET')
  static const VideoResponseItemsSiteEnum KINOPOISK_WIDGET =
      _$videoResponseItemsSiteEnum_KINOPOISK_WIDGET;
  @BuiltValueEnumConst(wireName: r'YANDEX_DISK')
  static const VideoResponseItemsSiteEnum YANDEX_DISK =
      _$videoResponseItemsSiteEnum_YANDEX_DISK;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const VideoResponseItemsSiteEnum UNKNOWN =
      _$videoResponseItemsSiteEnum_UNKNOWN;

  static Serializer<VideoResponseItemsSiteEnum> get serializer =>
      _$videoResponseItemsSiteEnumSerializer;

  const VideoResponseItemsSiteEnum._(String name) : super(name);

  static BuiltSet<VideoResponseItemsSiteEnum> get values =>
      _$videoResponseItemsSiteEnumValues;
  static VideoResponseItemsSiteEnum valueOf(String name) =>
      _$videoResponseItemsSiteEnumValueOf(name);
}
