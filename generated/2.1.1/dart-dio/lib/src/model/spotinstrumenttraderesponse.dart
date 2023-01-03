//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/spotinstrumenttrade.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumenttraderesponse.g.dart';

/// SPOTINSTRUMENTTRADERESPONSE
///
/// Properties:
/// * [data] 
/// * [err] 
@BuiltValue()
abstract class SPOTINSTRUMENTTRADERESPONSE implements Built<SPOTINSTRUMENTTRADERESPONSE, SPOTINSTRUMENTTRADERESPONSEBuilder> {
  @BuiltValueField(wireName: r'Data')
  BuiltList<SPOTINSTRUMENTTRADE>? get data;

  @BuiltValueField(wireName: r'Err')
  JsonObject? get err;

  SPOTINSTRUMENTTRADERESPONSE._();

  factory SPOTINSTRUMENTTRADERESPONSE([void updates(SPOTINSTRUMENTTRADERESPONSEBuilder b)]) = _$SPOTINSTRUMENTTRADERESPONSE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTTRADERESPONSEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTTRADERESPONSE> get serializer => _$SPOTINSTRUMENTTRADERESPONSESerializer();
}

class _$SPOTINSTRUMENTTRADERESPONSESerializer implements PrimitiveSerializer<SPOTINSTRUMENTTRADERESPONSE> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTTRADERESPONSE, _$SPOTINSTRUMENTTRADERESPONSE];

  @override
  final String wireName = r'SPOTINSTRUMENTTRADERESPONSE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTTRADERESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(SPOTINSTRUMENTTRADE)]),
      );
    }
    if (object.err != null) {
      yield r'Err';
      yield serializers.serialize(
        object.err,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTTRADERESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTTRADERESPONSEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPOTINSTRUMENTTRADE)]),
          ) as BuiltList<SPOTINSTRUMENTTRADE>;
          result.data.replace(valueDes);
          break;
        case r'Err':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.err = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTTRADERESPONSE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTTRADERESPONSEBuilder();
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

