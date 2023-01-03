//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/spotinstrumentmarketdataresponse_err_other_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmarketdataresponse_err.g.dart';

/// SPOTINSTRUMENTMARKETDATARESPONSEErr
///
/// Properties:
/// * [message] - A message describing the error
/// * [otherInfo] 
/// * [type] - A public facing error type. If you want to treat a specific error use the type.
@BuiltValue()
abstract class SPOTINSTRUMENTMARKETDATARESPONSEErr implements Built<SPOTINSTRUMENTMARKETDATARESPONSEErr, SPOTINSTRUMENTMARKETDATARESPONSEErrBuilder> {
  /// A message describing the error
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'other_info')
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo? get otherInfo;

  /// A public facing error type. If you want to treat a specific error use the type.
  @BuiltValueField(wireName: r'type')
  int? get type;

  SPOTINSTRUMENTMARKETDATARESPONSEErr._();

  factory SPOTINSTRUMENTMARKETDATARESPONSEErr([void updates(SPOTINSTRUMENTMARKETDATARESPONSEErrBuilder b)]) = _$SPOTINSTRUMENTMARKETDATARESPONSEErr;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMARKETDATARESPONSEErrBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMARKETDATARESPONSEErr> get serializer => _$SPOTINSTRUMENTMARKETDATARESPONSEErrSerializer();
}

class _$SPOTINSTRUMENTMARKETDATARESPONSEErrSerializer implements PrimitiveSerializer<SPOTINSTRUMENTMARKETDATARESPONSEErr> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMARKETDATARESPONSEErr, _$SPOTINSTRUMENTMARKETDATARESPONSEErr];

  @override
  final String wireName = r'SPOTINSTRUMENTMARKETDATARESPONSEErr';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSEErr object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.otherInfo != null) {
      yield r'other_info';
      yield serializers.serialize(
        object.otherInfo,
        specifiedType: const FullType(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATARESPONSEErr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMARKETDATARESPONSEErrBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'other_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo),
          ) as SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo;
          result.otherInfo.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTMARKETDATARESPONSEErr deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMARKETDATARESPONSEErrBuilder();
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

