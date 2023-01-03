//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumenttrade.g.dart';

/// SPOTINSTRUMENTTRADE
///
/// Properties:
/// * [BASE] - The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
/// * [CCSEQ] - Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
/// * [ID] - The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
/// * [INSTRUMENT] - The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
/// * [MAPPED_INSTRUMENT] - The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
/// * [MARKET] - The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
/// * [PRICE] - The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
/// * [QUANTITY] - The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
/// * [QUOTE] - The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
/// * [QUOTE_QUANTITY] - The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
/// * [RECEIVED_TIMESTAMP] - The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
/// * [RECEIVED_TIMESTAMP_NS] - The nanosecond part of the received timestamp.
/// * [SIDE] - The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
/// * [SOURCE] - The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
/// * [TIMESTAMP] - The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
/// * [TIMESTAMP_NS] - The nanosecond part of the reported timestamp.
/// * [TYPE] - The type of the message.
@BuiltValue()
abstract class SPOTINSTRUMENTTRADE implements Built<SPOTINSTRUMENTTRADE, SPOTINSTRUMENTTRADEBuilder> {
  /// The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
  @BuiltValueField(wireName: r'BASE')
  String? get BASE;

  /// Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
  @BuiltValueField(wireName: r'CCSEQ')
  int? get CCSEQ;

  /// The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
  @BuiltValueField(wireName: r'ID')
  String? get ID;

  /// The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
  @BuiltValueField(wireName: r'INSTRUMENT')
  String? get INSTRUMENT;

  /// The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
  @BuiltValueField(wireName: r'MAPPED_INSTRUMENT')
  String? get MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
  @BuiltValueField(wireName: r'MARKET')
  String? get MARKET;

  /// The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
  @BuiltValueField(wireName: r'PRICE')
  int? get PRICE;

  /// The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
  @BuiltValueField(wireName: r'QUANTITY')
  int? get QUANTITY;

  /// The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
  @BuiltValueField(wireName: r'QUOTE')
  String? get QUOTE;

  /// The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
  @BuiltValueField(wireName: r'QUOTE_QUANTITY')
  int? get QUOTE_QUANTITY;

  /// The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
  @BuiltValueField(wireName: r'RECEIVED_TIMESTAMP')
  int? get RECEIVED_TIMESTAMP;

  /// The nanosecond part of the received timestamp.
  @BuiltValueField(wireName: r'RECEIVED_TIMESTAMP_NS')
  int? get RECEIVED_TIMESTAMP_NS;

  /// The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
  @BuiltValueField(wireName: r'SIDE')
  String? get SIDE;

  /// The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
  @BuiltValueField(wireName: r'SOURCE')
  String? get SOURCE;

  /// The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
  @BuiltValueField(wireName: r'TIMESTAMP')
  int? get TIMESTAMP;

  /// The nanosecond part of the reported timestamp.
  @BuiltValueField(wireName: r'TIMESTAMP_NS')
  int? get TIMESTAMP_NS;

  /// The type of the message.
  @BuiltValueField(wireName: r'TYPE')
  String? get TYPE;

  SPOTINSTRUMENTTRADE._();

  factory SPOTINSTRUMENTTRADE([void updates(SPOTINSTRUMENTTRADEBuilder b)]) = _$SPOTINSTRUMENTTRADE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTTRADEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTTRADE> get serializer => _$SPOTINSTRUMENTTRADESerializer();
}

