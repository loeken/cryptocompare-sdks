//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'genericresponse_data.g.dart';

/// GENERICRESPONSEData
///
/// Properties:
/// * [NO_DATA] - The endpoint does not have a reponse defined
@BuiltValue()
abstract class GENERICRESPONSEData implements Built<GENERICRESPONSEData, GENERICRESPONSEDataBuilder> {
  /// The endpoint does not have a reponse defined
  @BuiltValueField(wireName: r'NO_DATA')
  String? get NO_DATA;

  GENERICRESPONSEData._();

  factory GENERICRESPONSEData([void updates(GENERICRESPONSEDataBuilder b)]) = _$GENERICRESPONSEData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GENERICRESPONSEDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GENERICRESPONSEData> get serializer => _$GENERICRESPONSEDataSerializer();
}

class _$GENERICRESPONSEDataSerializer implements PrimitiveSerializer<GENERICRESPONSEData> {
  @override
  final Iterable<Type> types = const [GENERICRESPONSEData, _$GENERICRESPONSEData];

  @override
  final String wireName = r'GENERICRESPONSEData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GENERICRESPONSEData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.NO_DATA != null) {
      yield r'NO_DATA';
      yield serializers.serialize(
        object.NO_DATA,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GENERICRESPONSEData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GENERICRESPONSEDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'NO_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.NO_DATA = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GENERICRESPONSEData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GENERICRESPONSEDataBuilder();
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

