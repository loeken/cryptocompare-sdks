//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/spotinstrumentmetadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/spotinstrumentmarketdataresponse_err.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmetadataresponse.g.dart';

/// SPOTINSTRUMENTMETADATARESPONSE
///
/// Properties:
/// * [data] 
/// * [err] 
@BuiltValue()
abstract class SPOTINSTRUMENTMETADATARESPONSE implements Built<SPOTINSTRUMENTMETADATARESPONSE, SPOTINSTRUMENTMETADATARESPONSEBuilder> {
  @BuiltValueField(wireName: r'Data')
  BuiltMap<String, SPOTINSTRUMENTMETADATA>? get data;

  @BuiltValueField(wireName: r'Err')
  SPOTINSTRUMENTMARKETDATARESPONSEErr? get err;

  SPOTINSTRUMENTMETADATARESPONSE._();

  factory SPOTINSTRUMENTMETADATARESPONSE([void updates(SPOTINSTRUMENTMETADATARESPONSEBuilder b)]) = _$SPOTINSTRUMENTMETADATARESPONSE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMETADATARESPONSEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMETADATARESPONSE> get serializer => _$SPOTINSTRUMENTMETADATARESPONSESerializer();
}

class _$SPOTINSTRUMENTMETADATARESPONSESerializer implements PrimitiveSerializer<SPOTINSTRUMENTMETADATARESPONSE> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMETADATARESPONSE, _$SPOTINSTRUMENTMETADATARESPONSE];

  @override
  final String wireName = r'SPOTINSTRUMENTMETADATARESPONSE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMETADATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(SPOTINSTRUMENTMETADATA)]),
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
    SPOTINSTRUMENTMETADATARESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMETADATARESPONSEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(SPOTINSTRUMENTMETADATA)]),
          ) as BuiltMap<String, SPOTINSTRUMENTMETADATA>;
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
  SPOTINSTRUMENTMETADATARESPONSE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMETADATARESPONSEBuilder();
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

