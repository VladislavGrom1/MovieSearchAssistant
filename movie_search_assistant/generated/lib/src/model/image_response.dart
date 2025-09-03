//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/image_response_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_response.g.dart';

/// ImageResponse
///
/// Properties:
/// * [total] - Общее кол-во изображений
/// * [totalPages] - Код-во доступных страниц
/// * [items]
@BuiltValue()
abstract class ImageResponse
    implements Built<ImageResponse, ImageResponseBuilder> {
  /// Общее кол-во изображений
  @BuiltValueField(wireName: r'total')
  int get total;

  /// Код-во доступных страниц
  @BuiltValueField(wireName: r'totalPages')
  int get totalPages;

  @BuiltValueField(wireName: r'items')
  BuiltList<ImageResponseItems> get items;

  ImageResponse._();

  factory ImageResponse([void updates(ImageResponseBuilder b)]) =
      _$ImageResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageResponse> get serializer =>
      _$ImageResponseSerializer();
}

class _$ImageResponseSerializer implements PrimitiveSerializer<ImageResponse> {
  @override
  final Iterable<Type> types = const [ImageResponse, _$ImageResponse];

  @override
  final String wireName = r'ImageResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(ImageResponseItems)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageResponse object, {
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
    required ImageResponseBuilder result,
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
            specifiedType:
                const FullType(BuiltList, [FullType(ImageResponseItems)]),
          ) as BuiltList<ImageResponseItems>;
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
  ImageResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageResponseBuilder();
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
