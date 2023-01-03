//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTMARKETDATA {
  /// Returns a new [SPOTINSTRUMENTMARKETDATA] instance.
  SPOTINSTRUMENTMARKETDATA({
    this.BASE,
    this.CCSEQ,
    this.CURRENT_DAY_HIGH,
    this.CURRENT_DAY_LOW,
    this.CURRENT_DAY_OPEN,
    this.CURRENT_DAY_QUOTE_VOLUME,
    this.CURRENT_DAY_QUOTE_VOLUME_BUY,
    this.CURRENT_DAY_QUOTE_VOLUME_SELL,
    this.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN,
    this.CURRENT_DAY_TOTAL_TRADES,
    this.CURRENT_DAY_TOTAL_TRADES_BUY,
    this.CURRENT_DAY_TOTAL_TRADES_SELL,
    this.CURRENT_DAY_TOTAL_TRADES_UNKNOWN,
    this.CURRENT_DAY_VOLUME,
    this.CURRENT_DAY_VOLUME_BUY,
    this.CURRENT_DAY_VOLUME_SELL,
    this.CURRENT_DAY_VOLUME_UNKNOWN,
    this.CURRENT_HOUR_HIGH,
    this.CURRENT_HOUR_LOW,
    this.CURRENT_HOUR_OPEN,
    this.CURRENT_HOUR_QUOTE_VOLUME,
    this.CURRENT_HOUR_QUOTE_VOLUME_BUY,
    this.CURRENT_HOUR_QUOTE_VOLUME_SELL,
    this.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN,
    this.CURRENT_HOUR_TOTAL_TRADES,
    this.CURRENT_HOUR_TOTAL_TRADES_BUY,
    this.CURRENT_HOUR_TOTAL_TRADES_SELL,
    this.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN,
    this.CURRENT_HOUR_VOLUME,
    this.CURRENT_HOUR_VOLUME_BUY,
    this.CURRENT_HOUR_VOLUME_SELL,
    this.CURRENT_HOUR_VOLUME_UNKNOWN,
    this.CURRENT_MONTH_HIGH,
    this.CURRENT_MONTH_LOW,
    this.CURRENT_MONTH_OPEN,
    this.CURRENT_MONTH_QUOTE_VOLUME,
    this.CURRENT_MONTH_QUOTE_VOLUME_BUY,
    this.CURRENT_MONTH_QUOTE_VOLUME_SELL,
    this.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN,
    this.CURRENT_MONTH_TOTAL_TRADES,
    this.CURRENT_MONTH_TOTAL_TRADES_BUY,
    this.CURRENT_MONTH_TOTAL_TRADES_SELL,
    this.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN,
    this.CURRENT_MONTH_VOLUME,
    this.CURRENT_MONTH_VOLUME_BUY,
    this.CURRENT_MONTH_VOLUME_SELL,
    this.CURRENT_MONTH_VOLUME_UNKNOWN,
    this.CURRENT_WEEK_HIGH,
    this.CURRENT_WEEK_LOW,
    this.CURRENT_WEEK_OPEN,
    this.CURRENT_WEEK_QUOTE_VOLUME,
    this.CURRENT_WEEK_QUOTE_VOLUME_BUY,
    this.CURRENT_WEEK_QUOTE_VOLUME_SELL,
    this.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN,
    this.CURRENT_WEEK_TOTAL_TRADES,
    this.CURRENT_WEEK_TOTAL_TRADES_BUY,
    this.CURRENT_WEEK_TOTAL_TRADES_SELL,
    this.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN,
    this.CURRENT_WEEK_VOLUME,
    this.CURRENT_WEEK_VOLUME_BUY,
    this.CURRENT_WEEK_VOLUME_SELL,
    this.CURRENT_WEEK_VOLUME_UNKNOWN,
    this.CURRENT_YEAR_HIGH,
    this.CURRENT_YEAR_LOW,
    this.CURRENT_YEAR_OPEN,
    this.CURRENT_YEAR_QUOTE_VOLUME,
    this.CURRENT_YEAR_QUOTE_VOLUME_BUY,
    this.CURRENT_YEAR_QUOTE_VOLUME_SELL,
    this.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN,
    this.CURRENT_YEAR_TOTAL_TRADES,
    this.CURRENT_YEAR_TOTAL_TRADES_BUY,
    this.CURRENT_YEAR_TOTAL_TRADES_SELL,
    this.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN,
    this.CURRENT_YEAR_VOLUME,
    this.CURRENT_YEAR_VOLUME_BUY,
    this.CURRENT_YEAR_VOLUME_SELL,
    this.CURRENT_YEAR_VOLUME_UNKNOWN,
    this.INSTRUMENT,
    this.LAST_PROCESSED_TRADE_CCSEQ,
    this.LAST_PROCESSED_TRADE_PRICE,
    this.LAST_PROCESSED_TRADE_QUANTITY,
    this.LAST_PROCESSED_TRADE_QUOTE_QUANTITY,
    this.LAST_PROCESSED_TRADE_SIDE,
    this.LAST_PROCESSED_TRADE_TS,
    this.LAST_TRADE_CCSEQ,
    this.LAST_TRADE_ID,
    this.LAST_TRADE_QUANTITY,
    this.LAST_TRADE_QUOTE_QUANTITY,
    this.LAST_TRADE_SIDE,
    this.LIFETIME_FIRST_TRADE_TS,
    this.LIFETIME_HIGH,
    this.LIFETIME_HIGH_TS,
    this.LIFETIME_LOW,
    this.LIFETIME_LOW_TS,
    this.LIFETIME_OPEN,
    this.LIFETIME_QUOTE_VOLUME,
    this.LIFETIME_QUOTE_VOLUME_BUY,
    this.LIFETIME_QUOTE_VOLUME_SELL,
    this.LIFETIME_QUOTE_VOLUME_UNKNOWN,
    this.LIFETIME_TOTAL_TRADES,
    this.LIFETIME_TOTAL_TRADES_BUY,
    this.LIFETIME_TOTAL_TRADES_SELL,
    this.LIFETIME_TOTAL_TRADES_UNKNOWN,
    this.LIFETIME_VOLUME,
    this.LIFETIME_VOLUME_BUY,
    this.LIFETIME_VOLUME_SELL,
    this.LIFETIME_VOLUME_UNKNOWN,
    this.MAPPED_INSTRUMENT,
    this.MARKET,
    this.mOVING180DAYHIGH,
    this.mOVING180DAYLOW,
    this.mOVING180DAYOPEN,
    this.mOVING180DAYQUOTEVOLUME,
    this.mOVING180DAYQUOTEVOLUMEBUY,
    this.mOVING180DAYQUOTEVOLUMESELL,
    this.mOVING180DAYQUOTEVOLUMEUNKNOWN,
    this.mOVING180DAYTOTALTRADES,
    this.mOVING180DAYTOTALTRADESBUY,
    this.mOVING180DAYTOTALTRADESSELL,
    this.mOVING180DAYTOTALTRADESUNKNOWN,
    this.mOVING180DAYVOLUME,
    this.mOVING180DAYVOLUMEBUY,
    this.mOVING180DAYVOLUMESELL,
    this.mOVING180DAYVOLUMEUNKNOWN,
    this.mOVING24HOURHIGH,
    this.mOVING24HOURLOW,
    this.mOVING24HOUROPEN,
    this.mOVING24HOURQUOTEVOLUME,
    this.mOVING24HOURQUOTEVOLUMEBUY,
    this.mOVING24HOURQUOTEVOLUMESELL,
    this.mOVING24HOURQUOTEVOLUMEUNKNOWN,
    this.mOVING24HOURTOTALTRADES,
    this.mOVING24HOURTOTALTRADESBUY,
    this.mOVING24HOURTOTALTRADESSELL,
    this.mOVING24HOURTOTALTRADESUNKNOWN,
    this.mOVING24HOURVOLUME,
    this.mOVING24HOURVOLUMEBUY,
    this.mOVING24HOURVOLUMESELL,
    this.mOVING24HOURVOLUMEUNKNOWN,
    this.mOVING30DAYHIGH,
    this.mOVING30DAYLOW,
    this.mOVING30DAYOPEN,
    this.mOVING30DAYQUOTEVOLUME,
    this.mOVING30DAYQUOTEVOLUMEBUY,
    this.mOVING30DAYQUOTEVOLUMESELL,
    this.mOVING30DAYQUOTEVOLUMEUNKNOWN,
    this.mOVING30DAYTOTALTRADES,
    this.mOVING30DAYTOTALTRADESBUY,
    this.mOVING30DAYTOTALTRADESSELL,
    this.mOVING30DAYTOTALTRADESUNKNOWN,
    this.mOVING30DAYVOLUME,
    this.mOVING30DAYVOLUMEBUY,
    this.mOVING30DAYVOLUMESELL,
    this.mOVING30DAYVOLUMEUNKNOWN,
    this.mOVING365DAYHIGH,
    this.mOVING365DAYLOW,
    this.mOVING365DAYOPEN,
    this.mOVING365DAYQUOTEVOLUME,
    this.mOVING365DAYQUOTEVOLUMEBUY,
    this.mOVING365DAYQUOTEVOLUMESELL,
    this.mOVING365DAYQUOTEVOLUMEUNKNOWN,
    this.mOVING365DAYTOTALTRADES,
    this.mOVING365DAYTOTALTRADESBUY,
    this.mOVING365DAYTOTALTRADESSELL,
    this.mOVING365DAYTOTALTRADESUNKNOWN,
    this.mOVING365DAYVOLUME,
    this.mOVING365DAYVOLUMEBUY,
    this.mOVING365DAYVOLUMESELL,
    this.mOVING365DAYVOLUMEUNKNOWN,
    this.mOVING7DAYHIGH,
    this.mOVING7DAYLOW,
    this.mOVING7DAYOPEN,
    this.mOVING7DAYQUOTEVOLUME,
    this.mOVING7DAYQUOTEVOLUMEBUY,
    this.mOVING7DAYQUOTEVOLUMESELL,
    this.mOVING7DAYQUOTEVOLUMEUNKNOWN,
    this.mOVING7DAYTOTALTRADES,
    this.mOVING7DAYTOTALTRADESBUY,
    this.mOVING7DAYTOTALTRADESSELL,
    this.mOVING7DAYTOTALTRADESUNKNOWN,
    this.mOVING7DAYVOLUME,
    this.mOVING7DAYVOLUMEBUY,
    this.mOVING7DAYVOLUMESELL,
    this.mOVING7DAYVOLUMEUNKNOWN,
    this.mOVING90DAYHIGH,
    this.mOVING90DAYLOW,
    this.mOVING90DAYOPEN,
    this.mOVING90DAYQUOTEVOLUME,
    this.mOVING90DAYQUOTEVOLUMEBUY,
    this.mOVING90DAYQUOTEVOLUMESELL,
    this.mOVING90DAYQUOTEVOLUMEUNKNOWN,
    this.mOVING90DAYTOTALTRADES,
    this.mOVING90DAYTOTALTRADESBUY,
    this.mOVING90DAYTOTALTRADESSELL,
    this.mOVING90DAYTOTALTRADESUNKNOWN,
    this.mOVING90DAYVOLUME,
    this.mOVING90DAYVOLUMEBUY,
    this.mOVING90DAYVOLUMESELL,
    this.mOVING90DAYVOLUMEUNKNOWN,
    this.PRICE,
    this.PRICE_FLAG,
    this.PRICE_LAST_UPDATE_TS,
    this.QUOTE,
    this.TOP_ASK_LAST_UPDATE_TS,
    this.TOP_ASK_PRICE,
    this.TOP_ASK_QUANTITY,
    this.TOP_BID_LAST_UPDATE_TS,
    this.TOP_BID_PRICE,
    this.TOP_BID_QUANTITY,
    this.TYPE,
  });

  /// The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? BASE;

  /// Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CCSEQ;

  /// The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_HIGH;

  /// The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_LOW;

  /// The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_OPEN;

  /// The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_TOTAL_TRADES;

  /// The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_TOTAL_TRADES_BUY;

  /// The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_TOTAL_TRADES_SELL;

  /// The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_VOLUME;

  /// The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_VOLUME_BUY;

  /// The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_DAY_VOLUME_UNKNOWN;

  /// The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_HIGH;

  /// The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_LOW;

  /// The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_OPEN;

  /// The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades that have occurred since the start of the current hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_TOTAL_TRADES;

  /// The total number of buy trades since the start of the current hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_TOTAL_TRADES_BUY;

  /// The total number of sell trades since the start of the current hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_TOTAL_TRADES_SELL;

  /// The total number of unknown trades since the start of the current hour.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_VOLUME;

  /// The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_VOLUME_BUY;

  /// The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_VOLUME_SELL;

  /// The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_HOUR_VOLUME_UNKNOWN;

  /// The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_HIGH;

  /// The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_LOW;

  /// The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_OPEN;

  /// The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_TOTAL_TRADES;

  /// The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_TOTAL_TRADES_BUY;

  /// The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_VOLUME;

  /// The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_VOLUME_BUY;

  /// The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_MONTH_VOLUME_UNKNOWN;

  /// The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_HIGH;

  /// The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_LOW;

  /// The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_OPEN;

  /// The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_TOTAL_TRADES;

  /// The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_TOTAL_TRADES_BUY;

  /// The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_VOLUME;

  /// The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_VOLUME_BUY;

  /// The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_VOLUME_SELL;

  /// The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_WEEK_VOLUME_UNKNOWN;

  /// The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_HIGH;

  /// The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_LOW;

  /// The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_OPEN;

  /// The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_TOTAL_TRADES;

  /// The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_TOTAL_TRADES_BUY;

  /// The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_VOLUME;

  /// The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_VOLUME_BUY;

  /// The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CURRENT_YEAR_VOLUME_UNKNOWN;

  /// The unmapped instrument ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT;

  /// The CCSEQ of the latest trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? LAST_PROCESSED_TRADE_CCSEQ;

  /// The price in the quote asset of the last trade processed, as reported by the market / exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_PROCESSED_TRADE_PRICE;

  /// The quantity of the last processed trade in the from symbol (base / coin).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_PROCESSED_TRADE_QUANTITY;

  /// The  volume of the last processed trade in the to asset / quote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_PROCESSED_TRADE_QUOTE_QUANTITY;

  /// The side of the last processed trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? LAST_PROCESSED_TRADE_SIDE;

  /// The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_PROCESSED_TRADE_TS;

  /// The CCSEQ of the latest trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? LAST_TRADE_CCSEQ;

  /// The ID of the latest trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? LAST_TRADE_ID;

  /// The quantity of the latest trade in the from symbol (base / coin).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_TRADE_QUANTITY;

  /// The volume of the latest trade in the to asset / quote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_TRADE_QUOTE_QUANTITY;

  /// The side of the latest trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? LAST_TRADE_SIDE;

  /// The timestamp of the first trade ever recorded for the instrument
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_FIRST_TRADE_TS;

  /// The price of the highest trade ever executed for this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_HIGH;

  /// The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_HIGH_TS;

  /// The price of the lowest trade ever executed for this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_LOW;

  /// The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_LOW_TS;

  /// The price of the first trade of the instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_OPEN;

  /// The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_QUOTE_VOLUME_UNKNOWN;

  /// The total number of all trades that have ever been executed for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_TOTAL_TRADES;

  /// The total number of all buy trades that have ever been executed for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_TOTAL_TRADES_BUY;

  /// The total number of all sell trades that have ever been executed for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_TOTAL_TRADES_SELL;

  /// The total number of all unknown trades that have ever been executed for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_VOLUME;

  /// The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_VOLUME_BUY;

  /// The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_VOLUME_SELL;

  /// The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LIFETIME_VOLUME_UNKNOWN;

  /// The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. coinbase, kraken, etc).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? MARKET;

  /// The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYLOW;

  /// The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYOPEN;

  /// The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYVOLUME;

  /// The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING180DAYVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURHIGH;

  /// The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURLOW;

  /// The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOUROPEN;

  /// The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURVOLUME;

  /// The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURVOLUMEBUY;

  /// The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURVOLUMESELL;

  /// The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING24HOURVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYLOW;

  /// The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYOPEN;

  /// The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYVOLUME;

  /// The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING30DAYVOLUMEUNKNOWN;

  /// The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYLOW;

  /// The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYOPEN;

  /// The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYTOTALTRADES;

  /// The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYVOLUME;

  /// The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING365DAYVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYLOW;

  /// The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYOPEN;

  /// The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYVOLUME;

  /// The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING7DAYVOLUMEUNKNOWN;

  /// The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYLOW;

  /// The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYOPEN;

  /// The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYVOLUME;

  /// The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mOVING90DAYVOLUMEUNKNOWN;

  /// The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? PRICE;

  /// The flag indicating whether the price has increased, decreased, or not changed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? PRICE_FLAG;

  /// The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? PRICE_LAST_UPDATE_TS;

  /// The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? QUOTE;

  /// The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_ASK_LAST_UPDATE_TS;

  /// The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_ASK_PRICE;

  /// The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_ASK_QUANTITY;

  /// The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_BID_LAST_UPDATE_TS;

  /// The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_BID_PRICE;

  /// The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOP_BID_QUANTITY;

  /// The type of the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? TYPE;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTMARKETDATA &&
     other.BASE == BASE &&
     other.CCSEQ == CCSEQ &&
     other.CURRENT_DAY_HIGH == CURRENT_DAY_HIGH &&
     other.CURRENT_DAY_LOW == CURRENT_DAY_LOW &&
     other.CURRENT_DAY_OPEN == CURRENT_DAY_OPEN &&
     other.CURRENT_DAY_QUOTE_VOLUME == CURRENT_DAY_QUOTE_VOLUME &&
     other.CURRENT_DAY_QUOTE_VOLUME_BUY == CURRENT_DAY_QUOTE_VOLUME_BUY &&
     other.CURRENT_DAY_QUOTE_VOLUME_SELL == CURRENT_DAY_QUOTE_VOLUME_SELL &&
     other.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN == CURRENT_DAY_QUOTE_VOLUME_UNKNOWN &&
     other.CURRENT_DAY_TOTAL_TRADES == CURRENT_DAY_TOTAL_TRADES &&
     other.CURRENT_DAY_TOTAL_TRADES_BUY == CURRENT_DAY_TOTAL_TRADES_BUY &&
     other.CURRENT_DAY_TOTAL_TRADES_SELL == CURRENT_DAY_TOTAL_TRADES_SELL &&
     other.CURRENT_DAY_TOTAL_TRADES_UNKNOWN == CURRENT_DAY_TOTAL_TRADES_UNKNOWN &&
     other.CURRENT_DAY_VOLUME == CURRENT_DAY_VOLUME &&
     other.CURRENT_DAY_VOLUME_BUY == CURRENT_DAY_VOLUME_BUY &&
     other.CURRENT_DAY_VOLUME_SELL == CURRENT_DAY_VOLUME_SELL &&
     other.CURRENT_DAY_VOLUME_UNKNOWN == CURRENT_DAY_VOLUME_UNKNOWN &&
     other.CURRENT_HOUR_HIGH == CURRENT_HOUR_HIGH &&
     other.CURRENT_HOUR_LOW == CURRENT_HOUR_LOW &&
     other.CURRENT_HOUR_OPEN == CURRENT_HOUR_OPEN &&
     other.CURRENT_HOUR_QUOTE_VOLUME == CURRENT_HOUR_QUOTE_VOLUME &&
     other.CURRENT_HOUR_QUOTE_VOLUME_BUY == CURRENT_HOUR_QUOTE_VOLUME_BUY &&
     other.CURRENT_HOUR_QUOTE_VOLUME_SELL == CURRENT_HOUR_QUOTE_VOLUME_SELL &&
     other.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN == CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN &&
     other.CURRENT_HOUR_TOTAL_TRADES == CURRENT_HOUR_TOTAL_TRADES &&
     other.CURRENT_HOUR_TOTAL_TRADES_BUY == CURRENT_HOUR_TOTAL_TRADES_BUY &&
     other.CURRENT_HOUR_TOTAL_TRADES_SELL == CURRENT_HOUR_TOTAL_TRADES_SELL &&
     other.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN == CURRENT_HOUR_TOTAL_TRADES_UNKNOWN &&
     other.CURRENT_HOUR_VOLUME == CURRENT_HOUR_VOLUME &&
     other.CURRENT_HOUR_VOLUME_BUY == CURRENT_HOUR_VOLUME_BUY &&
     other.CURRENT_HOUR_VOLUME_SELL == CURRENT_HOUR_VOLUME_SELL &&
     other.CURRENT_HOUR_VOLUME_UNKNOWN == CURRENT_HOUR_VOLUME_UNKNOWN &&
     other.CURRENT_MONTH_HIGH == CURRENT_MONTH_HIGH &&
     other.CURRENT_MONTH_LOW == CURRENT_MONTH_LOW &&
     other.CURRENT_MONTH_OPEN == CURRENT_MONTH_OPEN &&
     other.CURRENT_MONTH_QUOTE_VOLUME == CURRENT_MONTH_QUOTE_VOLUME &&
     other.CURRENT_MONTH_QUOTE_VOLUME_BUY == CURRENT_MONTH_QUOTE_VOLUME_BUY &&
     other.CURRENT_MONTH_QUOTE_VOLUME_SELL == CURRENT_MONTH_QUOTE_VOLUME_SELL &&
     other.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN == CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN &&
     other.CURRENT_MONTH_TOTAL_TRADES == CURRENT_MONTH_TOTAL_TRADES &&
     other.CURRENT_MONTH_TOTAL_TRADES_BUY == CURRENT_MONTH_TOTAL_TRADES_BUY &&
     other.CURRENT_MONTH_TOTAL_TRADES_SELL == CURRENT_MONTH_TOTAL_TRADES_SELL &&
     other.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN == CURRENT_MONTH_TOTAL_TRADES_UNKNOWN &&
     other.CURRENT_MONTH_VOLUME == CURRENT_MONTH_VOLUME &&
     other.CURRENT_MONTH_VOLUME_BUY == CURRENT_MONTH_VOLUME_BUY &&
     other.CURRENT_MONTH_VOLUME_SELL == CURRENT_MONTH_VOLUME_SELL &&
     other.CURRENT_MONTH_VOLUME_UNKNOWN == CURRENT_MONTH_VOLUME_UNKNOWN &&
     other.CURRENT_WEEK_HIGH == CURRENT_WEEK_HIGH &&
     other.CURRENT_WEEK_LOW == CURRENT_WEEK_LOW &&
     other.CURRENT_WEEK_OPEN == CURRENT_WEEK_OPEN &&
     other.CURRENT_WEEK_QUOTE_VOLUME == CURRENT_WEEK_QUOTE_VOLUME &&
     other.CURRENT_WEEK_QUOTE_VOLUME_BUY == CURRENT_WEEK_QUOTE_VOLUME_BUY &&
     other.CURRENT_WEEK_QUOTE_VOLUME_SELL == CURRENT_WEEK_QUOTE_VOLUME_SELL &&
     other.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN == CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN &&
     other.CURRENT_WEEK_TOTAL_TRADES == CURRENT_WEEK_TOTAL_TRADES &&
     other.CURRENT_WEEK_TOTAL_TRADES_BUY == CURRENT_WEEK_TOTAL_TRADES_BUY &&
     other.CURRENT_WEEK_TOTAL_TRADES_SELL == CURRENT_WEEK_TOTAL_TRADES_SELL &&
     other.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN == CURRENT_WEEK_TOTAL_TRADES_UNKNOWN &&
     other.CURRENT_WEEK_VOLUME == CURRENT_WEEK_VOLUME &&
     other.CURRENT_WEEK_VOLUME_BUY == CURRENT_WEEK_VOLUME_BUY &&
     other.CURRENT_WEEK_VOLUME_SELL == CURRENT_WEEK_VOLUME_SELL &&
     other.CURRENT_WEEK_VOLUME_UNKNOWN == CURRENT_WEEK_VOLUME_UNKNOWN &&
     other.CURRENT_YEAR_HIGH == CURRENT_YEAR_HIGH &&
     other.CURRENT_YEAR_LOW == CURRENT_YEAR_LOW &&
     other.CURRENT_YEAR_OPEN == CURRENT_YEAR_OPEN &&
     other.CURRENT_YEAR_QUOTE_VOLUME == CURRENT_YEAR_QUOTE_VOLUME &&
     other.CURRENT_YEAR_QUOTE_VOLUME_BUY == CURRENT_YEAR_QUOTE_VOLUME_BUY &&
     other.CURRENT_YEAR_QUOTE_VOLUME_SELL == CURRENT_YEAR_QUOTE_VOLUME_SELL &&
     other.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN == CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN &&
     other.CURRENT_YEAR_TOTAL_TRADES == CURRENT_YEAR_TOTAL_TRADES &&
     other.CURRENT_YEAR_TOTAL_TRADES_BUY == CURRENT_YEAR_TOTAL_TRADES_BUY &&
     other.CURRENT_YEAR_TOTAL_TRADES_SELL == CURRENT_YEAR_TOTAL_TRADES_SELL &&
     other.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN == CURRENT_YEAR_TOTAL_TRADES_UNKNOWN &&
     other.CURRENT_YEAR_VOLUME == CURRENT_YEAR_VOLUME &&
     other.CURRENT_YEAR_VOLUME_BUY == CURRENT_YEAR_VOLUME_BUY &&
     other.CURRENT_YEAR_VOLUME_SELL == CURRENT_YEAR_VOLUME_SELL &&
     other.CURRENT_YEAR_VOLUME_UNKNOWN == CURRENT_YEAR_VOLUME_UNKNOWN &&
     other.INSTRUMENT == INSTRUMENT &&
     other.LAST_PROCESSED_TRADE_CCSEQ == LAST_PROCESSED_TRADE_CCSEQ &&
     other.LAST_PROCESSED_TRADE_PRICE == LAST_PROCESSED_TRADE_PRICE &&
     other.LAST_PROCESSED_TRADE_QUANTITY == LAST_PROCESSED_TRADE_QUANTITY &&
     other.LAST_PROCESSED_TRADE_QUOTE_QUANTITY == LAST_PROCESSED_TRADE_QUOTE_QUANTITY &&
     other.LAST_PROCESSED_TRADE_SIDE == LAST_PROCESSED_TRADE_SIDE &&
     other.LAST_PROCESSED_TRADE_TS == LAST_PROCESSED_TRADE_TS &&
     other.LAST_TRADE_CCSEQ == LAST_TRADE_CCSEQ &&
     other.LAST_TRADE_ID == LAST_TRADE_ID &&
     other.LAST_TRADE_QUANTITY == LAST_TRADE_QUANTITY &&
     other.LAST_TRADE_QUOTE_QUANTITY == LAST_TRADE_QUOTE_QUANTITY &&
     other.LAST_TRADE_SIDE == LAST_TRADE_SIDE &&
     other.LIFETIME_FIRST_TRADE_TS == LIFETIME_FIRST_TRADE_TS &&
     other.LIFETIME_HIGH == LIFETIME_HIGH &&
     other.LIFETIME_HIGH_TS == LIFETIME_HIGH_TS &&
     other.LIFETIME_LOW == LIFETIME_LOW &&
     other.LIFETIME_LOW_TS == LIFETIME_LOW_TS &&
     other.LIFETIME_OPEN == LIFETIME_OPEN &&
     other.LIFETIME_QUOTE_VOLUME == LIFETIME_QUOTE_VOLUME &&
     other.LIFETIME_QUOTE_VOLUME_BUY == LIFETIME_QUOTE_VOLUME_BUY &&
     other.LIFETIME_QUOTE_VOLUME_SELL == LIFETIME_QUOTE_VOLUME_SELL &&
     other.LIFETIME_QUOTE_VOLUME_UNKNOWN == LIFETIME_QUOTE_VOLUME_UNKNOWN &&
     other.LIFETIME_TOTAL_TRADES == LIFETIME_TOTAL_TRADES &&
     other.LIFETIME_TOTAL_TRADES_BUY == LIFETIME_TOTAL_TRADES_BUY &&
     other.LIFETIME_TOTAL_TRADES_SELL == LIFETIME_TOTAL_TRADES_SELL &&
     other.LIFETIME_TOTAL_TRADES_UNKNOWN == LIFETIME_TOTAL_TRADES_UNKNOWN &&
     other.LIFETIME_VOLUME == LIFETIME_VOLUME &&
     other.LIFETIME_VOLUME_BUY == LIFETIME_VOLUME_BUY &&
     other.LIFETIME_VOLUME_SELL == LIFETIME_VOLUME_SELL &&
     other.LIFETIME_VOLUME_UNKNOWN == LIFETIME_VOLUME_UNKNOWN &&
     other.MAPPED_INSTRUMENT == MAPPED_INSTRUMENT &&
     other.MARKET == MARKET &&
     other.mOVING180DAYHIGH == mOVING180DAYHIGH &&
     other.mOVING180DAYLOW == mOVING180DAYLOW &&
     other.mOVING180DAYOPEN == mOVING180DAYOPEN &&
     other.mOVING180DAYQUOTEVOLUME == mOVING180DAYQUOTEVOLUME &&
     other.mOVING180DAYQUOTEVOLUMEBUY == mOVING180DAYQUOTEVOLUMEBUY &&
     other.mOVING180DAYQUOTEVOLUMESELL == mOVING180DAYQUOTEVOLUMESELL &&
     other.mOVING180DAYQUOTEVOLUMEUNKNOWN == mOVING180DAYQUOTEVOLUMEUNKNOWN &&
     other.mOVING180DAYTOTALTRADES == mOVING180DAYTOTALTRADES &&
     other.mOVING180DAYTOTALTRADESBUY == mOVING180DAYTOTALTRADESBUY &&
     other.mOVING180DAYTOTALTRADESSELL == mOVING180DAYTOTALTRADESSELL &&
     other.mOVING180DAYTOTALTRADESUNKNOWN == mOVING180DAYTOTALTRADESUNKNOWN &&
     other.mOVING180DAYVOLUME == mOVING180DAYVOLUME &&
     other.mOVING180DAYVOLUMEBUY == mOVING180DAYVOLUMEBUY &&
     other.mOVING180DAYVOLUMESELL == mOVING180DAYVOLUMESELL &&
     other.mOVING180DAYVOLUMEUNKNOWN == mOVING180DAYVOLUMEUNKNOWN &&
     other.mOVING24HOURHIGH == mOVING24HOURHIGH &&
     other.mOVING24HOURLOW == mOVING24HOURLOW &&
     other.mOVING24HOUROPEN == mOVING24HOUROPEN &&
     other.mOVING24HOURQUOTEVOLUME == mOVING24HOURQUOTEVOLUME &&
     other.mOVING24HOURQUOTEVOLUMEBUY == mOVING24HOURQUOTEVOLUMEBUY &&
     other.mOVING24HOURQUOTEVOLUMESELL == mOVING24HOURQUOTEVOLUMESELL &&
     other.mOVING24HOURQUOTEVOLUMEUNKNOWN == mOVING24HOURQUOTEVOLUMEUNKNOWN &&
     other.mOVING24HOURTOTALTRADES == mOVING24HOURTOTALTRADES &&
     other.mOVING24HOURTOTALTRADESBUY == mOVING24HOURTOTALTRADESBUY &&
     other.mOVING24HOURTOTALTRADESSELL == mOVING24HOURTOTALTRADESSELL &&
     other.mOVING24HOURTOTALTRADESUNKNOWN == mOVING24HOURTOTALTRADESUNKNOWN &&
     other.mOVING24HOURVOLUME == mOVING24HOURVOLUME &&
     other.mOVING24HOURVOLUMEBUY == mOVING24HOURVOLUMEBUY &&
     other.mOVING24HOURVOLUMESELL == mOVING24HOURVOLUMESELL &&
     other.mOVING24HOURVOLUMEUNKNOWN == mOVING24HOURVOLUMEUNKNOWN &&
     other.mOVING30DAYHIGH == mOVING30DAYHIGH &&
     other.mOVING30DAYLOW == mOVING30DAYLOW &&
     other.mOVING30DAYOPEN == mOVING30DAYOPEN &&
     other.mOVING30DAYQUOTEVOLUME == mOVING30DAYQUOTEVOLUME &&
     other.mOVING30DAYQUOTEVOLUMEBUY == mOVING30DAYQUOTEVOLUMEBUY &&
     other.mOVING30DAYQUOTEVOLUMESELL == mOVING30DAYQUOTEVOLUMESELL &&
     other.mOVING30DAYQUOTEVOLUMEUNKNOWN == mOVING30DAYQUOTEVOLUMEUNKNOWN &&
     other.mOVING30DAYTOTALTRADES == mOVING30DAYTOTALTRADES &&
     other.mOVING30DAYTOTALTRADESBUY == mOVING30DAYTOTALTRADESBUY &&
     other.mOVING30DAYTOTALTRADESSELL == mOVING30DAYTOTALTRADESSELL &&
     other.mOVING30DAYTOTALTRADESUNKNOWN == mOVING30DAYTOTALTRADESUNKNOWN &&
     other.mOVING30DAYVOLUME == mOVING30DAYVOLUME &&
     other.mOVING30DAYVOLUMEBUY == mOVING30DAYVOLUMEBUY &&
     other.mOVING30DAYVOLUMESELL == mOVING30DAYVOLUMESELL &&
     other.mOVING30DAYVOLUMEUNKNOWN == mOVING30DAYVOLUMEUNKNOWN &&
     other.mOVING365DAYHIGH == mOVING365DAYHIGH &&
     other.mOVING365DAYLOW == mOVING365DAYLOW &&
     other.mOVING365DAYOPEN == mOVING365DAYOPEN &&
     other.mOVING365DAYQUOTEVOLUME == mOVING365DAYQUOTEVOLUME &&
     other.mOVING365DAYQUOTEVOLUMEBUY == mOVING365DAYQUOTEVOLUMEBUY &&
     other.mOVING365DAYQUOTEVOLUMESELL == mOVING365DAYQUOTEVOLUMESELL &&
     other.mOVING365DAYQUOTEVOLUMEUNKNOWN == mOVING365DAYQUOTEVOLUMEUNKNOWN &&
     other.mOVING365DAYTOTALTRADES == mOVING365DAYTOTALTRADES &&
     other.mOVING365DAYTOTALTRADESBUY == mOVING365DAYTOTALTRADESBUY &&
     other.mOVING365DAYTOTALTRADESSELL == mOVING365DAYTOTALTRADESSELL &&
     other.mOVING365DAYTOTALTRADESUNKNOWN == mOVING365DAYTOTALTRADESUNKNOWN &&
     other.mOVING365DAYVOLUME == mOVING365DAYVOLUME &&
     other.mOVING365DAYVOLUMEBUY == mOVING365DAYVOLUMEBUY &&
     other.mOVING365DAYVOLUMESELL == mOVING365DAYVOLUMESELL &&
     other.mOVING365DAYVOLUMEUNKNOWN == mOVING365DAYVOLUMEUNKNOWN &&
     other.mOVING7DAYHIGH == mOVING7DAYHIGH &&
     other.mOVING7DAYLOW == mOVING7DAYLOW &&
     other.mOVING7DAYOPEN == mOVING7DAYOPEN &&
     other.mOVING7DAYQUOTEVOLUME == mOVING7DAYQUOTEVOLUME &&
     other.mOVING7DAYQUOTEVOLUMEBUY == mOVING7DAYQUOTEVOLUMEBUY &&
     other.mOVING7DAYQUOTEVOLUMESELL == mOVING7DAYQUOTEVOLUMESELL &&
     other.mOVING7DAYQUOTEVOLUMEUNKNOWN == mOVING7DAYQUOTEVOLUMEUNKNOWN &&
     other.mOVING7DAYTOTALTRADES == mOVING7DAYTOTALTRADES &&
     other.mOVING7DAYTOTALTRADESBUY == mOVING7DAYTOTALTRADESBUY &&
     other.mOVING7DAYTOTALTRADESSELL == mOVING7DAYTOTALTRADESSELL &&
     other.mOVING7DAYTOTALTRADESUNKNOWN == mOVING7DAYTOTALTRADESUNKNOWN &&
     other.mOVING7DAYVOLUME == mOVING7DAYVOLUME &&
     other.mOVING7DAYVOLUMEBUY == mOVING7DAYVOLUMEBUY &&
     other.mOVING7DAYVOLUMESELL == mOVING7DAYVOLUMESELL &&
     other.mOVING7DAYVOLUMEUNKNOWN == mOVING7DAYVOLUMEUNKNOWN &&
     other.mOVING90DAYHIGH == mOVING90DAYHIGH &&
     other.mOVING90DAYLOW == mOVING90DAYLOW &&
     other.mOVING90DAYOPEN == mOVING90DAYOPEN &&
     other.mOVING90DAYQUOTEVOLUME == mOVING90DAYQUOTEVOLUME &&
     other.mOVING90DAYQUOTEVOLUMEBUY == mOVING90DAYQUOTEVOLUMEBUY &&
     other.mOVING90DAYQUOTEVOLUMESELL == mOVING90DAYQUOTEVOLUMESELL &&
     other.mOVING90DAYQUOTEVOLUMEUNKNOWN == mOVING90DAYQUOTEVOLUMEUNKNOWN &&
     other.mOVING90DAYTOTALTRADES == mOVING90DAYTOTALTRADES &&
     other.mOVING90DAYTOTALTRADESBUY == mOVING90DAYTOTALTRADESBUY &&
     other.mOVING90DAYTOTALTRADESSELL == mOVING90DAYTOTALTRADESSELL &&
     other.mOVING90DAYTOTALTRADESUNKNOWN == mOVING90DAYTOTALTRADESUNKNOWN &&
     other.mOVING90DAYVOLUME == mOVING90DAYVOLUME &&
     other.mOVING90DAYVOLUMEBUY == mOVING90DAYVOLUMEBUY &&
     other.mOVING90DAYVOLUMESELL == mOVING90DAYVOLUMESELL &&
     other.mOVING90DAYVOLUMEUNKNOWN == mOVING90DAYVOLUMEUNKNOWN &&
     other.PRICE == PRICE &&
     other.PRICE_FLAG == PRICE_FLAG &&
     other.PRICE_LAST_UPDATE_TS == PRICE_LAST_UPDATE_TS &&
     other.QUOTE == QUOTE &&
     other.TOP_ASK_LAST_UPDATE_TS == TOP_ASK_LAST_UPDATE_TS &&
     other.TOP_ASK_PRICE == TOP_ASK_PRICE &&
     other.TOP_ASK_QUANTITY == TOP_ASK_QUANTITY &&
     other.TOP_BID_LAST_UPDATE_TS == TOP_BID_LAST_UPDATE_TS &&
     other.TOP_BID_PRICE == TOP_BID_PRICE &&
     other.TOP_BID_QUANTITY == TOP_BID_QUANTITY &&
     other.TYPE == TYPE;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (BASE == null ? 0 : BASE!.hashCode) +
    (CCSEQ == null ? 0 : CCSEQ!.hashCode) +
    (CURRENT_DAY_HIGH == null ? 0 : CURRENT_DAY_HIGH!.hashCode) +
    (CURRENT_DAY_LOW == null ? 0 : CURRENT_DAY_LOW!.hashCode) +
    (CURRENT_DAY_OPEN == null ? 0 : CURRENT_DAY_OPEN!.hashCode) +
    (CURRENT_DAY_QUOTE_VOLUME == null ? 0 : CURRENT_DAY_QUOTE_VOLUME!.hashCode) +
    (CURRENT_DAY_QUOTE_VOLUME_BUY == null ? 0 : CURRENT_DAY_QUOTE_VOLUME_BUY!.hashCode) +
    (CURRENT_DAY_QUOTE_VOLUME_SELL == null ? 0 : CURRENT_DAY_QUOTE_VOLUME_SELL!.hashCode) +
    (CURRENT_DAY_QUOTE_VOLUME_UNKNOWN == null ? 0 : CURRENT_DAY_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_DAY_TOTAL_TRADES == null ? 0 : CURRENT_DAY_TOTAL_TRADES!.hashCode) +
    (CURRENT_DAY_TOTAL_TRADES_BUY == null ? 0 : CURRENT_DAY_TOTAL_TRADES_BUY!.hashCode) +
    (CURRENT_DAY_TOTAL_TRADES_SELL == null ? 0 : CURRENT_DAY_TOTAL_TRADES_SELL!.hashCode) +
    (CURRENT_DAY_TOTAL_TRADES_UNKNOWN == null ? 0 : CURRENT_DAY_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (CURRENT_DAY_VOLUME == null ? 0 : CURRENT_DAY_VOLUME!.hashCode) +
    (CURRENT_DAY_VOLUME_BUY == null ? 0 : CURRENT_DAY_VOLUME_BUY!.hashCode) +
    (CURRENT_DAY_VOLUME_SELL == null ? 0 : CURRENT_DAY_VOLUME_SELL!.hashCode) +
    (CURRENT_DAY_VOLUME_UNKNOWN == null ? 0 : CURRENT_DAY_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_HOUR_HIGH == null ? 0 : CURRENT_HOUR_HIGH!.hashCode) +
    (CURRENT_HOUR_LOW == null ? 0 : CURRENT_HOUR_LOW!.hashCode) +
    (CURRENT_HOUR_OPEN == null ? 0 : CURRENT_HOUR_OPEN!.hashCode) +
    (CURRENT_HOUR_QUOTE_VOLUME == null ? 0 : CURRENT_HOUR_QUOTE_VOLUME!.hashCode) +
    (CURRENT_HOUR_QUOTE_VOLUME_BUY == null ? 0 : CURRENT_HOUR_QUOTE_VOLUME_BUY!.hashCode) +
    (CURRENT_HOUR_QUOTE_VOLUME_SELL == null ? 0 : CURRENT_HOUR_QUOTE_VOLUME_SELL!.hashCode) +
    (CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN == null ? 0 : CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_HOUR_TOTAL_TRADES == null ? 0 : CURRENT_HOUR_TOTAL_TRADES!.hashCode) +
    (CURRENT_HOUR_TOTAL_TRADES_BUY == null ? 0 : CURRENT_HOUR_TOTAL_TRADES_BUY!.hashCode) +
    (CURRENT_HOUR_TOTAL_TRADES_SELL == null ? 0 : CURRENT_HOUR_TOTAL_TRADES_SELL!.hashCode) +
    (CURRENT_HOUR_TOTAL_TRADES_UNKNOWN == null ? 0 : CURRENT_HOUR_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (CURRENT_HOUR_VOLUME == null ? 0 : CURRENT_HOUR_VOLUME!.hashCode) +
    (CURRENT_HOUR_VOLUME_BUY == null ? 0 : CURRENT_HOUR_VOLUME_BUY!.hashCode) +
    (CURRENT_HOUR_VOLUME_SELL == null ? 0 : CURRENT_HOUR_VOLUME_SELL!.hashCode) +
    (CURRENT_HOUR_VOLUME_UNKNOWN == null ? 0 : CURRENT_HOUR_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_MONTH_HIGH == null ? 0 : CURRENT_MONTH_HIGH!.hashCode) +
    (CURRENT_MONTH_LOW == null ? 0 : CURRENT_MONTH_LOW!.hashCode) +
    (CURRENT_MONTH_OPEN == null ? 0 : CURRENT_MONTH_OPEN!.hashCode) +
    (CURRENT_MONTH_QUOTE_VOLUME == null ? 0 : CURRENT_MONTH_QUOTE_VOLUME!.hashCode) +
    (CURRENT_MONTH_QUOTE_VOLUME_BUY == null ? 0 : CURRENT_MONTH_QUOTE_VOLUME_BUY!.hashCode) +
    (CURRENT_MONTH_QUOTE_VOLUME_SELL == null ? 0 : CURRENT_MONTH_QUOTE_VOLUME_SELL!.hashCode) +
    (CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN == null ? 0 : CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_MONTH_TOTAL_TRADES == null ? 0 : CURRENT_MONTH_TOTAL_TRADES!.hashCode) +
    (CURRENT_MONTH_TOTAL_TRADES_BUY == null ? 0 : CURRENT_MONTH_TOTAL_TRADES_BUY!.hashCode) +
    (CURRENT_MONTH_TOTAL_TRADES_SELL == null ? 0 : CURRENT_MONTH_TOTAL_TRADES_SELL!.hashCode) +
    (CURRENT_MONTH_TOTAL_TRADES_UNKNOWN == null ? 0 : CURRENT_MONTH_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (CURRENT_MONTH_VOLUME == null ? 0 : CURRENT_MONTH_VOLUME!.hashCode) +
    (CURRENT_MONTH_VOLUME_BUY == null ? 0 : CURRENT_MONTH_VOLUME_BUY!.hashCode) +
    (CURRENT_MONTH_VOLUME_SELL == null ? 0 : CURRENT_MONTH_VOLUME_SELL!.hashCode) +
    (CURRENT_MONTH_VOLUME_UNKNOWN == null ? 0 : CURRENT_MONTH_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_WEEK_HIGH == null ? 0 : CURRENT_WEEK_HIGH!.hashCode) +
    (CURRENT_WEEK_LOW == null ? 0 : CURRENT_WEEK_LOW!.hashCode) +
    (CURRENT_WEEK_OPEN == null ? 0 : CURRENT_WEEK_OPEN!.hashCode) +
    (CURRENT_WEEK_QUOTE_VOLUME == null ? 0 : CURRENT_WEEK_QUOTE_VOLUME!.hashCode) +
    (CURRENT_WEEK_QUOTE_VOLUME_BUY == null ? 0 : CURRENT_WEEK_QUOTE_VOLUME_BUY!.hashCode) +
    (CURRENT_WEEK_QUOTE_VOLUME_SELL == null ? 0 : CURRENT_WEEK_QUOTE_VOLUME_SELL!.hashCode) +
    (CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN == null ? 0 : CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_WEEK_TOTAL_TRADES == null ? 0 : CURRENT_WEEK_TOTAL_TRADES!.hashCode) +
    (CURRENT_WEEK_TOTAL_TRADES_BUY == null ? 0 : CURRENT_WEEK_TOTAL_TRADES_BUY!.hashCode) +
    (CURRENT_WEEK_TOTAL_TRADES_SELL == null ? 0 : CURRENT_WEEK_TOTAL_TRADES_SELL!.hashCode) +
    (CURRENT_WEEK_TOTAL_TRADES_UNKNOWN == null ? 0 : CURRENT_WEEK_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (CURRENT_WEEK_VOLUME == null ? 0 : CURRENT_WEEK_VOLUME!.hashCode) +
    (CURRENT_WEEK_VOLUME_BUY == null ? 0 : CURRENT_WEEK_VOLUME_BUY!.hashCode) +
    (CURRENT_WEEK_VOLUME_SELL == null ? 0 : CURRENT_WEEK_VOLUME_SELL!.hashCode) +
    (CURRENT_WEEK_VOLUME_UNKNOWN == null ? 0 : CURRENT_WEEK_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_YEAR_HIGH == null ? 0 : CURRENT_YEAR_HIGH!.hashCode) +
    (CURRENT_YEAR_LOW == null ? 0 : CURRENT_YEAR_LOW!.hashCode) +
    (CURRENT_YEAR_OPEN == null ? 0 : CURRENT_YEAR_OPEN!.hashCode) +
    (CURRENT_YEAR_QUOTE_VOLUME == null ? 0 : CURRENT_YEAR_QUOTE_VOLUME!.hashCode) +
    (CURRENT_YEAR_QUOTE_VOLUME_BUY == null ? 0 : CURRENT_YEAR_QUOTE_VOLUME_BUY!.hashCode) +
    (CURRENT_YEAR_QUOTE_VOLUME_SELL == null ? 0 : CURRENT_YEAR_QUOTE_VOLUME_SELL!.hashCode) +
    (CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN == null ? 0 : CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (CURRENT_YEAR_TOTAL_TRADES == null ? 0 : CURRENT_YEAR_TOTAL_TRADES!.hashCode) +
    (CURRENT_YEAR_TOTAL_TRADES_BUY == null ? 0 : CURRENT_YEAR_TOTAL_TRADES_BUY!.hashCode) +
    (CURRENT_YEAR_TOTAL_TRADES_SELL == null ? 0 : CURRENT_YEAR_TOTAL_TRADES_SELL!.hashCode) +
    (CURRENT_YEAR_TOTAL_TRADES_UNKNOWN == null ? 0 : CURRENT_YEAR_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (CURRENT_YEAR_VOLUME == null ? 0 : CURRENT_YEAR_VOLUME!.hashCode) +
    (CURRENT_YEAR_VOLUME_BUY == null ? 0 : CURRENT_YEAR_VOLUME_BUY!.hashCode) +
    (CURRENT_YEAR_VOLUME_SELL == null ? 0 : CURRENT_YEAR_VOLUME_SELL!.hashCode) +
    (CURRENT_YEAR_VOLUME_UNKNOWN == null ? 0 : CURRENT_YEAR_VOLUME_UNKNOWN!.hashCode) +
    (INSTRUMENT == null ? 0 : INSTRUMENT!.hashCode) +
    (LAST_PROCESSED_TRADE_CCSEQ == null ? 0 : LAST_PROCESSED_TRADE_CCSEQ!.hashCode) +
    (LAST_PROCESSED_TRADE_PRICE == null ? 0 : LAST_PROCESSED_TRADE_PRICE!.hashCode) +
    (LAST_PROCESSED_TRADE_QUANTITY == null ? 0 : LAST_PROCESSED_TRADE_QUANTITY!.hashCode) +
    (LAST_PROCESSED_TRADE_QUOTE_QUANTITY == null ? 0 : LAST_PROCESSED_TRADE_QUOTE_QUANTITY!.hashCode) +
    (LAST_PROCESSED_TRADE_SIDE == null ? 0 : LAST_PROCESSED_TRADE_SIDE!.hashCode) +
    (LAST_PROCESSED_TRADE_TS == null ? 0 : LAST_PROCESSED_TRADE_TS!.hashCode) +
    (LAST_TRADE_CCSEQ == null ? 0 : LAST_TRADE_CCSEQ!.hashCode) +
    (LAST_TRADE_ID == null ? 0 : LAST_TRADE_ID!.hashCode) +
    (LAST_TRADE_QUANTITY == null ? 0 : LAST_TRADE_QUANTITY!.hashCode) +
    (LAST_TRADE_QUOTE_QUANTITY == null ? 0 : LAST_TRADE_QUOTE_QUANTITY!.hashCode) +
    (LAST_TRADE_SIDE == null ? 0 : LAST_TRADE_SIDE!.hashCode) +
    (LIFETIME_FIRST_TRADE_TS == null ? 0 : LIFETIME_FIRST_TRADE_TS!.hashCode) +
    (LIFETIME_HIGH == null ? 0 : LIFETIME_HIGH!.hashCode) +
    (LIFETIME_HIGH_TS == null ? 0 : LIFETIME_HIGH_TS!.hashCode) +
    (LIFETIME_LOW == null ? 0 : LIFETIME_LOW!.hashCode) +
    (LIFETIME_LOW_TS == null ? 0 : LIFETIME_LOW_TS!.hashCode) +
    (LIFETIME_OPEN == null ? 0 : LIFETIME_OPEN!.hashCode) +
    (LIFETIME_QUOTE_VOLUME == null ? 0 : LIFETIME_QUOTE_VOLUME!.hashCode) +
    (LIFETIME_QUOTE_VOLUME_BUY == null ? 0 : LIFETIME_QUOTE_VOLUME_BUY!.hashCode) +
    (LIFETIME_QUOTE_VOLUME_SELL == null ? 0 : LIFETIME_QUOTE_VOLUME_SELL!.hashCode) +
    (LIFETIME_QUOTE_VOLUME_UNKNOWN == null ? 0 : LIFETIME_QUOTE_VOLUME_UNKNOWN!.hashCode) +
    (LIFETIME_TOTAL_TRADES == null ? 0 : LIFETIME_TOTAL_TRADES!.hashCode) +
    (LIFETIME_TOTAL_TRADES_BUY == null ? 0 : LIFETIME_TOTAL_TRADES_BUY!.hashCode) +
    (LIFETIME_TOTAL_TRADES_SELL == null ? 0 : LIFETIME_TOTAL_TRADES_SELL!.hashCode) +
    (LIFETIME_TOTAL_TRADES_UNKNOWN == null ? 0 : LIFETIME_TOTAL_TRADES_UNKNOWN!.hashCode) +
    (LIFETIME_VOLUME == null ? 0 : LIFETIME_VOLUME!.hashCode) +
    (LIFETIME_VOLUME_BUY == null ? 0 : LIFETIME_VOLUME_BUY!.hashCode) +
    (LIFETIME_VOLUME_SELL == null ? 0 : LIFETIME_VOLUME_SELL!.hashCode) +
    (LIFETIME_VOLUME_UNKNOWN == null ? 0 : LIFETIME_VOLUME_UNKNOWN!.hashCode) +
    (MAPPED_INSTRUMENT == null ? 0 : MAPPED_INSTRUMENT!.hashCode) +
    (MARKET == null ? 0 : MARKET!.hashCode) +
    (mOVING180DAYHIGH == null ? 0 : mOVING180DAYHIGH!.hashCode) +
    (mOVING180DAYLOW == null ? 0 : mOVING180DAYLOW!.hashCode) +
    (mOVING180DAYOPEN == null ? 0 : mOVING180DAYOPEN!.hashCode) +
    (mOVING180DAYQUOTEVOLUME == null ? 0 : mOVING180DAYQUOTEVOLUME!.hashCode) +
    (mOVING180DAYQUOTEVOLUMEBUY == null ? 0 : mOVING180DAYQUOTEVOLUMEBUY!.hashCode) +
    (mOVING180DAYQUOTEVOLUMESELL == null ? 0 : mOVING180DAYQUOTEVOLUMESELL!.hashCode) +
    (mOVING180DAYQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING180DAYQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING180DAYTOTALTRADES == null ? 0 : mOVING180DAYTOTALTRADES!.hashCode) +
    (mOVING180DAYTOTALTRADESBUY == null ? 0 : mOVING180DAYTOTALTRADESBUY!.hashCode) +
    (mOVING180DAYTOTALTRADESSELL == null ? 0 : mOVING180DAYTOTALTRADESSELL!.hashCode) +
    (mOVING180DAYTOTALTRADESUNKNOWN == null ? 0 : mOVING180DAYTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING180DAYVOLUME == null ? 0 : mOVING180DAYVOLUME!.hashCode) +
    (mOVING180DAYVOLUMEBUY == null ? 0 : mOVING180DAYVOLUMEBUY!.hashCode) +
    (mOVING180DAYVOLUMESELL == null ? 0 : mOVING180DAYVOLUMESELL!.hashCode) +
    (mOVING180DAYVOLUMEUNKNOWN == null ? 0 : mOVING180DAYVOLUMEUNKNOWN!.hashCode) +
    (mOVING24HOURHIGH == null ? 0 : mOVING24HOURHIGH!.hashCode) +
    (mOVING24HOURLOW == null ? 0 : mOVING24HOURLOW!.hashCode) +
    (mOVING24HOUROPEN == null ? 0 : mOVING24HOUROPEN!.hashCode) +
    (mOVING24HOURQUOTEVOLUME == null ? 0 : mOVING24HOURQUOTEVOLUME!.hashCode) +
    (mOVING24HOURQUOTEVOLUMEBUY == null ? 0 : mOVING24HOURQUOTEVOLUMEBUY!.hashCode) +
    (mOVING24HOURQUOTEVOLUMESELL == null ? 0 : mOVING24HOURQUOTEVOLUMESELL!.hashCode) +
    (mOVING24HOURQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING24HOURQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING24HOURTOTALTRADES == null ? 0 : mOVING24HOURTOTALTRADES!.hashCode) +
    (mOVING24HOURTOTALTRADESBUY == null ? 0 : mOVING24HOURTOTALTRADESBUY!.hashCode) +
    (mOVING24HOURTOTALTRADESSELL == null ? 0 : mOVING24HOURTOTALTRADESSELL!.hashCode) +
    (mOVING24HOURTOTALTRADESUNKNOWN == null ? 0 : mOVING24HOURTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING24HOURVOLUME == null ? 0 : mOVING24HOURVOLUME!.hashCode) +
    (mOVING24HOURVOLUMEBUY == null ? 0 : mOVING24HOURVOLUMEBUY!.hashCode) +
    (mOVING24HOURVOLUMESELL == null ? 0 : mOVING24HOURVOLUMESELL!.hashCode) +
    (mOVING24HOURVOLUMEUNKNOWN == null ? 0 : mOVING24HOURVOLUMEUNKNOWN!.hashCode) +
    (mOVING30DAYHIGH == null ? 0 : mOVING30DAYHIGH!.hashCode) +
    (mOVING30DAYLOW == null ? 0 : mOVING30DAYLOW!.hashCode) +
    (mOVING30DAYOPEN == null ? 0 : mOVING30DAYOPEN!.hashCode) +
    (mOVING30DAYQUOTEVOLUME == null ? 0 : mOVING30DAYQUOTEVOLUME!.hashCode) +
    (mOVING30DAYQUOTEVOLUMEBUY == null ? 0 : mOVING30DAYQUOTEVOLUMEBUY!.hashCode) +
    (mOVING30DAYQUOTEVOLUMESELL == null ? 0 : mOVING30DAYQUOTEVOLUMESELL!.hashCode) +
    (mOVING30DAYQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING30DAYQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING30DAYTOTALTRADES == null ? 0 : mOVING30DAYTOTALTRADES!.hashCode) +
    (mOVING30DAYTOTALTRADESBUY == null ? 0 : mOVING30DAYTOTALTRADESBUY!.hashCode) +
    (mOVING30DAYTOTALTRADESSELL == null ? 0 : mOVING30DAYTOTALTRADESSELL!.hashCode) +
    (mOVING30DAYTOTALTRADESUNKNOWN == null ? 0 : mOVING30DAYTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING30DAYVOLUME == null ? 0 : mOVING30DAYVOLUME!.hashCode) +
    (mOVING30DAYVOLUMEBUY == null ? 0 : mOVING30DAYVOLUMEBUY!.hashCode) +
    (mOVING30DAYVOLUMESELL == null ? 0 : mOVING30DAYVOLUMESELL!.hashCode) +
    (mOVING30DAYVOLUMEUNKNOWN == null ? 0 : mOVING30DAYVOLUMEUNKNOWN!.hashCode) +
    (mOVING365DAYHIGH == null ? 0 : mOVING365DAYHIGH!.hashCode) +
    (mOVING365DAYLOW == null ? 0 : mOVING365DAYLOW!.hashCode) +
    (mOVING365DAYOPEN == null ? 0 : mOVING365DAYOPEN!.hashCode) +
    (mOVING365DAYQUOTEVOLUME == null ? 0 : mOVING365DAYQUOTEVOLUME!.hashCode) +
    (mOVING365DAYQUOTEVOLUMEBUY == null ? 0 : mOVING365DAYQUOTEVOLUMEBUY!.hashCode) +
    (mOVING365DAYQUOTEVOLUMESELL == null ? 0 : mOVING365DAYQUOTEVOLUMESELL!.hashCode) +
    (mOVING365DAYQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING365DAYQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING365DAYTOTALTRADES == null ? 0 : mOVING365DAYTOTALTRADES!.hashCode) +
    (mOVING365DAYTOTALTRADESBUY == null ? 0 : mOVING365DAYTOTALTRADESBUY!.hashCode) +
    (mOVING365DAYTOTALTRADESSELL == null ? 0 : mOVING365DAYTOTALTRADESSELL!.hashCode) +
    (mOVING365DAYTOTALTRADESUNKNOWN == null ? 0 : mOVING365DAYTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING365DAYVOLUME == null ? 0 : mOVING365DAYVOLUME!.hashCode) +
    (mOVING365DAYVOLUMEBUY == null ? 0 : mOVING365DAYVOLUMEBUY!.hashCode) +
    (mOVING365DAYVOLUMESELL == null ? 0 : mOVING365DAYVOLUMESELL!.hashCode) +
    (mOVING365DAYVOLUMEUNKNOWN == null ? 0 : mOVING365DAYVOLUMEUNKNOWN!.hashCode) +
    (mOVING7DAYHIGH == null ? 0 : mOVING7DAYHIGH!.hashCode) +
    (mOVING7DAYLOW == null ? 0 : mOVING7DAYLOW!.hashCode) +
    (mOVING7DAYOPEN == null ? 0 : mOVING7DAYOPEN!.hashCode) +
    (mOVING7DAYQUOTEVOLUME == null ? 0 : mOVING7DAYQUOTEVOLUME!.hashCode) +
    (mOVING7DAYQUOTEVOLUMEBUY == null ? 0 : mOVING7DAYQUOTEVOLUMEBUY!.hashCode) +
    (mOVING7DAYQUOTEVOLUMESELL == null ? 0 : mOVING7DAYQUOTEVOLUMESELL!.hashCode) +
    (mOVING7DAYQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING7DAYQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING7DAYTOTALTRADES == null ? 0 : mOVING7DAYTOTALTRADES!.hashCode) +
    (mOVING7DAYTOTALTRADESBUY == null ? 0 : mOVING7DAYTOTALTRADESBUY!.hashCode) +
    (mOVING7DAYTOTALTRADESSELL == null ? 0 : mOVING7DAYTOTALTRADESSELL!.hashCode) +
    (mOVING7DAYTOTALTRADESUNKNOWN == null ? 0 : mOVING7DAYTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING7DAYVOLUME == null ? 0 : mOVING7DAYVOLUME!.hashCode) +
    (mOVING7DAYVOLUMEBUY == null ? 0 : mOVING7DAYVOLUMEBUY!.hashCode) +
    (mOVING7DAYVOLUMESELL == null ? 0 : mOVING7DAYVOLUMESELL!.hashCode) +
    (mOVING7DAYVOLUMEUNKNOWN == null ? 0 : mOVING7DAYVOLUMEUNKNOWN!.hashCode) +
    (mOVING90DAYHIGH == null ? 0 : mOVING90DAYHIGH!.hashCode) +
    (mOVING90DAYLOW == null ? 0 : mOVING90DAYLOW!.hashCode) +
    (mOVING90DAYOPEN == null ? 0 : mOVING90DAYOPEN!.hashCode) +
    (mOVING90DAYQUOTEVOLUME == null ? 0 : mOVING90DAYQUOTEVOLUME!.hashCode) +
    (mOVING90DAYQUOTEVOLUMEBUY == null ? 0 : mOVING90DAYQUOTEVOLUMEBUY!.hashCode) +
    (mOVING90DAYQUOTEVOLUMESELL == null ? 0 : mOVING90DAYQUOTEVOLUMESELL!.hashCode) +
    (mOVING90DAYQUOTEVOLUMEUNKNOWN == null ? 0 : mOVING90DAYQUOTEVOLUMEUNKNOWN!.hashCode) +
    (mOVING90DAYTOTALTRADES == null ? 0 : mOVING90DAYTOTALTRADES!.hashCode) +
    (mOVING90DAYTOTALTRADESBUY == null ? 0 : mOVING90DAYTOTALTRADESBUY!.hashCode) +
    (mOVING90DAYTOTALTRADESSELL == null ? 0 : mOVING90DAYTOTALTRADESSELL!.hashCode) +
    (mOVING90DAYTOTALTRADESUNKNOWN == null ? 0 : mOVING90DAYTOTALTRADESUNKNOWN!.hashCode) +
    (mOVING90DAYVOLUME == null ? 0 : mOVING90DAYVOLUME!.hashCode) +
    (mOVING90DAYVOLUMEBUY == null ? 0 : mOVING90DAYVOLUMEBUY!.hashCode) +
    (mOVING90DAYVOLUMESELL == null ? 0 : mOVING90DAYVOLUMESELL!.hashCode) +
    (mOVING90DAYVOLUMEUNKNOWN == null ? 0 : mOVING90DAYVOLUMEUNKNOWN!.hashCode) +
    (PRICE == null ? 0 : PRICE!.hashCode) +
    (PRICE_FLAG == null ? 0 : PRICE_FLAG!.hashCode) +
    (PRICE_LAST_UPDATE_TS == null ? 0 : PRICE_LAST_UPDATE_TS!.hashCode) +
    (QUOTE == null ? 0 : QUOTE!.hashCode) +
    (TOP_ASK_LAST_UPDATE_TS == null ? 0 : TOP_ASK_LAST_UPDATE_TS!.hashCode) +
    (TOP_ASK_PRICE == null ? 0 : TOP_ASK_PRICE!.hashCode) +
    (TOP_ASK_QUANTITY == null ? 0 : TOP_ASK_QUANTITY!.hashCode) +
    (TOP_BID_LAST_UPDATE_TS == null ? 0 : TOP_BID_LAST_UPDATE_TS!.hashCode) +
    (TOP_BID_PRICE == null ? 0 : TOP_BID_PRICE!.hashCode) +
    (TOP_BID_QUANTITY == null ? 0 : TOP_BID_QUANTITY!.hashCode) +
    (TYPE == null ? 0 : TYPE!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTMARKETDATA[BASE=$BASE, CCSEQ=$CCSEQ, CURRENT_DAY_HIGH=$CURRENT_DAY_HIGH, CURRENT_DAY_LOW=$CURRENT_DAY_LOW, CURRENT_DAY_OPEN=$CURRENT_DAY_OPEN, CURRENT_DAY_QUOTE_VOLUME=$CURRENT_DAY_QUOTE_VOLUME, CURRENT_DAY_QUOTE_VOLUME_BUY=$CURRENT_DAY_QUOTE_VOLUME_BUY, CURRENT_DAY_QUOTE_VOLUME_SELL=$CURRENT_DAY_QUOTE_VOLUME_SELL, CURRENT_DAY_QUOTE_VOLUME_UNKNOWN=$CURRENT_DAY_QUOTE_VOLUME_UNKNOWN, CURRENT_DAY_TOTAL_TRADES=$CURRENT_DAY_TOTAL_TRADES, CURRENT_DAY_TOTAL_TRADES_BUY=$CURRENT_DAY_TOTAL_TRADES_BUY, CURRENT_DAY_TOTAL_TRADES_SELL=$CURRENT_DAY_TOTAL_TRADES_SELL, CURRENT_DAY_TOTAL_TRADES_UNKNOWN=$CURRENT_DAY_TOTAL_TRADES_UNKNOWN, CURRENT_DAY_VOLUME=$CURRENT_DAY_VOLUME, CURRENT_DAY_VOLUME_BUY=$CURRENT_DAY_VOLUME_BUY, CURRENT_DAY_VOLUME_SELL=$CURRENT_DAY_VOLUME_SELL, CURRENT_DAY_VOLUME_UNKNOWN=$CURRENT_DAY_VOLUME_UNKNOWN, CURRENT_HOUR_HIGH=$CURRENT_HOUR_HIGH, CURRENT_HOUR_LOW=$CURRENT_HOUR_LOW, CURRENT_HOUR_OPEN=$CURRENT_HOUR_OPEN, CURRENT_HOUR_QUOTE_VOLUME=$CURRENT_HOUR_QUOTE_VOLUME, CURRENT_HOUR_QUOTE_VOLUME_BUY=$CURRENT_HOUR_QUOTE_VOLUME_BUY, CURRENT_HOUR_QUOTE_VOLUME_SELL=$CURRENT_HOUR_QUOTE_VOLUME_SELL, CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN=$CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN, CURRENT_HOUR_TOTAL_TRADES=$CURRENT_HOUR_TOTAL_TRADES, CURRENT_HOUR_TOTAL_TRADES_BUY=$CURRENT_HOUR_TOTAL_TRADES_BUY, CURRENT_HOUR_TOTAL_TRADES_SELL=$CURRENT_HOUR_TOTAL_TRADES_SELL, CURRENT_HOUR_TOTAL_TRADES_UNKNOWN=$CURRENT_HOUR_TOTAL_TRADES_UNKNOWN, CURRENT_HOUR_VOLUME=$CURRENT_HOUR_VOLUME, CURRENT_HOUR_VOLUME_BUY=$CURRENT_HOUR_VOLUME_BUY, CURRENT_HOUR_VOLUME_SELL=$CURRENT_HOUR_VOLUME_SELL, CURRENT_HOUR_VOLUME_UNKNOWN=$CURRENT_HOUR_VOLUME_UNKNOWN, CURRENT_MONTH_HIGH=$CURRENT_MONTH_HIGH, CURRENT_MONTH_LOW=$CURRENT_MONTH_LOW, CURRENT_MONTH_OPEN=$CURRENT_MONTH_OPEN, CURRENT_MONTH_QUOTE_VOLUME=$CURRENT_MONTH_QUOTE_VOLUME, CURRENT_MONTH_QUOTE_VOLUME_BUY=$CURRENT_MONTH_QUOTE_VOLUME_BUY, CURRENT_MONTH_QUOTE_VOLUME_SELL=$CURRENT_MONTH_QUOTE_VOLUME_SELL, CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN=$CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN, CURRENT_MONTH_TOTAL_TRADES=$CURRENT_MONTH_TOTAL_TRADES, CURRENT_MONTH_TOTAL_TRADES_BUY=$CURRENT_MONTH_TOTAL_TRADES_BUY, CURRENT_MONTH_TOTAL_TRADES_SELL=$CURRENT_MONTH_TOTAL_TRADES_SELL, CURRENT_MONTH_TOTAL_TRADES_UNKNOWN=$CURRENT_MONTH_TOTAL_TRADES_UNKNOWN, CURRENT_MONTH_VOLUME=$CURRENT_MONTH_VOLUME, CURRENT_MONTH_VOLUME_BUY=$CURRENT_MONTH_VOLUME_BUY, CURRENT_MONTH_VOLUME_SELL=$CURRENT_MONTH_VOLUME_SELL, CURRENT_MONTH_VOLUME_UNKNOWN=$CURRENT_MONTH_VOLUME_UNKNOWN, CURRENT_WEEK_HIGH=$CURRENT_WEEK_HIGH, CURRENT_WEEK_LOW=$CURRENT_WEEK_LOW, CURRENT_WEEK_OPEN=$CURRENT_WEEK_OPEN, CURRENT_WEEK_QUOTE_VOLUME=$CURRENT_WEEK_QUOTE_VOLUME, CURRENT_WEEK_QUOTE_VOLUME_BUY=$CURRENT_WEEK_QUOTE_VOLUME_BUY, CURRENT_WEEK_QUOTE_VOLUME_SELL=$CURRENT_WEEK_QUOTE_VOLUME_SELL, CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN=$CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN, CURRENT_WEEK_TOTAL_TRADES=$CURRENT_WEEK_TOTAL_TRADES, CURRENT_WEEK_TOTAL_TRADES_BUY=$CURRENT_WEEK_TOTAL_TRADES_BUY, CURRENT_WEEK_TOTAL_TRADES_SELL=$CURRENT_WEEK_TOTAL_TRADES_SELL, CURRENT_WEEK_TOTAL_TRADES_UNKNOWN=$CURRENT_WEEK_TOTAL_TRADES_UNKNOWN, CURRENT_WEEK_VOLUME=$CURRENT_WEEK_VOLUME, CURRENT_WEEK_VOLUME_BUY=$CURRENT_WEEK_VOLUME_BUY, CURRENT_WEEK_VOLUME_SELL=$CURRENT_WEEK_VOLUME_SELL, CURRENT_WEEK_VOLUME_UNKNOWN=$CURRENT_WEEK_VOLUME_UNKNOWN, CURRENT_YEAR_HIGH=$CURRENT_YEAR_HIGH, CURRENT_YEAR_LOW=$CURRENT_YEAR_LOW, CURRENT_YEAR_OPEN=$CURRENT_YEAR_OPEN, CURRENT_YEAR_QUOTE_VOLUME=$CURRENT_YEAR_QUOTE_VOLUME, CURRENT_YEAR_QUOTE_VOLUME_BUY=$CURRENT_YEAR_QUOTE_VOLUME_BUY, CURRENT_YEAR_QUOTE_VOLUME_SELL=$CURRENT_YEAR_QUOTE_VOLUME_SELL, CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN=$CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN, CURRENT_YEAR_TOTAL_TRADES=$CURRENT_YEAR_TOTAL_TRADES, CURRENT_YEAR_TOTAL_TRADES_BUY=$CURRENT_YEAR_TOTAL_TRADES_BUY, CURRENT_YEAR_TOTAL_TRADES_SELL=$CURRENT_YEAR_TOTAL_TRADES_SELL, CURRENT_YEAR_TOTAL_TRADES_UNKNOWN=$CURRENT_YEAR_TOTAL_TRADES_UNKNOWN, CURRENT_YEAR_VOLUME=$CURRENT_YEAR_VOLUME, CURRENT_YEAR_VOLUME_BUY=$CURRENT_YEAR_VOLUME_BUY, CURRENT_YEAR_VOLUME_SELL=$CURRENT_YEAR_VOLUME_SELL, CURRENT_YEAR_VOLUME_UNKNOWN=$CURRENT_YEAR_VOLUME_UNKNOWN, INSTRUMENT=$INSTRUMENT, LAST_PROCESSED_TRADE_CCSEQ=$LAST_PROCESSED_TRADE_CCSEQ, LAST_PROCESSED_TRADE_PRICE=$LAST_PROCESSED_TRADE_PRICE, LAST_PROCESSED_TRADE_QUANTITY=$LAST_PROCESSED_TRADE_QUANTITY, LAST_PROCESSED_TRADE_QUOTE_QUANTITY=$LAST_PROCESSED_TRADE_QUOTE_QUANTITY, LAST_PROCESSED_TRADE_SIDE=$LAST_PROCESSED_TRADE_SIDE, LAST_PROCESSED_TRADE_TS=$LAST_PROCESSED_TRADE_TS, LAST_TRADE_CCSEQ=$LAST_TRADE_CCSEQ, LAST_TRADE_ID=$LAST_TRADE_ID, LAST_TRADE_QUANTITY=$LAST_TRADE_QUANTITY, LAST_TRADE_QUOTE_QUANTITY=$LAST_TRADE_QUOTE_QUANTITY, LAST_TRADE_SIDE=$LAST_TRADE_SIDE, LIFETIME_FIRST_TRADE_TS=$LIFETIME_FIRST_TRADE_TS, LIFETIME_HIGH=$LIFETIME_HIGH, LIFETIME_HIGH_TS=$LIFETIME_HIGH_TS, LIFETIME_LOW=$LIFETIME_LOW, LIFETIME_LOW_TS=$LIFETIME_LOW_TS, LIFETIME_OPEN=$LIFETIME_OPEN, LIFETIME_QUOTE_VOLUME=$LIFETIME_QUOTE_VOLUME, LIFETIME_QUOTE_VOLUME_BUY=$LIFETIME_QUOTE_VOLUME_BUY, LIFETIME_QUOTE_VOLUME_SELL=$LIFETIME_QUOTE_VOLUME_SELL, LIFETIME_QUOTE_VOLUME_UNKNOWN=$LIFETIME_QUOTE_VOLUME_UNKNOWN, LIFETIME_TOTAL_TRADES=$LIFETIME_TOTAL_TRADES, LIFETIME_TOTAL_TRADES_BUY=$LIFETIME_TOTAL_TRADES_BUY, LIFETIME_TOTAL_TRADES_SELL=$LIFETIME_TOTAL_TRADES_SELL, LIFETIME_TOTAL_TRADES_UNKNOWN=$LIFETIME_TOTAL_TRADES_UNKNOWN, LIFETIME_VOLUME=$LIFETIME_VOLUME, LIFETIME_VOLUME_BUY=$LIFETIME_VOLUME_BUY, LIFETIME_VOLUME_SELL=$LIFETIME_VOLUME_SELL, LIFETIME_VOLUME_UNKNOWN=$LIFETIME_VOLUME_UNKNOWN, MAPPED_INSTRUMENT=$MAPPED_INSTRUMENT, MARKET=$MARKET, mOVING180DAYHIGH=$mOVING180DAYHIGH, mOVING180DAYLOW=$mOVING180DAYLOW, mOVING180DAYOPEN=$mOVING180DAYOPEN, mOVING180DAYQUOTEVOLUME=$mOVING180DAYQUOTEVOLUME, mOVING180DAYQUOTEVOLUMEBUY=$mOVING180DAYQUOTEVOLUMEBUY, mOVING180DAYQUOTEVOLUMESELL=$mOVING180DAYQUOTEVOLUMESELL, mOVING180DAYQUOTEVOLUMEUNKNOWN=$mOVING180DAYQUOTEVOLUMEUNKNOWN, mOVING180DAYTOTALTRADES=$mOVING180DAYTOTALTRADES, mOVING180DAYTOTALTRADESBUY=$mOVING180DAYTOTALTRADESBUY, mOVING180DAYTOTALTRADESSELL=$mOVING180DAYTOTALTRADESSELL, mOVING180DAYTOTALTRADESUNKNOWN=$mOVING180DAYTOTALTRADESUNKNOWN, mOVING180DAYVOLUME=$mOVING180DAYVOLUME, mOVING180DAYVOLUMEBUY=$mOVING180DAYVOLUMEBUY, mOVING180DAYVOLUMESELL=$mOVING180DAYVOLUMESELL, mOVING180DAYVOLUMEUNKNOWN=$mOVING180DAYVOLUMEUNKNOWN, mOVING24HOURHIGH=$mOVING24HOURHIGH, mOVING24HOURLOW=$mOVING24HOURLOW, mOVING24HOUROPEN=$mOVING24HOUROPEN, mOVING24HOURQUOTEVOLUME=$mOVING24HOURQUOTEVOLUME, mOVING24HOURQUOTEVOLUMEBUY=$mOVING24HOURQUOTEVOLUMEBUY, mOVING24HOURQUOTEVOLUMESELL=$mOVING24HOURQUOTEVOLUMESELL, mOVING24HOURQUOTEVOLUMEUNKNOWN=$mOVING24HOURQUOTEVOLUMEUNKNOWN, mOVING24HOURTOTALTRADES=$mOVING24HOURTOTALTRADES, mOVING24HOURTOTALTRADESBUY=$mOVING24HOURTOTALTRADESBUY, mOVING24HOURTOTALTRADESSELL=$mOVING24HOURTOTALTRADESSELL, mOVING24HOURTOTALTRADESUNKNOWN=$mOVING24HOURTOTALTRADESUNKNOWN, mOVING24HOURVOLUME=$mOVING24HOURVOLUME, mOVING24HOURVOLUMEBUY=$mOVING24HOURVOLUMEBUY, mOVING24HOURVOLUMESELL=$mOVING24HOURVOLUMESELL, mOVING24HOURVOLUMEUNKNOWN=$mOVING24HOURVOLUMEUNKNOWN, mOVING30DAYHIGH=$mOVING30DAYHIGH, mOVING30DAYLOW=$mOVING30DAYLOW, mOVING30DAYOPEN=$mOVING30DAYOPEN, mOVING30DAYQUOTEVOLUME=$mOVING30DAYQUOTEVOLUME, mOVING30DAYQUOTEVOLUMEBUY=$mOVING30DAYQUOTEVOLUMEBUY, mOVING30DAYQUOTEVOLUMESELL=$mOVING30DAYQUOTEVOLUMESELL, mOVING30DAYQUOTEVOLUMEUNKNOWN=$mOVING30DAYQUOTEVOLUMEUNKNOWN, mOVING30DAYTOTALTRADES=$mOVING30DAYTOTALTRADES, mOVING30DAYTOTALTRADESBUY=$mOVING30DAYTOTALTRADESBUY, mOVING30DAYTOTALTRADESSELL=$mOVING30DAYTOTALTRADESSELL, mOVING30DAYTOTALTRADESUNKNOWN=$mOVING30DAYTOTALTRADESUNKNOWN, mOVING30DAYVOLUME=$mOVING30DAYVOLUME, mOVING30DAYVOLUMEBUY=$mOVING30DAYVOLUMEBUY, mOVING30DAYVOLUMESELL=$mOVING30DAYVOLUMESELL, mOVING30DAYVOLUMEUNKNOWN=$mOVING30DAYVOLUMEUNKNOWN, mOVING365DAYHIGH=$mOVING365DAYHIGH, mOVING365DAYLOW=$mOVING365DAYLOW, mOVING365DAYOPEN=$mOVING365DAYOPEN, mOVING365DAYQUOTEVOLUME=$mOVING365DAYQUOTEVOLUME, mOVING365DAYQUOTEVOLUMEBUY=$mOVING365DAYQUOTEVOLUMEBUY, mOVING365DAYQUOTEVOLUMESELL=$mOVING365DAYQUOTEVOLUMESELL, mOVING365DAYQUOTEVOLUMEUNKNOWN=$mOVING365DAYQUOTEVOLUMEUNKNOWN, mOVING365DAYTOTALTRADES=$mOVING365DAYTOTALTRADES, mOVING365DAYTOTALTRADESBUY=$mOVING365DAYTOTALTRADESBUY, mOVING365DAYTOTALTRADESSELL=$mOVING365DAYTOTALTRADESSELL, mOVING365DAYTOTALTRADESUNKNOWN=$mOVING365DAYTOTALTRADESUNKNOWN, mOVING365DAYVOLUME=$mOVING365DAYVOLUME, mOVING365DAYVOLUMEBUY=$mOVING365DAYVOLUMEBUY, mOVING365DAYVOLUMESELL=$mOVING365DAYVOLUMESELL, mOVING365DAYVOLUMEUNKNOWN=$mOVING365DAYVOLUMEUNKNOWN, mOVING7DAYHIGH=$mOVING7DAYHIGH, mOVING7DAYLOW=$mOVING7DAYLOW, mOVING7DAYOPEN=$mOVING7DAYOPEN, mOVING7DAYQUOTEVOLUME=$mOVING7DAYQUOTEVOLUME, mOVING7DAYQUOTEVOLUMEBUY=$mOVING7DAYQUOTEVOLUMEBUY, mOVING7DAYQUOTEVOLUMESELL=$mOVING7DAYQUOTEVOLUMESELL, mOVING7DAYQUOTEVOLUMEUNKNOWN=$mOVING7DAYQUOTEVOLUMEUNKNOWN, mOVING7DAYTOTALTRADES=$mOVING7DAYTOTALTRADES, mOVING7DAYTOTALTRADESBUY=$mOVING7DAYTOTALTRADESBUY, mOVING7DAYTOTALTRADESSELL=$mOVING7DAYTOTALTRADESSELL, mOVING7DAYTOTALTRADESUNKNOWN=$mOVING7DAYTOTALTRADESUNKNOWN, mOVING7DAYVOLUME=$mOVING7DAYVOLUME, mOVING7DAYVOLUMEBUY=$mOVING7DAYVOLUMEBUY, mOVING7DAYVOLUMESELL=$mOVING7DAYVOLUMESELL, mOVING7DAYVOLUMEUNKNOWN=$mOVING7DAYVOLUMEUNKNOWN, mOVING90DAYHIGH=$mOVING90DAYHIGH, mOVING90DAYLOW=$mOVING90DAYLOW, mOVING90DAYOPEN=$mOVING90DAYOPEN, mOVING90DAYQUOTEVOLUME=$mOVING90DAYQUOTEVOLUME, mOVING90DAYQUOTEVOLUMEBUY=$mOVING90DAYQUOTEVOLUMEBUY, mOVING90DAYQUOTEVOLUMESELL=$mOVING90DAYQUOTEVOLUMESELL, mOVING90DAYQUOTEVOLUMEUNKNOWN=$mOVING90DAYQUOTEVOLUMEUNKNOWN, mOVING90DAYTOTALTRADES=$mOVING90DAYTOTALTRADES, mOVING90DAYTOTALTRADESBUY=$mOVING90DAYTOTALTRADESBUY, mOVING90DAYTOTALTRADESSELL=$mOVING90DAYTOTALTRADESSELL, mOVING90DAYTOTALTRADESUNKNOWN=$mOVING90DAYTOTALTRADESUNKNOWN, mOVING90DAYVOLUME=$mOVING90DAYVOLUME, mOVING90DAYVOLUMEBUY=$mOVING90DAYVOLUMEBUY, mOVING90DAYVOLUMESELL=$mOVING90DAYVOLUMESELL, mOVING90DAYVOLUMEUNKNOWN=$mOVING90DAYVOLUMEUNKNOWN, PRICE=$PRICE, PRICE_FLAG=$PRICE_FLAG, PRICE_LAST_UPDATE_TS=$PRICE_LAST_UPDATE_TS, QUOTE=$QUOTE, TOP_ASK_LAST_UPDATE_TS=$TOP_ASK_LAST_UPDATE_TS, TOP_ASK_PRICE=$TOP_ASK_PRICE, TOP_ASK_QUANTITY=$TOP_ASK_QUANTITY, TOP_BID_LAST_UPDATE_TS=$TOP_BID_LAST_UPDATE_TS, TOP_BID_PRICE=$TOP_BID_PRICE, TOP_BID_QUANTITY=$TOP_BID_QUANTITY, TYPE=$TYPE]';

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
    if (this.CURRENT_DAY_HIGH != null) {
      json[r'CURRENT_DAY_HIGH'] = this.CURRENT_DAY_HIGH;
    } else {
      json[r'CURRENT_DAY_HIGH'] = null;
    }
    if (this.CURRENT_DAY_LOW != null) {
      json[r'CURRENT_DAY_LOW'] = this.CURRENT_DAY_LOW;
    } else {
      json[r'CURRENT_DAY_LOW'] = null;
    }
    if (this.CURRENT_DAY_OPEN != null) {
      json[r'CURRENT_DAY_OPEN'] = this.CURRENT_DAY_OPEN;
    } else {
      json[r'CURRENT_DAY_OPEN'] = null;
    }
    if (this.CURRENT_DAY_QUOTE_VOLUME != null) {
      json[r'CURRENT_DAY_QUOTE_VOLUME'] = this.CURRENT_DAY_QUOTE_VOLUME;
    } else {
      json[r'CURRENT_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.CURRENT_DAY_QUOTE_VOLUME_BUY != null) {
      json[r'CURRENT_DAY_QUOTE_VOLUME_BUY'] = this.CURRENT_DAY_QUOTE_VOLUME_BUY;
    } else {
      json[r'CURRENT_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_DAY_QUOTE_VOLUME_SELL != null) {
      json[r'CURRENT_DAY_QUOTE_VOLUME_SELL'] = this.CURRENT_DAY_QUOTE_VOLUME_SELL;
    } else {
      json[r'CURRENT_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN'] = this.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_DAY_TOTAL_TRADES != null) {
      json[r'CURRENT_DAY_TOTAL_TRADES'] = this.CURRENT_DAY_TOTAL_TRADES;
    } else {
      json[r'CURRENT_DAY_TOTAL_TRADES'] = null;
    }
    if (this.CURRENT_DAY_TOTAL_TRADES_BUY != null) {
      json[r'CURRENT_DAY_TOTAL_TRADES_BUY'] = this.CURRENT_DAY_TOTAL_TRADES_BUY;
    } else {
      json[r'CURRENT_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.CURRENT_DAY_TOTAL_TRADES_SELL != null) {
      json[r'CURRENT_DAY_TOTAL_TRADES_SELL'] = this.CURRENT_DAY_TOTAL_TRADES_SELL;
    } else {
      json[r'CURRENT_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.CURRENT_DAY_TOTAL_TRADES_UNKNOWN != null) {
      json[r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN'] = this.CURRENT_DAY_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.CURRENT_DAY_VOLUME != null) {
      json[r'CURRENT_DAY_VOLUME'] = this.CURRENT_DAY_VOLUME;
    } else {
      json[r'CURRENT_DAY_VOLUME'] = null;
    }
    if (this.CURRENT_DAY_VOLUME_BUY != null) {
      json[r'CURRENT_DAY_VOLUME_BUY'] = this.CURRENT_DAY_VOLUME_BUY;
    } else {
      json[r'CURRENT_DAY_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_DAY_VOLUME_SELL != null) {
      json[r'CURRENT_DAY_VOLUME_SELL'] = this.CURRENT_DAY_VOLUME_SELL;
    } else {
      json[r'CURRENT_DAY_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_DAY_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_DAY_VOLUME_UNKNOWN'] = this.CURRENT_DAY_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_HOUR_HIGH != null) {
      json[r'CURRENT_HOUR_HIGH'] = this.CURRENT_HOUR_HIGH;
    } else {
      json[r'CURRENT_HOUR_HIGH'] = null;
    }
    if (this.CURRENT_HOUR_LOW != null) {
      json[r'CURRENT_HOUR_LOW'] = this.CURRENT_HOUR_LOW;
    } else {
      json[r'CURRENT_HOUR_LOW'] = null;
    }
    if (this.CURRENT_HOUR_OPEN != null) {
      json[r'CURRENT_HOUR_OPEN'] = this.CURRENT_HOUR_OPEN;
    } else {
      json[r'CURRENT_HOUR_OPEN'] = null;
    }
    if (this.CURRENT_HOUR_QUOTE_VOLUME != null) {
      json[r'CURRENT_HOUR_QUOTE_VOLUME'] = this.CURRENT_HOUR_QUOTE_VOLUME;
    } else {
      json[r'CURRENT_HOUR_QUOTE_VOLUME'] = null;
    }
    if (this.CURRENT_HOUR_QUOTE_VOLUME_BUY != null) {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_BUY'] = this.CURRENT_HOUR_QUOTE_VOLUME_BUY;
    } else {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_HOUR_QUOTE_VOLUME_SELL != null) {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_SELL'] = this.CURRENT_HOUR_QUOTE_VOLUME_SELL;
    } else {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN'] = this.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_HOUR_TOTAL_TRADES != null) {
      json[r'CURRENT_HOUR_TOTAL_TRADES'] = this.CURRENT_HOUR_TOTAL_TRADES;
    } else {
      json[r'CURRENT_HOUR_TOTAL_TRADES'] = null;
    }
    if (this.CURRENT_HOUR_TOTAL_TRADES_BUY != null) {
      json[r'CURRENT_HOUR_TOTAL_TRADES_BUY'] = this.CURRENT_HOUR_TOTAL_TRADES_BUY;
    } else {
      json[r'CURRENT_HOUR_TOTAL_TRADES_BUY'] = null;
    }
    if (this.CURRENT_HOUR_TOTAL_TRADES_SELL != null) {
      json[r'CURRENT_HOUR_TOTAL_TRADES_SELL'] = this.CURRENT_HOUR_TOTAL_TRADES_SELL;
    } else {
      json[r'CURRENT_HOUR_TOTAL_TRADES_SELL'] = null;
    }
    if (this.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN != null) {
      json[r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN'] = this.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.CURRENT_HOUR_VOLUME != null) {
      json[r'CURRENT_HOUR_VOLUME'] = this.CURRENT_HOUR_VOLUME;
    } else {
      json[r'CURRENT_HOUR_VOLUME'] = null;
    }
    if (this.CURRENT_HOUR_VOLUME_BUY != null) {
      json[r'CURRENT_HOUR_VOLUME_BUY'] = this.CURRENT_HOUR_VOLUME_BUY;
    } else {
      json[r'CURRENT_HOUR_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_HOUR_VOLUME_SELL != null) {
      json[r'CURRENT_HOUR_VOLUME_SELL'] = this.CURRENT_HOUR_VOLUME_SELL;
    } else {
      json[r'CURRENT_HOUR_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_HOUR_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_HOUR_VOLUME_UNKNOWN'] = this.CURRENT_HOUR_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_HOUR_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_MONTH_HIGH != null) {
      json[r'CURRENT_MONTH_HIGH'] = this.CURRENT_MONTH_HIGH;
    } else {
      json[r'CURRENT_MONTH_HIGH'] = null;
    }
    if (this.CURRENT_MONTH_LOW != null) {
      json[r'CURRENT_MONTH_LOW'] = this.CURRENT_MONTH_LOW;
    } else {
      json[r'CURRENT_MONTH_LOW'] = null;
    }
    if (this.CURRENT_MONTH_OPEN != null) {
      json[r'CURRENT_MONTH_OPEN'] = this.CURRENT_MONTH_OPEN;
    } else {
      json[r'CURRENT_MONTH_OPEN'] = null;
    }
    if (this.CURRENT_MONTH_QUOTE_VOLUME != null) {
      json[r'CURRENT_MONTH_QUOTE_VOLUME'] = this.CURRENT_MONTH_QUOTE_VOLUME;
    } else {
      json[r'CURRENT_MONTH_QUOTE_VOLUME'] = null;
    }
    if (this.CURRENT_MONTH_QUOTE_VOLUME_BUY != null) {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_BUY'] = this.CURRENT_MONTH_QUOTE_VOLUME_BUY;
    } else {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_MONTH_QUOTE_VOLUME_SELL != null) {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_SELL'] = this.CURRENT_MONTH_QUOTE_VOLUME_SELL;
    } else {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN'] = this.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_MONTH_TOTAL_TRADES != null) {
      json[r'CURRENT_MONTH_TOTAL_TRADES'] = this.CURRENT_MONTH_TOTAL_TRADES;
    } else {
      json[r'CURRENT_MONTH_TOTAL_TRADES'] = null;
    }
    if (this.CURRENT_MONTH_TOTAL_TRADES_BUY != null) {
      json[r'CURRENT_MONTH_TOTAL_TRADES_BUY'] = this.CURRENT_MONTH_TOTAL_TRADES_BUY;
    } else {
      json[r'CURRENT_MONTH_TOTAL_TRADES_BUY'] = null;
    }
    if (this.CURRENT_MONTH_TOTAL_TRADES_SELL != null) {
      json[r'CURRENT_MONTH_TOTAL_TRADES_SELL'] = this.CURRENT_MONTH_TOTAL_TRADES_SELL;
    } else {
      json[r'CURRENT_MONTH_TOTAL_TRADES_SELL'] = null;
    }
    if (this.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN != null) {
      json[r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN'] = this.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.CURRENT_MONTH_VOLUME != null) {
      json[r'CURRENT_MONTH_VOLUME'] = this.CURRENT_MONTH_VOLUME;
    } else {
      json[r'CURRENT_MONTH_VOLUME'] = null;
    }
    if (this.CURRENT_MONTH_VOLUME_BUY != null) {
      json[r'CURRENT_MONTH_VOLUME_BUY'] = this.CURRENT_MONTH_VOLUME_BUY;
    } else {
      json[r'CURRENT_MONTH_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_MONTH_VOLUME_SELL != null) {
      json[r'CURRENT_MONTH_VOLUME_SELL'] = this.CURRENT_MONTH_VOLUME_SELL;
    } else {
      json[r'CURRENT_MONTH_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_MONTH_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_MONTH_VOLUME_UNKNOWN'] = this.CURRENT_MONTH_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_MONTH_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_WEEK_HIGH != null) {
      json[r'CURRENT_WEEK_HIGH'] = this.CURRENT_WEEK_HIGH;
    } else {
      json[r'CURRENT_WEEK_HIGH'] = null;
    }
    if (this.CURRENT_WEEK_LOW != null) {
      json[r'CURRENT_WEEK_LOW'] = this.CURRENT_WEEK_LOW;
    } else {
      json[r'CURRENT_WEEK_LOW'] = null;
    }
    if (this.CURRENT_WEEK_OPEN != null) {
      json[r'CURRENT_WEEK_OPEN'] = this.CURRENT_WEEK_OPEN;
    } else {
      json[r'CURRENT_WEEK_OPEN'] = null;
    }
    if (this.CURRENT_WEEK_QUOTE_VOLUME != null) {
      json[r'CURRENT_WEEK_QUOTE_VOLUME'] = this.CURRENT_WEEK_QUOTE_VOLUME;
    } else {
      json[r'CURRENT_WEEK_QUOTE_VOLUME'] = null;
    }
    if (this.CURRENT_WEEK_QUOTE_VOLUME_BUY != null) {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_BUY'] = this.CURRENT_WEEK_QUOTE_VOLUME_BUY;
    } else {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_WEEK_QUOTE_VOLUME_SELL != null) {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_SELL'] = this.CURRENT_WEEK_QUOTE_VOLUME_SELL;
    } else {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN'] = this.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_WEEK_TOTAL_TRADES != null) {
      json[r'CURRENT_WEEK_TOTAL_TRADES'] = this.CURRENT_WEEK_TOTAL_TRADES;
    } else {
      json[r'CURRENT_WEEK_TOTAL_TRADES'] = null;
    }
    if (this.CURRENT_WEEK_TOTAL_TRADES_BUY != null) {
      json[r'CURRENT_WEEK_TOTAL_TRADES_BUY'] = this.CURRENT_WEEK_TOTAL_TRADES_BUY;
    } else {
      json[r'CURRENT_WEEK_TOTAL_TRADES_BUY'] = null;
    }
    if (this.CURRENT_WEEK_TOTAL_TRADES_SELL != null) {
      json[r'CURRENT_WEEK_TOTAL_TRADES_SELL'] = this.CURRENT_WEEK_TOTAL_TRADES_SELL;
    } else {
      json[r'CURRENT_WEEK_TOTAL_TRADES_SELL'] = null;
    }
    if (this.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN != null) {
      json[r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN'] = this.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.CURRENT_WEEK_VOLUME != null) {
      json[r'CURRENT_WEEK_VOLUME'] = this.CURRENT_WEEK_VOLUME;
    } else {
      json[r'CURRENT_WEEK_VOLUME'] = null;
    }
    if (this.CURRENT_WEEK_VOLUME_BUY != null) {
      json[r'CURRENT_WEEK_VOLUME_BUY'] = this.CURRENT_WEEK_VOLUME_BUY;
    } else {
      json[r'CURRENT_WEEK_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_WEEK_VOLUME_SELL != null) {
      json[r'CURRENT_WEEK_VOLUME_SELL'] = this.CURRENT_WEEK_VOLUME_SELL;
    } else {
      json[r'CURRENT_WEEK_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_WEEK_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_WEEK_VOLUME_UNKNOWN'] = this.CURRENT_WEEK_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_WEEK_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_YEAR_HIGH != null) {
      json[r'CURRENT_YEAR_HIGH'] = this.CURRENT_YEAR_HIGH;
    } else {
      json[r'CURRENT_YEAR_HIGH'] = null;
    }
    if (this.CURRENT_YEAR_LOW != null) {
      json[r'CURRENT_YEAR_LOW'] = this.CURRENT_YEAR_LOW;
    } else {
      json[r'CURRENT_YEAR_LOW'] = null;
    }
    if (this.CURRENT_YEAR_OPEN != null) {
      json[r'CURRENT_YEAR_OPEN'] = this.CURRENT_YEAR_OPEN;
    } else {
      json[r'CURRENT_YEAR_OPEN'] = null;
    }
    if (this.CURRENT_YEAR_QUOTE_VOLUME != null) {
      json[r'CURRENT_YEAR_QUOTE_VOLUME'] = this.CURRENT_YEAR_QUOTE_VOLUME;
    } else {
      json[r'CURRENT_YEAR_QUOTE_VOLUME'] = null;
    }
    if (this.CURRENT_YEAR_QUOTE_VOLUME_BUY != null) {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_BUY'] = this.CURRENT_YEAR_QUOTE_VOLUME_BUY;
    } else {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_YEAR_QUOTE_VOLUME_SELL != null) {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_SELL'] = this.CURRENT_YEAR_QUOTE_VOLUME_SELL;
    } else {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN'] = this.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.CURRENT_YEAR_TOTAL_TRADES != null) {
      json[r'CURRENT_YEAR_TOTAL_TRADES'] = this.CURRENT_YEAR_TOTAL_TRADES;
    } else {
      json[r'CURRENT_YEAR_TOTAL_TRADES'] = null;
    }
    if (this.CURRENT_YEAR_TOTAL_TRADES_BUY != null) {
      json[r'CURRENT_YEAR_TOTAL_TRADES_BUY'] = this.CURRENT_YEAR_TOTAL_TRADES_BUY;
    } else {
      json[r'CURRENT_YEAR_TOTAL_TRADES_BUY'] = null;
    }
    if (this.CURRENT_YEAR_TOTAL_TRADES_SELL != null) {
      json[r'CURRENT_YEAR_TOTAL_TRADES_SELL'] = this.CURRENT_YEAR_TOTAL_TRADES_SELL;
    } else {
      json[r'CURRENT_YEAR_TOTAL_TRADES_SELL'] = null;
    }
    if (this.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN != null) {
      json[r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN'] = this.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.CURRENT_YEAR_VOLUME != null) {
      json[r'CURRENT_YEAR_VOLUME'] = this.CURRENT_YEAR_VOLUME;
    } else {
      json[r'CURRENT_YEAR_VOLUME'] = null;
    }
    if (this.CURRENT_YEAR_VOLUME_BUY != null) {
      json[r'CURRENT_YEAR_VOLUME_BUY'] = this.CURRENT_YEAR_VOLUME_BUY;
    } else {
      json[r'CURRENT_YEAR_VOLUME_BUY'] = null;
    }
    if (this.CURRENT_YEAR_VOLUME_SELL != null) {
      json[r'CURRENT_YEAR_VOLUME_SELL'] = this.CURRENT_YEAR_VOLUME_SELL;
    } else {
      json[r'CURRENT_YEAR_VOLUME_SELL'] = null;
    }
    if (this.CURRENT_YEAR_VOLUME_UNKNOWN != null) {
      json[r'CURRENT_YEAR_VOLUME_UNKNOWN'] = this.CURRENT_YEAR_VOLUME_UNKNOWN;
    } else {
      json[r'CURRENT_YEAR_VOLUME_UNKNOWN'] = null;
    }
    if (this.INSTRUMENT != null) {
      json[r'INSTRUMENT'] = this.INSTRUMENT;
    } else {
      json[r'INSTRUMENT'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_CCSEQ != null) {
      json[r'LAST_PROCESSED_TRADE_CCSEQ'] = this.LAST_PROCESSED_TRADE_CCSEQ;
    } else {
      json[r'LAST_PROCESSED_TRADE_CCSEQ'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_PRICE != null) {
      json[r'LAST_PROCESSED_TRADE_PRICE'] = this.LAST_PROCESSED_TRADE_PRICE;
    } else {
      json[r'LAST_PROCESSED_TRADE_PRICE'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_QUANTITY != null) {
      json[r'LAST_PROCESSED_TRADE_QUANTITY'] = this.LAST_PROCESSED_TRADE_QUANTITY;
    } else {
      json[r'LAST_PROCESSED_TRADE_QUANTITY'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_QUOTE_QUANTITY != null) {
      json[r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY'] = this.LAST_PROCESSED_TRADE_QUOTE_QUANTITY;
    } else {
      json[r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_SIDE != null) {
      json[r'LAST_PROCESSED_TRADE_SIDE'] = this.LAST_PROCESSED_TRADE_SIDE;
    } else {
      json[r'LAST_PROCESSED_TRADE_SIDE'] = null;
    }
    if (this.LAST_PROCESSED_TRADE_TS != null) {
      json[r'LAST_PROCESSED_TRADE_TS'] = this.LAST_PROCESSED_TRADE_TS;
    } else {
      json[r'LAST_PROCESSED_TRADE_TS'] = null;
    }
    if (this.LAST_TRADE_CCSEQ != null) {
      json[r'LAST_TRADE_CCSEQ'] = this.LAST_TRADE_CCSEQ;
    } else {
      json[r'LAST_TRADE_CCSEQ'] = null;
    }
    if (this.LAST_TRADE_ID != null) {
      json[r'LAST_TRADE_ID'] = this.LAST_TRADE_ID;
    } else {
      json[r'LAST_TRADE_ID'] = null;
    }
    if (this.LAST_TRADE_QUANTITY != null) {
      json[r'LAST_TRADE_QUANTITY'] = this.LAST_TRADE_QUANTITY;
    } else {
      json[r'LAST_TRADE_QUANTITY'] = null;
    }
    if (this.LAST_TRADE_QUOTE_QUANTITY != null) {
      json[r'LAST_TRADE_QUOTE_QUANTITY'] = this.LAST_TRADE_QUOTE_QUANTITY;
    } else {
      json[r'LAST_TRADE_QUOTE_QUANTITY'] = null;
    }
    if (this.LAST_TRADE_SIDE != null) {
      json[r'LAST_TRADE_SIDE'] = this.LAST_TRADE_SIDE;
    } else {
      json[r'LAST_TRADE_SIDE'] = null;
    }
    if (this.LIFETIME_FIRST_TRADE_TS != null) {
      json[r'LIFETIME_FIRST_TRADE_TS'] = this.LIFETIME_FIRST_TRADE_TS;
    } else {
      json[r'LIFETIME_FIRST_TRADE_TS'] = null;
    }
    if (this.LIFETIME_HIGH != null) {
      json[r'LIFETIME_HIGH'] = this.LIFETIME_HIGH;
    } else {
      json[r'LIFETIME_HIGH'] = null;
    }
    if (this.LIFETIME_HIGH_TS != null) {
      json[r'LIFETIME_HIGH_TS'] = this.LIFETIME_HIGH_TS;
    } else {
      json[r'LIFETIME_HIGH_TS'] = null;
    }
    if (this.LIFETIME_LOW != null) {
      json[r'LIFETIME_LOW'] = this.LIFETIME_LOW;
    } else {
      json[r'LIFETIME_LOW'] = null;
    }
    if (this.LIFETIME_LOW_TS != null) {
      json[r'LIFETIME_LOW_TS'] = this.LIFETIME_LOW_TS;
    } else {
      json[r'LIFETIME_LOW_TS'] = null;
    }
    if (this.LIFETIME_OPEN != null) {
      json[r'LIFETIME_OPEN'] = this.LIFETIME_OPEN;
    } else {
      json[r'LIFETIME_OPEN'] = null;
    }
    if (this.LIFETIME_QUOTE_VOLUME != null) {
      json[r'LIFETIME_QUOTE_VOLUME'] = this.LIFETIME_QUOTE_VOLUME;
    } else {
      json[r'LIFETIME_QUOTE_VOLUME'] = null;
    }
    if (this.LIFETIME_QUOTE_VOLUME_BUY != null) {
      json[r'LIFETIME_QUOTE_VOLUME_BUY'] = this.LIFETIME_QUOTE_VOLUME_BUY;
    } else {
      json[r'LIFETIME_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.LIFETIME_QUOTE_VOLUME_SELL != null) {
      json[r'LIFETIME_QUOTE_VOLUME_SELL'] = this.LIFETIME_QUOTE_VOLUME_SELL;
    } else {
      json[r'LIFETIME_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.LIFETIME_QUOTE_VOLUME_UNKNOWN != null) {
      json[r'LIFETIME_QUOTE_VOLUME_UNKNOWN'] = this.LIFETIME_QUOTE_VOLUME_UNKNOWN;
    } else {
      json[r'LIFETIME_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.LIFETIME_TOTAL_TRADES != null) {
      json[r'LIFETIME_TOTAL_TRADES'] = this.LIFETIME_TOTAL_TRADES;
    } else {
      json[r'LIFETIME_TOTAL_TRADES'] = null;
    }
    if (this.LIFETIME_TOTAL_TRADES_BUY != null) {
      json[r'LIFETIME_TOTAL_TRADES_BUY'] = this.LIFETIME_TOTAL_TRADES_BUY;
    } else {
      json[r'LIFETIME_TOTAL_TRADES_BUY'] = null;
    }
    if (this.LIFETIME_TOTAL_TRADES_SELL != null) {
      json[r'LIFETIME_TOTAL_TRADES_SELL'] = this.LIFETIME_TOTAL_TRADES_SELL;
    } else {
      json[r'LIFETIME_TOTAL_TRADES_SELL'] = null;
    }
    if (this.LIFETIME_TOTAL_TRADES_UNKNOWN != null) {
      json[r'LIFETIME_TOTAL_TRADES_UNKNOWN'] = this.LIFETIME_TOTAL_TRADES_UNKNOWN;
    } else {
      json[r'LIFETIME_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.LIFETIME_VOLUME != null) {
      json[r'LIFETIME_VOLUME'] = this.LIFETIME_VOLUME;
    } else {
      json[r'LIFETIME_VOLUME'] = null;
    }
    if (this.LIFETIME_VOLUME_BUY != null) {
      json[r'LIFETIME_VOLUME_BUY'] = this.LIFETIME_VOLUME_BUY;
    } else {
      json[r'LIFETIME_VOLUME_BUY'] = null;
    }
    if (this.LIFETIME_VOLUME_SELL != null) {
      json[r'LIFETIME_VOLUME_SELL'] = this.LIFETIME_VOLUME_SELL;
    } else {
      json[r'LIFETIME_VOLUME_SELL'] = null;
    }
    if (this.LIFETIME_VOLUME_UNKNOWN != null) {
      json[r'LIFETIME_VOLUME_UNKNOWN'] = this.LIFETIME_VOLUME_UNKNOWN;
    } else {
      json[r'LIFETIME_VOLUME_UNKNOWN'] = null;
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
    if (this.mOVING180DAYHIGH != null) {
      json[r'MOVING_180_DAY_HIGH'] = this.mOVING180DAYHIGH;
    } else {
      json[r'MOVING_180_DAY_HIGH'] = null;
    }
    if (this.mOVING180DAYLOW != null) {
      json[r'MOVING_180_DAY_LOW'] = this.mOVING180DAYLOW;
    } else {
      json[r'MOVING_180_DAY_LOW'] = null;
    }
    if (this.mOVING180DAYOPEN != null) {
      json[r'MOVING_180_DAY_OPEN'] = this.mOVING180DAYOPEN;
    } else {
      json[r'MOVING_180_DAY_OPEN'] = null;
    }
    if (this.mOVING180DAYQUOTEVOLUME != null) {
      json[r'MOVING_180_DAY_QUOTE_VOLUME'] = this.mOVING180DAYQUOTEVOLUME;
    } else {
      json[r'MOVING_180_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING180DAYQUOTEVOLUMEBUY != null) {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_BUY'] = this.mOVING180DAYQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING180DAYQUOTEVOLUMESELL != null) {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_SELL'] = this.mOVING180DAYQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING180DAYQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN'] = this.mOVING180DAYQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING180DAYTOTALTRADES != null) {
      json[r'MOVING_180_DAY_TOTAL_TRADES'] = this.mOVING180DAYTOTALTRADES;
    } else {
      json[r'MOVING_180_DAY_TOTAL_TRADES'] = null;
    }
    if (this.mOVING180DAYTOTALTRADESBUY != null) {
      json[r'MOVING_180_DAY_TOTAL_TRADES_BUY'] = this.mOVING180DAYTOTALTRADESBUY;
    } else {
      json[r'MOVING_180_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING180DAYTOTALTRADESSELL != null) {
      json[r'MOVING_180_DAY_TOTAL_TRADES_SELL'] = this.mOVING180DAYTOTALTRADESSELL;
    } else {
      json[r'MOVING_180_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING180DAYTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN'] = this.mOVING180DAYTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING180DAYVOLUME != null) {
      json[r'MOVING_180_DAY_VOLUME'] = this.mOVING180DAYVOLUME;
    } else {
      json[r'MOVING_180_DAY_VOLUME'] = null;
    }
    if (this.mOVING180DAYVOLUMEBUY != null) {
      json[r'MOVING_180_DAY_VOLUME_BUY'] = this.mOVING180DAYVOLUMEBUY;
    } else {
      json[r'MOVING_180_DAY_VOLUME_BUY'] = null;
    }
    if (this.mOVING180DAYVOLUMESELL != null) {
      json[r'MOVING_180_DAY_VOLUME_SELL'] = this.mOVING180DAYVOLUMESELL;
    } else {
      json[r'MOVING_180_DAY_VOLUME_SELL'] = null;
    }
    if (this.mOVING180DAYVOLUMEUNKNOWN != null) {
      json[r'MOVING_180_DAY_VOLUME_UNKNOWN'] = this.mOVING180DAYVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_180_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING24HOURHIGH != null) {
      json[r'MOVING_24_HOUR_HIGH'] = this.mOVING24HOURHIGH;
    } else {
      json[r'MOVING_24_HOUR_HIGH'] = null;
    }
    if (this.mOVING24HOURLOW != null) {
      json[r'MOVING_24_HOUR_LOW'] = this.mOVING24HOURLOW;
    } else {
      json[r'MOVING_24_HOUR_LOW'] = null;
    }
    if (this.mOVING24HOUROPEN != null) {
      json[r'MOVING_24_HOUR_OPEN'] = this.mOVING24HOUROPEN;
    } else {
      json[r'MOVING_24_HOUR_OPEN'] = null;
    }
    if (this.mOVING24HOURQUOTEVOLUME != null) {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME'] = this.mOVING24HOURQUOTEVOLUME;
    } else {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING24HOURQUOTEVOLUMEBUY != null) {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_BUY'] = this.mOVING24HOURQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING24HOURQUOTEVOLUMESELL != null) {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_SELL'] = this.mOVING24HOURQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING24HOURQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN'] = this.mOVING24HOURQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING24HOURTOTALTRADES != null) {
      json[r'MOVING_24_HOUR_TOTAL_TRADES'] = this.mOVING24HOURTOTALTRADES;
    } else {
      json[r'MOVING_24_HOUR_TOTAL_TRADES'] = null;
    }
    if (this.mOVING24HOURTOTALTRADESBUY != null) {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_BUY'] = this.mOVING24HOURTOTALTRADESBUY;
    } else {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING24HOURTOTALTRADESSELL != null) {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_SELL'] = this.mOVING24HOURTOTALTRADESSELL;
    } else {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING24HOURTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN'] = this.mOVING24HOURTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING24HOURVOLUME != null) {
      json[r'MOVING_24_HOUR_VOLUME'] = this.mOVING24HOURVOLUME;
    } else {
      json[r'MOVING_24_HOUR_VOLUME'] = null;
    }
    if (this.mOVING24HOURVOLUMEBUY != null) {
      json[r'MOVING_24_HOUR_VOLUME_BUY'] = this.mOVING24HOURVOLUMEBUY;
    } else {
      json[r'MOVING_24_HOUR_VOLUME_BUY'] = null;
    }
    if (this.mOVING24HOURVOLUMESELL != null) {
      json[r'MOVING_24_HOUR_VOLUME_SELL'] = this.mOVING24HOURVOLUMESELL;
    } else {
      json[r'MOVING_24_HOUR_VOLUME_SELL'] = null;
    }
    if (this.mOVING24HOURVOLUMEUNKNOWN != null) {
      json[r'MOVING_24_HOUR_VOLUME_UNKNOWN'] = this.mOVING24HOURVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_24_HOUR_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING30DAYHIGH != null) {
      json[r'MOVING_30_DAY_HIGH'] = this.mOVING30DAYHIGH;
    } else {
      json[r'MOVING_30_DAY_HIGH'] = null;
    }
    if (this.mOVING30DAYLOW != null) {
      json[r'MOVING_30_DAY_LOW'] = this.mOVING30DAYLOW;
    } else {
      json[r'MOVING_30_DAY_LOW'] = null;
    }
    if (this.mOVING30DAYOPEN != null) {
      json[r'MOVING_30_DAY_OPEN'] = this.mOVING30DAYOPEN;
    } else {
      json[r'MOVING_30_DAY_OPEN'] = null;
    }
    if (this.mOVING30DAYQUOTEVOLUME != null) {
      json[r'MOVING_30_DAY_QUOTE_VOLUME'] = this.mOVING30DAYQUOTEVOLUME;
    } else {
      json[r'MOVING_30_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING30DAYQUOTEVOLUMEBUY != null) {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_BUY'] = this.mOVING30DAYQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING30DAYQUOTEVOLUMESELL != null) {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_SELL'] = this.mOVING30DAYQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING30DAYQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN'] = this.mOVING30DAYQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING30DAYTOTALTRADES != null) {
      json[r'MOVING_30_DAY_TOTAL_TRADES'] = this.mOVING30DAYTOTALTRADES;
    } else {
      json[r'MOVING_30_DAY_TOTAL_TRADES'] = null;
    }
    if (this.mOVING30DAYTOTALTRADESBUY != null) {
      json[r'MOVING_30_DAY_TOTAL_TRADES_BUY'] = this.mOVING30DAYTOTALTRADESBUY;
    } else {
      json[r'MOVING_30_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING30DAYTOTALTRADESSELL != null) {
      json[r'MOVING_30_DAY_TOTAL_TRADES_SELL'] = this.mOVING30DAYTOTALTRADESSELL;
    } else {
      json[r'MOVING_30_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING30DAYTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN'] = this.mOVING30DAYTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING30DAYVOLUME != null) {
      json[r'MOVING_30_DAY_VOLUME'] = this.mOVING30DAYVOLUME;
    } else {
      json[r'MOVING_30_DAY_VOLUME'] = null;
    }
    if (this.mOVING30DAYVOLUMEBUY != null) {
      json[r'MOVING_30_DAY_VOLUME_BUY'] = this.mOVING30DAYVOLUMEBUY;
    } else {
      json[r'MOVING_30_DAY_VOLUME_BUY'] = null;
    }
    if (this.mOVING30DAYVOLUMESELL != null) {
      json[r'MOVING_30_DAY_VOLUME_SELL'] = this.mOVING30DAYVOLUMESELL;
    } else {
      json[r'MOVING_30_DAY_VOLUME_SELL'] = null;
    }
    if (this.mOVING30DAYVOLUMEUNKNOWN != null) {
      json[r'MOVING_30_DAY_VOLUME_UNKNOWN'] = this.mOVING30DAYVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_30_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING365DAYHIGH != null) {
      json[r'MOVING_365_DAY_HIGH'] = this.mOVING365DAYHIGH;
    } else {
      json[r'MOVING_365_DAY_HIGH'] = null;
    }
    if (this.mOVING365DAYLOW != null) {
      json[r'MOVING_365_DAY_LOW'] = this.mOVING365DAYLOW;
    } else {
      json[r'MOVING_365_DAY_LOW'] = null;
    }
    if (this.mOVING365DAYOPEN != null) {
      json[r'MOVING_365_DAY_OPEN'] = this.mOVING365DAYOPEN;
    } else {
      json[r'MOVING_365_DAY_OPEN'] = null;
    }
    if (this.mOVING365DAYQUOTEVOLUME != null) {
      json[r'MOVING_365_DAY_QUOTE_VOLUME'] = this.mOVING365DAYQUOTEVOLUME;
    } else {
      json[r'MOVING_365_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING365DAYQUOTEVOLUMEBUY != null) {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_BUY'] = this.mOVING365DAYQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING365DAYQUOTEVOLUMESELL != null) {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_SELL'] = this.mOVING365DAYQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING365DAYQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN'] = this.mOVING365DAYQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING365DAYTOTALTRADES != null) {
      json[r'MOVING_365_DAY_TOTAL_TRADES'] = this.mOVING365DAYTOTALTRADES;
    } else {
      json[r'MOVING_365_DAY_TOTAL_TRADES'] = null;
    }
    if (this.mOVING365DAYTOTALTRADESBUY != null) {
      json[r'MOVING_365_DAY_TOTAL_TRADES_BUY'] = this.mOVING365DAYTOTALTRADESBUY;
    } else {
      json[r'MOVING_365_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING365DAYTOTALTRADESSELL != null) {
      json[r'MOVING_365_DAY_TOTAL_TRADES_SELL'] = this.mOVING365DAYTOTALTRADESSELL;
    } else {
      json[r'MOVING_365_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING365DAYTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN'] = this.mOVING365DAYTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING365DAYVOLUME != null) {
      json[r'MOVING_365_DAY_VOLUME'] = this.mOVING365DAYVOLUME;
    } else {
      json[r'MOVING_365_DAY_VOLUME'] = null;
    }
    if (this.mOVING365DAYVOLUMEBUY != null) {
      json[r'MOVING_365_DAY_VOLUME_BUY'] = this.mOVING365DAYVOLUMEBUY;
    } else {
      json[r'MOVING_365_DAY_VOLUME_BUY'] = null;
    }
    if (this.mOVING365DAYVOLUMESELL != null) {
      json[r'MOVING_365_DAY_VOLUME_SELL'] = this.mOVING365DAYVOLUMESELL;
    } else {
      json[r'MOVING_365_DAY_VOLUME_SELL'] = null;
    }
    if (this.mOVING365DAYVOLUMEUNKNOWN != null) {
      json[r'MOVING_365_DAY_VOLUME_UNKNOWN'] = this.mOVING365DAYVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_365_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING7DAYHIGH != null) {
      json[r'MOVING_7_DAY_HIGH'] = this.mOVING7DAYHIGH;
    } else {
      json[r'MOVING_7_DAY_HIGH'] = null;
    }
    if (this.mOVING7DAYLOW != null) {
      json[r'MOVING_7_DAY_LOW'] = this.mOVING7DAYLOW;
    } else {
      json[r'MOVING_7_DAY_LOW'] = null;
    }
    if (this.mOVING7DAYOPEN != null) {
      json[r'MOVING_7_DAY_OPEN'] = this.mOVING7DAYOPEN;
    } else {
      json[r'MOVING_7_DAY_OPEN'] = null;
    }
    if (this.mOVING7DAYQUOTEVOLUME != null) {
      json[r'MOVING_7_DAY_QUOTE_VOLUME'] = this.mOVING7DAYQUOTEVOLUME;
    } else {
      json[r'MOVING_7_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING7DAYQUOTEVOLUMEBUY != null) {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_BUY'] = this.mOVING7DAYQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING7DAYQUOTEVOLUMESELL != null) {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_SELL'] = this.mOVING7DAYQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING7DAYQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN'] = this.mOVING7DAYQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING7DAYTOTALTRADES != null) {
      json[r'MOVING_7_DAY_TOTAL_TRADES'] = this.mOVING7DAYTOTALTRADES;
    } else {
      json[r'MOVING_7_DAY_TOTAL_TRADES'] = null;
    }
    if (this.mOVING7DAYTOTALTRADESBUY != null) {
      json[r'MOVING_7_DAY_TOTAL_TRADES_BUY'] = this.mOVING7DAYTOTALTRADESBUY;
    } else {
      json[r'MOVING_7_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING7DAYTOTALTRADESSELL != null) {
      json[r'MOVING_7_DAY_TOTAL_TRADES_SELL'] = this.mOVING7DAYTOTALTRADESSELL;
    } else {
      json[r'MOVING_7_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING7DAYTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN'] = this.mOVING7DAYTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING7DAYVOLUME != null) {
      json[r'MOVING_7_DAY_VOLUME'] = this.mOVING7DAYVOLUME;
    } else {
      json[r'MOVING_7_DAY_VOLUME'] = null;
    }
    if (this.mOVING7DAYVOLUMEBUY != null) {
      json[r'MOVING_7_DAY_VOLUME_BUY'] = this.mOVING7DAYVOLUMEBUY;
    } else {
      json[r'MOVING_7_DAY_VOLUME_BUY'] = null;
    }
    if (this.mOVING7DAYVOLUMESELL != null) {
      json[r'MOVING_7_DAY_VOLUME_SELL'] = this.mOVING7DAYVOLUMESELL;
    } else {
      json[r'MOVING_7_DAY_VOLUME_SELL'] = null;
    }
    if (this.mOVING7DAYVOLUMEUNKNOWN != null) {
      json[r'MOVING_7_DAY_VOLUME_UNKNOWN'] = this.mOVING7DAYVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_7_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING90DAYHIGH != null) {
      json[r'MOVING_90_DAY_HIGH'] = this.mOVING90DAYHIGH;
    } else {
      json[r'MOVING_90_DAY_HIGH'] = null;
    }
    if (this.mOVING90DAYLOW != null) {
      json[r'MOVING_90_DAY_LOW'] = this.mOVING90DAYLOW;
    } else {
      json[r'MOVING_90_DAY_LOW'] = null;
    }
    if (this.mOVING90DAYOPEN != null) {
      json[r'MOVING_90_DAY_OPEN'] = this.mOVING90DAYOPEN;
    } else {
      json[r'MOVING_90_DAY_OPEN'] = null;
    }
    if (this.mOVING90DAYQUOTEVOLUME != null) {
      json[r'MOVING_90_DAY_QUOTE_VOLUME'] = this.mOVING90DAYQUOTEVOLUME;
    } else {
      json[r'MOVING_90_DAY_QUOTE_VOLUME'] = null;
    }
    if (this.mOVING90DAYQUOTEVOLUMEBUY != null) {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_BUY'] = this.mOVING90DAYQUOTEVOLUMEBUY;
    } else {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_BUY'] = null;
    }
    if (this.mOVING90DAYQUOTEVOLUMESELL != null) {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_SELL'] = this.mOVING90DAYQUOTEVOLUMESELL;
    } else {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_SELL'] = null;
    }
    if (this.mOVING90DAYQUOTEVOLUMEUNKNOWN != null) {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN'] = this.mOVING90DAYQUOTEVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN'] = null;
    }
    if (this.mOVING90DAYTOTALTRADES != null) {
      json[r'MOVING_90_DAY_TOTAL_TRADES'] = this.mOVING90DAYTOTALTRADES;
    } else {
      json[r'MOVING_90_DAY_TOTAL_TRADES'] = null;
    }
    if (this.mOVING90DAYTOTALTRADESBUY != null) {
      json[r'MOVING_90_DAY_TOTAL_TRADES_BUY'] = this.mOVING90DAYTOTALTRADESBUY;
    } else {
      json[r'MOVING_90_DAY_TOTAL_TRADES_BUY'] = null;
    }
    if (this.mOVING90DAYTOTALTRADESSELL != null) {
      json[r'MOVING_90_DAY_TOTAL_TRADES_SELL'] = this.mOVING90DAYTOTALTRADESSELL;
    } else {
      json[r'MOVING_90_DAY_TOTAL_TRADES_SELL'] = null;
    }
    if (this.mOVING90DAYTOTALTRADESUNKNOWN != null) {
      json[r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN'] = this.mOVING90DAYTOTALTRADESUNKNOWN;
    } else {
      json[r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN'] = null;
    }
    if (this.mOVING90DAYVOLUME != null) {
      json[r'MOVING_90_DAY_VOLUME'] = this.mOVING90DAYVOLUME;
    } else {
      json[r'MOVING_90_DAY_VOLUME'] = null;
    }
    if (this.mOVING90DAYVOLUMEBUY != null) {
      json[r'MOVING_90_DAY_VOLUME_BUY'] = this.mOVING90DAYVOLUMEBUY;
    } else {
      json[r'MOVING_90_DAY_VOLUME_BUY'] = null;
    }
    if (this.mOVING90DAYVOLUMESELL != null) {
      json[r'MOVING_90_DAY_VOLUME_SELL'] = this.mOVING90DAYVOLUMESELL;
    } else {
      json[r'MOVING_90_DAY_VOLUME_SELL'] = null;
    }
    if (this.mOVING90DAYVOLUMEUNKNOWN != null) {
      json[r'MOVING_90_DAY_VOLUME_UNKNOWN'] = this.mOVING90DAYVOLUMEUNKNOWN;
    } else {
      json[r'MOVING_90_DAY_VOLUME_UNKNOWN'] = null;
    }
    if (this.PRICE != null) {
      json[r'PRICE'] = this.PRICE;
    } else {
      json[r'PRICE'] = null;
    }
    if (this.PRICE_FLAG != null) {
      json[r'PRICE_FLAG'] = this.PRICE_FLAG;
    } else {
      json[r'PRICE_FLAG'] = null;
    }
    if (this.PRICE_LAST_UPDATE_TS != null) {
      json[r'PRICE_LAST_UPDATE_TS'] = this.PRICE_LAST_UPDATE_TS;
    } else {
      json[r'PRICE_LAST_UPDATE_TS'] = null;
    }
    if (this.QUOTE != null) {
      json[r'QUOTE'] = this.QUOTE;
    } else {
      json[r'QUOTE'] = null;
    }
    if (this.TOP_ASK_LAST_UPDATE_TS != null) {
      json[r'TOP_ASK_LAST_UPDATE_TS'] = this.TOP_ASK_LAST_UPDATE_TS;
    } else {
      json[r'TOP_ASK_LAST_UPDATE_TS'] = null;
    }
    if (this.TOP_ASK_PRICE != null) {
      json[r'TOP_ASK_PRICE'] = this.TOP_ASK_PRICE;
    } else {
      json[r'TOP_ASK_PRICE'] = null;
    }
    if (this.TOP_ASK_QUANTITY != null) {
      json[r'TOP_ASK_QUANTITY'] = this.TOP_ASK_QUANTITY;
    } else {
      json[r'TOP_ASK_QUANTITY'] = null;
    }
    if (this.TOP_BID_LAST_UPDATE_TS != null) {
      json[r'TOP_BID_LAST_UPDATE_TS'] = this.TOP_BID_LAST_UPDATE_TS;
    } else {
      json[r'TOP_BID_LAST_UPDATE_TS'] = null;
    }
    if (this.TOP_BID_PRICE != null) {
      json[r'TOP_BID_PRICE'] = this.TOP_BID_PRICE;
    } else {
      json[r'TOP_BID_PRICE'] = null;
    }
    if (this.TOP_BID_QUANTITY != null) {
      json[r'TOP_BID_QUANTITY'] = this.TOP_BID_QUANTITY;
    } else {
      json[r'TOP_BID_QUANTITY'] = null;
    }
    if (this.TYPE != null) {
      json[r'TYPE'] = this.TYPE;
    } else {
      json[r'TYPE'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTMARKETDATA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTMARKETDATA? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTMARKETDATA[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTMARKETDATA[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTMARKETDATA(
        BASE: mapValueOfType<String>(json, r'BASE'),
        CCSEQ: mapValueOfType<int>(json, r'CCSEQ'),
        CURRENT_DAY_HIGH: mapValueOfType<int>(json, r'CURRENT_DAY_HIGH'),
        CURRENT_DAY_LOW: mapValueOfType<int>(json, r'CURRENT_DAY_LOW'),
        CURRENT_DAY_OPEN: mapValueOfType<int>(json, r'CURRENT_DAY_OPEN'),
        CURRENT_DAY_QUOTE_VOLUME: mapValueOfType<int>(json, r'CURRENT_DAY_QUOTE_VOLUME'),
        CURRENT_DAY_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_DAY_QUOTE_VOLUME_BUY'),
        CURRENT_DAY_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_DAY_QUOTE_VOLUME_SELL'),
        CURRENT_DAY_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN'),
        CURRENT_DAY_TOTAL_TRADES: mapValueOfType<int>(json, r'CURRENT_DAY_TOTAL_TRADES'),
        CURRENT_DAY_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'CURRENT_DAY_TOTAL_TRADES_BUY'),
        CURRENT_DAY_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'CURRENT_DAY_TOTAL_TRADES_SELL'),
        CURRENT_DAY_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN'),
        CURRENT_DAY_VOLUME: mapValueOfType<int>(json, r'CURRENT_DAY_VOLUME'),
        CURRENT_DAY_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_DAY_VOLUME_BUY'),
        CURRENT_DAY_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_DAY_VOLUME_SELL'),
        CURRENT_DAY_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_DAY_VOLUME_UNKNOWN'),
        CURRENT_HOUR_HIGH: mapValueOfType<int>(json, r'CURRENT_HOUR_HIGH'),
        CURRENT_HOUR_LOW: mapValueOfType<int>(json, r'CURRENT_HOUR_LOW'),
        CURRENT_HOUR_OPEN: mapValueOfType<int>(json, r'CURRENT_HOUR_OPEN'),
        CURRENT_HOUR_QUOTE_VOLUME: mapValueOfType<int>(json, r'CURRENT_HOUR_QUOTE_VOLUME'),
        CURRENT_HOUR_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_HOUR_QUOTE_VOLUME_BUY'),
        CURRENT_HOUR_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_HOUR_QUOTE_VOLUME_SELL'),
        CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN'),
        CURRENT_HOUR_TOTAL_TRADES: mapValueOfType<int>(json, r'CURRENT_HOUR_TOTAL_TRADES'),
        CURRENT_HOUR_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'CURRENT_HOUR_TOTAL_TRADES_BUY'),
        CURRENT_HOUR_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'CURRENT_HOUR_TOTAL_TRADES_SELL'),
        CURRENT_HOUR_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN'),
        CURRENT_HOUR_VOLUME: mapValueOfType<int>(json, r'CURRENT_HOUR_VOLUME'),
        CURRENT_HOUR_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_HOUR_VOLUME_BUY'),
        CURRENT_HOUR_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_HOUR_VOLUME_SELL'),
        CURRENT_HOUR_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_HOUR_VOLUME_UNKNOWN'),
        CURRENT_MONTH_HIGH: mapValueOfType<int>(json, r'CURRENT_MONTH_HIGH'),
        CURRENT_MONTH_LOW: mapValueOfType<int>(json, r'CURRENT_MONTH_LOW'),
        CURRENT_MONTH_OPEN: mapValueOfType<int>(json, r'CURRENT_MONTH_OPEN'),
        CURRENT_MONTH_QUOTE_VOLUME: mapValueOfType<int>(json, r'CURRENT_MONTH_QUOTE_VOLUME'),
        CURRENT_MONTH_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_MONTH_QUOTE_VOLUME_BUY'),
        CURRENT_MONTH_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_MONTH_QUOTE_VOLUME_SELL'),
        CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN'),
        CURRENT_MONTH_TOTAL_TRADES: mapValueOfType<int>(json, r'CURRENT_MONTH_TOTAL_TRADES'),
        CURRENT_MONTH_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'CURRENT_MONTH_TOTAL_TRADES_BUY'),
        CURRENT_MONTH_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'CURRENT_MONTH_TOTAL_TRADES_SELL'),
        CURRENT_MONTH_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN'),
        CURRENT_MONTH_VOLUME: mapValueOfType<int>(json, r'CURRENT_MONTH_VOLUME'),
        CURRENT_MONTH_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_MONTH_VOLUME_BUY'),
        CURRENT_MONTH_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_MONTH_VOLUME_SELL'),
        CURRENT_MONTH_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_MONTH_VOLUME_UNKNOWN'),
        CURRENT_WEEK_HIGH: mapValueOfType<int>(json, r'CURRENT_WEEK_HIGH'),
        CURRENT_WEEK_LOW: mapValueOfType<int>(json, r'CURRENT_WEEK_LOW'),
        CURRENT_WEEK_OPEN: mapValueOfType<int>(json, r'CURRENT_WEEK_OPEN'),
        CURRENT_WEEK_QUOTE_VOLUME: mapValueOfType<int>(json, r'CURRENT_WEEK_QUOTE_VOLUME'),
        CURRENT_WEEK_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_WEEK_QUOTE_VOLUME_BUY'),
        CURRENT_WEEK_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_WEEK_QUOTE_VOLUME_SELL'),
        CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN'),
        CURRENT_WEEK_TOTAL_TRADES: mapValueOfType<int>(json, r'CURRENT_WEEK_TOTAL_TRADES'),
        CURRENT_WEEK_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'CURRENT_WEEK_TOTAL_TRADES_BUY'),
        CURRENT_WEEK_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'CURRENT_WEEK_TOTAL_TRADES_SELL'),
        CURRENT_WEEK_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN'),
        CURRENT_WEEK_VOLUME: mapValueOfType<int>(json, r'CURRENT_WEEK_VOLUME'),
        CURRENT_WEEK_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_WEEK_VOLUME_BUY'),
        CURRENT_WEEK_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_WEEK_VOLUME_SELL'),
        CURRENT_WEEK_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_WEEK_VOLUME_UNKNOWN'),
        CURRENT_YEAR_HIGH: mapValueOfType<int>(json, r'CURRENT_YEAR_HIGH'),
        CURRENT_YEAR_LOW: mapValueOfType<int>(json, r'CURRENT_YEAR_LOW'),
        CURRENT_YEAR_OPEN: mapValueOfType<int>(json, r'CURRENT_YEAR_OPEN'),
        CURRENT_YEAR_QUOTE_VOLUME: mapValueOfType<int>(json, r'CURRENT_YEAR_QUOTE_VOLUME'),
        CURRENT_YEAR_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_YEAR_QUOTE_VOLUME_BUY'),
        CURRENT_YEAR_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_YEAR_QUOTE_VOLUME_SELL'),
        CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN'),
        CURRENT_YEAR_TOTAL_TRADES: mapValueOfType<int>(json, r'CURRENT_YEAR_TOTAL_TRADES'),
        CURRENT_YEAR_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'CURRENT_YEAR_TOTAL_TRADES_BUY'),
        CURRENT_YEAR_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'CURRENT_YEAR_TOTAL_TRADES_SELL'),
        CURRENT_YEAR_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN'),
        CURRENT_YEAR_VOLUME: mapValueOfType<int>(json, r'CURRENT_YEAR_VOLUME'),
        CURRENT_YEAR_VOLUME_BUY: mapValueOfType<int>(json, r'CURRENT_YEAR_VOLUME_BUY'),
        CURRENT_YEAR_VOLUME_SELL: mapValueOfType<int>(json, r'CURRENT_YEAR_VOLUME_SELL'),
        CURRENT_YEAR_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'CURRENT_YEAR_VOLUME_UNKNOWN'),
        INSTRUMENT: mapValueOfType<String>(json, r'INSTRUMENT'),
        LAST_PROCESSED_TRADE_CCSEQ: mapValueOfType<String>(json, r'LAST_PROCESSED_TRADE_CCSEQ'),
        LAST_PROCESSED_TRADE_PRICE: mapValueOfType<int>(json, r'LAST_PROCESSED_TRADE_PRICE'),
        LAST_PROCESSED_TRADE_QUANTITY: mapValueOfType<int>(json, r'LAST_PROCESSED_TRADE_QUANTITY'),
        LAST_PROCESSED_TRADE_QUOTE_QUANTITY: mapValueOfType<int>(json, r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY'),
        LAST_PROCESSED_TRADE_SIDE: mapValueOfType<String>(json, r'LAST_PROCESSED_TRADE_SIDE'),
        LAST_PROCESSED_TRADE_TS: mapValueOfType<int>(json, r'LAST_PROCESSED_TRADE_TS'),
        LAST_TRADE_CCSEQ: mapValueOfType<String>(json, r'LAST_TRADE_CCSEQ'),
        LAST_TRADE_ID: mapValueOfType<String>(json, r'LAST_TRADE_ID'),
        LAST_TRADE_QUANTITY: mapValueOfType<int>(json, r'LAST_TRADE_QUANTITY'),
        LAST_TRADE_QUOTE_QUANTITY: mapValueOfType<int>(json, r'LAST_TRADE_QUOTE_QUANTITY'),
        LAST_TRADE_SIDE: mapValueOfType<String>(json, r'LAST_TRADE_SIDE'),
        LIFETIME_FIRST_TRADE_TS: mapValueOfType<int>(json, r'LIFETIME_FIRST_TRADE_TS'),
        LIFETIME_HIGH: mapValueOfType<int>(json, r'LIFETIME_HIGH'),
        LIFETIME_HIGH_TS: mapValueOfType<int>(json, r'LIFETIME_HIGH_TS'),
        LIFETIME_LOW: mapValueOfType<int>(json, r'LIFETIME_LOW'),
        LIFETIME_LOW_TS: mapValueOfType<int>(json, r'LIFETIME_LOW_TS'),
        LIFETIME_OPEN: mapValueOfType<int>(json, r'LIFETIME_OPEN'),
        LIFETIME_QUOTE_VOLUME: mapValueOfType<int>(json, r'LIFETIME_QUOTE_VOLUME'),
        LIFETIME_QUOTE_VOLUME_BUY: mapValueOfType<int>(json, r'LIFETIME_QUOTE_VOLUME_BUY'),
        LIFETIME_QUOTE_VOLUME_SELL: mapValueOfType<int>(json, r'LIFETIME_QUOTE_VOLUME_SELL'),
        LIFETIME_QUOTE_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'LIFETIME_QUOTE_VOLUME_UNKNOWN'),
        LIFETIME_TOTAL_TRADES: mapValueOfType<int>(json, r'LIFETIME_TOTAL_TRADES'),
        LIFETIME_TOTAL_TRADES_BUY: mapValueOfType<int>(json, r'LIFETIME_TOTAL_TRADES_BUY'),
        LIFETIME_TOTAL_TRADES_SELL: mapValueOfType<int>(json, r'LIFETIME_TOTAL_TRADES_SELL'),
        LIFETIME_TOTAL_TRADES_UNKNOWN: mapValueOfType<int>(json, r'LIFETIME_TOTAL_TRADES_UNKNOWN'),
        LIFETIME_VOLUME: mapValueOfType<int>(json, r'LIFETIME_VOLUME'),
        LIFETIME_VOLUME_BUY: mapValueOfType<int>(json, r'LIFETIME_VOLUME_BUY'),
        LIFETIME_VOLUME_SELL: mapValueOfType<int>(json, r'LIFETIME_VOLUME_SELL'),
        LIFETIME_VOLUME_UNKNOWN: mapValueOfType<int>(json, r'LIFETIME_VOLUME_UNKNOWN'),
        MAPPED_INSTRUMENT: mapValueOfType<String>(json, r'MAPPED_INSTRUMENT'),
        MARKET: mapValueOfType<String>(json, r'MARKET'),
        mOVING180DAYHIGH: mapValueOfType<int>(json, r'MOVING_180_DAY_HIGH'),
        mOVING180DAYLOW: mapValueOfType<int>(json, r'MOVING_180_DAY_LOW'),
        mOVING180DAYOPEN: mapValueOfType<int>(json, r'MOVING_180_DAY_OPEN'),
        mOVING180DAYQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_180_DAY_QUOTE_VOLUME'),
        mOVING180DAYQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_180_DAY_QUOTE_VOLUME_BUY'),
        mOVING180DAYQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_180_DAY_QUOTE_VOLUME_SELL'),
        mOVING180DAYQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN'),
        mOVING180DAYTOTALTRADES: mapValueOfType<int>(json, r'MOVING_180_DAY_TOTAL_TRADES'),
        mOVING180DAYTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_180_DAY_TOTAL_TRADES_BUY'),
        mOVING180DAYTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_180_DAY_TOTAL_TRADES_SELL'),
        mOVING180DAYTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN'),
        mOVING180DAYVOLUME: mapValueOfType<int>(json, r'MOVING_180_DAY_VOLUME'),
        mOVING180DAYVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_180_DAY_VOLUME_BUY'),
        mOVING180DAYVOLUMESELL: mapValueOfType<int>(json, r'MOVING_180_DAY_VOLUME_SELL'),
        mOVING180DAYVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_180_DAY_VOLUME_UNKNOWN'),
        mOVING24HOURHIGH: mapValueOfType<int>(json, r'MOVING_24_HOUR_HIGH'),
        mOVING24HOURLOW: mapValueOfType<int>(json, r'MOVING_24_HOUR_LOW'),
        mOVING24HOUROPEN: mapValueOfType<int>(json, r'MOVING_24_HOUR_OPEN'),
        mOVING24HOURQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_24_HOUR_QUOTE_VOLUME'),
        mOVING24HOURQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_24_HOUR_QUOTE_VOLUME_BUY'),
        mOVING24HOURQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_24_HOUR_QUOTE_VOLUME_SELL'),
        mOVING24HOURQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN'),
        mOVING24HOURTOTALTRADES: mapValueOfType<int>(json, r'MOVING_24_HOUR_TOTAL_TRADES'),
        mOVING24HOURTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_24_HOUR_TOTAL_TRADES_BUY'),
        mOVING24HOURTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_24_HOUR_TOTAL_TRADES_SELL'),
        mOVING24HOURTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN'),
        mOVING24HOURVOLUME: mapValueOfType<int>(json, r'MOVING_24_HOUR_VOLUME'),
        mOVING24HOURVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_24_HOUR_VOLUME_BUY'),
        mOVING24HOURVOLUMESELL: mapValueOfType<int>(json, r'MOVING_24_HOUR_VOLUME_SELL'),
        mOVING24HOURVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_24_HOUR_VOLUME_UNKNOWN'),
        mOVING30DAYHIGH: mapValueOfType<int>(json, r'MOVING_30_DAY_HIGH'),
        mOVING30DAYLOW: mapValueOfType<int>(json, r'MOVING_30_DAY_LOW'),
        mOVING30DAYOPEN: mapValueOfType<int>(json, r'MOVING_30_DAY_OPEN'),
        mOVING30DAYQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_30_DAY_QUOTE_VOLUME'),
        mOVING30DAYQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_30_DAY_QUOTE_VOLUME_BUY'),
        mOVING30DAYQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_30_DAY_QUOTE_VOLUME_SELL'),
        mOVING30DAYQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN'),
        mOVING30DAYTOTALTRADES: mapValueOfType<int>(json, r'MOVING_30_DAY_TOTAL_TRADES'),
        mOVING30DAYTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_30_DAY_TOTAL_TRADES_BUY'),
        mOVING30DAYTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_30_DAY_TOTAL_TRADES_SELL'),
        mOVING30DAYTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN'),
        mOVING30DAYVOLUME: mapValueOfType<int>(json, r'MOVING_30_DAY_VOLUME'),
        mOVING30DAYVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_30_DAY_VOLUME_BUY'),
        mOVING30DAYVOLUMESELL: mapValueOfType<int>(json, r'MOVING_30_DAY_VOLUME_SELL'),
        mOVING30DAYVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_30_DAY_VOLUME_UNKNOWN'),
        mOVING365DAYHIGH: mapValueOfType<int>(json, r'MOVING_365_DAY_HIGH'),
        mOVING365DAYLOW: mapValueOfType<int>(json, r'MOVING_365_DAY_LOW'),
        mOVING365DAYOPEN: mapValueOfType<int>(json, r'MOVING_365_DAY_OPEN'),
        mOVING365DAYQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_365_DAY_QUOTE_VOLUME'),
        mOVING365DAYQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_365_DAY_QUOTE_VOLUME_BUY'),
        mOVING365DAYQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_365_DAY_QUOTE_VOLUME_SELL'),
        mOVING365DAYQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN'),
        mOVING365DAYTOTALTRADES: mapValueOfType<int>(json, r'MOVING_365_DAY_TOTAL_TRADES'),
        mOVING365DAYTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_365_DAY_TOTAL_TRADES_BUY'),
        mOVING365DAYTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_365_DAY_TOTAL_TRADES_SELL'),
        mOVING365DAYTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN'),
        mOVING365DAYVOLUME: mapValueOfType<int>(json, r'MOVING_365_DAY_VOLUME'),
        mOVING365DAYVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_365_DAY_VOLUME_BUY'),
        mOVING365DAYVOLUMESELL: mapValueOfType<int>(json, r'MOVING_365_DAY_VOLUME_SELL'),
        mOVING365DAYVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_365_DAY_VOLUME_UNKNOWN'),
        mOVING7DAYHIGH: mapValueOfType<int>(json, r'MOVING_7_DAY_HIGH'),
        mOVING7DAYLOW: mapValueOfType<int>(json, r'MOVING_7_DAY_LOW'),
        mOVING7DAYOPEN: mapValueOfType<int>(json, r'MOVING_7_DAY_OPEN'),
        mOVING7DAYQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_7_DAY_QUOTE_VOLUME'),
        mOVING7DAYQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_7_DAY_QUOTE_VOLUME_BUY'),
        mOVING7DAYQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_7_DAY_QUOTE_VOLUME_SELL'),
        mOVING7DAYQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN'),
        mOVING7DAYTOTALTRADES: mapValueOfType<int>(json, r'MOVING_7_DAY_TOTAL_TRADES'),
        mOVING7DAYTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_7_DAY_TOTAL_TRADES_BUY'),
        mOVING7DAYTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_7_DAY_TOTAL_TRADES_SELL'),
        mOVING7DAYTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN'),
        mOVING7DAYVOLUME: mapValueOfType<int>(json, r'MOVING_7_DAY_VOLUME'),
        mOVING7DAYVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_7_DAY_VOLUME_BUY'),
        mOVING7DAYVOLUMESELL: mapValueOfType<int>(json, r'MOVING_7_DAY_VOLUME_SELL'),
        mOVING7DAYVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_7_DAY_VOLUME_UNKNOWN'),
        mOVING90DAYHIGH: mapValueOfType<int>(json, r'MOVING_90_DAY_HIGH'),
        mOVING90DAYLOW: mapValueOfType<int>(json, r'MOVING_90_DAY_LOW'),
        mOVING90DAYOPEN: mapValueOfType<int>(json, r'MOVING_90_DAY_OPEN'),
        mOVING90DAYQUOTEVOLUME: mapValueOfType<int>(json, r'MOVING_90_DAY_QUOTE_VOLUME'),
        mOVING90DAYQUOTEVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_90_DAY_QUOTE_VOLUME_BUY'),
        mOVING90DAYQUOTEVOLUMESELL: mapValueOfType<int>(json, r'MOVING_90_DAY_QUOTE_VOLUME_SELL'),
        mOVING90DAYQUOTEVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN'),
        mOVING90DAYTOTALTRADES: mapValueOfType<int>(json, r'MOVING_90_DAY_TOTAL_TRADES'),
        mOVING90DAYTOTALTRADESBUY: mapValueOfType<int>(json, r'MOVING_90_DAY_TOTAL_TRADES_BUY'),
        mOVING90DAYTOTALTRADESSELL: mapValueOfType<int>(json, r'MOVING_90_DAY_TOTAL_TRADES_SELL'),
        mOVING90DAYTOTALTRADESUNKNOWN: mapValueOfType<int>(json, r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN'),
        mOVING90DAYVOLUME: mapValueOfType<int>(json, r'MOVING_90_DAY_VOLUME'),
        mOVING90DAYVOLUMEBUY: mapValueOfType<int>(json, r'MOVING_90_DAY_VOLUME_BUY'),
        mOVING90DAYVOLUMESELL: mapValueOfType<int>(json, r'MOVING_90_DAY_VOLUME_SELL'),
        mOVING90DAYVOLUMEUNKNOWN: mapValueOfType<int>(json, r'MOVING_90_DAY_VOLUME_UNKNOWN'),
        PRICE: mapValueOfType<int>(json, r'PRICE'),
        PRICE_FLAG: mapValueOfType<String>(json, r'PRICE_FLAG'),
        PRICE_LAST_UPDATE_TS: mapValueOfType<int>(json, r'PRICE_LAST_UPDATE_TS'),
        QUOTE: mapValueOfType<String>(json, r'QUOTE'),
        TOP_ASK_LAST_UPDATE_TS: mapValueOfType<int>(json, r'TOP_ASK_LAST_UPDATE_TS'),
        TOP_ASK_PRICE: mapValueOfType<int>(json, r'TOP_ASK_PRICE'),
        TOP_ASK_QUANTITY: mapValueOfType<int>(json, r'TOP_ASK_QUANTITY'),
        TOP_BID_LAST_UPDATE_TS: mapValueOfType<int>(json, r'TOP_BID_LAST_UPDATE_TS'),
        TOP_BID_PRICE: mapValueOfType<int>(json, r'TOP_BID_PRICE'),
        TOP_BID_QUANTITY: mapValueOfType<int>(json, r'TOP_BID_QUANTITY'),
        TYPE: mapValueOfType<String>(json, r'TYPE'),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTMARKETDATA>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTMARKETDATA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTMARKETDATA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTMARKETDATA> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTMARKETDATA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTMARKETDATA-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTMARKETDATA>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTMARKETDATA>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATA.listFromJson(entry.value, growable: growable,);
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

