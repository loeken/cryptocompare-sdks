//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/spotinstrumenthistodata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumenthistodataresponse.g.dart';

/// SPOTINSTRUMENTHISTODATARESPONSE
///
/// Properties:
/// * [data] 
/// * [err] 
@BuiltValue()
abstract class SPOTINSTRUMENTHISTODATARESPONSE implements Built<SPOTINSTRUMENTHISTODATARESPONSE, SPOTINSTRUMENTHISTODATARESPONSEBuilder> {
  @BuiltValueField(wireName: r'Data')
  BuiltList<SPOTINSTRUMENTHISTODATA>? get data;

  @BuiltValueField(wireName: r'Err')
  JsonObject? get err;

  SPOTINSTRUMENTHISTODATARESPONSE._();

  factory SPOTINSTRUMENTHISTODATARESPONSE([void updates(SPOTINSTRUMENTHISTODATARESPONSEBuilder b)]) = _$SPOTINSTRUMENTHISTODATARESPONSE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTHISTODATARESPONSEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTHISTODATARESPONSE> get serializer => _$SPOTINSTRUMENTHISTODATARESPONSESerializer();
}

class _$SPOTINSTRUMENTHISTODATARESPONSESerializer implements PrimitiveSerializer<SPOTINSTRUMENTHISTODATARESPONSE> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTHISTODATARESPONSE, _$SPOTINSTRUMENTHISTODATARESPONSE];

  @override
  final String wireName = r'SPOTINSTRUMENTHISTODATARESPONSE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTHISTODATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(SPOTINSTRUMENTHISTODATA)]),
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
    SPOTINSTRUMENTHISTODATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTHISTODATARESPONSEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPOTINSTRUMENTHISTODATA)]),
          ) as BuiltList<SPOTINSTRUMENTHISTODATA>;
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
  SPOTINSTRUMENTHISTODATARESPONSE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTHISTODATARESPONSEBuilder();
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

