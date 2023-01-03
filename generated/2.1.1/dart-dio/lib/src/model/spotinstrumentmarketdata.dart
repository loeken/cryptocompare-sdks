//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmarketdata.g.dart';

/// SPOTINSTRUMENTMARKETDATA
///
/// Properties:
/// * [BASE] - The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
/// * [CCSEQ] - Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
/// * [CURRENT_DAY_HIGH] - The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
/// * [CURRENT_DAY_LOW] - The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
/// * [CURRENT_DAY_OPEN] - The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
/// * [CURRENT_DAY_QUOTE_VOLUME] - The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
/// * [CURRENT_DAY_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
/// * [CURRENT_DAY_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
/// * [CURRENT_DAY_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
/// * [CURRENT_DAY_TOTAL_TRADES] - The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
/// * [CURRENT_DAY_TOTAL_TRADES_BUY] - The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
/// * [CURRENT_DAY_TOTAL_TRADES_SELL] - The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
/// * [CURRENT_DAY_TOTAL_TRADES_UNKNOWN] - The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
/// * [CURRENT_DAY_VOLUME] - The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
/// * [CURRENT_DAY_VOLUME_BUY] - The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
/// * [CURRENT_DAY_VOLUME_SELL] - The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
/// * [CURRENT_DAY_VOLUME_UNKNOWN] - The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
/// * [CURRENT_HOUR_HIGH] - The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
/// * [CURRENT_HOUR_LOW] - The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
/// * [CURRENT_HOUR_OPEN] - The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
/// * [CURRENT_HOUR_QUOTE_VOLUME] - The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
/// * [CURRENT_HOUR_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
/// * [CURRENT_HOUR_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
/// * [CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
/// * [CURRENT_HOUR_TOTAL_TRADES] - The total number of trades that have occurred since the start of the current hour.
/// * [CURRENT_HOUR_TOTAL_TRADES_BUY] - The total number of buy trades since the start of the current hour.
/// * [CURRENT_HOUR_TOTAL_TRADES_SELL] - The total number of sell trades since the start of the current hour.
/// * [CURRENT_HOUR_TOTAL_TRADES_UNKNOWN] - The total number of unknown trades since the start of the current hour.
/// * [CURRENT_HOUR_VOLUME] - The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
/// * [CURRENT_HOUR_VOLUME_BUY] - The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
/// * [CURRENT_HOUR_VOLUME_SELL] - The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
/// * [CURRENT_HOUR_VOLUME_UNKNOWN] - The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
/// * [CURRENT_MONTH_HIGH] - The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
/// * [CURRENT_MONTH_LOW] - The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
/// * [CURRENT_MONTH_OPEN] - The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
/// * [CURRENT_MONTH_QUOTE_VOLUME] - The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
/// * [CURRENT_MONTH_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
/// * [CURRENT_MONTH_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
/// * [CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
/// * [CURRENT_MONTH_TOTAL_TRADES] - The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
/// * [CURRENT_MONTH_TOTAL_TRADES_BUY] - The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
/// * [CURRENT_MONTH_TOTAL_TRADES_SELL] - The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
/// * [CURRENT_MONTH_TOTAL_TRADES_UNKNOWN] - The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
/// * [CURRENT_MONTH_VOLUME] - The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
/// * [CURRENT_MONTH_VOLUME_BUY] - The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
/// * [CURRENT_MONTH_VOLUME_SELL] - The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
/// * [CURRENT_MONTH_VOLUME_UNKNOWN] - The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
/// * [CURRENT_WEEK_HIGH] - The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
/// * [CURRENT_WEEK_LOW] - The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
/// * [CURRENT_WEEK_OPEN] - The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
/// * [CURRENT_WEEK_QUOTE_VOLUME] - The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
/// * [CURRENT_WEEK_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
/// * [CURRENT_WEEK_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
/// * [CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
/// * [CURRENT_WEEK_TOTAL_TRADES] - The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
/// * [CURRENT_WEEK_TOTAL_TRADES_BUY] - The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
/// * [CURRENT_WEEK_TOTAL_TRADES_SELL] - The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
/// * [CURRENT_WEEK_TOTAL_TRADES_UNKNOWN] - The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
/// * [CURRENT_WEEK_VOLUME] - The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
/// * [CURRENT_WEEK_VOLUME_BUY] - The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
/// * [CURRENT_WEEK_VOLUME_SELL] - The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
/// * [CURRENT_WEEK_VOLUME_UNKNOWN] - The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
/// * [CURRENT_YEAR_HIGH] - The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
/// * [CURRENT_YEAR_LOW] - The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
/// * [CURRENT_YEAR_OPEN] - The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
/// * [CURRENT_YEAR_QUOTE_VOLUME] - The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
/// * [CURRENT_YEAR_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
/// * [CURRENT_YEAR_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
/// * [CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
/// * [CURRENT_YEAR_TOTAL_TRADES] - The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
/// * [CURRENT_YEAR_TOTAL_TRADES_BUY] - The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
/// * [CURRENT_YEAR_TOTAL_TRADES_SELL] - The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
/// * [CURRENT_YEAR_TOTAL_TRADES_UNKNOWN] - The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
/// * [CURRENT_YEAR_VOLUME] - The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
/// * [CURRENT_YEAR_VOLUME_BUY] - The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
/// * [CURRENT_YEAR_VOLUME_SELL] - The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
/// * [CURRENT_YEAR_VOLUME_UNKNOWN] - The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
/// * [INSTRUMENT] - The unmapped instrument ID
/// * [LAST_PROCESSED_TRADE_CCSEQ] - The CCSEQ of the latest trade.
/// * [LAST_PROCESSED_TRADE_PRICE] - The price in the quote asset of the last trade processed, as reported by the market / exchange.
/// * [LAST_PROCESSED_TRADE_QUANTITY] - The quantity of the last processed trade in the from symbol (base / coin).
/// * [LAST_PROCESSED_TRADE_QUOTE_QUANTITY] - The  volume of the last processed trade in the to asset / quote.
/// * [LAST_PROCESSED_TRADE_SIDE] - The side of the last processed trade.
/// * [LAST_PROCESSED_TRADE_TS] - The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
/// * [LAST_TRADE_CCSEQ] - The CCSEQ of the latest trade.
/// * [LAST_TRADE_ID] - The ID of the latest trade.
/// * [LAST_TRADE_QUANTITY] - The quantity of the latest trade in the from symbol (base / coin).
/// * [LAST_TRADE_QUOTE_QUANTITY] - The volume of the latest trade in the to asset / quote.
/// * [LAST_TRADE_SIDE] - The side of the latest trade.
/// * [LIFETIME_FIRST_TRADE_TS] - The timestamp of the first trade ever recorded for the instrument
/// * [LIFETIME_HIGH] - The price of the highest trade ever executed for this instrument. Given in the quote asset.
/// * [LIFETIME_HIGH_TS] - The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
/// * [LIFETIME_LOW] - The price of the lowest trade ever executed for this instrument. Given in the quote asset.
/// * [LIFETIME_LOW_TS] - The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
/// * [LIFETIME_OPEN] - The price of the first trade of the instrument. Given in the quote asset.
/// * [LIFETIME_QUOTE_VOLUME] - The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
/// * [LIFETIME_QUOTE_VOLUME_BUY] - The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
/// * [LIFETIME_QUOTE_VOLUME_SELL] - The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
/// * [LIFETIME_QUOTE_VOLUME_UNKNOWN] - The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
/// * [LIFETIME_TOTAL_TRADES] - The total number of all trades that have ever been executed for this instrument.
/// * [LIFETIME_TOTAL_TRADES_BUY] - The total number of all buy trades that have ever been executed for this instrument.
/// * [LIFETIME_TOTAL_TRADES_SELL] - The total number of all sell trades that have ever been executed for this instrument.
/// * [LIFETIME_TOTAL_TRADES_UNKNOWN] - The total number of all unknown trades that have ever been executed for this instrument.
/// * [LIFETIME_VOLUME] - The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
/// * [LIFETIME_VOLUME_BUY] - The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
/// * [LIFETIME_VOLUME_SELL] - The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
/// * [LIFETIME_VOLUME_UNKNOWN] - The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
/// * [MAPPED_INSTRUMENT] - The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
/// * [MARKET] - The market / exchange under consideration (e.g. coinbase, kraken, etc).
/// * [mOVING180DAYHIGH] - The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYLOW] - The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYOPEN] - The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
/// * [mOVING180DAYQUOTEVOLUME] - The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
/// * [mOVING180DAYTOTALTRADES] - The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
/// * [mOVING180DAYTOTALTRADESBUY] - The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
/// * [mOVING180DAYTOTALTRADESSELL] - The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
/// * [mOVING180DAYTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
/// * [mOVING180DAYVOLUME] - The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
/// * [mOVING180DAYVOLUMEBUY] - The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
/// * [mOVING180DAYVOLUMESELL] - The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
/// * [mOVING180DAYVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
/// * [mOVING24HOURHIGH] - The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOURLOW] - The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOUROPEN] - The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
/// * [mOVING24HOURQUOTEVOLUME] - The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOURQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOURQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOURQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
/// * [mOVING24HOURTOTALTRADES] - The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
/// * [mOVING24HOURTOTALTRADESBUY] - The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
/// * [mOVING24HOURTOTALTRADESSELL] - The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
/// * [mOVING24HOURTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
/// * [mOVING24HOURVOLUME] - The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
/// * [mOVING24HOURVOLUMEBUY] - The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
/// * [mOVING24HOURVOLUMESELL] - The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
/// * [mOVING24HOURVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
/// * [mOVING30DAYHIGH] - The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYLOW] - The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYOPEN] - The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
/// * [mOVING30DAYQUOTEVOLUME] - The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
/// * [mOVING30DAYTOTALTRADES] - The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
/// * [mOVING30DAYTOTALTRADESBUY] - The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
/// * [mOVING30DAYTOTALTRADESSELL] - The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
/// * [mOVING30DAYTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
/// * [mOVING30DAYVOLUME] - The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
/// * [mOVING30DAYVOLUMEBUY] - The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
/// * [mOVING30DAYVOLUMESELL] - The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
/// * [mOVING30DAYVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
/// * [mOVING365DAYHIGH] - The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYLOW] - The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYOPEN] - The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
/// * [mOVING365DAYQUOTEVOLUME] - The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
/// * [mOVING365DAYTOTALTRADES] - The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
/// * [mOVING365DAYTOTALTRADESBUY] - The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
/// * [mOVING365DAYTOTALTRADESSELL] - The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
/// * [mOVING365DAYTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
/// * [mOVING365DAYVOLUME] - The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
/// * [mOVING365DAYVOLUMEBUY] - The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
/// * [mOVING365DAYVOLUMESELL] - The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
/// * [mOVING365DAYVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
/// * [mOVING7DAYHIGH] - The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYLOW] - The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYOPEN] - The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
/// * [mOVING7DAYQUOTEVOLUME] - The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
/// * [mOVING7DAYTOTALTRADES] - The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
/// * [mOVING7DAYTOTALTRADESBUY] - The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
/// * [mOVING7DAYTOTALTRADESSELL] - The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
/// * [mOVING7DAYTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
/// * [mOVING7DAYVOLUME] - The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
/// * [mOVING7DAYVOLUMEBUY] - The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
/// * [mOVING7DAYVOLUMESELL] - The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
/// * [mOVING7DAYVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
/// * [mOVING90DAYHIGH] - The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYLOW] - The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYOPEN] - The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
/// * [mOVING90DAYQUOTEVOLUME] - The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYQUOTEVOLUMEBUY] - The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYQUOTEVOLUMESELL] - The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYQUOTEVOLUMEUNKNOWN] - The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
/// * [mOVING90DAYTOTALTRADES] - The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
/// * [mOVING90DAYTOTALTRADESBUY] - The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
/// * [mOVING90DAYTOTALTRADESSELL] - The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
/// * [mOVING90DAYTOTALTRADESUNKNOWN] - The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
/// * [mOVING90DAYVOLUME] - The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
/// * [mOVING90DAYVOLUMEBUY] - The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
/// * [mOVING90DAYVOLUMESELL] - The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
/// * [mOVING90DAYVOLUMEUNKNOWN] - The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
/// * [PRICE] - The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
/// * [PRICE_FLAG] - The flag indicating whether the price has increased, decreased, or not changed
/// * [PRICE_LAST_UPDATE_TS] - The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
/// * [QUOTE] - The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
/// * [TOP_ASK_LAST_UPDATE_TS] - The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
/// * [TOP_ASK_PRICE] - The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
/// * [TOP_ASK_QUANTITY] - The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
/// * [TOP_BID_LAST_UPDATE_TS] - The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
/// * [TOP_BID_PRICE] - The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
/// * [TOP_BID_QUANTITY] - The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
/// * [TYPE] - The type of the message.
@BuiltValue()
abstract class SPOTINSTRUMENTMARKETDATA implements Built<SPOTINSTRUMENTMARKETDATA, SPOTINSTRUMENTMARKETDATABuilder> {
  /// The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
  @BuiltValueField(wireName: r'BASE')
  String? get BASE;

