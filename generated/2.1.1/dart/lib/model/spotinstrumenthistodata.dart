//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTHISTODATA {
  /// Returns a new [SPOTINSTRUMENTHISTODATA] instance.
  SPOTINSTRUMENTHISTODATA({
    this.BASE,
    this.CLOSE,
    this.FIRST_TRADE_PRICE,
    this.FIRST_TRADE_TIMESTAMP,
    this.HIGH,
    this.HIGH_TRADE_PRICE,
    this.HIGH_TRADE_TIMESTAMP,
    this.INSTRUMENT,
    this.LAST_TRADE_PRICE,
    this.LAST_TRADE_TIMESTAMP,
    this.LOW,
    this.LOW_TRADE_PRICE,
    this.LOW_TRADE_TIMESTAMP,
    this.MAPPED_INSTRUMENT,
    this.MARKET,
    this.OPEN,
    this.QUOTE,
    this.QUOTE_VOLUME,
    this.QUOTE_VOLUME_BUY,
    this.QUOTE_VOLUME_SELL,
    this.QUOTE_VOLUME_UNKNOWN,
    this.TIMESTAMP,
    this.TOTAL_TRADES,
    this.TOTAL_TRADES_BUY,
    this.TOTAL_TRADES_SELL,
    this.TOTAL_TRADES_UNKNOWN,
    this.TYPE,
    this.UNIT,
    this.VOLUME,
    this.VOLUME_BUY,
    this.VOLUME_SELL,
    this.VOLUME_UNKNOWN,
  });

  /// The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? BASE;

  /// The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CLOSE;

  /// The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_TRADE_PRICE;

  /// The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_TRADE_TIMESTAMP;

  /// The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? HIGH;

  /// The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? HIGH_TRADE_PRICE;

  /// The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? HIGH_TRADE_TIMESTAMP;

  /// The unmapped instrument ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT;

  /// The last trade price in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_TRADE_PRICE;

  /// The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_TRADE_TIMESTAMP;

  /// The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LOW;

  /// The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LOW_TRADE_PRICE;

  /// The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LOW_TRADE_TIMESTAMP;

  /// The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MARKET;

  /// The open price for the historical period, this is based on the closest trade before the period start.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? OPEN;

  /// The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? QUOTE;

  /// The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUOTE_VOLUME;

  /// The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUOTE_VOLUME_BUY;

  /// The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUOTE_VOLUME_SELL;

  /// The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUOTE_VOLUME_UNKNOWN;

  /// The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TIMESTAMP;

  /// The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOTAL_TRADES;

  /// The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOTAL_TRADES_BUY;

  /// The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOTAL_TRADES_SELL;

  /// The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOTAL_TRADES_UNKNOWN;

  /// The type of the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? TYPE;

  /// The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? UNIT;

  /// The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? VOLUME;

  /// The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? VOLUME_BUY;

  /// The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? VOLUME_SELL;

  /// The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? VOLUME_UNKNOWN;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTHISTODATA &&
     other.BASE == BASE &&
     other.CLOSE == CLOSE &&
     other.FIRST_TRADE_PRICE == FIRST_TRADE_PRICE &&
     other.FIRST_TRADE_TIMESTAMP == FIRST_TRADE_TIMESTAMP &&
     other.HIGH == HIGH &&
     other.HIGH_TRADE_PRICE == HIGH_TRADE_PRICE &&
     other.HIGH_TRADE_TIMESTAMP == HIGH_TRADE_TIMESTAMP &&
     other.INSTRUMENT == INSTRUMENT &&
     other.LAST_TRADE_PRICE == LAST_TRADE_PRICE &&
     other.LAST_TRADE_TIMESTAMP == LAST_TRADE_TIMESTAMP &&
     other.LOW == LOW &&
     other.LOW_TRADE_PRICE == LOW_TRADE_PRICE &&
     other.LOW_TRADE_TIMESTAMP == LOW_TRADE_TIMESTAMP &&
     other.MAPPED_INSTRUMENT == MAPPED_INSTRUMENT &&
     other.MARKET == MARKET &&
     other.OPEN == OPEN &&
     other.QUOTE == QUOTE &&
     other.QUOTE_VOLUME == QUOTE_VOLUME &&
     other.QUOTE_VOLUME_BUY == QUOTE_VOLUME_BUY &&
     other.QUOTE_VOLUME_SELL == QUOTE_VOLUME_SELL &&
     other.QUOTE_VOLUME_UNKNOWN == QUOTE_VOLUME_UNKNOWN &&
     other.TIMESTAMP == TIMESTAMP &&
     other.TOTAL_TRADES == TOTAL_TRADES &&
     other.TOTAL_TRADES_BUY == TOTAL_TRADES_BUY &&
     other.TOTAL_TRADES_SELL == TOTAL_TRADES_SELL &&
     other.TOTAL_TRADES_UNKNOWN == TOTAL_TRADES_UNKNOWN &&
     other.TYPE == TYPE &&
     other.UNIT == UNIT &&
     other.VOLUME == VOLUME &&
     other.VOLUME_BUY == VOLUME_BUY &&
     other.VOLUME_SELL == VOLUME_SELL &&
     other.VOLUME_UNKNOWN == VOLUME_UNKNOWN;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (BASE == null ? 0 : BASE!.hashCode) +
    (CLOSE == null ? 0 : CLOSE!.hashCode) +
    (FIRST_TRADE_PRICE == null ? 0 : FIRST_TRADE_PRICE!.hashCode) +
    (FIRST_TRADE_TIMESTAMP == null ? 0 : FIRST_TRADE_TIMESTAMP!.hashCode) +
    (HIGH == null ? 0 : HIGH!.hashCode) +
    (HIGH_TRADE_PRICE == null ? 0 : HIGH_TRADE_PRICE!.hashCode) +
    (HIGH_TRADE_TIMESTAMP == null ? 0 : HIGH_TRADE_TIMESTAMP!.hashCode) +
    (INSTRUMENT == null ? 0 : INSTRUMENT!.hashCode) +
    (LAST_TRADE_PRICE == null ? 0 : LAST_TRADE_PRICE!.hashCode) +
    (LAST_TRADE_TIMESTAMP == null ? 0 : LAST_TRADE_TIMESTAMP!.hashCode) +
    (LOW == null ? 0 : LOW!.hashCode) +
    (LOW_TRADE_PRICE == null ? 0 : LOW_TRADE_PRICE!.hashCode) +
    (LOW_TRADE_TIMESTAMP == null ? 0 : LOW_TRADE_TIMESTAMP!.hashCode) +
    (MAPPED_INSTRUMENT == null ? 0 : MAPPED_INSTRUMENT!.hashCode) +
    (MARKET == null ? 0 : MARKET!.hashCode) +
    (OPEN == null ? 0 : OPEN!.hashCode) +
    (QUOTE == null ? 0 : QUOTE!.hashCode) +
    (QUOTE_VOLUME == null ? 0 : QUOTE_VOLUME!.hashCode) +
    (QUOTE_VOLUME_BUY == null ? 0 : QUOTE_VOLUME_BUY!.hashCode) +
    (QUOTE_VOLUME_SELL == null ? 0 : QUOTE_VOLUME_SELL!.hashCode) +
    (QUOTE_VOLUME_UNKNOWN == null ? 0 : QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (TIMESTAMP == null ? 0 : TIMESTAMP!.hashCode) +
    (TOTAL_TRADES == null ? 0 : TOTAL_TRADES!.hashCode) +
    (TOTAL_TRADES_BUY == null ? 0 : TOTAL_TRADES_BUY!.hashCode) +
    (TOTAL_TRADES_SELL == null ? 0 : TOTAL_TRADES_SELL!.hashCode) +
    (TOTAL_TRADES_UNKNOWN == null ? 0 : TOTAL_TRADES_UNKNOWN!.hashCode) +
    (TYPE == null ? 0 : TYPE!.hashCode) +
    (UNIT == null ? 0 : UNIT!.hashCode) +
    (VOLUME == null ? 0 : VOLUME!.hashCode) +
    (VOLUME_BUY == null ? 0 : VOLUME_BUY!.hashCode) +
    (VOLUME_SELL == null ? 0 : VOLUME_SELL!.hashCode) +
    (VOLUME_UNKNOWN == null ? 0 : VOLUME_UNKNOWN!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTHISTODATA[BASE=$BASE, CLOSE=$CLOSE, FIRST_TRADE_PRICE=$FIRST_TRADE_PRICE, FIRST_TRADE_TIMESTAMP=$FIRST_TRADE_TIMESTAMP, HIGH=$HIGH, HIGH_TRADE_PRICE=$HIGH_TRADE_PRICE, HIGH_TRADE_TIMESTAMP=$HIGH_TRADE_TIMESTAMP, INSTRUMENT=$INSTRUMENT, LAST_TRADE_PRICE=$LAST_TRADE_PRICE, LAST_TRADE_TIMESTAMP=$LAST_TRADE_TIMESTAMP, LOW=$LOW, LOW_TRADE_PRICE=$LOW_TRADE_PRICE, LOW_TRADE_TIMESTAMP=$LOW_TRADE_TIMESTAMP, MAPPED_INSTRUMENT=$MAPPED_INSTRUMENT, MARKET=$MARKET, OPEN=$OPEN, QUOTE=$QUOTE, QUOTE_VOLUME=$QUOTE_VOLUME, QUOTE_VOLUME_BUY=$QUOTE_VOLUME_BUY, QUOTE_VOLUME_SELL=$QUOTE_VOLUME_SELL, QUOTE_VOLUME_UNKNOWN=$QUOTE_VOLUME_UNKNOWN, TIMESTAMP=$TIMESTAMP, TOTAL_TRADES=$TOTAL_TRADES, TOTAL_TRADES_BUY=$TOTAL_TRADES_BUY, TOTAL_TRADES_SELL=$TOTAL_TRADES_SELL, TOTAL_TRADES_UNKNOWN=$TOTAL_TRADES_UNKNOWN, TYPE=$TYPE, UNIT=$UNIT, VOLUME=$VOLUME, VOLUME_BUY=$VOLUME_BUY, VOLUME_SELL=$VOLUME_SELL, VOLUME_UNKNOWN=$VOLUME_UNKNOWN]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.BASE != null) {
      json[r'BASE'] = this.BASE;
    } else {
      json[r'BASE'] = null;
    }
    if (this.CLOSE != null) {
      json[r'CLOSE'] = this.CLOSE;
    } else {
      json[r'CLOSE'] = null;
    }
    if (this.FIRST_TRADE_PRICE != null) {
      json[r'FIRST_TRADE_PRICE'] = this.FIRST_TRADE_PRICE;
    } else {
      json[r'FIRST_TRADE_PRICE'] = null;
    }
    if (this.FIRST_TRADE_TIMESTAMP != null) {
      json[r'FIRST_TRADE_TIMESTAMP'] = this.FIRST_TRADE_TIMESTAMP;
    } else {
      json[r'FIRST_TRADE_TIMESTAMP'] = null;
    }
    if (this.HIGH != null) {
      json[r'HIGH'] = this.HIGH;
    } else {
      json[r'HIGH'] = null;
    }
    if (this.HIGH_TRADE_PRICE != null) {
      json[r'HIGH_TRADE_PRICE'] = this.HIGH_TRADE_PRICE;
    } else {
      json[r'HIGH_TRADE_PRICE'] = null;
    }
    if (this.HIGH_TRADE_TIMESTAMP != null) {
      json[r'HIGH_TRADE_TIMESTAMP'] = this.HIGH_TRADE_TIMESTAMP;
    } else {
      json[r'HIGH_TRADE_TIMESTAMP'] = null;
    }
    if (this.INSTRUMENT != null) {
      json[r'INSTRUMENT'] = this.INSTRUMENT;
    } else {
      json[r'INSTRUMENT'] = null;
    }
    if (this.LAST_TRADE_PRICE != null) {
      json[r'LAST_TRADE_PRICE'] = this.LAST_TRADE_PRICE;
    } else {
      json[r'LAST_TRADE_PRICE'] = null;
    }
    if (this.LAST_TRADE_TIMESTAMP != null) {
      json[r'LAST_TRADE_TIMESTAMP'] = this.LAST_TRADE_TIMESTAMP;
    } else {
      json[r'LAST_TRADE_TIMESTAMP'] = null;
    }
    if (this.LOW != null) {
      json[r'LOW'] = this.LOW;
    } else {
      json[r'LOW'] = null;
    }
    if (this.LOW_TRADE_PRICE != null) {
      json[r'LOW_TRADE_PRICE'] = this.LOW_TRADE_PRICE;
    } else {
      json[r'LOW_TRADE_PRICE'] = null;
    }
    if (this.LOW_TRADE_TIMESTAMP != null) {
      json[r'LOW_TRADE_TIMESTAMP'] = this.LOW_TRADE_TIMESTAMP;
    } else {
      json[r'LOW_TRADE_TIMESTAMP'] = null;
    }
    if (this.MAPPED_INSTRUMENT != null) {
      json[r'MAPPED_INSTRUMENT'] = this.MAPPED_INSTRUMENT;
    } else {
      json[r'MAPPED_INSTRUMENT'] = null;
    }
    if (this.MARKET != null) {
      json[r'MARKET'] = this.MARKET;
    } else {
      json[r'MARKET'] = null;
    }
    if (this.OPEN != null) {
      json[r'OPEN'] = this.OPEN;
    } else {
      json[r'OPEN'] = null;
    }
    if (this.QUOTE != null) {
      json[r'QUOTE'] = this.QUOTE;
    } else {
      json[r'QUOTE'] = null;
    }
    if (this.QUOTE_VOLUME != null) {
      json[r'QUOTE_VOLUME'] = this.QUOTE_VOLUME;
    } else {
      json[r'QUOTE_VOLUME'] = null;
    }
    if (this.QUOTE_VOLUME_BUY != null) {
      json[r'QUOTE_VOLUME_BUY'] = this.QUOTE_VOLUME_BUY;
    } else {
      json[r'QUOTE_VOLUME_BUY'] = null;
    }
    if (this.QUOTE_VOLUME_SELL != null) {
      json[r'QUOTE_VOLUME_SELL'] = this.QUOTE_VOLUME_SELL;
    } else {
      json[r'QUOTE_VOLUME_SELL'] = null;
    }
    if (this.QUOTE_VOLUME_UNKNOWN != null) {
      json[r'QUOTE_VOLUME_UNKNOWN'] = this.QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.TIMESTAMP != null) {
      json[r'TIMESTAMP'] = this.TIMESTAMP;
    } else {
      json[r'TIMESTAMP'] = null;
    }
    if (this.TOTAL_TRADES != null) {
      json[r'TOTAL_TRADES'] = this.TOTAL_TRADES;
    } else {
      json[r'TOTAL_TRADES'] = null;
    }
    if (this.TOTAL_TRADES_BUY != null) {
      json[r'TOTAL_TRADES_BUY'] = this.TOTAL_TRADES_BUY;
    } else {
      json[r'TOTAL_TRADES_BUY'] = null;
    }
    if (this.TOTAL_TRADES_SELL != null) {
      json[r'TOTAL_TRADES_SELL'] = this.TOTAL_TRADES_SELL;
    } else {
      json[r'TOTAL_TRADES_SELL'] = null;
    }
    if (this.TOTAL_TRADES_UNKNOWN != null) {
      json[r'TOTAL_TRADES_UNKNOWN'] = this.TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.TYPE != null) {
      json[r'TYPE'] = this.TYPE;
    } else {
      json[r'TYPE'] = null;
    }
    if (this.UNIT != null) {
      json[r'UNIT'] = this.UNIT;
    } else {
      json[r'UNIT'] = null;
    }
    if (this.VOLUME != null) {
      json[r'VOLUME'] = this.VOLUME;
    } else {
      json[r'VOLUME'] = null;
    }
    if (this.VOLUME_BUY != null) {
      json[r'VOLUME_BUY'] = this.VOLUME_BUY;
    } else {
      json[r'VOLUME_BUY'] = null;
    }
    if (this.VOLUME_SELL != null) {
      json[r'VOLUME_SELL'] = this.VOLUME_SELL;
    } else {
      json[r'VOLUME_SELL'] = null;
    }
    if (this.VOLUME_UNKNOWN != null) {
      json[r'VOLUME_UNKNOWN'] = this.VOLUME_UNKNOWN;
    } else {
      json[r'VOLUME_UNKNOWN'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTHISTODATA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTHISTODATA? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTHISTODATA[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTHISTODATA[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTHISTODATA(
        BASE: mapValueOfType<String>(json, r'BASE'),
        CLOSE: mapValueOfType<int>(json, r'CLOSE'),
        FIRST_TRADE_PRICE: mapValueOfType<int>(json, r'FIRST_TRADE_PRICE'),
        FIRST_TRADE_TIMESTAMP: mapValueOfType<int>(json, r'FIRST_TRADE_TIMESTAMP'),
        HIGH: mapValueOfType<int>(json, r'HIGH'),
        HIGH_TRADE_PRICE: mapValueOfType<int>(json, r'HIGH_TRADE_PRICE'),
        HIGH_TRADE_TIMESTAMP: mapValueOfType<int>(json, r'HIGH_TRADE_TIMESTAMP'),
        INSTRUMENT: mapValueOfType<String>(json, r'INSTRUMENT'),
        LAST_TRADE_PRICE: mapValueOfType<int>(json, r'LAST_TRADE_PRICE'),
        LAST_TRADE_TIMESTAMP: mapValueOfType<int>(json, r'LAST_TRADE_TIMESTAMP'),
        LOW: mapValueOfType<int>(json, r'LOW'),
        LOW_TRADE_PRICE: mapValueOfType<int>(json, r'LOW_TRADE_PRICE'),
        LOW_TRADE_TIMESTAMP: mapValueOfType<int>(json, r'LOW_TRADE_TIMESTAMP'),
        MAPPED_INSTRUMENT: mapValueOfType<String>(json, r'MAPPED_INSTRUMENT'),
        MARKET: mapValueOfType<String>(json, r'MARKET'),
        OPEN: mapValueOfType<int>(json, r'OPEN'),
        QUOTE: mapValueOfType<String>(json, r'QUOTE'),
        QUOTE_VOLUME: mapValueOfType<int>(json, r'QUOTE_VOLUME'),
        QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'QUOTE_VOLUME_BUY'),
        QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'QUOTE_VOLUME_SELL'),
        QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'QUOTE_VOLUME_UNKNOWN'),
        TIMESTAMP: mapValueOfType<int>(json, r'TIMESTAMP'),
        TOTAL_TRADES: mapValueOfType<int>(json, r'TOTAL_TRADES'),
        TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'TOTAL_TRADES_BUY'),
        TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'TOTAL_TRADES_SELL'),
        TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'TOTAL_TRADES_UNKNOWN'),
        TYPE: mapValueOfType<String>(json, r'TYPE'),
        UNIT: mapValueOfType<String>(json, r'UNIT'),
        VOLUME: mapValueOfType<int>(json, r'VOLUME'),
        VOLUME_BUY: mapValueOfType<int>(json, r'VOLUME_BUY'),
        VOLUME_SELL: mapValueOfType<int>(json, r'VOLUME_SELL'),
        VOLUME_UNKNOWN: mapValueOfType<int>(json, r'VOLUME_UNKNOWN'),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTHISTODATA>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTHISTODATA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTHISTODATA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTHISTODATA> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTHISTODATA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTHISTODATA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTHISTODATA-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTHISTODATA>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTHISTODATA>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTHISTODATA.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

