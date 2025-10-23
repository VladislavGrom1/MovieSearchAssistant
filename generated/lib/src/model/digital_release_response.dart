//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:generated/src/model/digital_release_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digital_release_response.g.dart';

/// DigitalReleaseResponse
///
/// Properties:
/// * [page]
/// * [total]
/// * [releases]
@BuiltValue()
abstract class DigitalReleaseResponse
    implements Built<DigitalReleaseResponse, DigitalReleaseResponseBuilder> {
  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'releases')
  BuiltList<DigitalReleaseItem> get releases;

  DigitalReleaseResponse._();

  factory DigitalReleaseResponse(
          [void updates(DigitalReleaseResponseBuilder b)]) =
      _$DigitalReleaseResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigitalReleaseResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigitalReleaseResponse> get serializer =>
      _$DigitalReleaseResponseSerializer();
}

class _$DigitalReleaseResponseSerializer
    implements PrimitiveSerializer<DigitalReleaseResponse> {
  @override
  final Iterable<Type> types = const [
    DigitalReleaseResponse,
    _$DigitalReleaseResponse
  ];

  @override
  final String wireName = r'DigitalReleaseResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigitalReleaseResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'releases';
    yield serializers.serialize(
      object.releases,
      specifiedType: const FullType(BuiltList, [FullType(DigitalReleaseItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DigitalReleaseResponse object, {
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
    required DigitalReleaseResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'releases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(DigitalReleaseItem)]),
          ) as BuiltList<DigitalReleaseItem>;
          result.releases.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigitalReleaseResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigitalReleaseResponseBuilder();
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
