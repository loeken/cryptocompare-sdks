//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTTRADE {
  /// Returns a new [SPOTINSTRUMENTTRADE] instance.
  SPOTINSTRUMENTTRADE({
    this.BASE,
    this.CCSEQ,
    this.ID,
    this.INSTRUMENT,
    this.MAPPED_INSTRUMENT,
    this.MARKET,
    this.PRICE,
    this.QUANTITY,
    this.QUOTE,
    this.QUOTE_QUANTITY,
    this.RECEIVED_TIMESTAMP,
    this.RECEIVED_TIMESTAMP_NS,
    this.SIDE,
    this.SOURCE,
    this.TIMESTAMP,
    this.TIMESTAMP_NS,
    this.TYPE,
  });

  /// The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? BASE;

  /// Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CCSEQ;

  /// The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  /// The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT;

  /// The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MARKET;

  /// The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? PRICE;

  /// The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUANTITY;

  /// The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? QUOTE;

  /// The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QUOTE_QUANTITY;

  /// The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? RECEIVED_TIMESTAMP;

  /// The nanosecond part of the received timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? RECEIVED_TIMESTAMP_NS;

  /// The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? SIDE;

  /// The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? SOURCE;

  /// The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TIMESTAMP;

  /// The nanosecond part of the reported timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TIMESTAMP_NS;

  /// The type of the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? TYPE;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTTRADE &&
     other.BASE == BASE &&
     other.CCSEQ == CCSEQ &&
     other.ID == ID &&
     other.INSTRUMENT == INSTRUMENT &&
     other.MAPPED_INSTRUMENT == MAPPED_INSTRUMENT &&
     other.MARKET == MARKET &&
     other.PRICE == PRICE &&
     other.QUANTITY == QUANTITY &&
     other.QUOTE == QUOTE &&
     other.QUOTE_QUANTITY == QUOTE_QUANTITY &&
     other.RECEIVED_TIMESTAMP == RECEIVED_TIMESTAMP &&
     other.RECEIVED_TIMESTAMP_NS == RECEIVED_TIMESTAMP_NS &&
     other.SIDE == SIDE &&
     other.SOURCE == SOURCE &&
     other.TIMESTAMP == TIMESTAMP &&
     other.TIMESTAMP_NS == TIMESTAMP_NS &&
     other.TYPE == TYPE;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (BASE == null ? 0 : BASE!.hashCode) +
    (CCSEQ == null ? 0 : CCSEQ!.hashCode) +
    (ID == null ? 0 : ID!.hashCode) +
    (INSTRUMENT == null ? 0 : INSTRUMENT!.hashCode) +
    (MAPPED_INSTRUMENT == null ? 0 : MAPPED_INSTRUMENT!.hashCode) +
    (MARKET == null ? 0 : MARKET!.hashCode) +
    (PRICE == null ? 0 : PRICE!.hashCode) +
    (QUANTITY == null ? 0 : QUANTITY!.hashCode) +
    (QUOTE == null ? 0 : QUOTE!.hashCode) +
    (QUOTE_QUANTITY == null ? 0 : QUOTE_QUANTITY!.hashCode) +
    (RECEIVED_TIMESTAMP == null ? 0 : RECEIVED_TIMESTAMP!.hashCode) +
    (RECEIVED_TIMESTAMP_NS == null ? 0 : RECEIVED_TIMESTAMP_NS!.hashCode) +
    (SIDE == null ? 0 : SIDE!.hashCode) +
    (SOURCE == null ? 0 : SOURCE!.hashCode) +
    (TIMESTAMP == null ? 0 : TIMESTAMP!.hashCode) +
    (TIMESTAMP_NS == null ? 0 : TIMESTAMP_NS!.hashCode) +
    (TYPE == null ? 0 : TYPE!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTTRADE[BASE=$BASE, CCSEQ=$CCSEQ, ID=$ID, INSTRUMENT=$INSTRUMENT, MAPPED_INSTRUMENT=$MAPPED_INSTRUMENT, MARKET=$MARKET, PRICE=$PRICE, QUANTITY=$QUANTITY, QUOTE=$QUOTE, QUOTE_QUANTITY=$QUOTE_QUANTITY, RECEIVED_TIMESTAMP=$RECEIVED_TIMESTAMP, RECEIVED_TIMESTAMP_NS=$RECEIVED_TIMESTAMP_NS, SIDE=$SIDE, SOURCE=$SOURCE, TIMESTAMP=$TIMESTAMP, TIMESTAMP_NS=$TIMESTAMP_NS, TYPE=$TYPE]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.BASE != null) {
      json[r'BASE'] = this.BASE;
    } else {
      json[r'BASE'] = null;
    }
    if (this.CCSEQ != null) {
      json[r'CCSEQ'] = this.CCSEQ;
    } else {
      json[r'CCSEQ'] = null;
    }
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.INSTRUMENT != null) {
      json[r'INSTRUMENT'] = this.INSTRUMENT;
    } else {
      json[r'INSTRUMENT'] = null;
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
    if (this.PRICE != null) {
      json[r'PRICE'] = this.PRICE;
    } else {
      json[r'PRICE'] = null;
    }
    if (this.QUANTITY != null) {
      json[r'QUANTITY'] = this.QUANTITY;
    } else {
      json[r'QUANTITY'] = null;
    }
    if (this.QUOTE != null) {
      json[r'QUOTE'] = this.QUOTE;
    } else {
      json[r'QUOTE'] = null;
    }
    if (this.QUOTE_QUANTITY != null) {
      json[r'QUOTE_QUANTITY'] = this.QUOTE_QUANTITY;
    } else {
      json[r'QUOTE_QUANTITY'] = null;
    }
    if (this.RECEIVED_TIMESTAMP != null) {
      json[r'RECEIVED_TIMESTAMP'] = this.RECEIVED_TIMESTAMP;
    } else {
      json[r'RECEIVED_TIMESTAMP'] = null;
    }
    if (this.RECEIVED_TIMESTAMP_NS != null) {
      json[r'RECEIVED_TIMESTAMP_NS'] = this.RECEIVED_TIMESTAMP_NS;
    } else {
      json[r'RECEIVED_TIMESTAMP_NS'] = null;
    }
    if (this.SIDE != null) {
      json[r'SIDE'] = this.SIDE;
    } else {
      json[r'SIDE'] = null;
    }
    if (this.SOURCE != null) {
      json[r'SOURCE'] = this.SOURCE;
    } else {
      json[r'SOURCE'] = null;
    }
    if (this.TIMESTAMP != null) {
      json[r'TIMESTAMP'] = this.TIMESTAMP;
    } else {
      json[r'TIMESTAMP'] = null;
    }
    if (this.TIMESTAMP_NS != null) {
      json[r'TIMESTAMP_NS'] = this.TIMESTAMP_NS;
    } else {
      json[r'TIMESTAMP_NS'] = null;
    }
    if (this.TYPE != null) {
      json[r'TYPE'] = this.TYPE;
    } else {
      json[r'TYPE'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTTRADE] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTTRADE? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTTRADE[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTTRADE[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTTRADE(
        BASE: mapValueOfType<String>(json, r'BASE'),
        CCSEQ: mapValueOfType<int>(json, r'CCSEQ'),
        ID: mapValueOfType<String>(json, r'ID'),
        INSTRUMENT: mapValueOfType<String>(json, r'INSTRUMENT'),
        MAPPED_INSTRUMENT: mapValueOfType<String>(json, r'MAPPED_INSTRUMENT'),
        MARKET: mapValueOfType<String>(json, r'MARKET'),
        PRICE: mapValueOfType<int>(json, r'PRICE'),
        QUANTITY: mapValueOfType<int>(json, r'QUANTITY'),
        QUOTE: mapValueOfType<String>(json, r'QUOTE'),
        QUOTE_QUANTITY: mapValueOfType<int>(json, r'QUOTE_QUANTITY'),
        RECEIVED_TIMESTAMP: mapValueOfType<int>(json, r'RECEIVED_TIMESTAMP'),
        RECEIVED_TIMESTAMP_NS: mapValueOfType<int>(json, r'RECEIVED_TIMESTAMP_NS'),
        SIDE: mapValueOfType<String>(json, r'SIDE'),
        SOURCE: mapValueOfType<String>(json, r'SOURCE'),
        TIMESTAMP: mapValueOfType<int>(json, r'TIMESTAMP'),
        TIMESTAMP_NS: mapValueOfType<int>(json, r'TIMESTAMP_NS'),
        TYPE: mapValueOfType<String>(json, r'TYPE'),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTTRADE>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTTRADE>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTTRADE.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTTRADE> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTTRADE>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTTRADE.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTTRADE-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTTRADE>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTTRADE>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTTRADE.listFromJson(entry.value, growable: growable,);
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

