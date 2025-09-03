//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_response_items.g.dart';

/// ImageResponseItems
///
/// Properties:
/// * [imageUrl]
/// * [previewUrl]
@BuiltValue()
abstract class ImageResponseItems
    implements Built<ImageResponseItems, ImageResponseItemsBuilder> {
  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'previewUrl')
  String? get previewUrl;

  ImageResponseItems._();

  factory ImageResponseItems([void updates(ImageResponseItemsBuilder b)]) =
      _$ImageResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageResponseItems> get serializer =>
      _$ImageResponseItemsSerializer();
}

class _$ImageResponseItemsSerializer
    implements PrimitiveSerializer<ImageResponseItems> {
  @override
  final Iterable<Type> types = const [ImageResponseItems, _$ImageResponseItems];

  @override
  final String wireName = r'ImageResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.previewUrl != null) {
      yield r'previewUrl';
      yield serializers.serialize(
        object.previewUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageResponseItems object, {
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
    required ImageResponseItemsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'previewUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.previewUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImageResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageResponseItemsBuilder();
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
