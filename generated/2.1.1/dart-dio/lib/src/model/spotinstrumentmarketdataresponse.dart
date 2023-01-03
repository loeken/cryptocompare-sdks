//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/spotinstrumentmarketdataresponse_err.dart';
import 'package:openapi/src/model/spotinstrumentmarketdata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmarketdataresponse.g.dart';

/// SPOTINSTRUMENTMARKETDATARESPONSE
///
/// Properties:
/// * [data] 
/// * [err] 
@BuiltValue()
abstract class SPOTINSTRUMENTMARKETDATARESPONSE implements Built<SPOTINSTRUMENTMARKETDATARESPONSE, SPOTINSTRUMENTMARKETDATARESPONSEBuilder> {
  @BuiltValueField(wireName: r'Data')
  BuiltMap<String, SPOTINSTRUMENTMARKETDATA>? get data;

  @BuiltValueField(wireName: r'Err')
  SPOTINSTRUMENTMARKETDATARESPONSEErr? get err;

  SPOTINSTRUMENTMARKETDATARESPONSE._();

  factory SPOTINSTRUMENTMARKETDATARESPONSE([void updates(SPOTINSTRUMENTMARKETDATARESPONSEBuilder b)]) = _$SPOTINSTRUMENTMARKETDATARESPONSE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMARKETDATARESPONSEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMARKETDATARESPONSE> get serializer => _$SPOTINSTRUMENTMARKETDATARESPONSESerializer();
}

class _$SPOTINSTRUMENTMARKETDATARESPONSESerializer implements PrimitiveSerializer<SPOTINSTRUMENTMARKETDATARESPONSE> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMARKETDATARESPONSE, _$SPOTINSTRUMENTMARKETDATARESPONSE];

  @override
  final String wireName = r'SPOTINSTRUMENTMARKETDATARESPONSE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(SPOTINSTRUMENTMARKETDATA)]),
      );
    }
    if (object.err != null) {
      yield r'Err';
      yield serializers.serialize(
        object.err,
        specifiedType: const FullType(SPOTINSTRUMENTMARKETDATARESPONSEErr),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMARKETDATARESPONSEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(SPOTINSTRUMENTMARKETDATA)]),
          ) as BuiltMap<String, SPOTINSTRUMENTMARKETDATA>;
          result.data.replace(valueDes);
          break;
        case r'Err':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SPOTINSTRUMENTMARKETDATARESPONSEErr),
          ) as SPOTINSTRUMENTMARKETDATARESPONSEErr;
          result.err.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTMARKETDATARESPONSE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMARKETDATARESPONSEBuilder();
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

