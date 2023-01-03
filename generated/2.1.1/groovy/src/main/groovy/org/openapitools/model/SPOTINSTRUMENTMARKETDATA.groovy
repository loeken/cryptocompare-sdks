package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SPOTINSTRUMENTMARKETDATA {
    /* The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped. */
    String BASE
    /* Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send. */
    Integer CCSEQ
    /* The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    Integer CURRENT_DAY_HIGH
    /* The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    Integer CURRENT_DAY_LOW
    /* The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset. */
    Integer CURRENT_DAY_OPEN
    /* The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    Integer CURRENT_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    Integer CURRENT_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    Integer CURRENT_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    Integer CURRENT_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC). */
    Integer CURRENT_DAY_TOTAL_TRADES
    /* The total number of buy trades since the start of the current day (00:00:00 GMT/UTC). */
    Integer CURRENT_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades since the start of the current day (00:00:00 GMT/UTC). */
    Integer CURRENT_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC). */
    Integer CURRENT_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    Integer CURRENT_DAY_VOLUME
    /* The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    Integer CURRENT_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    Integer CURRENT_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    Integer CURRENT_DAY_VOLUME_UNKNOWN
    /* The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    Integer CURRENT_HOUR_HIGH
    /* The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    Integer CURRENT_HOUR_LOW
    /* The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset. */
    Integer CURRENT_HOUR_OPEN
    /* The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    Integer CURRENT_HOUR_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    Integer CURRENT_HOUR_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    Integer CURRENT_HOUR_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    Integer CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred since the start of the current hour. */
    Integer CURRENT_HOUR_TOTAL_TRADES
    /* The total number of buy trades since the start of the current hour. */
    Integer CURRENT_HOUR_TOTAL_TRADES_BUY
    /* The total number of sell trades since the start of the current hour. */
    Integer CURRENT_HOUR_TOTAL_TRADES_SELL
    /* The total number of unknown trades since the start of the current hour. */
    Integer CURRENT_HOUR_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from the start of the current hour until now. Given in the base asset. */
    Integer CURRENT_HOUR_VOLUME
    /* The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset. */
    Integer CURRENT_HOUR_VOLUME_BUY
    /* The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset. */
    Integer CURRENT_HOUR_VOLUME_SELL
    /* The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset. */
    Integer CURRENT_HOUR_VOLUME_UNKNOWN
    /* The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. */
    Integer CURRENT_MONTH_HIGH
    /* The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. */
    Integer CURRENT_MONTH_LOW
    /* The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset. */
    Integer CURRENT_MONTH_OPEN
    /* The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    Integer CURRENT_MONTH_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    Integer CURRENT_MONTH_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    Integer CURRENT_MONTH_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    Integer CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    Integer CURRENT_MONTH_TOTAL_TRADES
    /* The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    Integer CURRENT_MONTH_TOTAL_TRADES_BUY
    /* The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    Integer CURRENT_MONTH_TOTAL_TRADES_SELL
    /* The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    Integer CURRENT_MONTH_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    Integer CURRENT_MONTH_VOLUME
    /* The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    Integer CURRENT_MONTH_VOLUME_BUY
    /* The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    Integer CURRENT_MONTH_VOLUME_SELL
    /* The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    Integer CURRENT_MONTH_VOLUME_UNKNOWN
    /* The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset. */
    Integer CURRENT_WEEK_HIGH
    /* The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset. */
    Integer CURRENT_WEEK_LOW
    /* The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset. */
    Integer CURRENT_WEEK_OPEN
    /* The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    Integer CURRENT_WEEK_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    Integer CURRENT_WEEK_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    Integer CURRENT_WEEK_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    Integer CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    Integer CURRENT_WEEK_TOTAL_TRADES
    /* The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    Integer CURRENT_WEEK_TOTAL_TRADES_BUY
    /* The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    Integer CURRENT_WEEK_TOTAL_TRADES_SELL
    /* The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    Integer CURRENT_WEEK_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    Integer CURRENT_WEEK_VOLUME
    /* The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    Integer CURRENT_WEEK_VOLUME_BUY
    /* The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    Integer CURRENT_WEEK_VOLUME_SELL
    /* The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    Integer CURRENT_WEEK_VOLUME_UNKNOWN
    /* The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. */
    Integer CURRENT_YEAR_HIGH
    /* The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. */
    Integer CURRENT_YEAR_LOW
    /* The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset. */
    Integer CURRENT_YEAR_OPEN
    /* The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    Integer CURRENT_YEAR_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    Integer CURRENT_YEAR_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    Integer CURRENT_YEAR_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    Integer CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    Integer CURRENT_YEAR_TOTAL_TRADES
    /* The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    Integer CURRENT_YEAR_TOTAL_TRADES_BUY
    /* The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    Integer CURRENT_YEAR_TOTAL_TRADES_SELL
    /* The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    Integer CURRENT_YEAR_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    Integer CURRENT_YEAR_VOLUME
    /* The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    Integer CURRENT_YEAR_VOLUME_BUY
    /* The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    Integer CURRENT_YEAR_VOLUME_SELL
    /* The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    Integer CURRENT_YEAR_VOLUME_UNKNOWN
    /* The unmapped instrument ID */
    String INSTRUMENT
    /* The CCSEQ of the latest trade. */
    String LAST_PROCESSED_TRADE_CCSEQ
    /* The price in the quote asset of the last trade processed, as reported by the market / exchange. */
    Integer LAST_PROCESSED_TRADE_PRICE
    /* The quantity of the last processed trade in the from symbol (base / coin). */
    Integer LAST_PROCESSED_TRADE_QUANTITY
    /* The  volume of the last processed trade in the to asset / quote. */
    Integer LAST_PROCESSED_TRADE_QUOTE_QUANTITY
    /* The side of the last processed trade. */
    String LAST_PROCESSED_TRADE_SIDE
    /* The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned. */
    Integer LAST_PROCESSED_TRADE_TS
    /* The CCSEQ of the latest trade. */
    String LAST_TRADE_CCSEQ
    /* The ID of the latest trade. */
    String LAST_TRADE_ID
    /* The quantity of the latest trade in the from symbol (base / coin). */
    Integer LAST_TRADE_QUANTITY
    /* The volume of the latest trade in the to asset / quote. */
    Integer LAST_TRADE_QUOTE_QUANTITY
    /* The side of the latest trade. */
    String LAST_TRADE_SIDE
    /* The timestamp of the first trade ever recorded for the instrument */
    Integer LIFETIME_FIRST_TRADE_TS
    /* The price of the highest trade ever executed for this instrument. Given in the quote asset. */
    Integer LIFETIME_HIGH
    /* The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset. */
    Integer LIFETIME_HIGH_TS
    /* The price of the lowest trade ever executed for this instrument. Given in the quote asset. */
    Integer LIFETIME_LOW
    /* The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset. */
    Integer LIFETIME_LOW_TS
    /* The price of the first trade of the instrument. Given in the quote asset. */
    Integer LIFETIME_OPEN
    /* The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    Integer LIFETIME_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    Integer LIFETIME_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    Integer LIFETIME_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    Integer LIFETIME_QUOTE_VOLUME_UNKNOWN
    /* The total number of all trades that have ever been executed for this instrument. */
    Integer LIFETIME_TOTAL_TRADES
    /* The total number of all buy trades that have ever been executed for this instrument. */
    Integer LIFETIME_TOTAL_TRADES_BUY
    /* The total number of all sell trades that have ever been executed for this instrument. */
    Integer LIFETIME_TOTAL_TRADES_SELL
    /* The total number of all unknown trades that have ever been executed for this instrument. */
    Integer LIFETIME_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities of all the trades of this instrument. Given in the base asset. */
    Integer LIFETIME_VOLUME
    /* The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset. */
    Integer LIFETIME_VOLUME_BUY
    /* The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset. */
    Integer LIFETIME_VOLUME_SELL
    /* The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset. */
    Integer LIFETIME_VOLUME_UNKNOWN
    /* The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
    String MAPPED_INSTRUMENT
    /* The market / exchange under consideration (e.g. coinbase, kraken, etc). */
    String MARKET
    /* The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_HIGH
    /* The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_LOW
    /* The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset. */
    Integer MOVING_180_DAY_OPEN
    /* The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    Integer MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    Integer MOVING_180_DAY_TOTAL_TRADES
    /* The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    Integer MOVING_180_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    Integer MOVING_180_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    Integer MOVING_180_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    Integer MOVING_180_DAY_VOLUME
    /* The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    Integer MOVING_180_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    Integer MOVING_180_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    Integer MOVING_180_DAY_VOLUME_UNKNOWN
    /* The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_HIGH
    /* The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_LOW
    /* The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset. */
    Integer MOVING_24_HOUR_OPEN
    /* The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    Integer MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    Integer MOVING_24_HOUR_TOTAL_TRADES
    /* The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    Integer MOVING_24_HOUR_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    Integer MOVING_24_HOUR_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    Integer MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    Integer MOVING_24_HOUR_VOLUME
    /* The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    Integer MOVING_24_HOUR_VOLUME_BUY
    /* The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    Integer MOVING_24_HOUR_VOLUME_SELL
    /* The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    Integer MOVING_24_HOUR_VOLUME_UNKNOWN
    /* The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_HIGH
    /* The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_LOW
    /* The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset. */
    Integer MOVING_30_DAY_OPEN
    /* The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    Integer MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    Integer MOVING_30_DAY_TOTAL_TRADES
    /* The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    Integer MOVING_30_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    Integer MOVING_30_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    Integer MOVING_30_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    Integer MOVING_30_DAY_VOLUME
    /* The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    Integer MOVING_30_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    Integer MOVING_30_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    Integer MOVING_30_DAY_VOLUME_UNKNOWN
    /* The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_HIGH
    /* The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_LOW
    /* The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset. */
    Integer MOVING_365_DAY_OPEN
    /* The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    Integer MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    Integer MOVING_365_DAY_TOTAL_TRADES
    /* The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    Integer MOVING_365_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    Integer MOVING_365_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    Integer MOVING_365_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    Integer MOVING_365_DAY_VOLUME
    /* The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    Integer MOVING_365_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    Integer MOVING_365_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    Integer MOVING_365_DAY_VOLUME_UNKNOWN
    /* The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_HIGH
    /* The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_LOW
    /* The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset. */
    Integer MOVING_7_DAY_OPEN
    /* The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    Integer MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    Integer MOVING_7_DAY_TOTAL_TRADES
    /* The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    Integer MOVING_7_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    Integer MOVING_7_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    Integer MOVING_7_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    Integer MOVING_7_DAY_VOLUME
    /* The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    Integer MOVING_7_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    Integer MOVING_7_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    Integer MOVING_7_DAY_VOLUME_UNKNOWN
    /* The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_HIGH
    /* The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_LOW
    /* The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset. */
    Integer MOVING_90_DAY_OPEN
    /* The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_QUOTE_VOLUME
    /* The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_QUOTE_VOLUME_BUY
    /* The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_QUOTE_VOLUME_SELL
    /* The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    Integer MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN
    /* The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    Integer MOVING_90_DAY_TOTAL_TRADES
    /* The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    Integer MOVING_90_DAY_TOTAL_TRADES_BUY
    /* The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    Integer MOVING_90_DAY_TOTAL_TRADES_SELL
    /* The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    Integer MOVING_90_DAY_TOTAL_TRADES_UNKNOWN
    /* The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    Integer MOVING_90_DAY_VOLUME
    /* The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    Integer MOVING_90_DAY_VOLUME_BUY
    /* The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    Integer MOVING_90_DAY_VOLUME_SELL
    /* The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    Integer MOVING_90_DAY_VOLUME_UNKNOWN
    /* The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD). */
    Integer PRICE
    /* The flag indicating whether the price has increased, decreased, or not changed */
    String PRICE_FLAG
    /* The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned. */
    Integer PRICE_LAST_UPDATE_TS
    /* The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped. */
    String QUOTE
    /* The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. */
    Integer TOP_ASK_LAST_UPDATE_TS
    /* The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC. */
    Integer TOP_ASK_PRICE
    /* The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price. */
    Integer TOP_ASK_QUANTITY
    /* The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. */
    Integer TOP_BID_LAST_UPDATE_TS
    /* The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC. */
    Integer TOP_BID_PRICE
    /* The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price. */
    Integer TOP_BID_QUANTITY
    /* The type of the message. */
    String TYPE
}
