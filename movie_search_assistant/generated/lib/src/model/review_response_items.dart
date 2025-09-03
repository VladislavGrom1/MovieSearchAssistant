//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_response_items.g.dart';

/// ReviewResponseItems
///
/// Properties:
/// * [kinopoiskId]
/// * [type]
/// * [date]
/// * [positiveRating]
/// * [negativeRating]
/// * [author]
/// * [title]
/// * [description]
@BuiltValue()
abstract class ReviewResponseItems
    implements Built<ReviewResponseItems, ReviewResponseItemsBuilder> {
  @BuiltValueField(wireName: r'kinopoiskId')
  int? get kinopoiskId;

  @BuiltValueField(wireName: r'type')
  ReviewResponseItemsTypeEnum? get type;
  // enum typeEnum {  POSITIVE,  NEGATIVE,  NEUTRAL,  UNKNOWN,  };

  @BuiltValueField(wireName: r'date')
  String? get date;

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

  ReviewResponseItems._();

  factory ReviewResponseItems([void updates(ReviewResponseItemsBuilder b)]) =
      _$ReviewResponseItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewResponseItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewResponseItems> get serializer =>
      _$ReviewResponseItemsSerializer();
}

class _$ReviewResponseItemsSerializer
    implements PrimitiveSerializer<ReviewResponseItems> {
  @override
  final Iterable<Type> types = const [
    ReviewResponseItems,
    _$ReviewResponseItems
  ];

  @override
  final String wireName = r'ReviewResponseItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewResponseItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinopoiskId != null) {
      yield r'kinopoiskId';
      yield serializers.serialize(
        object.kinopoiskId,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ReviewResponseItemsTypeEnum),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
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
    ReviewResponseItems object, {
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
    required ReviewResponseItemsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinopoiskId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kinopoiskId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewResponseItemsTypeEnum),
          ) as ReviewResponseItemsTypeEnum;
          result.type = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
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
  ReviewResponseItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewResponseItemsBuilder();
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

class ReviewResponseItemsTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'POSITIVE')
  static const ReviewResponseItemsTypeEnum POSITIVE =
      _$reviewResponseItemsTypeEnum_POSITIVE;
  @BuiltValueEnumConst(wireName: r'NEGATIVE')
  static const ReviewResponseItemsTypeEnum NEGATIVE =
      _$reviewResponseItemsTypeEnum_NEGATIVE;
  @BuiltValueEnumConst(wireName: r'NEUTRAL')
  static const ReviewResponseItemsTypeEnum NEUTRAL =
      _$reviewResponseItemsTypeEnum_NEUTRAL;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const ReviewResponseItemsTypeEnum UNKNOWN =
      _$reviewResponseItemsTypeEnum_UNKNOWN;

  static Serializer<ReviewResponseItemsTypeEnum> get serializer =>
      _$reviewResponseItemsTypeEnumSerializer;

  const ReviewResponseItemsTypeEnum._(String name) : super(name);

  static BuiltSet<ReviewResponseItemsTypeEnum> get values =>
      _$reviewResponseItemsTypeEnumValues;
  static ReviewResponseItemsTypeEnum valueOf(String name) =>
      _$reviewResponseItemsTypeEnumValueOf(name);
}
