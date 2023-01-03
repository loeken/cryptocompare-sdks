
package org.openapitools.client.model


case class SPOTINSTRUMENTMARKETDATA (
    /* The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped. */
    _BASE: Option[String],
    /* Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send. */
    _CCSEQ: Option[Integer],
    /* The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    _CURRENT_DAY_HIGH: Option[Integer],
    /* The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    _CURRENT_DAY_LOW: Option[Integer],
    /* The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset. */
    _CURRENT_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    _CURRENT_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    _CURRENT_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    _CURRENT_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. */
    _CURRENT_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC). */
    _CURRENT_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades since the start of the current day (00:00:00 GMT/UTC). */
    _CURRENT_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades since the start of the current day (00:00:00 GMT/UTC). */
    _CURRENT_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC). */
    _CURRENT_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    _CURRENT_DAY_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    _CURRENT_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    _CURRENT_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. */
    _CURRENT_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    _CURRENT_HOUR_HIGH: Option[Integer],
    /* The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. */
    _CURRENT_HOUR_LOW: Option[Integer],
    /* The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset. */
    _CURRENT_HOUR_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    _CURRENT_HOUR_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    _CURRENT_HOUR_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    _CURRENT_HOUR_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset. */
    _CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred since the start of the current hour. */
    _CURRENT_HOUR_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades since the start of the current hour. */
    _CURRENT_HOUR_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades since the start of the current hour. */
    _CURRENT_HOUR_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades since the start of the current hour. */
    _CURRENT_HOUR_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from the start of the current hour until now. Given in the base asset. */
    _CURRENT_HOUR_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset. */
    _CURRENT_HOUR_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset. */
    _CURRENT_HOUR_VOLUME_SELL: Option[Integer],
    /* The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset. */
    _CURRENT_HOUR_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. */
    _CURRENT_MONTH_HIGH: Option[Integer],
    /* The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. */
    _CURRENT_MONTH_LOW: Option[Integer],
    /* The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset. */
    _CURRENT_MONTH_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    _CURRENT_MONTH_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    _CURRENT_MONTH_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    _CURRENT_MONTH_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. */
    _CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    _CURRENT_MONTH_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    _CURRENT_MONTH_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    _CURRENT_MONTH_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. */
    _CURRENT_MONTH_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    _CURRENT_MONTH_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    _CURRENT_MONTH_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    _CURRENT_MONTH_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. */
    _CURRENT_MONTH_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset. */
    _CURRENT_WEEK_HIGH: Option[Integer],
    /* The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset. */
    _CURRENT_WEEK_LOW: Option[Integer],
    /* The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset. */
    _CURRENT_WEEK_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    _CURRENT_WEEK_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    _CURRENT_WEEK_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    _CURRENT_WEEK_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. */
    _CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    _CURRENT_WEEK_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    _CURRENT_WEEK_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    _CURRENT_WEEK_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. */
    _CURRENT_WEEK_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    _CURRENT_WEEK_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    _CURRENT_WEEK_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    _CURRENT_WEEK_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. */
    _CURRENT_WEEK_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. */
    _CURRENT_YEAR_HIGH: Option[Integer],
    /* The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. */
    _CURRENT_YEAR_LOW: Option[Integer],
    /* The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset. */
    _CURRENT_YEAR_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    _CURRENT_YEAR_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    _CURRENT_YEAR_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    _CURRENT_YEAR_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. */
    _CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    _CURRENT_YEAR_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    _CURRENT_YEAR_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    _CURRENT_YEAR_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. */
    _CURRENT_YEAR_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    _CURRENT_YEAR_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    _CURRENT_YEAR_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    _CURRENT_YEAR_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. */
    _CURRENT_YEAR_VOLUME_UNKNOWN: Option[Integer],
    /* The unmapped instrument ID */
    _INSTRUMENT: Option[String],
    /* The CCSEQ of the latest trade. */
    _LAST_PROCESSED_TRADE_CCSEQ: Option[String],
    /* The price in the quote asset of the last trade processed, as reported by the market / exchange. */
    _LAST_PROCESSED_TRADE_PRICE: Option[Integer],
    /* The quantity of the last processed trade in the from symbol (base / coin). */
    _LAST_PROCESSED_TRADE_QUANTITY: Option[Integer],
    /* The  volume of the last processed trade in the to asset / quote. */
    _LAST_PROCESSED_TRADE_QUOTE_QUANTITY: Option[Integer],
    /* The side of the last processed trade. */
    _LAST_PROCESSED_TRADE_SIDE: Option[String],
    /* The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned. */
    _LAST_PROCESSED_TRADE_TS: Option[Integer],
    /* The CCSEQ of the latest trade. */
    _LAST_TRADE_CCSEQ: Option[String],
    /* The ID of the latest trade. */
    _LAST_TRADE_ID: Option[String],
    /* The quantity of the latest trade in the from symbol (base / coin). */
    _LAST_TRADE_QUANTITY: Option[Integer],
    /* The volume of the latest trade in the to asset / quote. */
    _LAST_TRADE_QUOTE_QUANTITY: Option[Integer],
    /* The side of the latest trade. */
    _LAST_TRADE_SIDE: Option[String],
    /* The timestamp of the first trade ever recorded for the instrument */
    _LIFETIME_FIRST_TRADE_TS: Option[Integer],
    /* The price of the highest trade ever executed for this instrument. Given in the quote asset. */
    _LIFETIME_HIGH: Option[Integer],
    /* The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset. */
    _LIFETIME_HIGH_TS: Option[Integer],
    /* The price of the lowest trade ever executed for this instrument. Given in the quote asset. */
    _LIFETIME_LOW: Option[Integer],
    /* The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset. */
    _LIFETIME_LOW_TS: Option[Integer],
    /* The price of the first trade of the instrument. Given in the quote asset. */
    _LIFETIME_OPEN: Option[Integer],
    /* The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    _LIFETIME_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    _LIFETIME_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    _LIFETIME_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset. */
    _LIFETIME_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of all trades that have ever been executed for this instrument. */
    _LIFETIME_TOTAL_TRADES: Option[Integer],
    /* The total number of all buy trades that have ever been executed for this instrument. */
    _LIFETIME_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of all sell trades that have ever been executed for this instrument. */
    _LIFETIME_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of all unknown trades that have ever been executed for this instrument. */
    _LIFETIME_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities of all the trades of this instrument. Given in the base asset. */
    _LIFETIME_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset. */
    _LIFETIME_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset. */
    _LIFETIME_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset. */
    _LIFETIME_VOLUME_UNKNOWN: Option[Integer],
    /* The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
    _MAPPED_INSTRUMENT: Option[String],
    /* The market / exchange under consideration (e.g. coinbase, kraken, etc). */
    _MARKET: Option[String],
    /* The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset. */
    _MOVING_180_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. */
    _MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    _MOVING_180_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    _MOVING_180_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    _MOVING_180_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). */
    _MOVING_180_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    _MOVING_180_DAY_VOLUME: Option[Integer],
    /* The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    _MOVING_180_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    _MOVING_180_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. */
    _MOVING_180_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset. */
    _MOVING_24_HOUR_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. */
    _MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    _MOVING_24_HOUR_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    _MOVING_24_HOUR_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    _MOVING_24_HOUR_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). */
    _MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    _MOVING_24_HOUR_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    _MOVING_24_HOUR_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    _MOVING_24_HOUR_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. */
    _MOVING_24_HOUR_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset. */
    _MOVING_30_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. */
    _MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    _MOVING_30_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    _MOVING_30_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    _MOVING_30_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). */
    _MOVING_30_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    _MOVING_30_DAY_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    _MOVING_30_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    _MOVING_30_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. */
    _MOVING_30_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset. */
    _MOVING_365_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. */
    _MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    _MOVING_365_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    _MOVING_365_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    _MOVING_365_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). */
    _MOVING_365_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    _MOVING_365_DAY_VOLUME: Option[Integer],
    /* The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    _MOVING_365_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    _MOVING_365_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. */
    _MOVING_365_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset. */
    _MOVING_7_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. */
    _MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    _MOVING_7_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    _MOVING_7_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    _MOVING_7_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). */
    _MOVING_7_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    _MOVING_7_DAY_VOLUME: Option[Integer],
    /* The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    _MOVING_7_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    _MOVING_7_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. */
    _MOVING_7_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_HIGH: Option[Integer],
    /* The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_LOW: Option[Integer],
    /* The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset. */
    _MOVING_90_DAY_OPEN: Option[Integer],
    /* The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_QUOTE_VOLUME: Option[Integer],
    /* The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. */
    _MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    _MOVING_90_DAY_TOTAL_TRADES: Option[Integer],
    /* The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    _MOVING_90_DAY_TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    _MOVING_90_DAY_TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). */
    _MOVING_90_DAY_TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    _MOVING_90_DAY_VOLUME: Option[Integer],
    /* The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    _MOVING_90_DAY_VOLUME_BUY: Option[Integer],
    /* The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    _MOVING_90_DAY_VOLUME_SELL: Option[Integer],
    /* The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. */
    _MOVING_90_DAY_VOLUME_UNKNOWN: Option[Integer],
    /* The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD). */
    _PRICE: Option[Integer],
    /* The flag indicating whether the price has increased, decreased, or not changed */
    _PRICE_FLAG: Option[String],
    /* The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned. */
    _PRICE_LAST_UPDATE_TS: Option[Integer],
    /* The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped. */
    _QUOTE: Option[String],
    /* The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. */
    _TOP_ASK_LAST_UPDATE_TS: Option[Integer],
    /* The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC. */
    _TOP_ASK_PRICE: Option[Integer],
    /* The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price. */
    _TOP_ASK_QUANTITY: Option[Integer],
    /* The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. */
    _TOP_BID_LAST_UPDATE_TS: Option[Integer],
    /* The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC. */
    _TOP_BID_PRICE: Option[Integer],
    /* The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price. */
    _TOP_BID_QUANTITY: Option[Integer],
    /* The type of the message. */
    _TYPE: Option[String]
)
object SPOTINSTRUMENTMARKETDATA {
    def toStringBody(var_BASE: Object, var_CCSEQ: Object, var_CURRENT_DAY_HIGH: Object, var_CURRENT_DAY_LOW: Object, var_CURRENT_DAY_OPEN: Object, var_CURRENT_DAY_QUOTE_VOLUME: Object, var_CURRENT_DAY_QUOTE_VOLUME_BUY: Object, var_CURRENT_DAY_QUOTE_VOLUME_SELL: Object, var_CURRENT_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_CURRENT_DAY_TOTAL_TRADES: Object, var_CURRENT_DAY_TOTAL_TRADES_BUY: Object, var_CURRENT_DAY_TOTAL_TRADES_SELL: Object, var_CURRENT_DAY_TOTAL_TRADES_UNKNOWN: Object, var_CURRENT_DAY_VOLUME: Object, var_CURRENT_DAY_VOLUME_BUY: Object, var_CURRENT_DAY_VOLUME_SELL: Object, var_CURRENT_DAY_VOLUME_UNKNOWN: Object, var_CURRENT_HOUR_HIGH: Object, var_CURRENT_HOUR_LOW: Object, var_CURRENT_HOUR_OPEN: Object, var_CURRENT_HOUR_QUOTE_VOLUME: Object, var_CURRENT_HOUR_QUOTE_VOLUME_BUY: Object, var_CURRENT_HOUR_QUOTE_VOLUME_SELL: Object, var_CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN: Object, var_CURRENT_HOUR_TOTAL_TRADES: Object, var_CURRENT_HOUR_TOTAL_TRADES_BUY: Object, var_CURRENT_HOUR_TOTAL_TRADES_SELL: Object, var_CURRENT_HOUR_TOTAL_TRADES_UNKNOWN: Object, var_CURRENT_HOUR_VOLUME: Object, var_CURRENT_HOUR_VOLUME_BUY: Object, var_CURRENT_HOUR_VOLUME_SELL: Object, var_CURRENT_HOUR_VOLUME_UNKNOWN: Object, var_CURRENT_MONTH_HIGH: Object, var_CURRENT_MONTH_LOW: Object, var_CURRENT_MONTH_OPEN: Object, var_CURRENT_MONTH_QUOTE_VOLUME: Object, var_CURRENT_MONTH_QUOTE_VOLUME_BUY: Object, var_CURRENT_MONTH_QUOTE_VOLUME_SELL: Object, var_CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN: Object, var_CURRENT_MONTH_TOTAL_TRADES: Object, var_CURRENT_MONTH_TOTAL_TRADES_BUY: Object, var_CURRENT_MONTH_TOTAL_TRADES_SELL: Object, var_CURRENT_MONTH_TOTAL_TRADES_UNKNOWN: Object, var_CURRENT_MONTH_VOLUME: Object, var_CURRENT_MONTH_VOLUME_BUY: Object, var_CURRENT_MONTH_VOLUME_SELL: Object, var_CURRENT_MONTH_VOLUME_UNKNOWN: Object, var_CURRENT_WEEK_HIGH: Object, var_CURRENT_WEEK_LOW: Object, var_CURRENT_WEEK_OPEN: Object, var_CURRENT_WEEK_QUOTE_VOLUME: Object, var_CURRENT_WEEK_QUOTE_VOLUME_BUY: Object, var_CURRENT_WEEK_QUOTE_VOLUME_SELL: Object, var_CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN: Object, var_CURRENT_WEEK_TOTAL_TRADES: Object, var_CURRENT_WEEK_TOTAL_TRADES_BUY: Object, var_CURRENT_WEEK_TOTAL_TRADES_SELL: Object, var_CURRENT_WEEK_TOTAL_TRADES_UNKNOWN: Object, var_CURRENT_WEEK_VOLUME: Object, var_CURRENT_WEEK_VOLUME_BUY: Object, var_CURRENT_WEEK_VOLUME_SELL: Object, var_CURRENT_WEEK_VOLUME_UNKNOWN: Object, var_CURRENT_YEAR_HIGH: Object, var_CURRENT_YEAR_LOW: Object, var_CURRENT_YEAR_OPEN: Object, var_CURRENT_YEAR_QUOTE_VOLUME: Object, var_CURRENT_YEAR_QUOTE_VOLUME_BUY: Object, var_CURRENT_YEAR_QUOTE_VOLUME_SELL: Object, var_CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN: Object, var_CURRENT_YEAR_TOTAL_TRADES: Object, var_CURRENT_YEAR_TOTAL_TRADES_BUY: Object, var_CURRENT_YEAR_TOTAL_TRADES_SELL: Object, var_CURRENT_YEAR_TOTAL_TRADES_UNKNOWN: Object, var_CURRENT_YEAR_VOLUME: Object, var_CURRENT_YEAR_VOLUME_BUY: Object, var_CURRENT_YEAR_VOLUME_SELL: Object, var_CURRENT_YEAR_VOLUME_UNKNOWN: Object, var_INSTRUMENT: Object, var_LAST_PROCESSED_TRADE_CCSEQ: Object, var_LAST_PROCESSED_TRADE_PRICE: Object, var_LAST_PROCESSED_TRADE_QUANTITY: Object, var_LAST_PROCESSED_TRADE_QUOTE_QUANTITY: Object, var_LAST_PROCESSED_TRADE_SIDE: Object, var_LAST_PROCESSED_TRADE_TS: Object, var_LAST_TRADE_CCSEQ: Object, var_LAST_TRADE_ID: Object, var_LAST_TRADE_QUANTITY: Object, var_LAST_TRADE_QUOTE_QUANTITY: Object, var_LAST_TRADE_SIDE: Object, var_LIFETIME_FIRST_TRADE_TS: Object, var_LIFETIME_HIGH: Object, var_LIFETIME_HIGH_TS: Object, var_LIFETIME_LOW: Object, var_LIFETIME_LOW_TS: Object, var_LIFETIME_OPEN: Object, var_LIFETIME_QUOTE_VOLUME: Object, var_LIFETIME_QUOTE_VOLUME_BUY: Object, var_LIFETIME_QUOTE_VOLUME_SELL: Object, var_LIFETIME_QUOTE_VOLUME_UNKNOWN: Object, var_LIFETIME_TOTAL_TRADES: Object, var_LIFETIME_TOTAL_TRADES_BUY: Object, var_LIFETIME_TOTAL_TRADES_SELL: Object, var_LIFETIME_TOTAL_TRADES_UNKNOWN: Object, var_LIFETIME_VOLUME: Object, var_LIFETIME_VOLUME_BUY: Object, var_LIFETIME_VOLUME_SELL: Object, var_LIFETIME_VOLUME_UNKNOWN: Object, var_MAPPED_INSTRUMENT: Object, var_MARKET: Object, var_MOVING_180_DAY_HIGH: Object, var_MOVING_180_DAY_LOW: Object, var_MOVING_180_DAY_OPEN: Object, var_MOVING_180_DAY_QUOTE_VOLUME: Object, var_MOVING_180_DAY_QUOTE_VOLUME_BUY: Object, var_MOVING_180_DAY_QUOTE_VOLUME_SELL: Object, var_MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_180_DAY_TOTAL_TRADES: Object, var_MOVING_180_DAY_TOTAL_TRADES_BUY: Object, var_MOVING_180_DAY_TOTAL_TRADES_SELL: Object, var_MOVING_180_DAY_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_180_DAY_VOLUME: Object, var_MOVING_180_DAY_VOLUME_BUY: Object, var_MOVING_180_DAY_VOLUME_SELL: Object, var_MOVING_180_DAY_VOLUME_UNKNOWN: Object, var_MOVING_24_HOUR_HIGH: Object, var_MOVING_24_HOUR_LOW: Object, var_MOVING_24_HOUR_OPEN: Object, var_MOVING_24_HOUR_QUOTE_VOLUME: Object, var_MOVING_24_HOUR_QUOTE_VOLUME_BUY: Object, var_MOVING_24_HOUR_QUOTE_VOLUME_SELL: Object, var_MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_24_HOUR_TOTAL_TRADES: Object, var_MOVING_24_HOUR_TOTAL_TRADES_BUY: Object, var_MOVING_24_HOUR_TOTAL_TRADES_SELL: Object, var_MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_24_HOUR_VOLUME: Object, var_MOVING_24_HOUR_VOLUME_BUY: Object, var_MOVING_24_HOUR_VOLUME_SELL: Object, var_MOVING_24_HOUR_VOLUME_UNKNOWN: Object, var_MOVING_30_DAY_HIGH: Object, var_MOVING_30_DAY_LOW: Object, var_MOVING_30_DAY_OPEN: Object, var_MOVING_30_DAY_QUOTE_VOLUME: Object, var_MOVING_30_DAY_QUOTE_VOLUME_BUY: Object, var_MOVING_30_DAY_QUOTE_VOLUME_SELL: Object, var_MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_30_DAY_TOTAL_TRADES: Object, var_MOVING_30_DAY_TOTAL_TRADES_BUY: Object, var_MOVING_30_DAY_TOTAL_TRADES_SELL: Object, var_MOVING_30_DAY_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_30_DAY_VOLUME: Object, var_MOVING_30_DAY_VOLUME_BUY: Object, var_MOVING_30_DAY_VOLUME_SELL: Object, var_MOVING_30_DAY_VOLUME_UNKNOWN: Object, var_MOVING_365_DAY_HIGH: Object, var_MOVING_365_DAY_LOW: Object, var_MOVING_365_DAY_OPEN: Object, var_MOVING_365_DAY_QUOTE_VOLUME: Object, var_MOVING_365_DAY_QUOTE_VOLUME_BUY: Object, var_MOVING_365_DAY_QUOTE_VOLUME_SELL: Object, var_MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_365_DAY_TOTAL_TRADES: Object, var_MOVING_365_DAY_TOTAL_TRADES_BUY: Object, var_MOVING_365_DAY_TOTAL_TRADES_SELL: Object, var_MOVING_365_DAY_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_365_DAY_VOLUME: Object, var_MOVING_365_DAY_VOLUME_BUY: Object, var_MOVING_365_DAY_VOLUME_SELL: Object, var_MOVING_365_DAY_VOLUME_UNKNOWN: Object, var_MOVING_7_DAY_HIGH: Object, var_MOVING_7_DAY_LOW: Object, var_MOVING_7_DAY_OPEN: Object, var_MOVING_7_DAY_QUOTE_VOLUME: Object, var_MOVING_7_DAY_QUOTE_VOLUME_BUY: Object, var_MOVING_7_DAY_QUOTE_VOLUME_SELL: Object, var_MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_7_DAY_TOTAL_TRADES: Object, var_MOVING_7_DAY_TOTAL_TRADES_BUY: Object, var_MOVING_7_DAY_TOTAL_TRADES_SELL: Object, var_MOVING_7_DAY_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_7_DAY_VOLUME: Object, var_MOVING_7_DAY_VOLUME_BUY: Object, var_MOVING_7_DAY_VOLUME_SELL: Object, var_MOVING_7_DAY_VOLUME_UNKNOWN: Object, var_MOVING_90_DAY_HIGH: Object, var_MOVING_90_DAY_LOW: Object, var_MOVING_90_DAY_OPEN: Object, var_MOVING_90_DAY_QUOTE_VOLUME: Object, var_MOVING_90_DAY_QUOTE_VOLUME_BUY: Object, var_MOVING_90_DAY_QUOTE_VOLUME_SELL: Object, var_MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN: Object, var_MOVING_90_DAY_TOTAL_TRADES: Object, var_MOVING_90_DAY_TOTAL_TRADES_BUY: Object, var_MOVING_90_DAY_TOTAL_TRADES_SELL: Object, var_MOVING_90_DAY_TOTAL_TRADES_UNKNOWN: Object, var_MOVING_90_DAY_VOLUME: Object, var_MOVING_90_DAY_VOLUME_BUY: Object, var_MOVING_90_DAY_VOLUME_SELL: Object, var_MOVING_90_DAY_VOLUME_UNKNOWN: Object, var_PRICE: Object, var_PRICE_FLAG: Object, var_PRICE_LAST_UPDATE_TS: Object, var_QUOTE: Object, var_TOP_ASK_LAST_UPDATE_TS: Object, var_TOP_ASK_PRICE: Object, var_TOP_ASK_QUANTITY: Object, var_TOP_BID_LAST_UPDATE_TS: Object, var_TOP_BID_PRICE: Object, var_TOP_BID_QUANTITY: Object, var_TYPE: Object) =
        s"""
        | {
        | "BASE":$var_BASE,"CCSEQ":$var_CCSEQ,"CURRENT_DAY_HIGH":$var_CURRENT_DAY_HIGH,"CURRENT_DAY_LOW":$var_CURRENT_DAY_LOW,"CURRENT_DAY_OPEN":$var_CURRENT_DAY_OPEN,"CURRENT_DAY_QUOTE_VOLUME":$var_CURRENT_DAY_QUOTE_VOLUME,"CURRENT_DAY_QUOTE_VOLUME_BUY":$var_CURRENT_DAY_QUOTE_VOLUME_BUY,"CURRENT_DAY_QUOTE_VOLUME_SELL":$var_CURRENT_DAY_QUOTE_VOLUME_SELL,"CURRENT_DAY_QUOTE_VOLUME_UNKNOWN":$var_CURRENT_DAY_QUOTE_VOLUME_UNKNOWN,"CURRENT_DAY_TOTAL_TRADES":$var_CURRENT_DAY_TOTAL_TRADES,"CURRENT_DAY_TOTAL_TRADES_BUY":$var_CURRENT_DAY_TOTAL_TRADES_BUY,"CURRENT_DAY_TOTAL_TRADES_SELL":$var_CURRENT_DAY_TOTAL_TRADES_SELL,"CURRENT_DAY_TOTAL_TRADES_UNKNOWN":$var_CURRENT_DAY_TOTAL_TRADES_UNKNOWN,"CURRENT_DAY_VOLUME":$var_CURRENT_DAY_VOLUME,"CURRENT_DAY_VOLUME_BUY":$var_CURRENT_DAY_VOLUME_BUY,"CURRENT_DAY_VOLUME_SELL":$var_CURRENT_DAY_VOLUME_SELL,"CURRENT_DAY_VOLUME_UNKNOWN":$var_CURRENT_DAY_VOLUME_UNKNOWN,"CURRENT_HOUR_HIGH":$var_CURRENT_HOUR_HIGH,"CURRENT_HOUR_LOW":$var_CURRENT_HOUR_LOW,"CURRENT_HOUR_OPEN":$var_CURRENT_HOUR_OPEN,"CURRENT_HOUR_QUOTE_VOLUME":$var_CURRENT_HOUR_QUOTE_VOLUME,"CURRENT_HOUR_QUOTE_VOLUME_BUY":$var_CURRENT_HOUR_QUOTE_VOLUME_BUY,"CURRENT_HOUR_QUOTE_VOLUME_SELL":$var_CURRENT_HOUR_QUOTE_VOLUME_SELL,"CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN":$var_CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN,"CURRENT_HOUR_TOTAL_TRADES":$var_CURRENT_HOUR_TOTAL_TRADES,"CURRENT_HOUR_TOTAL_TRADES_BUY":$var_CURRENT_HOUR_TOTAL_TRADES_BUY,"CURRENT_HOUR_TOTAL_TRADES_SELL":$var_CURRENT_HOUR_TOTAL_TRADES_SELL,"CURRENT_HOUR_TOTAL_TRADES_UNKNOWN":$var_CURRENT_HOUR_TOTAL_TRADES_UNKNOWN,"CURRENT_HOUR_VOLUME":$var_CURRENT_HOUR_VOLUME,"CURRENT_HOUR_VOLUME_BUY":$var_CURRENT_HOUR_VOLUME_BUY,"CURRENT_HOUR_VOLUME_SELL":$var_CURRENT_HOUR_VOLUME_SELL,"CURRENT_HOUR_VOLUME_UNKNOWN":$var_CURRENT_HOUR_VOLUME_UNKNOWN,"CURRENT_MONTH_HIGH":$var_CURRENT_MONTH_HIGH,"CURRENT_MONTH_LOW":$var_CURRENT_MONTH_LOW,"CURRENT_MONTH_OPEN":$var_CURRENT_MONTH_OPEN,"CURRENT_MONTH_QUOTE_VOLUME":$var_CURRENT_MONTH_QUOTE_VOLUME,"CURRENT_MONTH_QUOTE_VOLUME_BUY":$var_CURRENT_MONTH_QUOTE_VOLUME_BUY,"CURRENT_MONTH_QUOTE_VOLUME_SELL":$var_CURRENT_MONTH_QUOTE_VOLUME_SELL,"CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN":$var_CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN,"CURRENT_MONTH_TOTAL_TRADES":$var_CURRENT_MONTH_TOTAL_TRADES,"CURRENT_MONTH_TOTAL_TRADES_BUY":$var_CURRENT_MONTH_TOTAL_TRADES_BUY,"CURRENT_MONTH_TOTAL_TRADES_SELL":$var_CURRENT_MONTH_TOTAL_TRADES_SELL,"CURRENT_MONTH_TOTAL_TRADES_UNKNOWN":$var_CURRENT_MONTH_TOTAL_TRADES_UNKNOWN,"CURRENT_MONTH_VOLUME":$var_CURRENT_MONTH_VOLUME,"CURRENT_MONTH_VOLUME_BUY":$var_CURRENT_MONTH_VOLUME_BUY,"CURRENT_MONTH_VOLUME_SELL":$var_CURRENT_MONTH_VOLUME_SELL,"CURRENT_MONTH_VOLUME_UNKNOWN":$var_CURRENT_MONTH_VOLUME_UNKNOWN,"CURRENT_WEEK_HIGH":$var_CURRENT_WEEK_HIGH,"CURRENT_WEEK_LOW":$var_CURRENT_WEEK_LOW,"CURRENT_WEEK_OPEN":$var_CURRENT_WEEK_OPEN,"CURRENT_WEEK_QUOTE_VOLUME":$var_CURRENT_WEEK_QUOTE_VOLUME,"CURRENT_WEEK_QUOTE_VOLUME_BUY":$var_CURRENT_WEEK_QUOTE_VOLUME_BUY,"CURRENT_WEEK_QUOTE_VOLUME_SELL":$var_CURRENT_WEEK_QUOTE_VOLUME_SELL,"CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN":$var_CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN,"CURRENT_WEEK_TOTAL_TRADES":$var_CURRENT_WEEK_TOTAL_TRADES,"CURRENT_WEEK_TOTAL_TRADES_BUY":$var_CURRENT_WEEK_TOTAL_TRADES_BUY,"CURRENT_WEEK_TOTAL_TRADES_SELL":$var_CURRENT_WEEK_TOTAL_TRADES_SELL,"CURRENT_WEEK_TOTAL_TRADES_UNKNOWN":$var_CURRENT_WEEK_TOTAL_TRADES_UNKNOWN,"CURRENT_WEEK_VOLUME":$var_CURRENT_WEEK_VOLUME,"CURRENT_WEEK_VOLUME_BUY":$var_CURRENT_WEEK_VOLUME_BUY,"CURRENT_WEEK_VOLUME_SELL":$var_CURRENT_WEEK_VOLUME_SELL,"CURRENT_WEEK_VOLUME_UNKNOWN":$var_CURRENT_WEEK_VOLUME_UNKNOWN,"CURRENT_YEAR_HIGH":$var_CURRENT_YEAR_HIGH,"CURRENT_YEAR_LOW":$var_CURRENT_YEAR_LOW,"CURRENT_YEAR_OPEN":$var_CURRENT_YEAR_OPEN,"CURRENT_YEAR_QUOTE_VOLUME":$var_CURRENT_YEAR_QUOTE_VOLUME,"CURRENT_YEAR_QUOTE_VOLUME_BUY":$var_CURRENT_YEAR_QUOTE_VOLUME_BUY,"CURRENT_YEAR_QUOTE_VOLUME_SELL":$var_CURRENT_YEAR_QUOTE_VOLUME_SELL,"CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN":$var_CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN,"CURRENT_YEAR_TOTAL_TRADES":$var_CURRENT_YEAR_TOTAL_TRADES,"CURRENT_YEAR_TOTAL_TRADES_BUY":$var_CURRENT_YEAR_TOTAL_TRADES_BUY,"CURRENT_YEAR_TOTAL_TRADES_SELL":$var_CURRENT_YEAR_TOTAL_TRADES_SELL,"CURRENT_YEAR_TOTAL_TRADES_UNKNOWN":$var_CURRENT_YEAR_TOTAL_TRADES_UNKNOWN,"CURRENT_YEAR_VOLUME":$var_CURRENT_YEAR_VOLUME,"CURRENT_YEAR_VOLUME_BUY":$var_CURRENT_YEAR_VOLUME_BUY,"CURRENT_YEAR_VOLUME_SELL":$var_CURRENT_YEAR_VOLUME_SELL,"CURRENT_YEAR_VOLUME_UNKNOWN":$var_CURRENT_YEAR_VOLUME_UNKNOWN,"INSTRUMENT":$var_INSTRUMENT,"LAST_PROCESSED_TRADE_CCSEQ":$var_LAST_PROCESSED_TRADE_CCSEQ,"LAST_PROCESSED_TRADE_PRICE":$var_LAST_PROCESSED_TRADE_PRICE,"LAST_PROCESSED_TRADE_QUANTITY":$var_LAST_PROCESSED_TRADE_QUANTITY,"LAST_PROCESSED_TRADE_QUOTE_QUANTITY":$var_LAST_PROCESSED_TRADE_QUOTE_QUANTITY,"LAST_PROCESSED_TRADE_SIDE":$var_LAST_PROCESSED_TRADE_SIDE,"LAST_PROCESSED_TRADE_TS":$var_LAST_PROCESSED_TRADE_TS,"LAST_TRADE_CCSEQ":$var_LAST_TRADE_CCSEQ,"LAST_TRADE_ID":$var_LAST_TRADE_ID,"LAST_TRADE_QUANTITY":$var_LAST_TRADE_QUANTITY,"LAST_TRADE_QUOTE_QUANTITY":$var_LAST_TRADE_QUOTE_QUANTITY,"LAST_TRADE_SIDE":$var_LAST_TRADE_SIDE,"LIFETIME_FIRST_TRADE_TS":$var_LIFETIME_FIRST_TRADE_TS,"LIFETIME_HIGH":$var_LIFETIME_HIGH,"LIFETIME_HIGH_TS":$var_LIFETIME_HIGH_TS,"LIFETIME_LOW":$var_LIFETIME_LOW,"LIFETIME_LOW_TS":$var_LIFETIME_LOW_TS,"LIFETIME_OPEN":$var_LIFETIME_OPEN,"LIFETIME_QUOTE_VOLUME":$var_LIFETIME_QUOTE_VOLUME,"LIFETIME_QUOTE_VOLUME_BUY":$var_LIFETIME_QUOTE_VOLUME_BUY,"LIFETIME_QUOTE_VOLUME_SELL":$var_LIFETIME_QUOTE_VOLUME_SELL,"LIFETIME_QUOTE_VOLUME_UNKNOWN":$var_LIFETIME_QUOTE_VOLUME_UNKNOWN,"LIFETIME_TOTAL_TRADES":$var_LIFETIME_TOTAL_TRADES,"LIFETIME_TOTAL_TRADES_BUY":$var_LIFETIME_TOTAL_TRADES_BUY,"LIFETIME_TOTAL_TRADES_SELL":$var_LIFETIME_TOTAL_TRADES_SELL,"LIFETIME_TOTAL_TRADES_UNKNOWN":$var_LIFETIME_TOTAL_TRADES_UNKNOWN,"LIFETIME_VOLUME":$var_LIFETIME_VOLUME,"LIFETIME_VOLUME_BUY":$var_LIFETIME_VOLUME_BUY,"LIFETIME_VOLUME_SELL":$var_LIFETIME_VOLUME_SELL,"LIFETIME_VOLUME_UNKNOWN":$var_LIFETIME_VOLUME_UNKNOWN,"MAPPED_INSTRUMENT":$var_MAPPED_INSTRUMENT,"MARKET":$var_MARKET,"MOVING_180_DAY_HIGH":$var_MOVING_180_DAY_HIGH,"MOVING_180_DAY_LOW":$var_MOVING_180_DAY_LOW,"MOVING_180_DAY_OPEN":$var_MOVING_180_DAY_OPEN,"MOVING_180_DAY_QUOTE_VOLUME":$var_MOVING_180_DAY_QUOTE_VOLUME,"MOVING_180_DAY_QUOTE_VOLUME_BUY":$var_MOVING_180_DAY_QUOTE_VOLUME_BUY,"MOVING_180_DAY_QUOTE_VOLUME_SELL":$var_MOVING_180_DAY_QUOTE_VOLUME_SELL,"MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN":$var_MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN,"MOVING_180_DAY_TOTAL_TRADES":$var_MOVING_180_DAY_TOTAL_TRADES,"MOVING_180_DAY_TOTAL_TRADES_BUY":$var_MOVING_180_DAY_TOTAL_TRADES_BUY,"MOVING_180_DAY_TOTAL_TRADES_SELL":$var_MOVING_180_DAY_TOTAL_TRADES_SELL,"MOVING_180_DAY_TOTAL_TRADES_UNKNOWN":$var_MOVING_180_DAY_TOTAL_TRADES_UNKNOWN,"MOVING_180_DAY_VOLUME":$var_MOVING_180_DAY_VOLUME,"MOVING_180_DAY_VOLUME_BUY":$var_MOVING_180_DAY_VOLUME_BUY,"MOVING_180_DAY_VOLUME_SELL":$var_MOVING_180_DAY_VOLUME_SELL,"MOVING_180_DAY_VOLUME_UNKNOWN":$var_MOVING_180_DAY_VOLUME_UNKNOWN,"MOVING_24_HOUR_HIGH":$var_MOVING_24_HOUR_HIGH,"MOVING_24_HOUR_LOW":$var_MOVING_24_HOUR_LOW,"MOVING_24_HOUR_OPEN":$var_MOVING_24_HOUR_OPEN,"MOVING_24_HOUR_QUOTE_VOLUME":$var_MOVING_24_HOUR_QUOTE_VOLUME,"MOVING_24_HOUR_QUOTE_VOLUME_BUY":$var_MOVING_24_HOUR_QUOTE_VOLUME_BUY,"MOVING_24_HOUR_QUOTE_VOLUME_SELL":$var_MOVING_24_HOUR_QUOTE_VOLUME_SELL,"MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN":$var_MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN,"MOVING_24_HOUR_TOTAL_TRADES":$var_MOVING_24_HOUR_TOTAL_TRADES,"MOVING_24_HOUR_TOTAL_TRADES_BUY":$var_MOVING_24_HOUR_TOTAL_TRADES_BUY,"MOVING_24_HOUR_TOTAL_TRADES_SELL":$var_MOVING_24_HOUR_TOTAL_TRADES_SELL,"MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN":$var_MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN,"MOVING_24_HOUR_VOLUME":$var_MOVING_24_HOUR_VOLUME,"MOVING_24_HOUR_VOLUME_BUY":$var_MOVING_24_HOUR_VOLUME_BUY,"MOVING_24_HOUR_VOLUME_SELL":$var_MOVING_24_HOUR_VOLUME_SELL,"MOVING_24_HOUR_VOLUME_UNKNOWN":$var_MOVING_24_HOUR_VOLUME_UNKNOWN,"MOVING_30_DAY_HIGH":$var_MOVING_30_DAY_HIGH,"MOVING_30_DAY_LOW":$var_MOVING_30_DAY_LOW,"MOVING_30_DAY_OPEN":$var_MOVING_30_DAY_OPEN,"MOVING_30_DAY_QUOTE_VOLUME":$var_MOVING_30_DAY_QUOTE_VOLUME,"MOVING_30_DAY_QUOTE_VOLUME_BUY":$var_MOVING_30_DAY_QUOTE_VOLUME_BUY,"MOVING_30_DAY_QUOTE_VOLUME_SELL":$var_MOVING_30_DAY_QUOTE_VOLUME_SELL,"MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN":$var_MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN,"MOVING_30_DAY_TOTAL_TRADES":$var_MOVING_30_DAY_TOTAL_TRADES,"MOVING_30_DAY_TOTAL_TRADES_BUY":$var_MOVING_30_DAY_TOTAL_TRADES_BUY,"MOVING_30_DAY_TOTAL_TRADES_SELL":$var_MOVING_30_DAY_TOTAL_TRADES_SELL,"MOVING_30_DAY_TOTAL_TRADES_UNKNOWN":$var_MOVING_30_DAY_TOTAL_TRADES_UNKNOWN,"MOVING_30_DAY_VOLUME":$var_MOVING_30_DAY_VOLUME,"MOVING_30_DAY_VOLUME_BUY":$var_MOVING_30_DAY_VOLUME_BUY,"MOVING_30_DAY_VOLUME_SELL":$var_MOVING_30_DAY_VOLUME_SELL,"MOVING_30_DAY_VOLUME_UNKNOWN":$var_MOVING_30_DAY_VOLUME_UNKNOWN,"MOVING_365_DAY_HIGH":$var_MOVING_365_DAY_HIGH,"MOVING_365_DAY_LOW":$var_MOVING_365_DAY_LOW,"MOVING_365_DAY_OPEN":$var_MOVING_365_DAY_OPEN,"MOVING_365_DAY_QUOTE_VOLUME":$var_MOVING_365_DAY_QUOTE_VOLUME,"MOVING_365_DAY_QUOTE_VOLUME_BUY":$var_MOVING_365_DAY_QUOTE_VOLUME_BUY,"MOVING_365_DAY_QUOTE_VOLUME_SELL":$var_MOVING_365_DAY_QUOTE_VOLUME_SELL,"MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN":$var_MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN,"MOVING_365_DAY_TOTAL_TRADES":$var_MOVING_365_DAY_TOTAL_TRADES,"MOVING_365_DAY_TOTAL_TRADES_BUY":$var_MOVING_365_DAY_TOTAL_TRADES_BUY,"MOVING_365_DAY_TOTAL_TRADES_SELL":$var_MOVING_365_DAY_TOTAL_TRADES_SELL,"MOVING_365_DAY_TOTAL_TRADES_UNKNOWN":$var_MOVING_365_DAY_TOTAL_TRADES_UNKNOWN,"MOVING_365_DAY_VOLUME":$var_MOVING_365_DAY_VOLUME,"MOVING_365_DAY_VOLUME_BUY":$var_MOVING_365_DAY_VOLUME_BUY,"MOVING_365_DAY_VOLUME_SELL":$var_MOVING_365_DAY_VOLUME_SELL,"MOVING_365_DAY_VOLUME_UNKNOWN":$var_MOVING_365_DAY_VOLUME_UNKNOWN,"MOVING_7_DAY_HIGH":$var_MOVING_7_DAY_HIGH,"MOVING_7_DAY_LOW":$var_MOVING_7_DAY_LOW,"MOVING_7_DAY_OPEN":$var_MOVING_7_DAY_OPEN,"MOVING_7_DAY_QUOTE_VOLUME":$var_MOVING_7_DAY_QUOTE_VOLUME,"MOVING_7_DAY_QUOTE_VOLUME_BUY":$var_MOVING_7_DAY_QUOTE_VOLUME_BUY,"MOVING_7_DAY_QUOTE_VOLUME_SELL":$var_MOVING_7_DAY_QUOTE_VOLUME_SELL,"MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN":$var_MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN,"MOVING_7_DAY_TOTAL_TRADES":$var_MOVING_7_DAY_TOTAL_TRADES,"MOVING_7_DAY_TOTAL_TRADES_BUY":$var_MOVING_7_DAY_TOTAL_TRADES_BUY,"MOVING_7_DAY_TOTAL_TRADES_SELL":$var_MOVING_7_DAY_TOTAL_TRADES_SELL,"MOVING_7_DAY_TOTAL_TRADES_UNKNOWN":$var_MOVING_7_DAY_TOTAL_TRADES_UNKNOWN,"MOVING_7_DAY_VOLUME":$var_MOVING_7_DAY_VOLUME,"MOVING_7_DAY_VOLUME_BUY":$var_MOVING_7_DAY_VOLUME_BUY,"MOVING_7_DAY_VOLUME_SELL":$var_MOVING_7_DAY_VOLUME_SELL,"MOVING_7_DAY_VOLUME_UNKNOWN":$var_MOVING_7_DAY_VOLUME_UNKNOWN,"MOVING_90_DAY_HIGH":$var_MOVING_90_DAY_HIGH,"MOVING_90_DAY_LOW":$var_MOVING_90_DAY_LOW,"MOVING_90_DAY_OPEN":$var_MOVING_90_DAY_OPEN,"MOVING_90_DAY_QUOTE_VOLUME":$var_MOVING_90_DAY_QUOTE_VOLUME,"MOVING_90_DAY_QUOTE_VOLUME_BUY":$var_MOVING_90_DAY_QUOTE_VOLUME_BUY,"MOVING_90_DAY_QUOTE_VOLUME_SELL":$var_MOVING_90_DAY_QUOTE_VOLUME_SELL,"MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN":$var_MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN,"MOVING_90_DAY_TOTAL_TRADES":$var_MOVING_90_DAY_TOTAL_TRADES,"MOVING_90_DAY_TOTAL_TRADES_BUY":$var_MOVING_90_DAY_TOTAL_TRADES_BUY,"MOVING_90_DAY_TOTAL_TRADES_SELL":$var_MOVING_90_DAY_TOTAL_TRADES_SELL,"MOVING_90_DAY_TOTAL_TRADES_UNKNOWN":$var_MOVING_90_DAY_TOTAL_TRADES_UNKNOWN,"MOVING_90_DAY_VOLUME":$var_MOVING_90_DAY_VOLUME,"MOVING_90_DAY_VOLUME_BUY":$var_MOVING_90_DAY_VOLUME_BUY,"MOVING_90_DAY_VOLUME_SELL":$var_MOVING_90_DAY_VOLUME_SELL,"MOVING_90_DAY_VOLUME_UNKNOWN":$var_MOVING_90_DAY_VOLUME_UNKNOWN,"PRICE":$var_PRICE,"PRICE_FLAG":$var_PRICE_FLAG,"PRICE_LAST_UPDATE_TS":$var_PRICE_LAST_UPDATE_TS,"QUOTE":$var_QUOTE,"TOP_ASK_LAST_UPDATE_TS":$var_TOP_ASK_LAST_UPDATE_TS,"TOP_ASK_PRICE":$var_TOP_ASK_PRICE,"TOP_ASK_QUANTITY":$var_TOP_ASK_QUANTITY,"TOP_BID_LAST_UPDATE_TS":$var_TOP_BID_LAST_UPDATE_TS,"TOP_BID_PRICE":$var_TOP_BID_PRICE,"TOP_BID_QUANTITY":$var_TOP_BID_QUANTITY,"TYPE":$var_TYPE
        | }
        """.stripMargin
}
