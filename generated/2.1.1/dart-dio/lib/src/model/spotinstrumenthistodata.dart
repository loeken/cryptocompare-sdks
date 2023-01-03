//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumenthistodata.g.dart';

/// SPOTINSTRUMENTHISTODATA
///
/// Properties:
/// * [BASE] - The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
/// * [CLOSE] - The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
/// * [FIRST_TRADE_PRICE] - The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
/// * [FIRST_TRADE_TIMESTAMP] - The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
/// * [HIGH] - The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
/// * [HIGH_TRADE_PRICE] - The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
/// * [HIGH_TRADE_TIMESTAMP] - The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
/// * [INSTRUMENT] - The unmapped instrument ID
/// * [LAST_TRADE_PRICE] - The last trade price in the time period. This is only available when there is at least one trade in the time period.
/// * [LAST_TRADE_TIMESTAMP] - The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
/// * [LOW] - The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
/// * [LOW_TRADE_PRICE] - The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
/// * [LOW_TRADE_TIMESTAMP] - The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
/// * [MAPPED_INSTRUMENT] - The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
/// * [MARKET] - The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
/// * [OPEN] - The open price for the historical period, this is based on the closest trade before the period start.
/// * [QUOTE] - The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
/// * [QUOTE_VOLUME] - The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
/// * [QUOTE_VOLUME_BUY] - The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
/// * [QUOTE_VOLUME_SELL] - The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
/// * [QUOTE_VOLUME_UNKNOWN] - The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
/// * [TIMESTAMP] - The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
/// * [TOTAL_TRADES] - The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
/// * [TOTAL_TRADES_BUY] - The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
/// * [TOTAL_TRADES_SELL] - The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
/// * [TOTAL_TRADES_UNKNOWN] - The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
/// * [TYPE] - The type of the message.
/// * [UNIT] - The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
/// * [VOLUME] - The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
/// * [VOLUME_BUY] - The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
/// * [VOLUME_SELL] - The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
/// * [VOLUME_UNKNOWN] - The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
@BuiltValue()
abstract class SPOTINSTRUMENTHISTODATA implements Built<SPOTINSTRUMENTHISTODATA, SPOTINSTRUMENTHISTODATABuilder> {
  /// The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
  @BuiltValueField(wireName: r'BASE')
  String? get BASE;

  /// The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
  @BuiltValueField(wireName: r'CLOSE')
  int? get CLOSE;

  /// The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'FIRST_TRADE_PRICE')
  int? get FIRST_TRADE_PRICE;

  /// The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'FIRST_TRADE_TIMESTAMP')
  int? get FIRST_TRADE_TIMESTAMP;

  /// The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
  @BuiltValueField(wireName: r'HIGH')
  int? get HIGH;

  /// The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'HIGH_TRADE_PRICE')
  int? get HIGH_TRADE_PRICE;

  /// The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'HIGH_TRADE_TIMESTAMP')
  int? get HIGH_TRADE_TIMESTAMP;

  /// The unmapped instrument ID
  @BuiltValueField(wireName: r'INSTRUMENT')
  String? get INSTRUMENT;

  /// The last trade price in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'LAST_TRADE_PRICE')
  int? get LAST_TRADE_PRICE;

  /// The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'LAST_TRADE_TIMESTAMP')
  int? get LAST_TRADE_TIMESTAMP;

  /// The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
  @BuiltValueField(wireName: r'LOW')
  int? get LOW;

  /// The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'LOW_TRADE_PRICE')
  int? get LOW_TRADE_PRICE;

  /// The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
  @BuiltValueField(wireName: r'LOW_TRADE_TIMESTAMP')
  int? get LOW_TRADE_TIMESTAMP;

  /// The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  @BuiltValueField(wireName: r'MAPPED_INSTRUMENT')
  String? get MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
  @BuiltValueField(wireName: r'MARKET')
  String? get MARKET;

  /// The open price for the historical period, this is based on the closest trade before the period start.
  @BuiltValueField(wireName: r'OPEN')
  int? get OPEN;

