import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for SPOTINSTRUMENTMARKETDATA
void main() {
  final instance = SPOTINSTRUMENTMARKETDATABuilder();
  // TODO add properties to the builder and call build()

  group(SPOTINSTRUMENTMARKETDATA, () {
    // The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
    // String BASE
    test('to test the property `BASE`', () async {
      // TODO
    });

    // Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
    // int CCSEQ
    test('to test the property `CCSEQ`', () async {
      // TODO
    });

    // The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
    // int CURRENT_DAY_HIGH
    test('to test the property `CURRENT_DAY_HIGH`', () async {
      // TODO
    });

    // The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
    // int CURRENT_DAY_LOW
    test('to test the property `CURRENT_DAY_LOW`', () async {
      // TODO
    });

    // The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
    // int CURRENT_DAY_OPEN
    test('to test the property `CURRENT_DAY_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    // int CURRENT_DAY_QUOTE_VOLUME
    test('to test the property `CURRENT_DAY_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    // int CURRENT_DAY_QUOTE_VOLUME_BUY
    test('to test the property `CURRENT_DAY_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    // int CURRENT_DAY_QUOTE_VOLUME_SELL
    test('to test the property `CURRENT_DAY_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    // int CURRENT_DAY_QUOTE_VOLUME_UNKNOWN
    test('to test the property `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
    // int CURRENT_DAY_TOTAL_TRADES
    test('to test the property `CURRENT_DAY_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
    // int CURRENT_DAY_TOTAL_TRADES_BUY
    test('to test the property `CURRENT_DAY_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
    // int CURRENT_DAY_TOTAL_TRADES_SELL
    test('to test the property `CURRENT_DAY_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
    // int CURRENT_DAY_TOTAL_TRADES_UNKNOWN
    test('to test the property `CURRENT_DAY_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    // int CURRENT_DAY_VOLUME
    test('to test the property `CURRENT_DAY_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    // int CURRENT_DAY_VOLUME_BUY
    test('to test the property `CURRENT_DAY_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    // int CURRENT_DAY_VOLUME_SELL
    test('to test the property `CURRENT_DAY_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    // int CURRENT_DAY_VOLUME_UNKNOWN
    test('to test the property `CURRENT_DAY_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
    // int CURRENT_HOUR_HIGH
    test('to test the property `CURRENT_HOUR_HIGH`', () async {
      // TODO
    });

    // The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
    // int CURRENT_HOUR_LOW
    test('to test the property `CURRENT_HOUR_LOW`', () async {
      // TODO
    });

    // The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
    // int CURRENT_HOUR_OPEN
    test('to test the property `CURRENT_HOUR_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
    // int CURRENT_HOUR_QUOTE_VOLUME
    test('to test the property `CURRENT_HOUR_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
    // int CURRENT_HOUR_QUOTE_VOLUME_BUY
    test('to test the property `CURRENT_HOUR_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
    // int CURRENT_HOUR_QUOTE_VOLUME_SELL
    test('to test the property `CURRENT_HOUR_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
    // int CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN
    test('to test the property `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred since the start of the current hour.
    // int CURRENT_HOUR_TOTAL_TRADES
    test('to test the property `CURRENT_HOUR_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of buy trades since the start of the current hour.
    // int CURRENT_HOUR_TOTAL_TRADES_BUY
    test('to test the property `CURRENT_HOUR_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of sell trades since the start of the current hour.
    // int CURRENT_HOUR_TOTAL_TRADES_SELL
    test('to test the property `CURRENT_HOUR_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of unknown trades since the start of the current hour.
    // int CURRENT_HOUR_TOTAL_TRADES_UNKNOWN
    test('to test the property `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
    // int CURRENT_HOUR_VOLUME
    test('to test the property `CURRENT_HOUR_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
    // int CURRENT_HOUR_VOLUME_BUY
    test('to test the property `CURRENT_HOUR_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
    // int CURRENT_HOUR_VOLUME_SELL
    test('to test the property `CURRENT_HOUR_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
    // int CURRENT_HOUR_VOLUME_UNKNOWN
    test('to test the property `CURRENT_HOUR_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
    // int CURRENT_MONTH_HIGH
    test('to test the property `CURRENT_MONTH_HIGH`', () async {
      // TODO
    });

    // The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
    // int CURRENT_MONTH_LOW
    test('to test the property `CURRENT_MONTH_LOW`', () async {
      // TODO
    });

    // The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
    // int CURRENT_MONTH_OPEN
    test('to test the property `CURRENT_MONTH_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    // int CURRENT_MONTH_QUOTE_VOLUME
    test('to test the property `CURRENT_MONTH_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    // int CURRENT_MONTH_QUOTE_VOLUME_BUY
    test('to test the property `CURRENT_MONTH_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    // int CURRENT_MONTH_QUOTE_VOLUME_SELL
    test('to test the property `CURRENT_MONTH_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    // int CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN
    test('to test the property `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    // int CURRENT_MONTH_TOTAL_TRADES
    test('to test the property `CURRENT_MONTH_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    // int CURRENT_MONTH_TOTAL_TRADES_BUY
    test('to test the property `CURRENT_MONTH_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    // int CURRENT_MONTH_TOTAL_TRADES_SELL
    test('to test the property `CURRENT_MONTH_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    // int CURRENT_MONTH_TOTAL_TRADES_UNKNOWN
    test('to test the property `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    // int CURRENT_MONTH_VOLUME
    test('to test the property `CURRENT_MONTH_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    // int CURRENT_MONTH_VOLUME_BUY
    test('to test the property `CURRENT_MONTH_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    // int CURRENT_MONTH_VOLUME_SELL
    test('to test the property `CURRENT_MONTH_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    // int CURRENT_MONTH_VOLUME_UNKNOWN
    test('to test the property `CURRENT_MONTH_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
    // int CURRENT_WEEK_HIGH
    test('to test the property `CURRENT_WEEK_HIGH`', () async {
      // TODO
    });

    // The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
    // int CURRENT_WEEK_LOW
    test('to test the property `CURRENT_WEEK_LOW`', () async {
      // TODO
    });

    // The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
    // int CURRENT_WEEK_OPEN
    test('to test the property `CURRENT_WEEK_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    // int CURRENT_WEEK_QUOTE_VOLUME
    test('to test the property `CURRENT_WEEK_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    // int CURRENT_WEEK_QUOTE_VOLUME_BUY
    test('to test the property `CURRENT_WEEK_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    // int CURRENT_WEEK_QUOTE_VOLUME_SELL
    test('to test the property `CURRENT_WEEK_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    // int CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN
    test('to test the property `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    // int CURRENT_WEEK_TOTAL_TRADES
    test('to test the property `CURRENT_WEEK_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    // int CURRENT_WEEK_TOTAL_TRADES_BUY
    test('to test the property `CURRENT_WEEK_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    // int CURRENT_WEEK_TOTAL_TRADES_SELL
    test('to test the property `CURRENT_WEEK_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    // int CURRENT_WEEK_TOTAL_TRADES_UNKNOWN
    test('to test the property `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    // int CURRENT_WEEK_VOLUME
    test('to test the property `CURRENT_WEEK_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    // int CURRENT_WEEK_VOLUME_BUY
    test('to test the property `CURRENT_WEEK_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    // int CURRENT_WEEK_VOLUME_SELL
    test('to test the property `CURRENT_WEEK_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    // int CURRENT_WEEK_VOLUME_UNKNOWN
    test('to test the property `CURRENT_WEEK_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
    // int CURRENT_YEAR_HIGH
    test('to test the property `CURRENT_YEAR_HIGH`', () async {
      // TODO
    });

    // The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
    // int CURRENT_YEAR_LOW
    test('to test the property `CURRENT_YEAR_LOW`', () async {
      // TODO
    });

    // The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
    // int CURRENT_YEAR_OPEN
    test('to test the property `CURRENT_YEAR_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    // int CURRENT_YEAR_QUOTE_VOLUME
    test('to test the property `CURRENT_YEAR_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    // int CURRENT_YEAR_QUOTE_VOLUME_BUY
    test('to test the property `CURRENT_YEAR_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    // int CURRENT_YEAR_QUOTE_VOLUME_SELL
    test('to test the property `CURRENT_YEAR_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    // int CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN
    test('to test the property `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    // int CURRENT_YEAR_TOTAL_TRADES
    test('to test the property `CURRENT_YEAR_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    // int CURRENT_YEAR_TOTAL_TRADES_BUY
    test('to test the property `CURRENT_YEAR_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    // int CURRENT_YEAR_TOTAL_TRADES_SELL
    test('to test the property `CURRENT_YEAR_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    // int CURRENT_YEAR_TOTAL_TRADES_UNKNOWN
    test('to test the property `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    // int CURRENT_YEAR_VOLUME
    test('to test the property `CURRENT_YEAR_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    // int CURRENT_YEAR_VOLUME_BUY
    test('to test the property `CURRENT_YEAR_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    // int CURRENT_YEAR_VOLUME_SELL
    test('to test the property `CURRENT_YEAR_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    // int CURRENT_YEAR_VOLUME_UNKNOWN
    test('to test the property `CURRENT_YEAR_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The unmapped instrument ID
    // String INSTRUMENT
    test('to test the property `INSTRUMENT`', () async {
      // TODO
    });

    // The CCSEQ of the latest trade.
    // String LAST_PROCESSED_TRADE_CCSEQ
    test('to test the property `LAST_PROCESSED_TRADE_CCSEQ`', () async {
      // TODO
    });

    // The price in the quote asset of the last trade processed, as reported by the market / exchange.
    // int LAST_PROCESSED_TRADE_PRICE
    test('to test the property `LAST_PROCESSED_TRADE_PRICE`', () async {
      // TODO
    });

    // The quantity of the last processed trade in the from symbol (base / coin).
    // int LAST_PROCESSED_TRADE_QUANTITY
    test('to test the property `LAST_PROCESSED_TRADE_QUANTITY`', () async {
      // TODO
    });

    // The  volume of the last processed trade in the to asset / quote.
    // int LAST_PROCESSED_TRADE_QUOTE_QUANTITY
    test('to test the property `LAST_PROCESSED_TRADE_QUOTE_QUANTITY`', () async {
      // TODO
    });

    // The side of the last processed trade.
    // String LAST_PROCESSED_TRADE_SIDE
    test('to test the property `LAST_PROCESSED_TRADE_SIDE`', () async {
      // TODO
    });

    // The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
    // int LAST_PROCESSED_TRADE_TS
    test('to test the property `LAST_PROCESSED_TRADE_TS`', () async {
      // TODO
    });

    // The CCSEQ of the latest trade.
    // String LAST_TRADE_CCSEQ
    test('to test the property `LAST_TRADE_CCSEQ`', () async {
      // TODO
    });

    // The ID of the latest trade.
    // String LAST_TRADE_ID
    test('to test the property `LAST_TRADE_ID`', () async {
      // TODO
    });

    // The quantity of the latest trade in the from symbol (base / coin).
    // int LAST_TRADE_QUANTITY
    test('to test the property `LAST_TRADE_QUANTITY`', () async {
      // TODO
    });

    // The volume of the latest trade in the to asset / quote.
    // int LAST_TRADE_QUOTE_QUANTITY
    test('to test the property `LAST_TRADE_QUOTE_QUANTITY`', () async {
      // TODO
    });

    // The side of the latest trade.
    // String LAST_TRADE_SIDE
    test('to test the property `LAST_TRADE_SIDE`', () async {
      // TODO
    });

    // The timestamp of the first trade ever recorded for the instrument
    // int LIFETIME_FIRST_TRADE_TS
    test('to test the property `LIFETIME_FIRST_TRADE_TS`', () async {
      // TODO
    });

    // The price of the highest trade ever executed for this instrument. Given in the quote asset.
    // int LIFETIME_HIGH
    test('to test the property `LIFETIME_HIGH`', () async {
      // TODO
    });

    // The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
    // int LIFETIME_HIGH_TS
    test('to test the property `LIFETIME_HIGH_TS`', () async {
      // TODO
    });

    // The price of the lowest trade ever executed for this instrument. Given in the quote asset.
    // int LIFETIME_LOW
    test('to test the property `LIFETIME_LOW`', () async {
      // TODO
    });

    // The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
    // int LIFETIME_LOW_TS
    test('to test the property `LIFETIME_LOW_TS`', () async {
      // TODO
    });

    // The price of the first trade of the instrument. Given in the quote asset.
    // int LIFETIME_OPEN
    test('to test the property `LIFETIME_OPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
    // int LIFETIME_QUOTE_VOLUME
    test('to test the property `LIFETIME_QUOTE_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
    // int LIFETIME_QUOTE_VOLUME_BUY
    test('to test the property `LIFETIME_QUOTE_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
    // int LIFETIME_QUOTE_VOLUME_SELL
    test('to test the property `LIFETIME_QUOTE_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
    // int LIFETIME_QUOTE_VOLUME_UNKNOWN
    test('to test the property `LIFETIME_QUOTE_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The total number of all trades that have ever been executed for this instrument.
    // int LIFETIME_TOTAL_TRADES
    test('to test the property `LIFETIME_TOTAL_TRADES`', () async {
      // TODO
    });

    // The total number of all buy trades that have ever been executed for this instrument.
    // int LIFETIME_TOTAL_TRADES_BUY
    test('to test the property `LIFETIME_TOTAL_TRADES_BUY`', () async {
      // TODO
    });

    // The total number of all sell trades that have ever been executed for this instrument.
    // int LIFETIME_TOTAL_TRADES_SELL
    test('to test the property `LIFETIME_TOTAL_TRADES_SELL`', () async {
      // TODO
    });

    // The total number of all unknown trades that have ever been executed for this instrument.
    // int LIFETIME_TOTAL_TRADES_UNKNOWN
    test('to test the property `LIFETIME_TOTAL_TRADES_UNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
    // int LIFETIME_VOLUME
    test('to test the property `LIFETIME_VOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
    // int LIFETIME_VOLUME_BUY
    test('to test the property `LIFETIME_VOLUME_BUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
    // int LIFETIME_VOLUME_SELL
    test('to test the property `LIFETIME_VOLUME_SELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
    // int LIFETIME_VOLUME_UNKNOWN
    test('to test the property `LIFETIME_VOLUME_UNKNOWN`', () async {
      // TODO
    });

    // The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
    // String MAPPED_INSTRUMENT
    test('to test the property `MAPPED_INSTRUMENT`', () async {
      // TODO
    });

    // The market / exchange under consideration (e.g. coinbase, kraken, etc).
    // String MARKET
    test('to test the property `MARKET`', () async {
      // TODO
    });

    // The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYHIGH
    test('to test the property `mOVING180DAYHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYLOW
    test('to test the property `mOVING180DAYLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
    // int mOVING180DAYOPEN
    test('to test the property `mOVING180DAYOPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYQUOTEVOLUME
    test('to test the property `mOVING180DAYQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYQUOTEVOLUMEBUY
    test('to test the property `mOVING180DAYQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYQUOTEVOLUMESELL
    test('to test the property `mOVING180DAYQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    // int mOVING180DAYQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING180DAYQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    // int mOVING180DAYTOTALTRADES
    test('to test the property `mOVING180DAYTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    // int mOVING180DAYTOTALTRADESBUY
    test('to test the property `mOVING180DAYTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    // int mOVING180DAYTOTALTRADESSELL
    test('to test the property `mOVING180DAYTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    // int mOVING180DAYTOTALTRADESUNKNOWN
    test('to test the property `mOVING180DAYTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    // int mOVING180DAYVOLUME
    test('to test the property `mOVING180DAYVOLUME`', () async {
      // TODO
    });

    // The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    // int mOVING180DAYVOLUMEBUY
    test('to test the property `mOVING180DAYVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    // int mOVING180DAYVOLUMESELL
    test('to test the property `mOVING180DAYVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    // int mOVING180DAYVOLUMEUNKNOWN
    test('to test the property `mOVING180DAYVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURHIGH
    test('to test the property `mOVING24HOURHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURLOW
    test('to test the property `mOVING24HOURLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
    // int mOVING24HOUROPEN
    test('to test the property `mOVING24HOUROPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURQUOTEVOLUME
    test('to test the property `mOVING24HOURQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURQUOTEVOLUMEBUY
    test('to test the property `mOVING24HOURQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURQUOTEVOLUMESELL
    test('to test the property `mOVING24HOURQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    // int mOVING24HOURQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING24HOURQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    // int mOVING24HOURTOTALTRADES
    test('to test the property `mOVING24HOURTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    // int mOVING24HOURTOTALTRADESBUY
    test('to test the property `mOVING24HOURTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    // int mOVING24HOURTOTALTRADESSELL
    test('to test the property `mOVING24HOURTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    // int mOVING24HOURTOTALTRADESUNKNOWN
    test('to test the property `mOVING24HOURTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    // int mOVING24HOURVOLUME
    test('to test the property `mOVING24HOURVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    // int mOVING24HOURVOLUMEBUY
    test('to test the property `mOVING24HOURVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    // int mOVING24HOURVOLUMESELL
    test('to test the property `mOVING24HOURVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    // int mOVING24HOURVOLUMEUNKNOWN
    test('to test the property `mOVING24HOURVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYHIGH
    test('to test the property `mOVING30DAYHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYLOW
    test('to test the property `mOVING30DAYLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
    // int mOVING30DAYOPEN
    test('to test the property `mOVING30DAYOPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYQUOTEVOLUME
    test('to test the property `mOVING30DAYQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYQUOTEVOLUMEBUY
    test('to test the property `mOVING30DAYQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYQUOTEVOLUMESELL
    test('to test the property `mOVING30DAYQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    // int mOVING30DAYQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING30DAYQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    // int mOVING30DAYTOTALTRADES
    test('to test the property `mOVING30DAYTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    // int mOVING30DAYTOTALTRADESBUY
    test('to test the property `mOVING30DAYTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    // int mOVING30DAYTOTALTRADESSELL
    test('to test the property `mOVING30DAYTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    // int mOVING30DAYTOTALTRADESUNKNOWN
    test('to test the property `mOVING30DAYTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    // int mOVING30DAYVOLUME
    test('to test the property `mOVING30DAYVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    // int mOVING30DAYVOLUMEBUY
    test('to test the property `mOVING30DAYVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    // int mOVING30DAYVOLUMESELL
    test('to test the property `mOVING30DAYVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    // int mOVING30DAYVOLUMEUNKNOWN
    test('to test the property `mOVING30DAYVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYHIGH
    test('to test the property `mOVING365DAYHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYLOW
    test('to test the property `mOVING365DAYLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
    // int mOVING365DAYOPEN
    test('to test the property `mOVING365DAYOPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYQUOTEVOLUME
    test('to test the property `mOVING365DAYQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYQUOTEVOLUMEBUY
    test('to test the property `mOVING365DAYQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYQUOTEVOLUMESELL
    test('to test the property `mOVING365DAYQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    // int mOVING365DAYQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING365DAYQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    // int mOVING365DAYTOTALTRADES
    test('to test the property `mOVING365DAYTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    // int mOVING365DAYTOTALTRADESBUY
    test('to test the property `mOVING365DAYTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    // int mOVING365DAYTOTALTRADESSELL
    test('to test the property `mOVING365DAYTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    // int mOVING365DAYTOTALTRADESUNKNOWN
    test('to test the property `mOVING365DAYTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    // int mOVING365DAYVOLUME
    test('to test the property `mOVING365DAYVOLUME`', () async {
      // TODO
    });

    // The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    // int mOVING365DAYVOLUMEBUY
    test('to test the property `mOVING365DAYVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    // int mOVING365DAYVOLUMESELL
    test('to test the property `mOVING365DAYVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    // int mOVING365DAYVOLUMEUNKNOWN
    test('to test the property `mOVING365DAYVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYHIGH
    test('to test the property `mOVING7DAYHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYLOW
    test('to test the property `mOVING7DAYLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
    // int mOVING7DAYOPEN
    test('to test the property `mOVING7DAYOPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYQUOTEVOLUME
    test('to test the property `mOVING7DAYQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYQUOTEVOLUMEBUY
    test('to test the property `mOVING7DAYQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYQUOTEVOLUMESELL
    test('to test the property `mOVING7DAYQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    // int mOVING7DAYQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING7DAYQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    // int mOVING7DAYTOTALTRADES
    test('to test the property `mOVING7DAYTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    // int mOVING7DAYTOTALTRADESBUY
    test('to test the property `mOVING7DAYTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    // int mOVING7DAYTOTALTRADESSELL
    test('to test the property `mOVING7DAYTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    // int mOVING7DAYTOTALTRADESUNKNOWN
    test('to test the property `mOVING7DAYTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    // int mOVING7DAYVOLUME
    test('to test the property `mOVING7DAYVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    // int mOVING7DAYVOLUMEBUY
    test('to test the property `mOVING7DAYVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    // int mOVING7DAYVOLUMESELL
    test('to test the property `mOVING7DAYVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    // int mOVING7DAYVOLUMEUNKNOWN
    test('to test the property `mOVING7DAYVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYHIGH
    test('to test the property `mOVING90DAYHIGH`', () async {
      // TODO
    });

    // The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYLOW
    test('to test the property `mOVING90DAYLOW`', () async {
      // TODO
    });

    // The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
    // int mOVING90DAYOPEN
    test('to test the property `mOVING90DAYOPEN`', () async {
      // TODO
    });

    // The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYQUOTEVOLUME
    test('to test the property `mOVING90DAYQUOTEVOLUME`', () async {
      // TODO
    });

    // The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYQUOTEVOLUMEBUY
    test('to test the property `mOVING90DAYQUOTEVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYQUOTEVOLUMESELL
    test('to test the property `mOVING90DAYQUOTEVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    // int mOVING90DAYQUOTEVOLUMEUNKNOWN
    test('to test the property `mOVING90DAYQUOTEVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    // int mOVING90DAYTOTALTRADES
    test('to test the property `mOVING90DAYTOTALTRADES`', () async {
      // TODO
    });

    // The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    // int mOVING90DAYTOTALTRADESBUY
    test('to test the property `mOVING90DAYTOTALTRADESBUY`', () async {
      // TODO
    });

    // The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    // int mOVING90DAYTOTALTRADESSELL
    test('to test the property `mOVING90DAYTOTALTRADESSELL`', () async {
      // TODO
    });

    // The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    // int mOVING90DAYTOTALTRADESUNKNOWN
    test('to test the property `mOVING90DAYTOTALTRADESUNKNOWN`', () async {
      // TODO
    });

    // The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    // int mOVING90DAYVOLUME
    test('to test the property `mOVING90DAYVOLUME`', () async {
      // TODO
    });

    // The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    // int mOVING90DAYVOLUMEBUY
    test('to test the property `mOVING90DAYVOLUMEBUY`', () async {
      // TODO
    });

    // The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    // int mOVING90DAYVOLUMESELL
    test('to test the property `mOVING90DAYVOLUMESELL`', () async {
      // TODO
    });

    // The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    // int mOVING90DAYVOLUMEUNKNOWN
    test('to test the property `mOVING90DAYVOLUMEUNKNOWN`', () async {
      // TODO
    });

    // The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
    // int PRICE
    test('to test the property `PRICE`', () async {
      // TODO
    });

    // The flag indicating whether the price has increased, decreased, or not changed
    // String PRICE_FLAG
    test('to test the property `PRICE_FLAG`', () async {
      // TODO
    });

    // The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
    // int PRICE_LAST_UPDATE_TS
    test('to test the property `PRICE_LAST_UPDATE_TS`', () async {
      // TODO
    });

    // The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
    // String QUOTE
    test('to test the property `QUOTE`', () async {
      // TODO
    });

    // The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
    // int TOP_ASK_LAST_UPDATE_TS
    test('to test the property `TOP_ASK_LAST_UPDATE_TS`', () async {
      // TODO
    });

    // The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
    // int TOP_ASK_PRICE
    test('to test the property `TOP_ASK_PRICE`', () async {
      // TODO
    });

    // The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
    // int TOP_ASK_QUANTITY
    test('to test the property `TOP_ASK_QUANTITY`', () async {
      // TODO
    });

    // The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
    // int TOP_BID_LAST_UPDATE_TS
    test('to test the property `TOP_BID_LAST_UPDATE_TS`', () async {
      // TODO
    });

    // The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
    // int TOP_BID_PRICE
    test('to test the property `TOP_BID_PRICE`', () async {
      // TODO
    });

    // The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
    // int TOP_BID_QUANTITY
    test('to test the property `TOP_BID_QUANTITY`', () async {
      // TODO
    });

    // The type of the message.
    // String TYPE
    test('to test the property `TYPE`', () async {
      // TODO
    });

  });
}
