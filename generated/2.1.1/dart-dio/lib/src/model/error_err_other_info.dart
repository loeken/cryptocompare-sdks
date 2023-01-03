//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_err_other_info.g.dart';

/// ErrorErrOtherInfo
///
/// Properties:
/// * [param] - The parameter that is resposible for the error
/// * [values] - The values resposible for the error
@BuiltValue()
abstract class ErrorErrOtherInfo implements Built<ErrorErrOtherInfo, ErrorErrOtherInfoBuilder> {
  /// The parameter that is resposible for the error
  @BuiltValueField(wireName: r'param')
  String? get param;

  /// The values resposible for the error
  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  ErrorErrOtherInfo._();

  factory ErrorErrOtherInfo([void updates(ErrorErrOtherInfoBuilder b)]) = _$ErrorErrOtherInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorErrOtherInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorErrOtherInfo> get serializer => _$ErrorErrOtherInfoSerializer();
}

class _$ErrorErrOtherInfoSerializer implements PrimitiveSerializer<ErrorErrOtherInfo> {
  @override
  final Iterable<Type> types = const [ErrorErrOtherInfo, _$ErrorErrOtherInfo];

  @override
  final String wireName = r'ErrorErrOtherInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorErrOtherInfo object, {
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
    ErrorErrOtherInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorErrOtherInfoBuilder result,
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
  ErrorErrOtherInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorErrOtherInfoBuilder();
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