  /// The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
  @BuiltValueField(wireName: r'QUOTE')
  String? get QUOTE;

  /// The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'QUOTE_VOLUME')
  int? get QUOTE_VOLUME;

  /// The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
  @BuiltValueField(wireName: r'QUOTE_VOLUME_BUY')
  int? get QUOTE_VOLUME_BUY;

  /// The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  @BuiltValueField(wireName: r'QUOTE_VOLUME_SELL')
  int? get QUOTE_VOLUME_SELL;

  /// The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  @BuiltValueField(wireName: r'QUOTE_VOLUME_UNKNOWN')
  int? get QUOTE_VOLUME_UNKNOWN;

  /// The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
  @BuiltValueField(wireName: r'TIMESTAMP')
  int? get TIMESTAMP;

  /// The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'TOTAL_TRADES')
  int? get TOTAL_TRADES;

  /// The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'TOTAL_TRADES_BUY')
  int? get TOTAL_TRADES_BUY;

  /// The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'TOTAL_TRADES_SELL')
  int? get TOTAL_TRADES_SELL;

  /// The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'TOTAL_TRADES_UNKNOWN')
  int? get TOTAL_TRADES_UNKNOWN;

  /// The type of the message.
  @BuiltValueField(wireName: r'TYPE')
  String? get TYPE;

  /// The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
  @BuiltValueField(wireName: r'UNIT')
  String? get UNIT;

  /// The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
  @BuiltValueField(wireName: r'VOLUME')
  int? get VOLUME;

  /// The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
  @BuiltValueField(wireName: r'VOLUME_BUY')
  int? get VOLUME_BUY;

  /// The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
  @BuiltValueField(wireName: r'VOLUME_SELL')
  int? get VOLUME_SELL;

  /// The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
  @BuiltValueField(wireName: r'VOLUME_UNKNOWN')
  int? get VOLUME_UNKNOWN;

  SPOTINSTRUMENTHISTODATA._();

  factory SPOTINSTRUMENTHISTODATA([void updates(SPOTINSTRUMENTHISTODATABuilder b)]) = _$SPOTINSTRUMENTHISTODATA;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTHISTODATABuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTHISTODATA> get serializer => _$SPOTINSTRUMENTHISTODATASerializer();
}

