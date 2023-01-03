//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for SPOTINSTRUMENTHISTODATA
void main() {
  // final instance = SPOTINSTRUMENTHISTODATA();

  group('test SPOTINSTRUMENTHISTODATA', () {
    // The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
    // String BASE
    test('to test the property `BASE`', () async {
      // TODO
    });

    // The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
    // int CLOSE
    test('to test the property `CLOSE`', () async {
      // TODO
    });

    // The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
    // int FIRST_TRADE_PRICE
    test('to test the property `FIRST_TRADE_PRICE`', () async {
      // TODO
    });

    // The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
    // int FIRST_TRADE_TIMESTAMP
    test('to test the property `FIRST_TRADE_TIMESTAMP`', () async {
      // TODO
    });

    // The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
    // int HIGH
    test('to test the property `HIGH`', () async {
      // TODO
    });

    // The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    // int HIGH_TRADE_PRICE
    test('to test the property `HIGH_TRADE_PRICE`', () async {
      // TODO
    });

    // The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
    // int HIGH_TRADE_TIMESTAMP
    test('to test the property `HIGH_TRADE_TIMESTAMP`', () async {
      // TODO
    });

    // The unmapped instrument ID
    // String INSTRUMENT
    test('to test the property `INSTRUMENT`', () async {
      // TODO
    });

    // The last trade price in the time period. This is only available when there is at least one trade in the time period.
    // int LAST_TRADE_PRICE
    test('to test the property `LAST_TRADE_PRICE`', () async {
      // TODO
    });

    // The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
    // int LAST_TRADE_TIMESTAMP
    test('to test the property `LAST_TRADE_TIMESTAMP`', () async {
      // TODO
    });

    // The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
    // int LOW
    test('to test the property `LOW`', () async {
      // TODO
    });

    // The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    // int LOW_TRADE_PRICE
    test('to test the property `LOW_TRADE_PRICE`', () async {
      // TODO
    });

    // The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
    // int LOW_TRADE_TIMESTAMP
    test('to test the property `LOW_TRADE_TIMESTAMP`', () async {
      // TODO
    });

    // The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
    // String MAPPED_INSTRUMENT
    test('to test the property `MAPPED_INSTRUMENT`', () async {
      // TODO
    });

    // The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
    // String MARKET
    test('to test the property `MARKET`', () async {
      // TODO
    });

    // The open price for the historical period, this is based on the closest trade before the period start.
    // int OPEN
    test('to test the property `OPEN`', () async {
      // TODO
    });

    // The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
    // String QUOTE
    test('to test the property `QUOTE`', () async {
      // TODO
    });

    // The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
    // int QUOTE_VOLUME
    test('to test the property `QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
    // int QUOTE_VOLUME_BUY
    test('to test the property `QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    // int QUOTE_VOLUME_SELL
    test('to test the property `QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    // int QUOTE_VOLUME_UNKNOWN
    test('to test the property `QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
    // int TIMESTAMP
    test('to test the property `TIMESTAMP`', () async {
      // TODO
    });

    // The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    // int TOTAL_TRADES
    test('to test the property `TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    // int TOTAL_TRADES_BUY
    test('to test the property `TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    // int TOTAL_TRADES_SELL
    test('to test the property `TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    // int TOTAL_TRADES_UNKNOWN
    test('to test the property `TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The type of the message.
    // String TYPE
    test('to test the property `TYPE`', () async {
      // TODO
    });

    // The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
    // String UNIT
    test('to test the property `UNIT`', () async {
      // TODO
    });

    // The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
    // int VOLUME
    test('to test the property `VOLUME`', () async {
      // TODO
    });

    // The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
    // int VOLUME_BUY
    test('to test the property `VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
    // int VOLUME_SELL
    test('to test the property `VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
    // int VOLUME_UNKNOWN
    test('to test the property `VOLUME_UNKNOWN`', () async {
      // TODO
    });


  });

}