class _$SPOTINSTRUMENTTRADESerializer implements PrimitiveSerializer<SPOTINSTRUMENTTRADE> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTTRADE, _$SPOTINSTRUMENTTRADE];

  @override
  final String wireName = r'SPOTINSTRUMENTTRADE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTTRADE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.BASE != null) {
      yield r'BASE';
      yield serializers.serialize(
        object.BASE,
        specifiedType: const FullType(String),
      );
    }
    if (object.CCSEQ != null) {
      yield r'CCSEQ';
      yield serializers.serialize(
        object.CCSEQ,
        specifiedType: const FullType(int),
      );
    }
    if (object.ID != null) {
      yield r'ID';
      yield serializers.serialize(
        object.ID,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT != null) {
      yield r'INSTRUMENT';
      yield serializers.serialize(
        object.INSTRUMENT,
        specifiedType: const FullType(String),
      );
    }
    if (object.MAPPED_INSTRUMENT != null) {
      yield r'MAPPED_INSTRUMENT';
      yield serializers.serialize(
        object.MAPPED_INSTRUMENT,
        specifiedType: const FullType(String),
      );
    }
    if (object.MARKET != null) {
      yield r'MARKET';
      yield serializers.serialize(
        object.MARKET,
        specifiedType: const FullType(String),
      );
    }
    if (object.PRICE != null) {
      yield r'PRICE';
      yield serializers.serialize(
        object.PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.QUANTITY != null) {
      yield r'QUANTITY';
      yield serializers.serialize(
        object.QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.QUOTE != null) {
      yield r'QUOTE';
      yield serializers.serialize(
        object.QUOTE,
        specifiedType: const FullType(String),
      );
    }
    if (object.QUOTE_QUANTITY != null) {
      yield r'QUOTE_QUANTITY';
      yield serializers.serialize(
        object.QUOTE_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.RECEIVED_TIMESTAMP != null) {
      yield r'RECEIVED_TIMESTAMP';
      yield serializers.serialize(
        object.RECEIVED_TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.RECEIVED_TIMESTAMP_NS != null) {
      yield r'RECEIVED_TIMESTAMP_NS';
      yield serializers.serialize(
        object.RECEIVED_TIMESTAMP_NS,
        specifiedType: const FullType(int),
      );
    }
    if (object.SIDE != null) {
      yield r'SIDE';
      yield serializers.serialize(
        object.SIDE,
        specifiedType: const FullType(String),
      );
    }
    if (object.SOURCE != null) {
      yield r'SOURCE';
      yield serializers.serialize(
        object.SOURCE,
        specifiedType: const FullType(String),
      );
    }
    if (object.TIMESTAMP != null) {
      yield r'TIMESTAMP';
      yield serializers.serialize(
        object.TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.TIMESTAMP_NS != null) {
      yield r'TIMESTAMP_NS';
      yield serializers.serialize(
        object.TIMESTAMP_NS,
        specifiedType: const FullType(int),
      );
    }
    if (object.TYPE != null) {
      yield r'TYPE';
      yield serializers.serialize(
        object.TYPE,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTTRADE object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTTRADEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'BASE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.BASE = valueDes;
          break;
        case r'CCSEQ':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CCSEQ = valueDes;
          break;
        case r'ID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ID = valueDes;
          break;
        case r'INSTRUMENT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT = valueDes;
          break;
        case r'MAPPED_INSTRUMENT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.MAPPED_INSTRUMENT = valueDes;
          break;
        case r'MARKET':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.MARKET = valueDes;
          break;
        case r'PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.PRICE = valueDes;
          break;
        case r'QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUANTITY = valueDes;
          break;
        case r'QUOTE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.QUOTE = valueDes;
          break;
        case r'QUOTE_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUOTE_QUANTITY = valueDes;
          break;
        case r'RECEIVED_TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.RECEIVED_TIMESTAMP = valueDes;
          break;
        case r'RECEIVED_TIMESTAMP_NS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.RECEIVED_TIMESTAMP_NS = valueDes;
          break;
        case r'SIDE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.SIDE = valueDes;
          break;
        case r'SOURCE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.SOURCE = valueDes;
          break;
        case r'TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TIMESTAMP = valueDes;
          break;
        case r'TIMESTAMP_NS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TIMESTAMP_NS = valueDes;
          break;
        case r'TYPE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.TYPE = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTTRADE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTTRADEBuilder();
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