class _$SPOTINSTRUMENTHISTODATASerializer implements PrimitiveSerializer<SPOTINSTRUMENTHISTODATA> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTHISTODATA, _$SPOTINSTRUMENTHISTODATA];

  @override
  final String wireName = r'SPOTINSTRUMENTHISTODATA';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTHISTODATA object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.BASE != null) {
      yield r'BASE';
      yield serializers.serialize(
        object.BASE,
        specifiedType: const FullType(String),
      );
    }
    if (object.CLOSE != null) {
      yield r'CLOSE';
      yield serializers.serialize(
        object.CLOSE,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_TRADE_PRICE != null) {
      yield r'FIRST_TRADE_PRICE';
      yield serializers.serialize(
        object.FIRST_TRADE_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_TRADE_TIMESTAMP != null) {
      yield r'FIRST_TRADE_TIMESTAMP';
      yield serializers.serialize(
        object.FIRST_TRADE_TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.HIGH != null) {
      yield r'HIGH';
      yield serializers.serialize(
        object.HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.HIGH_TRADE_PRICE != null) {
      yield r'HIGH_TRADE_PRICE';
      yield serializers.serialize(
        object.HIGH_TRADE_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.HIGH_TRADE_TIMESTAMP != null) {
      yield r'HIGH_TRADE_TIMESTAMP';
      yield serializers.serialize(
        object.HIGH_TRADE_TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT != null) {
      yield r'INSTRUMENT';
      yield serializers.serialize(
        object.INSTRUMENT,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_TRADE_PRICE != null) {
      yield r'LAST_TRADE_PRICE';
      yield serializers.serialize(
        object.LAST_TRADE_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_TRADE_TIMESTAMP != null) {
      yield r'LAST_TRADE_TIMESTAMP';
      yield serializers.serialize(
        object.LAST_TRADE_TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.LOW != null) {
      yield r'LOW';
      yield serializers.serialize(
        object.LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.LOW_TRADE_PRICE != null) {
      yield r'LOW_TRADE_PRICE';
      yield serializers.serialize(
        object.LOW_TRADE_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.LOW_TRADE_TIMESTAMP != null) {
      yield r'LOW_TRADE_TIMESTAMP';
      yield serializers.serialize(
        object.LOW_TRADE_TIMESTAMP,
        specifiedType: const FullType(int),
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
    if (object.OPEN != null) {
      yield r'OPEN';
      yield serializers.serialize(
        object.OPEN,
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
    if (object.QUOTE_VOLUME != null) {
      yield r'QUOTE_VOLUME';
      yield serializers.serialize(
        object.QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.QUOTE_VOLUME_BUY != null) {
      yield r'QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.QUOTE_VOLUME_SELL != null) {
      yield r'QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.QUOTE_VOLUME_UNKNOWN != null) {
      yield r'QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.TIMESTAMP != null) {
      yield r'TIMESTAMP';
      yield serializers.serialize(
        object.TIMESTAMP,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOTAL_TRADES != null) {
      yield r'TOTAL_TRADES';
      yield serializers.serialize(
        object.TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOTAL_TRADES_BUY != null) {
      yield r'TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOTAL_TRADES_SELL != null) {
      yield r'TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOTAL_TRADES_UNKNOWN != null) {
      yield r'TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.TOTAL_TRADES_UNKNOWN,
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
    if (object.UNIT != null) {
      yield r'UNIT';
      yield serializers.serialize(
        object.UNIT,
        specifiedType: const FullType(String),
      );
    }
    if (object.VOLUME != null) {
      yield r'VOLUME';
      yield serializers.serialize(
        object.VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.VOLUME_BUY != null) {
      yield r'VOLUME_BUY';
      yield serializers.serialize(
        object.VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.VOLUME_SELL != null) {
      yield r'VOLUME_SELL';
      yield serializers.serialize(
        object.VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.VOLUME_UNKNOWN != null) {
      yield r'VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTHISTODATA object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTHISTODATABuilder result,
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
        case r'CLOSE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CLOSE = valueDes;
          break;
        case r'FIRST_TRADE_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_TRADE_PRICE = valueDes;
          break;
        case r'FIRST_TRADE_TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_TRADE_TIMESTAMP = valueDes;
          break;
        case r'HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.HIGH = valueDes;
          break;
        case r'HIGH_TRADE_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.HIGH_TRADE_PRICE = valueDes;
          break;
        case r'HIGH_TRADE_TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.HIGH_TRADE_TIMESTAMP = valueDes;
          break;
        case r'INSTRUMENT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT = valueDes;
          break;
        case r'LAST_TRADE_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_TRADE_PRICE = valueDes;
          break;
        case r'LAST_TRADE_TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_TRADE_TIMESTAMP = valueDes;
          break;
        case r'LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LOW = valueDes;
          break;
        case r'LOW_TRADE_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LOW_TRADE_PRICE = valueDes;
          break;
        case r'LOW_TRADE_TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LOW_TRADE_TIMESTAMP = valueDes;
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
        case r'OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.OPEN = valueDes;
          break;
        case r'QUOTE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.QUOTE = valueDes;
          break;
        case r'QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUOTE_VOLUME = valueDes;
          break;
        case r'QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'TIMESTAMP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TIMESTAMP = valueDes;
          break;
        case r'TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOTAL_TRADES = valueDes;
          break;
        case r'TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOTAL_TRADES_BUY = valueDes;
          break;
        case r'TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOTAL_TRADES_SELL = valueDes;
          break;
        case r'TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'TYPE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.TYPE = valueDes;
          break;
        case r'UNIT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.UNIT = valueDes;
          break;
        case r'VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.VOLUME = valueDes;
          break;
        case r'VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.VOLUME_BUY = valueDes;
          break;
        case r'VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.VOLUME_SELL = valueDes;
          break;
        case r'VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.VOLUME_UNKNOWN = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTHISTODATA deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTHISTODATABuilder();
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

