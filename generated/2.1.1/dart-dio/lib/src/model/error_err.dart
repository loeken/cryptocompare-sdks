//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/error_err_other_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_err.g.dart';

/// ErrorErr
///
/// Properties:
/// * [message] - A message describing the error
/// * [otherInfo] 
/// * [type] - A public facing error type. If you want to treat a specific error use the type.
@BuiltValue()
abstract class ErrorErr implements Built<ErrorErr, ErrorErrBuilder> {
  /// A message describing the error
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'other_info')
  ErrorErrOtherInfo? get otherInfo;

  /// A public facing error type. If you want to treat a specific error use the type.
  @BuiltValueField(wireName: r'type')
  int? get type;

  ErrorErr._();

  factory ErrorErr([void updates(ErrorErrBuilder b)]) = _$ErrorErr;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorErrBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorErr> get serializer => _$ErrorErrSerializer();
}

class _$ErrorErrSerializer implements PrimitiveSerializer<ErrorErr> {
  @override
  final Iterable<Type> types = const [ErrorErr, _$ErrorErr];

  @override
  final String wireName = r'ErrorErr';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorErr object, {
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
        specifiedType: const FullType(ErrorErrOtherInfo),
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
    ErrorErr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorErrBuilder result,
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
            specifiedType: const FullType(ErrorErrOtherInfo),
          ) as ErrorErrOtherInfo;
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
  ErrorErr deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorErrBuilder();
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

