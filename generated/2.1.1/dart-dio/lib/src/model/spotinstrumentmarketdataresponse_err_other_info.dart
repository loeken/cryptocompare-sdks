//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmarketdataresponse_err_other_info.g.dart';

/// SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
///
/// Properties:
/// * [param] - The parameter that is resposible for the error
/// * [values] - The values resposible for the error
@BuiltValue()
abstract class SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo implements Built<SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo, SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoBuilder> {
  /// The parameter that is resposible for the error
  @BuiltValueField(wireName: r'param')
  String? get param;

  /// The values resposible for the error
  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo._();

  factory SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo([void updates(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoBuilder b)]) = _$SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo> get serializer => _$SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoSerializer();
}

class _$SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoSerializer implements PrimitiveSerializer<SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo, _$SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo];

  @override
  final String wireName = r'SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.param != null) {
      yield r'param';
      yield serializers.serialize(
        object.param,
        specifiedType: const FullType(String),
      );
    }
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'param':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.param = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoBuilder();
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

