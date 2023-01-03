//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/genericresponse_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'genericresponse.g.dart';

/// GENERICRESPONSE
///
/// Properties:
/// * [data] 
/// * [err] 
@BuiltValue()
abstract class GENERICRESPONSE implements Built<GENERICRESPONSE, GENERICRESPONSEBuilder> {
  @BuiltValueField(wireName: r'Data')
  GENERICRESPONSEData? get data;

  @BuiltValueField(wireName: r'Err')
  JsonObject? get err;

  GENERICRESPONSE._();

  factory GENERICRESPONSE([void updates(GENERICRESPONSEBuilder b)]) = _$GENERICRESPONSE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GENERICRESPONSEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GENERICRESPONSE> get serializer => _$GENERICRESPONSESerializer();
}

class _$GENERICRESPONSESerializer implements PrimitiveSerializer<GENERICRESPONSE> {
  @override
  final Iterable<Type> types = const [GENERICRESPONSE, _$GENERICRESPONSE];

  @override
  final String wireName = r'GENERICRESPONSE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GENERICRESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'Data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(GENERICRESPONSEData),
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
    GENERICRESPONSE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GENERICRESPONSEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GENERICRESPONSEData),
          ) as GENERICRESPONSEData;
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
  GENERICRESPONSE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GENERICRESPONSEBuilder();
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