  /// Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
  @BuiltValueField(wireName: r'CCSEQ')
  int? get CCSEQ;

  /// The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_HIGH')
  int? get CURRENT_DAY_HIGH;

  /// The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_LOW')
  int? get CURRENT_DAY_LOW;

  /// The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_OPEN')
  int? get CURRENT_DAY_OPEN;

  /// The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_QUOTE_VOLUME')
  int? get CURRENT_DAY_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_QUOTE_VOLUME_BUY')
  int? get CURRENT_DAY_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_QUOTE_VOLUME_SELL')
  int? get CURRENT_DAY_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
  @BuiltValueField(wireName: r'CURRENT_DAY_TOTAL_TRADES')
  int? get CURRENT_DAY_TOTAL_TRADES;

  /// The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
  @BuiltValueField(wireName: r'CURRENT_DAY_TOTAL_TRADES_BUY')
  int? get CURRENT_DAY_TOTAL_TRADES_BUY;

  /// The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
  @BuiltValueField(wireName: r'CURRENT_DAY_TOTAL_TRADES_SELL')
  int? get CURRENT_DAY_TOTAL_TRADES_SELL;

  /// The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
  @BuiltValueField(wireName: r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN')
  int? get CURRENT_DAY_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_VOLUME')
  int? get CURRENT_DAY_VOLUME;

  /// The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_VOLUME_BUY')
  int? get CURRENT_DAY_VOLUME_BUY;

  /// The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_VOLUME_SELL')
  int? get CURRENT_DAY_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_DAY_VOLUME_UNKNOWN')
  int? get CURRENT_DAY_VOLUME_UNKNOWN;

  /// The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_HIGH')
  int? get CURRENT_HOUR_HIGH;

  /// The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_LOW')
  int? get CURRENT_HOUR_LOW;

  /// The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_OPEN')
  int? get CURRENT_HOUR_OPEN;

  /// The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_QUOTE_VOLUME')
  int? get CURRENT_HOUR_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_QUOTE_VOLUME_BUY')
  int? get CURRENT_HOUR_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_QUOTE_VOLUME_SELL')
  int? get CURRENT_HOUR_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN')
  int? get CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades that have occurred since the start of the current hour.
  @BuiltValueField(wireName: r'CURRENT_HOUR_TOTAL_TRADES')
  int? get CURRENT_HOUR_TOTAL_TRADES;

  /// The total number of buy trades since the start of the current hour.
  @BuiltValueField(wireName: r'CURRENT_HOUR_TOTAL_TRADES_BUY')
  int? get CURRENT_HOUR_TOTAL_TRADES_BUY;

  /// The total number of sell trades since the start of the current hour.
  @BuiltValueField(wireName: r'CURRENT_HOUR_TOTAL_TRADES_SELL')
  int? get CURRENT_HOUR_TOTAL_TRADES_SELL;

  /// The total number of unknown trades since the start of the current hour.
  @BuiltValueField(wireName: r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN')
  int? get CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_VOLUME')
  int? get CURRENT_HOUR_VOLUME;

  /// The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_VOLUME_BUY')
  int? get CURRENT_HOUR_VOLUME_BUY;

  /// The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_VOLUME_SELL')
  int? get CURRENT_HOUR_VOLUME_SELL;

  /// The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_HOUR_VOLUME_UNKNOWN')
  int? get CURRENT_HOUR_VOLUME_UNKNOWN;

  /// The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_HIGH')
  int? get CURRENT_MONTH_HIGH;

  /// The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_LOW')
  int? get CURRENT_MONTH_LOW;

  /// The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_OPEN')
  int? get CURRENT_MONTH_OPEN;

  /// The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_QUOTE_VOLUME')
  int? get CURRENT_MONTH_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_QUOTE_VOLUME_BUY')
  int? get CURRENT_MONTH_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_QUOTE_VOLUME_SELL')
  int? get CURRENT_MONTH_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN')
  int? get CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_MONTH_TOTAL_TRADES')
  int? get CURRENT_MONTH_TOTAL_TRADES;

  /// The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_MONTH_TOTAL_TRADES_BUY')
  int? get CURRENT_MONTH_TOTAL_TRADES_BUY;

  /// The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_MONTH_TOTAL_TRADES_SELL')
  int? get CURRENT_MONTH_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN')
  int? get CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_VOLUME')
  int? get CURRENT_MONTH_VOLUME;

  /// The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_VOLUME_BUY')
  int? get CURRENT_MONTH_VOLUME_BUY;

  /// The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_VOLUME_SELL')
  int? get CURRENT_MONTH_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_MONTH_VOLUME_UNKNOWN')
  int? get CURRENT_MONTH_VOLUME_UNKNOWN;

  /// The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_HIGH')
  int? get CURRENT_WEEK_HIGH;

  /// The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_LOW')
  int? get CURRENT_WEEK_LOW;

  /// The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_OPEN')
  int? get CURRENT_WEEK_OPEN;

  /// The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_QUOTE_VOLUME')
  int? get CURRENT_WEEK_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_QUOTE_VOLUME_BUY')
  int? get CURRENT_WEEK_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_QUOTE_VOLUME_SELL')
  int? get CURRENT_WEEK_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN')
  int? get CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_WEEK_TOTAL_TRADES')
  int? get CURRENT_WEEK_TOTAL_TRADES;

  /// The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_WEEK_TOTAL_TRADES_BUY')
  int? get CURRENT_WEEK_TOTAL_TRADES_BUY;

  /// The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_WEEK_TOTAL_TRADES_SELL')
  int? get CURRENT_WEEK_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN')
  int? get CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_VOLUME')
  int? get CURRENT_WEEK_VOLUME;

  /// The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_VOLUME_BUY')
  int? get CURRENT_WEEK_VOLUME_BUY;

  /// The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_VOLUME_SELL')
  int? get CURRENT_WEEK_VOLUME_SELL;

  /// The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_WEEK_VOLUME_UNKNOWN')
  int? get CURRENT_WEEK_VOLUME_UNKNOWN;

  /// The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_HIGH')
  int? get CURRENT_YEAR_HIGH;

  /// The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_LOW')
  int? get CURRENT_YEAR_LOW;

  /// The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_OPEN')
  int? get CURRENT_YEAR_OPEN;

  /// The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_QUOTE_VOLUME')
  int? get CURRENT_YEAR_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_QUOTE_VOLUME_BUY')
  int? get CURRENT_YEAR_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_QUOTE_VOLUME_SELL')
  int? get CURRENT_YEAR_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN')
  int? get CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;

  /// The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_YEAR_TOTAL_TRADES')
  int? get CURRENT_YEAR_TOTAL_TRADES;

  /// The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_YEAR_TOTAL_TRADES_BUY')
  int? get CURRENT_YEAR_TOTAL_TRADES_BUY;

  /// The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_YEAR_TOTAL_TRADES_SELL')
  int? get CURRENT_YEAR_TOTAL_TRADES_SELL;

  /// The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  @BuiltValueField(wireName: r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN')
  int? get CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_VOLUME')
  int? get CURRENT_YEAR_VOLUME;

  /// The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_VOLUME_BUY')
  int? get CURRENT_YEAR_VOLUME_BUY;

  /// The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_VOLUME_SELL')
  int? get CURRENT_YEAR_VOLUME_SELL;

  /// The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  @BuiltValueField(wireName: r'CURRENT_YEAR_VOLUME_UNKNOWN')
  int? get CURRENT_YEAR_VOLUME_UNKNOWN;

  /// The unmapped instrument ID
  @BuiltValueField(wireName: r'INSTRUMENT')
  String? get INSTRUMENT;

  /// The CCSEQ of the latest trade.
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_CCSEQ')
  String? get LAST_PROCESSED_TRADE_CCSEQ;

  /// The price in the quote asset of the last trade processed, as reported by the market / exchange.
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_PRICE')
  int? get LAST_PROCESSED_TRADE_PRICE;

  /// The quantity of the last processed trade in the from symbol (base / coin).
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_QUANTITY')
  int? get LAST_PROCESSED_TRADE_QUANTITY;

  /// The  volume of the last processed trade in the to asset / quote.
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY')
  int? get LAST_PROCESSED_TRADE_QUOTE_QUANTITY;

  /// The side of the last processed trade.
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_SIDE')
  String? get LAST_PROCESSED_TRADE_SIDE;

  /// The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
  @BuiltValueField(wireName: r'LAST_PROCESSED_TRADE_TS')
  int? get LAST_PROCESSED_TRADE_TS;

  /// The CCSEQ of the latest trade.
  @BuiltValueField(wireName: r'LAST_TRADE_CCSEQ')
  String? get LAST_TRADE_CCSEQ;

  /// The ID of the latest trade.
  @BuiltValueField(wireName: r'LAST_TRADE_ID')
  String? get LAST_TRADE_ID;

  /// The quantity of the latest trade in the from symbol (base / coin).
  @BuiltValueField(wireName: r'LAST_TRADE_QUANTITY')
  int? get LAST_TRADE_QUANTITY;

  /// The volume of the latest trade in the to asset / quote.
  @BuiltValueField(wireName: r'LAST_TRADE_QUOTE_QUANTITY')
  int? get LAST_TRADE_QUOTE_QUANTITY;

  /// The side of the latest trade.
  @BuiltValueField(wireName: r'LAST_TRADE_SIDE')
  String? get LAST_TRADE_SIDE;

  /// The timestamp of the first trade ever recorded for the instrument
  @BuiltValueField(wireName: r'LIFETIME_FIRST_TRADE_TS')
  int? get LIFETIME_FIRST_TRADE_TS;

  /// The price of the highest trade ever executed for this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_HIGH')
  int? get LIFETIME_HIGH;

  /// The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_HIGH_TS')
  int? get LIFETIME_HIGH_TS;

  /// The price of the lowest trade ever executed for this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_LOW')
  int? get LIFETIME_LOW;

  /// The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_LOW_TS')
  int? get LIFETIME_LOW_TS;

  /// The price of the first trade of the instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_OPEN')
  int? get LIFETIME_OPEN;

  /// The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_QUOTE_VOLUME')
  int? get LIFETIME_QUOTE_VOLUME;

  /// The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_QUOTE_VOLUME_BUY')
  int? get LIFETIME_QUOTE_VOLUME_BUY;

  /// The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_QUOTE_VOLUME_SELL')
  int? get LIFETIME_QUOTE_VOLUME_SELL;

  /// The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
  @BuiltValueField(wireName: r'LIFETIME_QUOTE_VOLUME_UNKNOWN')
  int? get LIFETIME_QUOTE_VOLUME_UNKNOWN;

  /// The total number of all trades that have ever been executed for this instrument.
  @BuiltValueField(wireName: r'LIFETIME_TOTAL_TRADES')
  int? get LIFETIME_TOTAL_TRADES;

  /// The total number of all buy trades that have ever been executed for this instrument.
  @BuiltValueField(wireName: r'LIFETIME_TOTAL_TRADES_BUY')
  int? get LIFETIME_TOTAL_TRADES_BUY;

  /// The total number of all sell trades that have ever been executed for this instrument.
  @BuiltValueField(wireName: r'LIFETIME_TOTAL_TRADES_SELL')
  int? get LIFETIME_TOTAL_TRADES_SELL;

  /// The total number of all unknown trades that have ever been executed for this instrument.
  @BuiltValueField(wireName: r'LIFETIME_TOTAL_TRADES_UNKNOWN')
  int? get LIFETIME_TOTAL_TRADES_UNKNOWN;

  /// The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
  @BuiltValueField(wireName: r'LIFETIME_VOLUME')
  int? get LIFETIME_VOLUME;

  /// The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
  @BuiltValueField(wireName: r'LIFETIME_VOLUME_BUY')
  int? get LIFETIME_VOLUME_BUY;

  /// The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
  @BuiltValueField(wireName: r'LIFETIME_VOLUME_SELL')
  int? get LIFETIME_VOLUME_SELL;

  /// The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
  @BuiltValueField(wireName: r'LIFETIME_VOLUME_UNKNOWN')
  int? get LIFETIME_VOLUME_UNKNOWN;

  /// The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  @BuiltValueField(wireName: r'MAPPED_INSTRUMENT')
  String? get MAPPED_INSTRUMENT;

  /// The market / exchange under consideration (e.g. coinbase, kraken, etc).
  @BuiltValueField(wireName: r'MARKET')
  String? get MARKET;

  /// The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_HIGH')
  int? get mOVING180DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_LOW')
  int? get mOVING180DAYLOW;

  /// The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_OPEN')
  int? get mOVING180DAYOPEN;

  /// The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_QUOTE_VOLUME')
  int? get mOVING180DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_QUOTE_VOLUME_BUY')
  int? get mOVING180DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_QUOTE_VOLUME_SELL')
  int? get mOVING180DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING180DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  @BuiltValueField(wireName: r'MOVING_180_DAY_TOTAL_TRADES')
  int? get mOVING180DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  @BuiltValueField(wireName: r'MOVING_180_DAY_TOTAL_TRADES_BUY')
  int? get mOVING180DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  @BuiltValueField(wireName: r'MOVING_180_DAY_TOTAL_TRADES_SELL')
  int? get mOVING180DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  @BuiltValueField(wireName: r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN')
  int? get mOVING180DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_VOLUME')
  int? get mOVING180DAYVOLUME;

  /// The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_VOLUME_BUY')
  int? get mOVING180DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_VOLUME_SELL')
  int? get mOVING180DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_180_DAY_VOLUME_UNKNOWN')
  int? get mOVING180DAYVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_HIGH')
  int? get mOVING24HOURHIGH;

  /// The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_LOW')
  int? get mOVING24HOURLOW;

  /// The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_OPEN')
  int? get mOVING24HOUROPEN;

  /// The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_QUOTE_VOLUME')
  int? get mOVING24HOURQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_QUOTE_VOLUME_BUY')
  int? get mOVING24HOURQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_QUOTE_VOLUME_SELL')
  int? get mOVING24HOURQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING24HOURQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  @BuiltValueField(wireName: r'MOVING_24_HOUR_TOTAL_TRADES')
  int? get mOVING24HOURTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  @BuiltValueField(wireName: r'MOVING_24_HOUR_TOTAL_TRADES_BUY')
  int? get mOVING24HOURTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  @BuiltValueField(wireName: r'MOVING_24_HOUR_TOTAL_TRADES_SELL')
  int? get mOVING24HOURTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  @BuiltValueField(wireName: r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN')
  int? get mOVING24HOURTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_VOLUME')
  int? get mOVING24HOURVOLUME;

  /// The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_VOLUME_BUY')
  int? get mOVING24HOURVOLUMEBUY;

  /// The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_VOLUME_SELL')
  int? get mOVING24HOURVOLUMESELL;

  /// The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_24_HOUR_VOLUME_UNKNOWN')
  int? get mOVING24HOURVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_HIGH')
  int? get mOVING30DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_LOW')
  int? get mOVING30DAYLOW;

  /// The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_OPEN')
  int? get mOVING30DAYOPEN;

  /// The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_QUOTE_VOLUME')
  int? get mOVING30DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_QUOTE_VOLUME_BUY')
  int? get mOVING30DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_QUOTE_VOLUME_SELL')
  int? get mOVING30DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING30DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  @BuiltValueField(wireName: r'MOVING_30_DAY_TOTAL_TRADES')
  int? get mOVING30DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  @BuiltValueField(wireName: r'MOVING_30_DAY_TOTAL_TRADES_BUY')
  int? get mOVING30DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  @BuiltValueField(wireName: r'MOVING_30_DAY_TOTAL_TRADES_SELL')
  int? get mOVING30DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  @BuiltValueField(wireName: r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN')
  int? get mOVING30DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_VOLUME')
  int? get mOVING30DAYVOLUME;

  /// The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_VOLUME_BUY')
  int? get mOVING30DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_VOLUME_SELL')
  int? get mOVING30DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_30_DAY_VOLUME_UNKNOWN')
  int? get mOVING30DAYVOLUMEUNKNOWN;

  /// The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_HIGH')
  int? get mOVING365DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_LOW')
  int? get mOVING365DAYLOW;

  /// The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_OPEN')
  int? get mOVING365DAYOPEN;

  /// The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_QUOTE_VOLUME')
  int? get mOVING365DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_QUOTE_VOLUME_BUY')
  int? get mOVING365DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_QUOTE_VOLUME_SELL')
  int? get mOVING365DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING365DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  @BuiltValueField(wireName: r'MOVING_365_DAY_TOTAL_TRADES')
  int? get mOVING365DAYTOTALTRADES;

  /// The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  @BuiltValueField(wireName: r'MOVING_365_DAY_TOTAL_TRADES_BUY')
  int? get mOVING365DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  @BuiltValueField(wireName: r'MOVING_365_DAY_TOTAL_TRADES_SELL')
  int? get mOVING365DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  @BuiltValueField(wireName: r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN')
  int? get mOVING365DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_VOLUME')
  int? get mOVING365DAYVOLUME;

  /// The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_VOLUME_BUY')
  int? get mOVING365DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_VOLUME_SELL')
  int? get mOVING365DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_365_DAY_VOLUME_UNKNOWN')
  int? get mOVING365DAYVOLUMEUNKNOWN;

  /// The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_HIGH')
  int? get mOVING7DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_LOW')
  int? get mOVING7DAYLOW;

  /// The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_OPEN')
  int? get mOVING7DAYOPEN;

  /// The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_QUOTE_VOLUME')
  int? get mOVING7DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_QUOTE_VOLUME_BUY')
  int? get mOVING7DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_QUOTE_VOLUME_SELL')
  int? get mOVING7DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING7DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  @BuiltValueField(wireName: r'MOVING_7_DAY_TOTAL_TRADES')
  int? get mOVING7DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  @BuiltValueField(wireName: r'MOVING_7_DAY_TOTAL_TRADES_BUY')
  int? get mOVING7DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  @BuiltValueField(wireName: r'MOVING_7_DAY_TOTAL_TRADES_SELL')
  int? get mOVING7DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  @BuiltValueField(wireName: r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN')
  int? get mOVING7DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_VOLUME')
  int? get mOVING7DAYVOLUME;

  /// The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_VOLUME_BUY')
  int? get mOVING7DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_VOLUME_SELL')
  int? get mOVING7DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_7_DAY_VOLUME_UNKNOWN')
  int? get mOVING7DAYVOLUMEUNKNOWN;

  /// The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_HIGH')
  int? get mOVING90DAYHIGH;

  /// The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_LOW')
  int? get mOVING90DAYLOW;

  /// The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_OPEN')
  int? get mOVING90DAYOPEN;

  /// The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_QUOTE_VOLUME')
  int? get mOVING90DAYQUOTEVOLUME;

  /// The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_QUOTE_VOLUME_BUY')
  int? get mOVING90DAYQUOTEVOLUMEBUY;

  /// The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_QUOTE_VOLUME_SELL')
  int? get mOVING90DAYQUOTEVOLUMESELL;

  /// The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN')
  int? get mOVING90DAYQUOTEVOLUMEUNKNOWN;

  /// The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  @BuiltValueField(wireName: r'MOVING_90_DAY_TOTAL_TRADES')
  int? get mOVING90DAYTOTALTRADES;

  /// The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  @BuiltValueField(wireName: r'MOVING_90_DAY_TOTAL_TRADES_BUY')
  int? get mOVING90DAYTOTALTRADESBUY;

  /// The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  @BuiltValueField(wireName: r'MOVING_90_DAY_TOTAL_TRADES_SELL')
  int? get mOVING90DAYTOTALTRADESSELL;

  /// The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  @BuiltValueField(wireName: r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN')
  int? get mOVING90DAYTOTALTRADESUNKNOWN;

  /// The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_VOLUME')
  int? get mOVING90DAYVOLUME;

  /// The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_VOLUME_BUY')
  int? get mOVING90DAYVOLUMEBUY;

  /// The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_VOLUME_SELL')
  int? get mOVING90DAYVOLUMESELL;

  /// The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  @BuiltValueField(wireName: r'MOVING_90_DAY_VOLUME_UNKNOWN')
  int? get mOVING90DAYVOLUMEUNKNOWN;

  /// The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
  @BuiltValueField(wireName: r'PRICE')
  int? get PRICE;

  /// The flag indicating whether the price has increased, decreased, or not changed
  @BuiltValueField(wireName: r'PRICE_FLAG')
  String? get PRICE_FLAG;

  /// The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
  @BuiltValueField(wireName: r'PRICE_LAST_UPDATE_TS')
  int? get PRICE_LAST_UPDATE_TS;

  /// The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
  @BuiltValueField(wireName: r'QUOTE')
  String? get QUOTE;

  /// The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  @BuiltValueField(wireName: r'TOP_ASK_LAST_UPDATE_TS')
  int? get TOP_ASK_LAST_UPDATE_TS;

  /// The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
  @BuiltValueField(wireName: r'TOP_ASK_PRICE')
  int? get TOP_ASK_PRICE;

  /// The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
  @BuiltValueField(wireName: r'TOP_ASK_QUANTITY')
  int? get TOP_ASK_QUANTITY;

  /// The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  @BuiltValueField(wireName: r'TOP_BID_LAST_UPDATE_TS')
  int? get TOP_BID_LAST_UPDATE_TS;

  /// The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
  @BuiltValueField(wireName: r'TOP_BID_PRICE')
  int? get TOP_BID_PRICE;

  /// The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
  @BuiltValueField(wireName: r'TOP_BID_QUANTITY')
  int? get TOP_BID_QUANTITY;

  /// The type of the message.
  @BuiltValueField(wireName: r'TYPE')
  String? get TYPE;

  SPOTINSTRUMENTMARKETDATA._();

  factory SPOTINSTRUMENTMARKETDATA([void updates(SPOTINSTRUMENTMARKETDATABuilder b)]) = _$SPOTINSTRUMENTMARKETDATA;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMARKETDATABuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMARKETDATA> get serializer => _$SPOTINSTRUMENTMARKETDATASerializer();
}

class _$SPOTINSTRUMENTMARKETDATASerializer implements PrimitiveSerializer<SPOTINSTRUMENTMARKETDATA> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMARKETDATA, _$SPOTINSTRUMENTMARKETDATA];

  @override
  final String wireName = r'SPOTINSTRUMENTMARKETDATA';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMARKETDATA object, {
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
    if (object.CURRENT_DAY_HIGH != null) {
      yield r'CURRENT_DAY_HIGH';
      yield serializers.serialize(
        object.CURRENT_DAY_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_LOW != null) {
      yield r'CURRENT_DAY_LOW';
      yield serializers.serialize(
        object.CURRENT_DAY_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_OPEN != null) {
      yield r'CURRENT_DAY_OPEN';
      yield serializers.serialize(
        object.CURRENT_DAY_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_QUOTE_VOLUME != null) {
      yield r'CURRENT_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.CURRENT_DAY_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_QUOTE_VOLUME_BUY != null) {
      yield r'CURRENT_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_DAY_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_QUOTE_VOLUME_SELL != null) {
      yield r'CURRENT_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_DAY_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_TOTAL_TRADES != null) {
      yield r'CURRENT_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.CURRENT_DAY_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_TOTAL_TRADES_BUY != null) {
      yield r'CURRENT_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.CURRENT_DAY_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_TOTAL_TRADES_SELL != null) {
      yield r'CURRENT_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.CURRENT_DAY_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_TOTAL_TRADES_UNKNOWN != null) {
      yield r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_DAY_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_VOLUME != null) {
      yield r'CURRENT_DAY_VOLUME';
      yield serializers.serialize(
        object.CURRENT_DAY_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_VOLUME_BUY != null) {
      yield r'CURRENT_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_DAY_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_VOLUME_SELL != null) {
      yield r'CURRENT_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_DAY_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_DAY_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_DAY_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_HIGH != null) {
      yield r'CURRENT_HOUR_HIGH';
      yield serializers.serialize(
        object.CURRENT_HOUR_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_LOW != null) {
      yield r'CURRENT_HOUR_LOW';
      yield serializers.serialize(
        object.CURRENT_HOUR_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_OPEN != null) {
      yield r'CURRENT_HOUR_OPEN';
      yield serializers.serialize(
        object.CURRENT_HOUR_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_QUOTE_VOLUME != null) {
      yield r'CURRENT_HOUR_QUOTE_VOLUME';
      yield serializers.serialize(
        object.CURRENT_HOUR_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_QUOTE_VOLUME_BUY != null) {
      yield r'CURRENT_HOUR_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_HOUR_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_QUOTE_VOLUME_SELL != null) {
      yield r'CURRENT_HOUR_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_HOUR_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_TOTAL_TRADES != null) {
      yield r'CURRENT_HOUR_TOTAL_TRADES';
      yield serializers.serialize(
        object.CURRENT_HOUR_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_TOTAL_TRADES_BUY != null) {
      yield r'CURRENT_HOUR_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.CURRENT_HOUR_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_TOTAL_TRADES_SELL != null) {
      yield r'CURRENT_HOUR_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.CURRENT_HOUR_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN != null) {
      yield r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_VOLUME != null) {
      yield r'CURRENT_HOUR_VOLUME';
      yield serializers.serialize(
        object.CURRENT_HOUR_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_VOLUME_BUY != null) {
      yield r'CURRENT_HOUR_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_HOUR_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_VOLUME_SELL != null) {
      yield r'CURRENT_HOUR_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_HOUR_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_HOUR_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_HOUR_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_HOUR_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_HIGH != null) {
      yield r'CURRENT_MONTH_HIGH';
      yield serializers.serialize(
        object.CURRENT_MONTH_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_LOW != null) {
      yield r'CURRENT_MONTH_LOW';
      yield serializers.serialize(
        object.CURRENT_MONTH_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_OPEN != null) {
      yield r'CURRENT_MONTH_OPEN';
      yield serializers.serialize(
        object.CURRENT_MONTH_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_QUOTE_VOLUME != null) {
      yield r'CURRENT_MONTH_QUOTE_VOLUME';
      yield serializers.serialize(
        object.CURRENT_MONTH_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_QUOTE_VOLUME_BUY != null) {
      yield r'CURRENT_MONTH_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_MONTH_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_QUOTE_VOLUME_SELL != null) {
      yield r'CURRENT_MONTH_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_MONTH_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_TOTAL_TRADES != null) {
      yield r'CURRENT_MONTH_TOTAL_TRADES';
      yield serializers.serialize(
        object.CURRENT_MONTH_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_TOTAL_TRADES_BUY != null) {
      yield r'CURRENT_MONTH_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.CURRENT_MONTH_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_TOTAL_TRADES_SELL != null) {
      yield r'CURRENT_MONTH_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.CURRENT_MONTH_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN != null) {
      yield r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_VOLUME != null) {
      yield r'CURRENT_MONTH_VOLUME';
      yield serializers.serialize(
        object.CURRENT_MONTH_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_VOLUME_BUY != null) {
      yield r'CURRENT_MONTH_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_MONTH_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_VOLUME_SELL != null) {
      yield r'CURRENT_MONTH_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_MONTH_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_MONTH_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_MONTH_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_MONTH_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_HIGH != null) {
      yield r'CURRENT_WEEK_HIGH';
      yield serializers.serialize(
        object.CURRENT_WEEK_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_LOW != null) {
      yield r'CURRENT_WEEK_LOW';
      yield serializers.serialize(
        object.CURRENT_WEEK_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_OPEN != null) {
      yield r'CURRENT_WEEK_OPEN';
      yield serializers.serialize(
        object.CURRENT_WEEK_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_QUOTE_VOLUME != null) {
      yield r'CURRENT_WEEK_QUOTE_VOLUME';
      yield serializers.serialize(
        object.CURRENT_WEEK_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_QUOTE_VOLUME_BUY != null) {
      yield r'CURRENT_WEEK_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_WEEK_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_QUOTE_VOLUME_SELL != null) {
      yield r'CURRENT_WEEK_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_WEEK_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_TOTAL_TRADES != null) {
      yield r'CURRENT_WEEK_TOTAL_TRADES';
      yield serializers.serialize(
        object.CURRENT_WEEK_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_TOTAL_TRADES_BUY != null) {
      yield r'CURRENT_WEEK_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.CURRENT_WEEK_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_TOTAL_TRADES_SELL != null) {
      yield r'CURRENT_WEEK_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.CURRENT_WEEK_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN != null) {
      yield r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_VOLUME != null) {
      yield r'CURRENT_WEEK_VOLUME';
      yield serializers.serialize(
        object.CURRENT_WEEK_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_VOLUME_BUY != null) {
      yield r'CURRENT_WEEK_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_WEEK_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_VOLUME_SELL != null) {
      yield r'CURRENT_WEEK_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_WEEK_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_WEEK_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_WEEK_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_WEEK_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_HIGH != null) {
      yield r'CURRENT_YEAR_HIGH';
      yield serializers.serialize(
        object.CURRENT_YEAR_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_LOW != null) {
      yield r'CURRENT_YEAR_LOW';
      yield serializers.serialize(
        object.CURRENT_YEAR_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_OPEN != null) {
      yield r'CURRENT_YEAR_OPEN';
      yield serializers.serialize(
        object.CURRENT_YEAR_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_QUOTE_VOLUME != null) {
      yield r'CURRENT_YEAR_QUOTE_VOLUME';
      yield serializers.serialize(
        object.CURRENT_YEAR_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_QUOTE_VOLUME_BUY != null) {
      yield r'CURRENT_YEAR_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_YEAR_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_QUOTE_VOLUME_SELL != null) {
      yield r'CURRENT_YEAR_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_YEAR_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_TOTAL_TRADES != null) {
      yield r'CURRENT_YEAR_TOTAL_TRADES';
      yield serializers.serialize(
        object.CURRENT_YEAR_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_TOTAL_TRADES_BUY != null) {
      yield r'CURRENT_YEAR_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.CURRENT_YEAR_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_TOTAL_TRADES_SELL != null) {
      yield r'CURRENT_YEAR_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.CURRENT_YEAR_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN != null) {
      yield r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_VOLUME != null) {
      yield r'CURRENT_YEAR_VOLUME';
      yield serializers.serialize(
        object.CURRENT_YEAR_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_VOLUME_BUY != null) {
      yield r'CURRENT_YEAR_VOLUME_BUY';
      yield serializers.serialize(
        object.CURRENT_YEAR_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_VOLUME_SELL != null) {
      yield r'CURRENT_YEAR_VOLUME_SELL';
      yield serializers.serialize(
        object.CURRENT_YEAR_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.CURRENT_YEAR_VOLUME_UNKNOWN != null) {
      yield r'CURRENT_YEAR_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.CURRENT_YEAR_VOLUME_UNKNOWN,
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
    if (object.LAST_PROCESSED_TRADE_CCSEQ != null) {
      yield r'LAST_PROCESSED_TRADE_CCSEQ';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_CCSEQ,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_PROCESSED_TRADE_PRICE != null) {
      yield r'LAST_PROCESSED_TRADE_PRICE';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_PROCESSED_TRADE_QUANTITY != null) {
      yield r'LAST_PROCESSED_TRADE_QUANTITY';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_PROCESSED_TRADE_QUOTE_QUANTITY != null) {
      yield r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_QUOTE_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_PROCESSED_TRADE_SIDE != null) {
      yield r'LAST_PROCESSED_TRADE_SIDE';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_SIDE,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_PROCESSED_TRADE_TS != null) {
      yield r'LAST_PROCESSED_TRADE_TS';
      yield serializers.serialize(
        object.LAST_PROCESSED_TRADE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_TRADE_CCSEQ != null) {
      yield r'LAST_TRADE_CCSEQ';
      yield serializers.serialize(
        object.LAST_TRADE_CCSEQ,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_TRADE_ID != null) {
      yield r'LAST_TRADE_ID';
      yield serializers.serialize(
        object.LAST_TRADE_ID,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_TRADE_QUANTITY != null) {
      yield r'LAST_TRADE_QUANTITY';
      yield serializers.serialize(
        object.LAST_TRADE_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_TRADE_QUOTE_QUANTITY != null) {
      yield r'LAST_TRADE_QUOTE_QUANTITY';
      yield serializers.serialize(
        object.LAST_TRADE_QUOTE_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_TRADE_SIDE != null) {
      yield r'LAST_TRADE_SIDE';
      yield serializers.serialize(
        object.LAST_TRADE_SIDE,
        specifiedType: const FullType(String),
      );
    }
    if (object.LIFETIME_FIRST_TRADE_TS != null) {
      yield r'LIFETIME_FIRST_TRADE_TS';
      yield serializers.serialize(
        object.LIFETIME_FIRST_TRADE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_HIGH != null) {
      yield r'LIFETIME_HIGH';
      yield serializers.serialize(
        object.LIFETIME_HIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_HIGH_TS != null) {
      yield r'LIFETIME_HIGH_TS';
      yield serializers.serialize(
        object.LIFETIME_HIGH_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_LOW != null) {
      yield r'LIFETIME_LOW';
      yield serializers.serialize(
        object.LIFETIME_LOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_LOW_TS != null) {
      yield r'LIFETIME_LOW_TS';
      yield serializers.serialize(
        object.LIFETIME_LOW_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_OPEN != null) {
      yield r'LIFETIME_OPEN';
      yield serializers.serialize(
        object.LIFETIME_OPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_QUOTE_VOLUME != null) {
      yield r'LIFETIME_QUOTE_VOLUME';
      yield serializers.serialize(
        object.LIFETIME_QUOTE_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_QUOTE_VOLUME_BUY != null) {
      yield r'LIFETIME_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.LIFETIME_QUOTE_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_QUOTE_VOLUME_SELL != null) {
      yield r'LIFETIME_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.LIFETIME_QUOTE_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_QUOTE_VOLUME_UNKNOWN != null) {
      yield r'LIFETIME_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.LIFETIME_QUOTE_VOLUME_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_TOTAL_TRADES != null) {
      yield r'LIFETIME_TOTAL_TRADES';
      yield serializers.serialize(
        object.LIFETIME_TOTAL_TRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_TOTAL_TRADES_BUY != null) {
      yield r'LIFETIME_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.LIFETIME_TOTAL_TRADES_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_TOTAL_TRADES_SELL != null) {
      yield r'LIFETIME_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.LIFETIME_TOTAL_TRADES_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_TOTAL_TRADES_UNKNOWN != null) {
      yield r'LIFETIME_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.LIFETIME_TOTAL_TRADES_UNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_VOLUME != null) {
      yield r'LIFETIME_VOLUME';
      yield serializers.serialize(
        object.LIFETIME_VOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_VOLUME_BUY != null) {
      yield r'LIFETIME_VOLUME_BUY';
      yield serializers.serialize(
        object.LIFETIME_VOLUME_BUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_VOLUME_SELL != null) {
      yield r'LIFETIME_VOLUME_SELL';
      yield serializers.serialize(
        object.LIFETIME_VOLUME_SELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.LIFETIME_VOLUME_UNKNOWN != null) {
      yield r'LIFETIME_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.LIFETIME_VOLUME_UNKNOWN,
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
    if (object.mOVING180DAYHIGH != null) {
      yield r'MOVING_180_DAY_HIGH';
      yield serializers.serialize(
        object.mOVING180DAYHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYLOW != null) {
      yield r'MOVING_180_DAY_LOW';
      yield serializers.serialize(
        object.mOVING180DAYLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYOPEN != null) {
      yield r'MOVING_180_DAY_OPEN';
      yield serializers.serialize(
        object.mOVING180DAYOPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYQUOTEVOLUME != null) {
      yield r'MOVING_180_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING180DAYQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYQUOTEVOLUMEBUY != null) {
      yield r'MOVING_180_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING180DAYQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYQUOTEVOLUMESELL != null) {
      yield r'MOVING_180_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING180DAYQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING180DAYQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYTOTALTRADES != null) {
      yield r'MOVING_180_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING180DAYTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYTOTALTRADESBUY != null) {
      yield r'MOVING_180_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING180DAYTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYTOTALTRADESSELL != null) {
      yield r'MOVING_180_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING180DAYTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING180DAYTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYVOLUME != null) {
      yield r'MOVING_180_DAY_VOLUME';
      yield serializers.serialize(
        object.mOVING180DAYVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYVOLUMEBUY != null) {
      yield r'MOVING_180_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING180DAYVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYVOLUMESELL != null) {
      yield r'MOVING_180_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING180DAYVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING180DAYVOLUMEUNKNOWN != null) {
      yield r'MOVING_180_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING180DAYVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURHIGH != null) {
      yield r'MOVING_24_HOUR_HIGH';
      yield serializers.serialize(
        object.mOVING24HOURHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURLOW != null) {
      yield r'MOVING_24_HOUR_LOW';
      yield serializers.serialize(
        object.mOVING24HOURLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOUROPEN != null) {
      yield r'MOVING_24_HOUR_OPEN';
      yield serializers.serialize(
        object.mOVING24HOUROPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURQUOTEVOLUME != null) {
      yield r'MOVING_24_HOUR_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING24HOURQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURQUOTEVOLUMEBUY != null) {
      yield r'MOVING_24_HOUR_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING24HOURQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURQUOTEVOLUMESELL != null) {
      yield r'MOVING_24_HOUR_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING24HOURQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING24HOURQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURTOTALTRADES != null) {
      yield r'MOVING_24_HOUR_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING24HOURTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURTOTALTRADESBUY != null) {
      yield r'MOVING_24_HOUR_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING24HOURTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURTOTALTRADESSELL != null) {
      yield r'MOVING_24_HOUR_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING24HOURTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING24HOURTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURVOLUME != null) {
      yield r'MOVING_24_HOUR_VOLUME';
      yield serializers.serialize(
        object.mOVING24HOURVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURVOLUMEBUY != null) {
      yield r'MOVING_24_HOUR_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING24HOURVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURVOLUMESELL != null) {
      yield r'MOVING_24_HOUR_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING24HOURVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING24HOURVOLUMEUNKNOWN != null) {
      yield r'MOVING_24_HOUR_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING24HOURVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYHIGH != null) {
      yield r'MOVING_30_DAY_HIGH';
      yield serializers.serialize(
        object.mOVING30DAYHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYLOW != null) {
      yield r'MOVING_30_DAY_LOW';
      yield serializers.serialize(
        object.mOVING30DAYLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYOPEN != null) {
      yield r'MOVING_30_DAY_OPEN';
      yield serializers.serialize(
        object.mOVING30DAYOPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYQUOTEVOLUME != null) {
      yield r'MOVING_30_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING30DAYQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYQUOTEVOLUMEBUY != null) {
      yield r'MOVING_30_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING30DAYQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYQUOTEVOLUMESELL != null) {
      yield r'MOVING_30_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING30DAYQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING30DAYQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYTOTALTRADES != null) {
      yield r'MOVING_30_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING30DAYTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYTOTALTRADESBUY != null) {
      yield r'MOVING_30_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING30DAYTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYTOTALTRADESSELL != null) {
      yield r'MOVING_30_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING30DAYTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING30DAYTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYVOLUME != null) {
      yield r'MOVING_30_DAY_VOLUME';
      yield serializers.serialize(
        object.mOVING30DAYVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYVOLUMEBUY != null) {
      yield r'MOVING_30_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING30DAYVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYVOLUMESELL != null) {
      yield r'MOVING_30_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING30DAYVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING30DAYVOLUMEUNKNOWN != null) {
      yield r'MOVING_30_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING30DAYVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYHIGH != null) {
      yield r'MOVING_365_DAY_HIGH';
      yield serializers.serialize(
        object.mOVING365DAYHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYLOW != null) {
      yield r'MOVING_365_DAY_LOW';
      yield serializers.serialize(
        object.mOVING365DAYLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYOPEN != null) {
      yield r'MOVING_365_DAY_OPEN';
      yield serializers.serialize(
        object.mOVING365DAYOPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYQUOTEVOLUME != null) {
      yield r'MOVING_365_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING365DAYQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYQUOTEVOLUMEBUY != null) {
      yield r'MOVING_365_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING365DAYQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYQUOTEVOLUMESELL != null) {
      yield r'MOVING_365_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING365DAYQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING365DAYQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYTOTALTRADES != null) {
      yield r'MOVING_365_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING365DAYTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYTOTALTRADESBUY != null) {
      yield r'MOVING_365_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING365DAYTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYTOTALTRADESSELL != null) {
      yield r'MOVING_365_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING365DAYTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING365DAYTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYVOLUME != null) {
      yield r'MOVING_365_DAY_VOLUME';
      yield serializers.serialize(
        object.mOVING365DAYVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYVOLUMEBUY != null) {
      yield r'MOVING_365_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING365DAYVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYVOLUMESELL != null) {
      yield r'MOVING_365_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING365DAYVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING365DAYVOLUMEUNKNOWN != null) {
      yield r'MOVING_365_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING365DAYVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYHIGH != null) {
      yield r'MOVING_7_DAY_HIGH';
      yield serializers.serialize(
        object.mOVING7DAYHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYLOW != null) {
      yield r'MOVING_7_DAY_LOW';
      yield serializers.serialize(
        object.mOVING7DAYLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYOPEN != null) {
      yield r'MOVING_7_DAY_OPEN';
      yield serializers.serialize(
        object.mOVING7DAYOPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYQUOTEVOLUME != null) {
      yield r'MOVING_7_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING7DAYQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYQUOTEVOLUMEBUY != null) {
      yield r'MOVING_7_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING7DAYQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYQUOTEVOLUMESELL != null) {
      yield r'MOVING_7_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING7DAYQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING7DAYQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYTOTALTRADES != null) {
      yield r'MOVING_7_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING7DAYTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYTOTALTRADESBUY != null) {
      yield r'MOVING_7_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING7DAYTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYTOTALTRADESSELL != null) {
      yield r'MOVING_7_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING7DAYTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING7DAYTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYVOLUME != null) {
      yield r'MOVING_7_DAY_VOLUME';
      yield serializers.serialize(
        object.mOVING7DAYVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYVOLUMEBUY != null) {
      yield r'MOVING_7_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING7DAYVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYVOLUMESELL != null) {
      yield r'MOVING_7_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING7DAYVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING7DAYVOLUMEUNKNOWN != null) {
      yield r'MOVING_7_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING7DAYVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYHIGH != null) {
      yield r'MOVING_90_DAY_HIGH';
      yield serializers.serialize(
        object.mOVING90DAYHIGH,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYLOW != null) {
      yield r'MOVING_90_DAY_LOW';
      yield serializers.serialize(
        object.mOVING90DAYLOW,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYOPEN != null) {
      yield r'MOVING_90_DAY_OPEN';
      yield serializers.serialize(
        object.mOVING90DAYOPEN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYQUOTEVOLUME != null) {
      yield r'MOVING_90_DAY_QUOTE_VOLUME';
      yield serializers.serialize(
        object.mOVING90DAYQUOTEVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYQUOTEVOLUMEBUY != null) {
      yield r'MOVING_90_DAY_QUOTE_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING90DAYQUOTEVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYQUOTEVOLUMESELL != null) {
      yield r'MOVING_90_DAY_QUOTE_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING90DAYQUOTEVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYQUOTEVOLUMEUNKNOWN != null) {
      yield r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING90DAYQUOTEVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYTOTALTRADES != null) {
      yield r'MOVING_90_DAY_TOTAL_TRADES';
      yield serializers.serialize(
        object.mOVING90DAYTOTALTRADES,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYTOTALTRADESBUY != null) {
      yield r'MOVING_90_DAY_TOTAL_TRADES_BUY';
      yield serializers.serialize(
        object.mOVING90DAYTOTALTRADESBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYTOTALTRADESSELL != null) {
      yield r'MOVING_90_DAY_TOTAL_TRADES_SELL';
      yield serializers.serialize(
        object.mOVING90DAYTOTALTRADESSELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYTOTALTRADESUNKNOWN != null) {
      yield r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN';
      yield serializers.serialize(
        object.mOVING90DAYTOTALTRADESUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYVOLUME != null) {
      yield r'MOVING_90_DAY_VOLUME';
      yield serializers.serialize(
        object.mOVING90DAYVOLUME,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYVOLUMEBUY != null) {
      yield r'MOVING_90_DAY_VOLUME_BUY';
      yield serializers.serialize(
        object.mOVING90DAYVOLUMEBUY,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYVOLUMESELL != null) {
      yield r'MOVING_90_DAY_VOLUME_SELL';
      yield serializers.serialize(
        object.mOVING90DAYVOLUMESELL,
        specifiedType: const FullType(int),
      );
    }
    if (object.mOVING90DAYVOLUMEUNKNOWN != null) {
      yield r'MOVING_90_DAY_VOLUME_UNKNOWN';
      yield serializers.serialize(
        object.mOVING90DAYVOLUMEUNKNOWN,
        specifiedType: const FullType(int),
      );
    }
    if (object.PRICE != null) {
      yield r'PRICE';
      yield serializers.serialize(
        object.PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.PRICE_FLAG != null) {
      yield r'PRICE_FLAG';
      yield serializers.serialize(
        object.PRICE_FLAG,
        specifiedType: const FullType(String),
      );
    }
    if (object.PRICE_LAST_UPDATE_TS != null) {
      yield r'PRICE_LAST_UPDATE_TS';
      yield serializers.serialize(
        object.PRICE_LAST_UPDATE_TS,
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
    if (object.TOP_ASK_LAST_UPDATE_TS != null) {
      yield r'TOP_ASK_LAST_UPDATE_TS';
      yield serializers.serialize(
        object.TOP_ASK_LAST_UPDATE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOP_ASK_PRICE != null) {
      yield r'TOP_ASK_PRICE';
      yield serializers.serialize(
        object.TOP_ASK_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOP_ASK_QUANTITY != null) {
      yield r'TOP_ASK_QUANTITY';
      yield serializers.serialize(
        object.TOP_ASK_QUANTITY,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOP_BID_LAST_UPDATE_TS != null) {
      yield r'TOP_BID_LAST_UPDATE_TS';
      yield serializers.serialize(
        object.TOP_BID_LAST_UPDATE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOP_BID_PRICE != null) {
      yield r'TOP_BID_PRICE';
      yield serializers.serialize(
        object.TOP_BID_PRICE,
        specifiedType: const FullType(int),
      );
    }
    if (object.TOP_BID_QUANTITY != null) {
      yield r'TOP_BID_QUANTITY';
      yield serializers.serialize(
        object.TOP_BID_QUANTITY,
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
    SPOTINSTRUMENTMARKETDATA object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMARKETDATABuilder result,
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
        case r'CURRENT_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_HIGH = valueDes;
          break;
        case r'CURRENT_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_LOW = valueDes;
          break;
        case r'CURRENT_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_OPEN = valueDes;
          break;
        case r'CURRENT_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_QUOTE_VOLUME = valueDes;
          break;
        case r'CURRENT_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_TOTAL_TRADES = valueDes;
          break;
        case r'CURRENT_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'CURRENT_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'CURRENT_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'CURRENT_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_VOLUME = valueDes;
          break;
        case r'CURRENT_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_DAY_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_HOUR_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_HIGH = valueDes;
          break;
        case r'CURRENT_HOUR_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_LOW = valueDes;
          break;
        case r'CURRENT_HOUR_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_OPEN = valueDes;
          break;
        case r'CURRENT_HOUR_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_QUOTE_VOLUME = valueDes;
          break;
        case r'CURRENT_HOUR_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_HOUR_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_HOUR_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_TOTAL_TRADES = valueDes;
          break;
        case r'CURRENT_HOUR_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'CURRENT_HOUR_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'CURRENT_HOUR_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_VOLUME = valueDes;
          break;
        case r'CURRENT_HOUR_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_HOUR_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_HOUR_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_HOUR_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_MONTH_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_HIGH = valueDes;
          break;
        case r'CURRENT_MONTH_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_LOW = valueDes;
          break;
        case r'CURRENT_MONTH_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_OPEN = valueDes;
          break;
        case r'CURRENT_MONTH_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_QUOTE_VOLUME = valueDes;
          break;
        case r'CURRENT_MONTH_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_MONTH_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_MONTH_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_TOTAL_TRADES = valueDes;
          break;
        case r'CURRENT_MONTH_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'CURRENT_MONTH_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'CURRENT_MONTH_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_VOLUME = valueDes;
          break;
        case r'CURRENT_MONTH_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_MONTH_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_MONTH_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_MONTH_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_WEEK_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_HIGH = valueDes;
          break;
        case r'CURRENT_WEEK_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_LOW = valueDes;
          break;
        case r'CURRENT_WEEK_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_OPEN = valueDes;
          break;
        case r'CURRENT_WEEK_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_QUOTE_VOLUME = valueDes;
          break;
        case r'CURRENT_WEEK_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_WEEK_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_WEEK_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_TOTAL_TRADES = valueDes;
          break;
        case r'CURRENT_WEEK_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'CURRENT_WEEK_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'CURRENT_WEEK_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_VOLUME = valueDes;
          break;
        case r'CURRENT_WEEK_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_WEEK_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_WEEK_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_WEEK_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_YEAR_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_HIGH = valueDes;
          break;
        case r'CURRENT_YEAR_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_LOW = valueDes;
          break;
        case r'CURRENT_YEAR_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_OPEN = valueDes;
          break;
        case r'CURRENT_YEAR_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_QUOTE_VOLUME = valueDes;
          break;
        case r'CURRENT_YEAR_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_YEAR_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'CURRENT_YEAR_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_TOTAL_TRADES = valueDes;
          break;
        case r'CURRENT_YEAR_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'CURRENT_YEAR_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'CURRENT_YEAR_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_VOLUME = valueDes;
          break;
        case r'CURRENT_YEAR_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_VOLUME_BUY = valueDes;
          break;
        case r'CURRENT_YEAR_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_VOLUME_SELL = valueDes;
          break;
        case r'CURRENT_YEAR_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.CURRENT_YEAR_VOLUME_UNKNOWN = valueDes;
          break;
        case r'INSTRUMENT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_CCSEQ':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.LAST_PROCESSED_TRADE_CCSEQ = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_PROCESSED_TRADE_PRICE = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_PROCESSED_TRADE_QUANTITY = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_QUOTE_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_PROCESSED_TRADE_QUOTE_QUANTITY = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_SIDE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.LAST_PROCESSED_TRADE_SIDE = valueDes;
          break;
        case r'LAST_PROCESSED_TRADE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_PROCESSED_TRADE_TS = valueDes;
          break;
        case r'LAST_TRADE_CCSEQ':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.LAST_TRADE_CCSEQ = valueDes;
          break;
        case r'LAST_TRADE_ID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.LAST_TRADE_ID = valueDes;
          break;
        case r'LAST_TRADE_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_TRADE_QUANTITY = valueDes;
          break;
        case r'LAST_TRADE_QUOTE_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_TRADE_QUOTE_QUANTITY = valueDes;
          break;
        case r'LAST_TRADE_SIDE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.LAST_TRADE_SIDE = valueDes;
          break;
        case r'LIFETIME_FIRST_TRADE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_FIRST_TRADE_TS = valueDes;
          break;
        case r'LIFETIME_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_HIGH = valueDes;
          break;
        case r'LIFETIME_HIGH_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_HIGH_TS = valueDes;
          break;
        case r'LIFETIME_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_LOW = valueDes;
          break;
        case r'LIFETIME_LOW_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_LOW_TS = valueDes;
          break;
        case r'LIFETIME_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_OPEN = valueDes;
          break;
        case r'LIFETIME_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_QUOTE_VOLUME = valueDes;
          break;
        case r'LIFETIME_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_QUOTE_VOLUME_BUY = valueDes;
          break;
        case r'LIFETIME_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_QUOTE_VOLUME_SELL = valueDes;
          break;
        case r'LIFETIME_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_QUOTE_VOLUME_UNKNOWN = valueDes;
          break;
        case r'LIFETIME_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_TOTAL_TRADES = valueDes;
          break;
        case r'LIFETIME_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_TOTAL_TRADES_BUY = valueDes;
          break;
        case r'LIFETIME_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_TOTAL_TRADES_SELL = valueDes;
          break;
        case r'LIFETIME_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_TOTAL_TRADES_UNKNOWN = valueDes;
          break;
        case r'LIFETIME_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_VOLUME = valueDes;
          break;
        case r'LIFETIME_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_VOLUME_BUY = valueDes;
          break;
        case r'LIFETIME_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_VOLUME_SELL = valueDes;
          break;
        case r'LIFETIME_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LIFETIME_VOLUME_UNKNOWN = valueDes;
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
        case r'MOVING_180_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYHIGH = valueDes;
          break;
        case r'MOVING_180_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYLOW = valueDes;
          break;
        case r'MOVING_180_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYOPEN = valueDes;
          break;
        case r'MOVING_180_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_180_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_180_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_180_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYTOTALTRADES = valueDes;
          break;
        case r'MOVING_180_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_180_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_180_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYVOLUME = valueDes;
          break;
        case r'MOVING_180_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYVOLUMEBUY = valueDes;
          break;
        case r'MOVING_180_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYVOLUMESELL = valueDes;
          break;
        case r'MOVING_180_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING180DAYVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_24_HOUR_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURHIGH = valueDes;
          break;
        case r'MOVING_24_HOUR_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURLOW = valueDes;
          break;
        case r'MOVING_24_HOUR_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOUROPEN = valueDes;
          break;
        case r'MOVING_24_HOUR_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_24_HOUR_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_24_HOUR_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_24_HOUR_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURTOTALTRADES = valueDes;
          break;
        case r'MOVING_24_HOUR_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_24_HOUR_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_24_HOUR_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURVOLUME = valueDes;
          break;
        case r'MOVING_24_HOUR_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURVOLUMEBUY = valueDes;
          break;
        case r'MOVING_24_HOUR_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURVOLUMESELL = valueDes;
          break;
        case r'MOVING_24_HOUR_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING24HOURVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_30_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYHIGH = valueDes;
          break;
        case r'MOVING_30_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYLOW = valueDes;
          break;
        case r'MOVING_30_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYOPEN = valueDes;
          break;
        case r'MOVING_30_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_30_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_30_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_30_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYTOTALTRADES = valueDes;
          break;
        case r'MOVING_30_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_30_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_30_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYVOLUME = valueDes;
          break;
        case r'MOVING_30_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYVOLUMEBUY = valueDes;
          break;
        case r'MOVING_30_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYVOLUMESELL = valueDes;
          break;
        case r'MOVING_30_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING30DAYVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_365_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYHIGH = valueDes;
          break;
        case r'MOVING_365_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYLOW = valueDes;
          break;
        case r'MOVING_365_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYOPEN = valueDes;
          break;
        case r'MOVING_365_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_365_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_365_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_365_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYTOTALTRADES = valueDes;
          break;
        case r'MOVING_365_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_365_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_365_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYVOLUME = valueDes;
          break;
        case r'MOVING_365_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYVOLUMEBUY = valueDes;
          break;
        case r'MOVING_365_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYVOLUMESELL = valueDes;
          break;
        case r'MOVING_365_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING365DAYVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_7_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYHIGH = valueDes;
          break;
        case r'MOVING_7_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYLOW = valueDes;
          break;
        case r'MOVING_7_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYOPEN = valueDes;
          break;
        case r'MOVING_7_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_7_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_7_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_7_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYTOTALTRADES = valueDes;
          break;
        case r'MOVING_7_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_7_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_7_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYVOLUME = valueDes;
          break;
        case r'MOVING_7_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYVOLUMEBUY = valueDes;
          break;
        case r'MOVING_7_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYVOLUMESELL = valueDes;
          break;
        case r'MOVING_7_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING7DAYVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_90_DAY_HIGH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYHIGH = valueDes;
          break;
        case r'MOVING_90_DAY_LOW':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYLOW = valueDes;
          break;
        case r'MOVING_90_DAY_OPEN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYOPEN = valueDes;
          break;
        case r'MOVING_90_DAY_QUOTE_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYQUOTEVOLUME = valueDes;
          break;
        case r'MOVING_90_DAY_QUOTE_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYQUOTEVOLUMEBUY = valueDes;
          break;
        case r'MOVING_90_DAY_QUOTE_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYQUOTEVOLUMESELL = valueDes;
          break;
        case r'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYQUOTEVOLUMEUNKNOWN = valueDes;
          break;
        case r'MOVING_90_DAY_TOTAL_TRADES':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYTOTALTRADES = valueDes;
          break;
        case r'MOVING_90_DAY_TOTAL_TRADES_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYTOTALTRADESBUY = valueDes;
          break;
        case r'MOVING_90_DAY_TOTAL_TRADES_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYTOTALTRADESSELL = valueDes;
          break;
        case r'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYTOTALTRADESUNKNOWN = valueDes;
          break;
        case r'MOVING_90_DAY_VOLUME':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYVOLUME = valueDes;
          break;
        case r'MOVING_90_DAY_VOLUME_BUY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYVOLUMEBUY = valueDes;
          break;
        case r'MOVING_90_DAY_VOLUME_SELL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYVOLUMESELL = valueDes;
          break;
        case r'MOVING_90_DAY_VOLUME_UNKNOWN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mOVING90DAYVOLUMEUNKNOWN = valueDes;
          break;
        case r'PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.PRICE = valueDes;
          break;
        case r'PRICE_FLAG':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.PRICE_FLAG = valueDes;
          break;
        case r'PRICE_LAST_UPDATE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.PRICE_LAST_UPDATE_TS = valueDes;
          break;
        case r'QUOTE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.QUOTE = valueDes;
          break;
        case r'TOP_ASK_LAST_UPDATE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_ASK_LAST_UPDATE_TS = valueDes;
          break;
        case r'TOP_ASK_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_ASK_PRICE = valueDes;
          break;
        case r'TOP_ASK_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_ASK_QUANTITY = valueDes;
          break;
        case r'TOP_BID_LAST_UPDATE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_BID_LAST_UPDATE_TS = valueDes;
          break;
        case r'TOP_BID_PRICE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_BID_PRICE = valueDes;
          break;
        case r'TOP_BID_QUANTITY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOP_BID_QUANTITY = valueDes;
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
  SPOTINSTRUMENTMARKETDATA deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMARKETDATABuilder();
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

