//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_response_items.g.dart';

/// ExternalSourceResponseItems
///
/// Properties:
/// * [url]
/// * [platform]
/// * [logoUrl]
/// * [positiveRating]
/// * [negativeRating]
/// * [author]
/// * [title]
/// * [description]
@BuiltValue()
abstract class ExternalSourceResponseItems
    implements
        Built<ExternalSourceResponseItems, ExternalSourceResponseItemsBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'platform')
  String? get platform;

  @BuiltValueField(wireName: r'logoUrl')
  String? get logoUrl;

  @BuiltValueField(wireName: r'positiveRating')
  int? get positiveRating;

  @BuiltValueField(wireName: r'negativeRating')
  int? get negativeRating;

  @BuiltValueField(wireName: r'author')
  String? get author;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  ExternalSourceResponseItems._();

  factory ExternalSourceResponseItems(
          [void updates(ExternalSourceResponseItemsBuilder b)]) =
      _$ExternalSourceResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourceResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourceResponseItems> get serializer =>
      _$ExternalSourceResponseItemsSerializer();
}

class _$ExternalSourceResponseItemsSerializer
    implements PrimitiveSerializer<ExternalSourceResponseItems> {
  @override
  final Iterable<Type> types = const [
    ExternalSourceResponseItems,
    _$ExternalSourceResponseItems
  ];

  @override
  final String wireName = r'ExternalSourceResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourceResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(String),
      );
    }
    if (object.logoUrl != null) {
      yield r'logoUrl';
      yield serializers.serialize(
        object.logoUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.positiveRating != null) {
      yield r'positiveRating';
      yield serializers.serialize(
        object.positiveRating,
        specifiedType: const FullType(int),
      );
    }
    if (object.negativeRating != null) {
      yield r'negativeRating';
      yield serializers.serialize(
        object.negativeRating,
        specifiedType: const FullType(int),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourceResponseItems object, {
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
    required ExternalSourceResponseItemsBuilder result,
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
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'logoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logoUrl = valueDes;
          break;
        case r'positiveRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.positiveRating = valueDes;
          break;
        case r'negativeRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.negativeRating = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.author = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSourceResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourceResponseItemsBuilder();
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
