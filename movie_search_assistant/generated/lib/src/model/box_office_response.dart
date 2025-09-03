//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/box_office.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'box_office_response.g.dart';

/// BoxOfficeResponse
///
/// Properties:
/// * [total]
/// * [items]
@BuiltValue()
abstract class BoxOfficeResponse
    implements Built<BoxOfficeResponse, BoxOfficeResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<BoxOffice> get items;

  BoxOfficeResponse._();

  factory BoxOfficeResponse([void updates(BoxOfficeResponseBuilder b)]) =
      _$BoxOfficeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BoxOfficeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BoxOfficeResponse> get serializer =>
      _$BoxOfficeResponseSerializer();
}

class _$BoxOfficeResponseSerializer
    implements PrimitiveSerializer<BoxOfficeResponse> {
  @override
  final Iterable<Type> types = const [BoxOfficeResponse, _$BoxOfficeResponse];

  @override
  final String wireName = r'BoxOfficeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BoxOfficeResponse object, {
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
      specifiedType: const FullType(BuiltList, [FullType(BoxOffice)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BoxOfficeResponse object, {
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
    required BoxOfficeResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(BoxOffice)]),
          ) as BuiltList<BoxOffice>;
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
  BoxOfficeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BoxOfficeResponseBuilder();
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
