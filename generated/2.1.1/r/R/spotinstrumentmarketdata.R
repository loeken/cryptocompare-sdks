#' Create a new SPOTINSTRUMENTMARKETDATA
#'
#' @description
#' SPOTINSTRUMENTMARKETDATA Class
#'
#' @docType class
#' @title SPOTINSTRUMENTMARKETDATA
#' @description SPOTINSTRUMENTMARKETDATA Class
#' @format An \code{R6Class} generator object
#' @field BASE The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped. character [optional]
#' @field CCSEQ Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send. integer [optional]
#' @field CURRENT_DAY_HIGH The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_LOW The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_OPEN The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_QUOTE_VOLUME The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. integer [optional]
#' @field CURRENT_DAY_TOTAL_TRADES The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC). integer [optional]
#' @field CURRENT_DAY_TOTAL_TRADES_BUY The total number of buy trades since the start of the current day (00:00:00 GMT/UTC). integer [optional]
#' @field CURRENT_DAY_TOTAL_TRADES_SELL The total number of sell trades since the start of the current day (00:00:00 GMT/UTC). integer [optional]
#' @field CURRENT_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC). integer [optional]
#' @field CURRENT_DAY_VOLUME The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. integer [optional]
#' @field CURRENT_DAY_VOLUME_BUY The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. integer [optional]
#' @field CURRENT_DAY_VOLUME_SELL The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. integer [optional]
#' @field CURRENT_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. integer [optional]
#' @field CURRENT_HOUR_HIGH The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_LOW The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_OPEN The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_QUOTE_VOLUME The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset. integer [optional]
#' @field CURRENT_HOUR_TOTAL_TRADES The total number of trades that have occurred since the start of the current hour. integer [optional]
#' @field CURRENT_HOUR_TOTAL_TRADES_BUY The total number of buy trades since the start of the current hour. integer [optional]
#' @field CURRENT_HOUR_TOTAL_TRADES_SELL The total number of sell trades since the start of the current hour. integer [optional]
#' @field CURRENT_HOUR_TOTAL_TRADES_UNKNOWN The total number of unknown trades since the start of the current hour. integer [optional]
#' @field CURRENT_HOUR_VOLUME The sum of all trade quantities from the start of the current hour until now. Given in the base asset. integer [optional]
#' @field CURRENT_HOUR_VOLUME_BUY The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset. integer [optional]
#' @field CURRENT_HOUR_VOLUME_SELL The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset. integer [optional]
#' @field CURRENT_HOUR_VOLUME_UNKNOWN The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset. integer [optional]
#' @field CURRENT_MONTH_HIGH The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_LOW The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_OPEN The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_QUOTE_VOLUME The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_MONTH_TOTAL_TRADES The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. integer [optional]
#' @field CURRENT_MONTH_TOTAL_TRADES_BUY The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. integer [optional]
#' @field CURRENT_MONTH_TOTAL_TRADES_SELL The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. integer [optional]
#' @field CURRENT_MONTH_TOTAL_TRADES_UNKNOWN The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. integer [optional]
#' @field CURRENT_MONTH_VOLUME The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_MONTH_VOLUME_BUY The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_MONTH_VOLUME_SELL The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_MONTH_VOLUME_UNKNOWN The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_WEEK_HIGH The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_LOW The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_OPEN The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_QUOTE_VOLUME The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_WEEK_TOTAL_TRADES The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. integer [optional]
#' @field CURRENT_WEEK_TOTAL_TRADES_BUY The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. integer [optional]
#' @field CURRENT_WEEK_TOTAL_TRADES_SELL The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. integer [optional]
#' @field CURRENT_WEEK_TOTAL_TRADES_UNKNOWN The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. integer [optional]
#' @field CURRENT_WEEK_VOLUME The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_WEEK_VOLUME_BUY The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_WEEK_VOLUME_SELL The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_WEEK_VOLUME_UNKNOWN The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_YEAR_HIGH The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_LOW The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_OPEN The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_QUOTE_VOLUME The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. integer [optional]
#' @field CURRENT_YEAR_TOTAL_TRADES The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. integer [optional]
#' @field CURRENT_YEAR_TOTAL_TRADES_BUY The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. integer [optional]
#' @field CURRENT_YEAR_TOTAL_TRADES_SELL The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. integer [optional]
#' @field CURRENT_YEAR_TOTAL_TRADES_UNKNOWN The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. integer [optional]
#' @field CURRENT_YEAR_VOLUME The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_YEAR_VOLUME_BUY The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_YEAR_VOLUME_SELL The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. integer [optional]
#' @field CURRENT_YEAR_VOLUME_UNKNOWN The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. integer [optional]
#' @field INSTRUMENT The unmapped instrument ID character [optional]
#' @field LAST_PROCESSED_TRADE_CCSEQ The CCSEQ of the latest trade. character [optional]
#' @field LAST_PROCESSED_TRADE_PRICE The price in the quote asset of the last trade processed, as reported by the market / exchange. integer [optional]
#' @field LAST_PROCESSED_TRADE_QUANTITY The quantity of the last processed trade in the from symbol (base / coin). integer [optional]
#' @field LAST_PROCESSED_TRADE_QUOTE_QUANTITY The  volume of the last processed trade in the to asset / quote. integer [optional]
#' @field LAST_PROCESSED_TRADE_SIDE The side of the last processed trade. character [optional]
#' @field LAST_PROCESSED_TRADE_TS The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned. integer [optional]
#' @field LAST_TRADE_CCSEQ The CCSEQ of the latest trade. character [optional]
#' @field LAST_TRADE_ID The ID of the latest trade. character [optional]
#' @field LAST_TRADE_QUANTITY The quantity of the latest trade in the from symbol (base / coin). integer [optional]
#' @field LAST_TRADE_QUOTE_QUANTITY The volume of the latest trade in the to asset / quote. integer [optional]
#' @field LAST_TRADE_SIDE The side of the latest trade. character [optional]
#' @field LIFETIME_FIRST_TRADE_TS The timestamp of the first trade ever recorded for the instrument integer [optional]
#' @field LIFETIME_HIGH The price of the highest trade ever executed for this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_HIGH_TS The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_LOW The price of the lowest trade ever executed for this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_LOW_TS The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_OPEN The price of the first trade of the instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_QUOTE_VOLUME The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset. integer [optional]
#' @field LIFETIME_TOTAL_TRADES The total number of all trades that have ever been executed for this instrument. integer [optional]
#' @field LIFETIME_TOTAL_TRADES_BUY The total number of all buy trades that have ever been executed for this instrument. integer [optional]
#' @field LIFETIME_TOTAL_TRADES_SELL The total number of all sell trades that have ever been executed for this instrument. integer [optional]
#' @field LIFETIME_TOTAL_TRADES_UNKNOWN The total number of all unknown trades that have ever been executed for this instrument. integer [optional]
#' @field LIFETIME_VOLUME The sum of all trade quantities of all the trades of this instrument. Given in the base asset. integer [optional]
#' @field LIFETIME_VOLUME_BUY The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset. integer [optional]
#' @field LIFETIME_VOLUME_SELL The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset. integer [optional]
#' @field LIFETIME_VOLUME_UNKNOWN The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset. integer [optional]
#' @field MAPPED_INSTRUMENT The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. character [optional]
#' @field MARKET The market / exchange under consideration (e.g. coinbase, kraken, etc). character [optional]
#' @field MOVING_180_DAY_HIGH The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_LOW The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_OPEN The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_180_DAY_TOTAL_TRADES The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). integer [optional]
#' @field MOVING_180_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). integer [optional]
#' @field MOVING_180_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). integer [optional]
#' @field MOVING_180_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). integer [optional]
#' @field MOVING_180_DAY_VOLUME The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. integer [optional]
#' @field MOVING_180_DAY_VOLUME_BUY The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. integer [optional]
#' @field MOVING_180_DAY_VOLUME_SELL The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. integer [optional]
#' @field MOVING_180_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. integer [optional]
#' @field MOVING_24_HOUR_HIGH The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_LOW The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_OPEN The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_QUOTE_VOLUME The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. integer [optional]
#' @field MOVING_24_HOUR_TOTAL_TRADES The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). integer [optional]
#' @field MOVING_24_HOUR_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). integer [optional]
#' @field MOVING_24_HOUR_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). integer [optional]
#' @field MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). integer [optional]
#' @field MOVING_24_HOUR_VOLUME The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. integer [optional]
#' @field MOVING_24_HOUR_VOLUME_BUY The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. integer [optional]
#' @field MOVING_24_HOUR_VOLUME_SELL The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. integer [optional]
#' @field MOVING_24_HOUR_VOLUME_UNKNOWN The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. integer [optional]
#' @field MOVING_30_DAY_HIGH The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_LOW The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_OPEN The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_30_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). integer [optional]
#' @field MOVING_30_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). integer [optional]
#' @field MOVING_30_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). integer [optional]
#' @field MOVING_30_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). integer [optional]
#' @field MOVING_30_DAY_VOLUME The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. integer [optional]
#' @field MOVING_30_DAY_VOLUME_BUY The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. integer [optional]
#' @field MOVING_30_DAY_VOLUME_SELL The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. integer [optional]
#' @field MOVING_30_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. integer [optional]
#' @field MOVING_365_DAY_HIGH The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_LOW The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_OPEN The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_365_DAY_TOTAL_TRADES The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). integer [optional]
#' @field MOVING_365_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). integer [optional]
#' @field MOVING_365_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). integer [optional]
#' @field MOVING_365_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). integer [optional]
#' @field MOVING_365_DAY_VOLUME The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. integer [optional]
#' @field MOVING_365_DAY_VOLUME_BUY The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. integer [optional]
#' @field MOVING_365_DAY_VOLUME_SELL The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. integer [optional]
#' @field MOVING_365_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. integer [optional]
#' @field MOVING_7_DAY_HIGH The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_LOW The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_OPEN The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_7_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). integer [optional]
#' @field MOVING_7_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). integer [optional]
#' @field MOVING_7_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). integer [optional]
#' @field MOVING_7_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). integer [optional]
#' @field MOVING_7_DAY_VOLUME The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. integer [optional]
#' @field MOVING_7_DAY_VOLUME_BUY The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. integer [optional]
#' @field MOVING_7_DAY_VOLUME_SELL The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. integer [optional]
#' @field MOVING_7_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. integer [optional]
#' @field MOVING_90_DAY_HIGH The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_LOW The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_OPEN The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. integer [optional]
#' @field MOVING_90_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). integer [optional]
#' @field MOVING_90_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). integer [optional]
#' @field MOVING_90_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). integer [optional]
#' @field MOVING_90_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). integer [optional]
#' @field MOVING_90_DAY_VOLUME The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. integer [optional]
#' @field MOVING_90_DAY_VOLUME_BUY The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. integer [optional]
#' @field MOVING_90_DAY_VOLUME_SELL The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. integer [optional]
#' @field MOVING_90_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. integer [optional]
#' @field PRICE The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD). integer [optional]
#' @field PRICE_FLAG The flag indicating whether the price has increased, decreased, or not changed character [optional]
#' @field PRICE_LAST_UPDATE_TS The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned. integer [optional]
#' @field QUOTE The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped. character [optional]
#' @field TOP_ASK_LAST_UPDATE_TS The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. integer [optional]
#' @field TOP_ASK_PRICE The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC. integer [optional]
#' @field TOP_ASK_QUANTITY The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price. integer [optional]
#' @field TOP_BID_LAST_UPDATE_TS The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. integer [optional]
#' @field TOP_BID_PRICE The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC. integer [optional]
#' @field TOP_BID_QUANTITY The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price. integer [optional]
#' @field TYPE The type of the message. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTMARKETDATA <- R6::R6Class(
  "SPOTINSTRUMENTMARKETDATA",
  public = list(
    `BASE` = NULL,
    `CCSEQ` = NULL,
    `CURRENT_DAY_HIGH` = NULL,
    `CURRENT_DAY_LOW` = NULL,
    `CURRENT_DAY_OPEN` = NULL,
    `CURRENT_DAY_QUOTE_VOLUME` = NULL,
    `CURRENT_DAY_QUOTE_VOLUME_BUY` = NULL,
    `CURRENT_DAY_QUOTE_VOLUME_SELL` = NULL,
    `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `CURRENT_DAY_TOTAL_TRADES` = NULL,
    `CURRENT_DAY_TOTAL_TRADES_BUY` = NULL,
    `CURRENT_DAY_TOTAL_TRADES_SELL` = NULL,
    `CURRENT_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `CURRENT_DAY_VOLUME` = NULL,
    `CURRENT_DAY_VOLUME_BUY` = NULL,
    `CURRENT_DAY_VOLUME_SELL` = NULL,
    `CURRENT_DAY_VOLUME_UNKNOWN` = NULL,
    `CURRENT_HOUR_HIGH` = NULL,
    `CURRENT_HOUR_LOW` = NULL,
    `CURRENT_HOUR_OPEN` = NULL,
    `CURRENT_HOUR_QUOTE_VOLUME` = NULL,
    `CURRENT_HOUR_QUOTE_VOLUME_BUY` = NULL,
    `CURRENT_HOUR_QUOTE_VOLUME_SELL` = NULL,
    `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN` = NULL,
    `CURRENT_HOUR_TOTAL_TRADES` = NULL,
    `CURRENT_HOUR_TOTAL_TRADES_BUY` = NULL,
    `CURRENT_HOUR_TOTAL_TRADES_SELL` = NULL,
    `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN` = NULL,
    `CURRENT_HOUR_VOLUME` = NULL,
    `CURRENT_HOUR_VOLUME_BUY` = NULL,
    `CURRENT_HOUR_VOLUME_SELL` = NULL,
    `CURRENT_HOUR_VOLUME_UNKNOWN` = NULL,
    `CURRENT_MONTH_HIGH` = NULL,
    `CURRENT_MONTH_LOW` = NULL,
    `CURRENT_MONTH_OPEN` = NULL,
    `CURRENT_MONTH_QUOTE_VOLUME` = NULL,
    `CURRENT_MONTH_QUOTE_VOLUME_BUY` = NULL,
    `CURRENT_MONTH_QUOTE_VOLUME_SELL` = NULL,
    `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN` = NULL,
    `CURRENT_MONTH_TOTAL_TRADES` = NULL,
    `CURRENT_MONTH_TOTAL_TRADES_BUY` = NULL,
    `CURRENT_MONTH_TOTAL_TRADES_SELL` = NULL,
    `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN` = NULL,
    `CURRENT_MONTH_VOLUME` = NULL,
    `CURRENT_MONTH_VOLUME_BUY` = NULL,
    `CURRENT_MONTH_VOLUME_SELL` = NULL,
    `CURRENT_MONTH_VOLUME_UNKNOWN` = NULL,
    `CURRENT_WEEK_HIGH` = NULL,
    `CURRENT_WEEK_LOW` = NULL,
    `CURRENT_WEEK_OPEN` = NULL,
    `CURRENT_WEEK_QUOTE_VOLUME` = NULL,
    `CURRENT_WEEK_QUOTE_VOLUME_BUY` = NULL,
    `CURRENT_WEEK_QUOTE_VOLUME_SELL` = NULL,
    `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN` = NULL,
    `CURRENT_WEEK_TOTAL_TRADES` = NULL,
    `CURRENT_WEEK_TOTAL_TRADES_BUY` = NULL,
    `CURRENT_WEEK_TOTAL_TRADES_SELL` = NULL,
    `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN` = NULL,
    `CURRENT_WEEK_VOLUME` = NULL,
    `CURRENT_WEEK_VOLUME_BUY` = NULL,
    `CURRENT_WEEK_VOLUME_SELL` = NULL,
    `CURRENT_WEEK_VOLUME_UNKNOWN` = NULL,
    `CURRENT_YEAR_HIGH` = NULL,
    `CURRENT_YEAR_LOW` = NULL,
    `CURRENT_YEAR_OPEN` = NULL,
    `CURRENT_YEAR_QUOTE_VOLUME` = NULL,
    `CURRENT_YEAR_QUOTE_VOLUME_BUY` = NULL,
    `CURRENT_YEAR_QUOTE_VOLUME_SELL` = NULL,
    `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN` = NULL,
    `CURRENT_YEAR_TOTAL_TRADES` = NULL,
    `CURRENT_YEAR_TOTAL_TRADES_BUY` = NULL,
    `CURRENT_YEAR_TOTAL_TRADES_SELL` = NULL,
    `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN` = NULL,
    `CURRENT_YEAR_VOLUME` = NULL,
    `CURRENT_YEAR_VOLUME_BUY` = NULL,
    `CURRENT_YEAR_VOLUME_SELL` = NULL,
    `CURRENT_YEAR_VOLUME_UNKNOWN` = NULL,
    `INSTRUMENT` = NULL,
    `LAST_PROCESSED_TRADE_CCSEQ` = NULL,
    `LAST_PROCESSED_TRADE_PRICE` = NULL,
    `LAST_PROCESSED_TRADE_QUANTITY` = NULL,
    `LAST_PROCESSED_TRADE_QUOTE_QUANTITY` = NULL,
    `LAST_PROCESSED_TRADE_SIDE` = NULL,
    `LAST_PROCESSED_TRADE_TS` = NULL,
    `LAST_TRADE_CCSEQ` = NULL,
    `LAST_TRADE_ID` = NULL,
    `LAST_TRADE_QUANTITY` = NULL,
    `LAST_TRADE_QUOTE_QUANTITY` = NULL,
    `LAST_TRADE_SIDE` = NULL,
    `LIFETIME_FIRST_TRADE_TS` = NULL,
    `LIFETIME_HIGH` = NULL,
    `LIFETIME_HIGH_TS` = NULL,
    `LIFETIME_LOW` = NULL,
    `LIFETIME_LOW_TS` = NULL,
    `LIFETIME_OPEN` = NULL,
    `LIFETIME_QUOTE_VOLUME` = NULL,
    `LIFETIME_QUOTE_VOLUME_BUY` = NULL,
    `LIFETIME_QUOTE_VOLUME_SELL` = NULL,
    `LIFETIME_QUOTE_VOLUME_UNKNOWN` = NULL,
    `LIFETIME_TOTAL_TRADES` = NULL,
    `LIFETIME_TOTAL_TRADES_BUY` = NULL,
    `LIFETIME_TOTAL_TRADES_SELL` = NULL,
    `LIFETIME_TOTAL_TRADES_UNKNOWN` = NULL,
    `LIFETIME_VOLUME` = NULL,
    `LIFETIME_VOLUME_BUY` = NULL,
    `LIFETIME_VOLUME_SELL` = NULL,
    `LIFETIME_VOLUME_UNKNOWN` = NULL,
    `MAPPED_INSTRUMENT` = NULL,
    `MARKET` = NULL,
    `MOVING_180_DAY_HIGH` = NULL,
    `MOVING_180_DAY_LOW` = NULL,
    `MOVING_180_DAY_OPEN` = NULL,
    `MOVING_180_DAY_QUOTE_VOLUME` = NULL,
    `MOVING_180_DAY_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_180_DAY_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_180_DAY_TOTAL_TRADES` = NULL,
    `MOVING_180_DAY_TOTAL_TRADES_BUY` = NULL,
    `MOVING_180_DAY_TOTAL_TRADES_SELL` = NULL,
    `MOVING_180_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_180_DAY_VOLUME` = NULL,
    `MOVING_180_DAY_VOLUME_BUY` = NULL,
    `MOVING_180_DAY_VOLUME_SELL` = NULL,
    `MOVING_180_DAY_VOLUME_UNKNOWN` = NULL,
    `MOVING_24_HOUR_HIGH` = NULL,
    `MOVING_24_HOUR_LOW` = NULL,
    `MOVING_24_HOUR_OPEN` = NULL,
    `MOVING_24_HOUR_QUOTE_VOLUME` = NULL,
    `MOVING_24_HOUR_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_24_HOUR_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_24_HOUR_TOTAL_TRADES` = NULL,
    `MOVING_24_HOUR_TOTAL_TRADES_BUY` = NULL,
    `MOVING_24_HOUR_TOTAL_TRADES_SELL` = NULL,
    `MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_24_HOUR_VOLUME` = NULL,
    `MOVING_24_HOUR_VOLUME_BUY` = NULL,
    `MOVING_24_HOUR_VOLUME_SELL` = NULL,
    `MOVING_24_HOUR_VOLUME_UNKNOWN` = NULL,
    `MOVING_30_DAY_HIGH` = NULL,
    `MOVING_30_DAY_LOW` = NULL,
    `MOVING_30_DAY_OPEN` = NULL,
    `MOVING_30_DAY_QUOTE_VOLUME` = NULL,
    `MOVING_30_DAY_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_30_DAY_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_30_DAY_TOTAL_TRADES` = NULL,
    `MOVING_30_DAY_TOTAL_TRADES_BUY` = NULL,
    `MOVING_30_DAY_TOTAL_TRADES_SELL` = NULL,
    `MOVING_30_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_30_DAY_VOLUME` = NULL,
    `MOVING_30_DAY_VOLUME_BUY` = NULL,
    `MOVING_30_DAY_VOLUME_SELL` = NULL,
    `MOVING_30_DAY_VOLUME_UNKNOWN` = NULL,
    `MOVING_365_DAY_HIGH` = NULL,
    `MOVING_365_DAY_LOW` = NULL,
    `MOVING_365_DAY_OPEN` = NULL,
    `MOVING_365_DAY_QUOTE_VOLUME` = NULL,
    `MOVING_365_DAY_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_365_DAY_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_365_DAY_TOTAL_TRADES` = NULL,
    `MOVING_365_DAY_TOTAL_TRADES_BUY` = NULL,
    `MOVING_365_DAY_TOTAL_TRADES_SELL` = NULL,
    `MOVING_365_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_365_DAY_VOLUME` = NULL,
    `MOVING_365_DAY_VOLUME_BUY` = NULL,
    `MOVING_365_DAY_VOLUME_SELL` = NULL,
    `MOVING_365_DAY_VOLUME_UNKNOWN` = NULL,
    `MOVING_7_DAY_HIGH` = NULL,
    `MOVING_7_DAY_LOW` = NULL,
    `MOVING_7_DAY_OPEN` = NULL,
    `MOVING_7_DAY_QUOTE_VOLUME` = NULL,
    `MOVING_7_DAY_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_7_DAY_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_7_DAY_TOTAL_TRADES` = NULL,
    `MOVING_7_DAY_TOTAL_TRADES_BUY` = NULL,
    `MOVING_7_DAY_TOTAL_TRADES_SELL` = NULL,
    `MOVING_7_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_7_DAY_VOLUME` = NULL,
    `MOVING_7_DAY_VOLUME_BUY` = NULL,
    `MOVING_7_DAY_VOLUME_SELL` = NULL,
    `MOVING_7_DAY_VOLUME_UNKNOWN` = NULL,
    `MOVING_90_DAY_HIGH` = NULL,
    `MOVING_90_DAY_LOW` = NULL,
    `MOVING_90_DAY_OPEN` = NULL,
    `MOVING_90_DAY_QUOTE_VOLUME` = NULL,
    `MOVING_90_DAY_QUOTE_VOLUME_BUY` = NULL,
    `MOVING_90_DAY_QUOTE_VOLUME_SELL` = NULL,
    `MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN` = NULL,
    `MOVING_90_DAY_TOTAL_TRADES` = NULL,
    `MOVING_90_DAY_TOTAL_TRADES_BUY` = NULL,
    `MOVING_90_DAY_TOTAL_TRADES_SELL` = NULL,
    `MOVING_90_DAY_TOTAL_TRADES_UNKNOWN` = NULL,
    `MOVING_90_DAY_VOLUME` = NULL,
    `MOVING_90_DAY_VOLUME_BUY` = NULL,
    `MOVING_90_DAY_VOLUME_SELL` = NULL,
    `MOVING_90_DAY_VOLUME_UNKNOWN` = NULL,
    `PRICE` = NULL,
    `PRICE_FLAG` = NULL,
    `PRICE_LAST_UPDATE_TS` = NULL,
    `QUOTE` = NULL,
    `TOP_ASK_LAST_UPDATE_TS` = NULL,
    `TOP_ASK_PRICE` = NULL,
    `TOP_ASK_QUANTITY` = NULL,
    `TOP_BID_LAST_UPDATE_TS` = NULL,
    `TOP_BID_PRICE` = NULL,
    `TOP_BID_QUANTITY` = NULL,
    `TYPE` = NULL,
    #' Initialize a new SPOTINSTRUMENTMARKETDATA class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTMARKETDATA class.
    #'
    #' @param BASE The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
    #' @param CCSEQ Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
    #' @param CURRENT_DAY_HIGH The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
    #' @param CURRENT_DAY_LOW The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
    #' @param CURRENT_DAY_OPEN The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
    #' @param CURRENT_DAY_QUOTE_VOLUME The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    #' @param CURRENT_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    #' @param CURRENT_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    #' @param CURRENT_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
    #' @param CURRENT_DAY_TOTAL_TRADES The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
    #' @param CURRENT_DAY_TOTAL_TRADES_BUY The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
    #' @param CURRENT_DAY_TOTAL_TRADES_SELL The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
    #' @param CURRENT_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
    #' @param CURRENT_DAY_VOLUME The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    #' @param CURRENT_DAY_VOLUME_BUY The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    #' @param CURRENT_DAY_VOLUME_SELL The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    #' @param CURRENT_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
    #' @param CURRENT_HOUR_HIGH The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
    #' @param CURRENT_HOUR_LOW The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
    #' @param CURRENT_HOUR_OPEN The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
    #' @param CURRENT_HOUR_QUOTE_VOLUME The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
    #' @param CURRENT_HOUR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
    #' @param CURRENT_HOUR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
    #' @param CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
    #' @param CURRENT_HOUR_TOTAL_TRADES The total number of trades that have occurred since the start of the current hour.
    #' @param CURRENT_HOUR_TOTAL_TRADES_BUY The total number of buy trades since the start of the current hour.
    #' @param CURRENT_HOUR_TOTAL_TRADES_SELL The total number of sell trades since the start of the current hour.
    #' @param CURRENT_HOUR_TOTAL_TRADES_UNKNOWN The total number of unknown trades since the start of the current hour.
    #' @param CURRENT_HOUR_VOLUME The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
    #' @param CURRENT_HOUR_VOLUME_BUY The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
    #' @param CURRENT_HOUR_VOLUME_SELL The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
    #' @param CURRENT_HOUR_VOLUME_UNKNOWN The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
    #' @param CURRENT_MONTH_HIGH The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
    #' @param CURRENT_MONTH_LOW The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
    #' @param CURRENT_MONTH_OPEN The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
    #' @param CURRENT_MONTH_QUOTE_VOLUME The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    #' @param CURRENT_MONTH_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    #' @param CURRENT_MONTH_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    #' @param CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
    #' @param CURRENT_MONTH_TOTAL_TRADES The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    #' @param CURRENT_MONTH_TOTAL_TRADES_BUY The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    #' @param CURRENT_MONTH_TOTAL_TRADES_SELL The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    #' @param CURRENT_MONTH_TOTAL_TRADES_UNKNOWN The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
    #' @param CURRENT_MONTH_VOLUME The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    #' @param CURRENT_MONTH_VOLUME_BUY The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    #' @param CURRENT_MONTH_VOLUME_SELL The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    #' @param CURRENT_MONTH_VOLUME_UNKNOWN The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
    #' @param CURRENT_WEEK_HIGH The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
    #' @param CURRENT_WEEK_LOW The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
    #' @param CURRENT_WEEK_OPEN The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
    #' @param CURRENT_WEEK_QUOTE_VOLUME The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    #' @param CURRENT_WEEK_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    #' @param CURRENT_WEEK_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    #' @param CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
    #' @param CURRENT_WEEK_TOTAL_TRADES The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    #' @param CURRENT_WEEK_TOTAL_TRADES_BUY The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    #' @param CURRENT_WEEK_TOTAL_TRADES_SELL The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    #' @param CURRENT_WEEK_TOTAL_TRADES_UNKNOWN The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
    #' @param CURRENT_WEEK_VOLUME The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    #' @param CURRENT_WEEK_VOLUME_BUY The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    #' @param CURRENT_WEEK_VOLUME_SELL The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    #' @param CURRENT_WEEK_VOLUME_UNKNOWN The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
    #' @param CURRENT_YEAR_HIGH The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
    #' @param CURRENT_YEAR_LOW The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
    #' @param CURRENT_YEAR_OPEN The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
    #' @param CURRENT_YEAR_QUOTE_VOLUME The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    #' @param CURRENT_YEAR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    #' @param CURRENT_YEAR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    #' @param CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
    #' @param CURRENT_YEAR_TOTAL_TRADES The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    #' @param CURRENT_YEAR_TOTAL_TRADES_BUY The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    #' @param CURRENT_YEAR_TOTAL_TRADES_SELL The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    #' @param CURRENT_YEAR_TOTAL_TRADES_UNKNOWN The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
    #' @param CURRENT_YEAR_VOLUME The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    #' @param CURRENT_YEAR_VOLUME_BUY The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    #' @param CURRENT_YEAR_VOLUME_SELL The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    #' @param CURRENT_YEAR_VOLUME_UNKNOWN The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
    #' @param INSTRUMENT The unmapped instrument ID
    #' @param LAST_PROCESSED_TRADE_CCSEQ The CCSEQ of the latest trade.
    #' @param LAST_PROCESSED_TRADE_PRICE The price in the quote asset of the last trade processed, as reported by the market / exchange.
    #' @param LAST_PROCESSED_TRADE_QUANTITY The quantity of the last processed trade in the from symbol (base / coin).
    #' @param LAST_PROCESSED_TRADE_QUOTE_QUANTITY The  volume of the last processed trade in the to asset / quote.
    #' @param LAST_PROCESSED_TRADE_SIDE The side of the last processed trade.
    #' @param LAST_PROCESSED_TRADE_TS The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
    #' @param LAST_TRADE_CCSEQ The CCSEQ of the latest trade.
    #' @param LAST_TRADE_ID The ID of the latest trade.
    #' @param LAST_TRADE_QUANTITY The quantity of the latest trade in the from symbol (base / coin).
    #' @param LAST_TRADE_QUOTE_QUANTITY The volume of the latest trade in the to asset / quote.
    #' @param LAST_TRADE_SIDE The side of the latest trade.
    #' @param LIFETIME_FIRST_TRADE_TS The timestamp of the first trade ever recorded for the instrument
    #' @param LIFETIME_HIGH The price of the highest trade ever executed for this instrument. Given in the quote asset.
    #' @param LIFETIME_HIGH_TS The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
    #' @param LIFETIME_LOW The price of the lowest trade ever executed for this instrument. Given in the quote asset.
    #' @param LIFETIME_LOW_TS The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
    #' @param LIFETIME_OPEN The price of the first trade of the instrument. Given in the quote asset.
    #' @param LIFETIME_QUOTE_VOLUME The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
    #' @param LIFETIME_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
    #' @param LIFETIME_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
    #' @param LIFETIME_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
    #' @param LIFETIME_TOTAL_TRADES The total number of all trades that have ever been executed for this instrument.
    #' @param LIFETIME_TOTAL_TRADES_BUY The total number of all buy trades that have ever been executed for this instrument.
    #' @param LIFETIME_TOTAL_TRADES_SELL The total number of all sell trades that have ever been executed for this instrument.
    #' @param LIFETIME_TOTAL_TRADES_UNKNOWN The total number of all unknown trades that have ever been executed for this instrument.
    #' @param LIFETIME_VOLUME The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
    #' @param LIFETIME_VOLUME_BUY The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
    #' @param LIFETIME_VOLUME_SELL The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
    #' @param LIFETIME_VOLUME_UNKNOWN The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
    #' @param MAPPED_INSTRUMENT The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
    #' @param MARKET The market / exchange under consideration (e.g. coinbase, kraken, etc).
    #' @param MOVING_180_DAY_HIGH The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_LOW The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_OPEN The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
    #' @param MOVING_180_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
    #' @param MOVING_180_DAY_TOTAL_TRADES The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    #' @param MOVING_180_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    #' @param MOVING_180_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    #' @param MOVING_180_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
    #' @param MOVING_180_DAY_VOLUME The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    #' @param MOVING_180_DAY_VOLUME_BUY The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    #' @param MOVING_180_DAY_VOLUME_SELL The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    #' @param MOVING_180_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
    #' @param MOVING_24_HOUR_HIGH The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_LOW The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_OPEN The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
    #' @param MOVING_24_HOUR_QUOTE_VOLUME The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
    #' @param MOVING_24_HOUR_TOTAL_TRADES The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    #' @param MOVING_24_HOUR_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    #' @param MOVING_24_HOUR_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    #' @param MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
    #' @param MOVING_24_HOUR_VOLUME The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    #' @param MOVING_24_HOUR_VOLUME_BUY The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    #' @param MOVING_24_HOUR_VOLUME_SELL The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    #' @param MOVING_24_HOUR_VOLUME_UNKNOWN The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
    #' @param MOVING_30_DAY_HIGH The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_LOW The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_OPEN The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
    #' @param MOVING_30_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
    #' @param MOVING_30_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    #' @param MOVING_30_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    #' @param MOVING_30_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    #' @param MOVING_30_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
    #' @param MOVING_30_DAY_VOLUME The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    #' @param MOVING_30_DAY_VOLUME_BUY The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    #' @param MOVING_30_DAY_VOLUME_SELL The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    #' @param MOVING_30_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
    #' @param MOVING_365_DAY_HIGH The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_LOW The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_OPEN The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
    #' @param MOVING_365_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
    #' @param MOVING_365_DAY_TOTAL_TRADES The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    #' @param MOVING_365_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    #' @param MOVING_365_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    #' @param MOVING_365_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
    #' @param MOVING_365_DAY_VOLUME The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    #' @param MOVING_365_DAY_VOLUME_BUY The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    #' @param MOVING_365_DAY_VOLUME_SELL The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    #' @param MOVING_365_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
    #' @param MOVING_7_DAY_HIGH The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_LOW The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_OPEN The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
    #' @param MOVING_7_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
    #' @param MOVING_7_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    #' @param MOVING_7_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    #' @param MOVING_7_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    #' @param MOVING_7_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
    #' @param MOVING_7_DAY_VOLUME The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    #' @param MOVING_7_DAY_VOLUME_BUY The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    #' @param MOVING_7_DAY_VOLUME_SELL The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    #' @param MOVING_7_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
    #' @param MOVING_90_DAY_HIGH The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_LOW The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_OPEN The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
    #' @param MOVING_90_DAY_QUOTE_VOLUME The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_QUOTE_VOLUME_BUY The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_QUOTE_VOLUME_SELL The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
    #' @param MOVING_90_DAY_TOTAL_TRADES The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    #' @param MOVING_90_DAY_TOTAL_TRADES_BUY The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    #' @param MOVING_90_DAY_TOTAL_TRADES_SELL The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    #' @param MOVING_90_DAY_TOTAL_TRADES_UNKNOWN The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
    #' @param MOVING_90_DAY_VOLUME The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    #' @param MOVING_90_DAY_VOLUME_BUY The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    #' @param MOVING_90_DAY_VOLUME_SELL The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    #' @param MOVING_90_DAY_VOLUME_UNKNOWN The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
    #' @param PRICE The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
    #' @param PRICE_FLAG The flag indicating whether the price has increased, decreased, or not changed
    #' @param PRICE_LAST_UPDATE_TS The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
    #' @param QUOTE The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
    #' @param TOP_ASK_LAST_UPDATE_TS The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
    #' @param TOP_ASK_PRICE The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
    #' @param TOP_ASK_QUANTITY The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
    #' @param TOP_BID_LAST_UPDATE_TS The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
    #' @param TOP_BID_PRICE The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
    #' @param TOP_BID_QUANTITY The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
    #' @param TYPE The type of the message.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`BASE` = NULL, `CCSEQ` = NULL, `CURRENT_DAY_HIGH` = NULL, `CURRENT_DAY_LOW` = NULL, `CURRENT_DAY_OPEN` = NULL, `CURRENT_DAY_QUOTE_VOLUME` = NULL, `CURRENT_DAY_QUOTE_VOLUME_BUY` = NULL, `CURRENT_DAY_QUOTE_VOLUME_SELL` = NULL, `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `CURRENT_DAY_TOTAL_TRADES` = NULL, `CURRENT_DAY_TOTAL_TRADES_BUY` = NULL, `CURRENT_DAY_TOTAL_TRADES_SELL` = NULL, `CURRENT_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `CURRENT_DAY_VOLUME` = NULL, `CURRENT_DAY_VOLUME_BUY` = NULL, `CURRENT_DAY_VOLUME_SELL` = NULL, `CURRENT_DAY_VOLUME_UNKNOWN` = NULL, `CURRENT_HOUR_HIGH` = NULL, `CURRENT_HOUR_LOW` = NULL, `CURRENT_HOUR_OPEN` = NULL, `CURRENT_HOUR_QUOTE_VOLUME` = NULL, `CURRENT_HOUR_QUOTE_VOLUME_BUY` = NULL, `CURRENT_HOUR_QUOTE_VOLUME_SELL` = NULL, `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN` = NULL, `CURRENT_HOUR_TOTAL_TRADES` = NULL, `CURRENT_HOUR_TOTAL_TRADES_BUY` = NULL, `CURRENT_HOUR_TOTAL_TRADES_SELL` = NULL, `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN` = NULL, `CURRENT_HOUR_VOLUME` = NULL, `CURRENT_HOUR_VOLUME_BUY` = NULL, `CURRENT_HOUR_VOLUME_SELL` = NULL, `CURRENT_HOUR_VOLUME_UNKNOWN` = NULL, `CURRENT_MONTH_HIGH` = NULL, `CURRENT_MONTH_LOW` = NULL, `CURRENT_MONTH_OPEN` = NULL, `CURRENT_MONTH_QUOTE_VOLUME` = NULL, `CURRENT_MONTH_QUOTE_VOLUME_BUY` = NULL, `CURRENT_MONTH_QUOTE_VOLUME_SELL` = NULL, `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN` = NULL, `CURRENT_MONTH_TOTAL_TRADES` = NULL, `CURRENT_MONTH_TOTAL_TRADES_BUY` = NULL, `CURRENT_MONTH_TOTAL_TRADES_SELL` = NULL, `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN` = NULL, `CURRENT_MONTH_VOLUME` = NULL, `CURRENT_MONTH_VOLUME_BUY` = NULL, `CURRENT_MONTH_VOLUME_SELL` = NULL, `CURRENT_MONTH_VOLUME_UNKNOWN` = NULL, `CURRENT_WEEK_HIGH` = NULL, `CURRENT_WEEK_LOW` = NULL, `CURRENT_WEEK_OPEN` = NULL, `CURRENT_WEEK_QUOTE_VOLUME` = NULL, `CURRENT_WEEK_QUOTE_VOLUME_BUY` = NULL, `CURRENT_WEEK_QUOTE_VOLUME_SELL` = NULL, `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN` = NULL, `CURRENT_WEEK_TOTAL_TRADES` = NULL, `CURRENT_WEEK_TOTAL_TRADES_BUY` = NULL, `CURRENT_WEEK_TOTAL_TRADES_SELL` = NULL, `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN` = NULL, `CURRENT_WEEK_VOLUME` = NULL, `CURRENT_WEEK_VOLUME_BUY` = NULL, `CURRENT_WEEK_VOLUME_SELL` = NULL, `CURRENT_WEEK_VOLUME_UNKNOWN` = NULL, `CURRENT_YEAR_HIGH` = NULL, `CURRENT_YEAR_LOW` = NULL, `CURRENT_YEAR_OPEN` = NULL, `CURRENT_YEAR_QUOTE_VOLUME` = NULL, `CURRENT_YEAR_QUOTE_VOLUME_BUY` = NULL, `CURRENT_YEAR_QUOTE_VOLUME_SELL` = NULL, `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN` = NULL, `CURRENT_YEAR_TOTAL_TRADES` = NULL, `CURRENT_YEAR_TOTAL_TRADES_BUY` = NULL, `CURRENT_YEAR_TOTAL_TRADES_SELL` = NULL, `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN` = NULL, `CURRENT_YEAR_VOLUME` = NULL, `CURRENT_YEAR_VOLUME_BUY` = NULL, `CURRENT_YEAR_VOLUME_SELL` = NULL, `CURRENT_YEAR_VOLUME_UNKNOWN` = NULL, `INSTRUMENT` = NULL, `LAST_PROCESSED_TRADE_CCSEQ` = NULL, `LAST_PROCESSED_TRADE_PRICE` = NULL, `LAST_PROCESSED_TRADE_QUANTITY` = NULL, `LAST_PROCESSED_TRADE_QUOTE_QUANTITY` = NULL, `LAST_PROCESSED_TRADE_SIDE` = NULL, `LAST_PROCESSED_TRADE_TS` = NULL, `LAST_TRADE_CCSEQ` = NULL, `LAST_TRADE_ID` = NULL, `LAST_TRADE_QUANTITY` = NULL, `LAST_TRADE_QUOTE_QUANTITY` = NULL, `LAST_TRADE_SIDE` = NULL, `LIFETIME_FIRST_TRADE_TS` = NULL, `LIFETIME_HIGH` = NULL, `LIFETIME_HIGH_TS` = NULL, `LIFETIME_LOW` = NULL, `LIFETIME_LOW_TS` = NULL, `LIFETIME_OPEN` = NULL, `LIFETIME_QUOTE_VOLUME` = NULL, `LIFETIME_QUOTE_VOLUME_BUY` = NULL, `LIFETIME_QUOTE_VOLUME_SELL` = NULL, `LIFETIME_QUOTE_VOLUME_UNKNOWN` = NULL, `LIFETIME_TOTAL_TRADES` = NULL, `LIFETIME_TOTAL_TRADES_BUY` = NULL, `LIFETIME_TOTAL_TRADES_SELL` = NULL, `LIFETIME_TOTAL_TRADES_UNKNOWN` = NULL, `LIFETIME_VOLUME` = NULL, `LIFETIME_VOLUME_BUY` = NULL, `LIFETIME_VOLUME_SELL` = NULL, `LIFETIME_VOLUME_UNKNOWN` = NULL, `MAPPED_INSTRUMENT` = NULL, `MARKET` = NULL, `MOVING_180_DAY_HIGH` = NULL, `MOVING_180_DAY_LOW` = NULL, `MOVING_180_DAY_OPEN` = NULL, `MOVING_180_DAY_QUOTE_VOLUME` = NULL, `MOVING_180_DAY_QUOTE_VOLUME_BUY` = NULL, `MOVING_180_DAY_QUOTE_VOLUME_SELL` = NULL, `MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_180_DAY_TOTAL_TRADES` = NULL, `MOVING_180_DAY_TOTAL_TRADES_BUY` = NULL, `MOVING_180_DAY_TOTAL_TRADES_SELL` = NULL, `MOVING_180_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_180_DAY_VOLUME` = NULL, `MOVING_180_DAY_VOLUME_BUY` = NULL, `MOVING_180_DAY_VOLUME_SELL` = NULL, `MOVING_180_DAY_VOLUME_UNKNOWN` = NULL, `MOVING_24_HOUR_HIGH` = NULL, `MOVING_24_HOUR_LOW` = NULL, `MOVING_24_HOUR_OPEN` = NULL, `MOVING_24_HOUR_QUOTE_VOLUME` = NULL, `MOVING_24_HOUR_QUOTE_VOLUME_BUY` = NULL, `MOVING_24_HOUR_QUOTE_VOLUME_SELL` = NULL, `MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_24_HOUR_TOTAL_TRADES` = NULL, `MOVING_24_HOUR_TOTAL_TRADES_BUY` = NULL, `MOVING_24_HOUR_TOTAL_TRADES_SELL` = NULL, `MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_24_HOUR_VOLUME` = NULL, `MOVING_24_HOUR_VOLUME_BUY` = NULL, `MOVING_24_HOUR_VOLUME_SELL` = NULL, `MOVING_24_HOUR_VOLUME_UNKNOWN` = NULL, `MOVING_30_DAY_HIGH` = NULL, `MOVING_30_DAY_LOW` = NULL, `MOVING_30_DAY_OPEN` = NULL, `MOVING_30_DAY_QUOTE_VOLUME` = NULL, `MOVING_30_DAY_QUOTE_VOLUME_BUY` = NULL, `MOVING_30_DAY_QUOTE_VOLUME_SELL` = NULL, `MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_30_DAY_TOTAL_TRADES` = NULL, `MOVING_30_DAY_TOTAL_TRADES_BUY` = NULL, `MOVING_30_DAY_TOTAL_TRADES_SELL` = NULL, `MOVING_30_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_30_DAY_VOLUME` = NULL, `MOVING_30_DAY_VOLUME_BUY` = NULL, `MOVING_30_DAY_VOLUME_SELL` = NULL, `MOVING_30_DAY_VOLUME_UNKNOWN` = NULL, `MOVING_365_DAY_HIGH` = NULL, `MOVING_365_DAY_LOW` = NULL, `MOVING_365_DAY_OPEN` = NULL, `MOVING_365_DAY_QUOTE_VOLUME` = NULL, `MOVING_365_DAY_QUOTE_VOLUME_BUY` = NULL, `MOVING_365_DAY_QUOTE_VOLUME_SELL` = NULL, `MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_365_DAY_TOTAL_TRADES` = NULL, `MOVING_365_DAY_TOTAL_TRADES_BUY` = NULL, `MOVING_365_DAY_TOTAL_TRADES_SELL` = NULL, `MOVING_365_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_365_DAY_VOLUME` = NULL, `MOVING_365_DAY_VOLUME_BUY` = NULL, `MOVING_365_DAY_VOLUME_SELL` = NULL, `MOVING_365_DAY_VOLUME_UNKNOWN` = NULL, `MOVING_7_DAY_HIGH` = NULL, `MOVING_7_DAY_LOW` = NULL, `MOVING_7_DAY_OPEN` = NULL, `MOVING_7_DAY_QUOTE_VOLUME` = NULL, `MOVING_7_DAY_QUOTE_VOLUME_BUY` = NULL, `MOVING_7_DAY_QUOTE_VOLUME_SELL` = NULL, `MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_7_DAY_TOTAL_TRADES` = NULL, `MOVING_7_DAY_TOTAL_TRADES_BUY` = NULL, `MOVING_7_DAY_TOTAL_TRADES_SELL` = NULL, `MOVING_7_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_7_DAY_VOLUME` = NULL, `MOVING_7_DAY_VOLUME_BUY` = NULL, `MOVING_7_DAY_VOLUME_SELL` = NULL, `MOVING_7_DAY_VOLUME_UNKNOWN` = NULL, `MOVING_90_DAY_HIGH` = NULL, `MOVING_90_DAY_LOW` = NULL, `MOVING_90_DAY_OPEN` = NULL, `MOVING_90_DAY_QUOTE_VOLUME` = NULL, `MOVING_90_DAY_QUOTE_VOLUME_BUY` = NULL, `MOVING_90_DAY_QUOTE_VOLUME_SELL` = NULL, `MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN` = NULL, `MOVING_90_DAY_TOTAL_TRADES` = NULL, `MOVING_90_DAY_TOTAL_TRADES_BUY` = NULL, `MOVING_90_DAY_TOTAL_TRADES_SELL` = NULL, `MOVING_90_DAY_TOTAL_TRADES_UNKNOWN` = NULL, `MOVING_90_DAY_VOLUME` = NULL, `MOVING_90_DAY_VOLUME_BUY` = NULL, `MOVING_90_DAY_VOLUME_SELL` = NULL, `MOVING_90_DAY_VOLUME_UNKNOWN` = NULL, `PRICE` = NULL, `PRICE_FLAG` = NULL, `PRICE_LAST_UPDATE_TS` = NULL, `QUOTE` = NULL, `TOP_ASK_LAST_UPDATE_TS` = NULL, `TOP_ASK_PRICE` = NULL, `TOP_ASK_QUANTITY` = NULL, `TOP_BID_LAST_UPDATE_TS` = NULL, `TOP_BID_PRICE` = NULL, `TOP_BID_QUANTITY` = NULL, `TYPE` = NULL, ...) {
      if (!is.null(`BASE`)) {
        if (!(is.character(`BASE`) && length(`BASE`) == 1)) {
          stop(paste("Error! Invalid data for `BASE`. Must be a string:", `BASE`))
        }
        self$`BASE` <- `BASE`
      }
      if (!is.null(`CCSEQ`)) {
        if (!(is.numeric(`CCSEQ`) && length(`CCSEQ`) == 1)) {
          stop(paste("Error! Invalid data for `CCSEQ`. Must be an integer:", `CCSEQ`))
        }
        self$`CCSEQ` <- `CCSEQ`
      }
      if (!is.null(`CURRENT_DAY_HIGH`)) {
        if (!(is.numeric(`CURRENT_DAY_HIGH`) && length(`CURRENT_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_HIGH`. Must be an integer:", `CURRENT_DAY_HIGH`))
        }
        self$`CURRENT_DAY_HIGH` <- `CURRENT_DAY_HIGH`
      }
      if (!is.null(`CURRENT_DAY_LOW`)) {
        if (!(is.numeric(`CURRENT_DAY_LOW`) && length(`CURRENT_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_LOW`. Must be an integer:", `CURRENT_DAY_LOW`))
        }
        self$`CURRENT_DAY_LOW` <- `CURRENT_DAY_LOW`
      }
      if (!is.null(`CURRENT_DAY_OPEN`)) {
        if (!(is.numeric(`CURRENT_DAY_OPEN`) && length(`CURRENT_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_OPEN`. Must be an integer:", `CURRENT_DAY_OPEN`))
        }
        self$`CURRENT_DAY_OPEN` <- `CURRENT_DAY_OPEN`
      }
      if (!is.null(`CURRENT_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`CURRENT_DAY_QUOTE_VOLUME`) && length(`CURRENT_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_QUOTE_VOLUME`. Must be an integer:", `CURRENT_DAY_QUOTE_VOLUME`))
        }
        self$`CURRENT_DAY_QUOTE_VOLUME` <- `CURRENT_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`CURRENT_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_DAY_QUOTE_VOLUME_BUY`) && length(`CURRENT_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `CURRENT_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`CURRENT_DAY_QUOTE_VOLUME_BUY` <- `CURRENT_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_DAY_QUOTE_VOLUME_SELL`) && length(`CURRENT_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `CURRENT_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`CURRENT_DAY_QUOTE_VOLUME_SELL` <- `CURRENT_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN` <- `CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`CURRENT_DAY_TOTAL_TRADES`) && length(`CURRENT_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_TOTAL_TRADES`. Must be an integer:", `CURRENT_DAY_TOTAL_TRADES`))
        }
        self$`CURRENT_DAY_TOTAL_TRADES` <- `CURRENT_DAY_TOTAL_TRADES`
      }
      if (!is.null(`CURRENT_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`CURRENT_DAY_TOTAL_TRADES_BUY`) && length(`CURRENT_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `CURRENT_DAY_TOTAL_TRADES_BUY`))
        }
        self$`CURRENT_DAY_TOTAL_TRADES_BUY` <- `CURRENT_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`CURRENT_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`CURRENT_DAY_TOTAL_TRADES_SELL`) && length(`CURRENT_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `CURRENT_DAY_TOTAL_TRADES_SELL`))
        }
        self$`CURRENT_DAY_TOTAL_TRADES_SELL` <- `CURRENT_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`) && length(`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `CURRENT_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN` <- `CURRENT_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`CURRENT_DAY_VOLUME`)) {
        if (!(is.numeric(`CURRENT_DAY_VOLUME`) && length(`CURRENT_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_VOLUME`. Must be an integer:", `CURRENT_DAY_VOLUME`))
        }
        self$`CURRENT_DAY_VOLUME` <- `CURRENT_DAY_VOLUME`
      }
      if (!is.null(`CURRENT_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_DAY_VOLUME_BUY`) && length(`CURRENT_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_VOLUME_BUY`. Must be an integer:", `CURRENT_DAY_VOLUME_BUY`))
        }
        self$`CURRENT_DAY_VOLUME_BUY` <- `CURRENT_DAY_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_DAY_VOLUME_SELL`) && length(`CURRENT_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_VOLUME_SELL`. Must be an integer:", `CURRENT_DAY_VOLUME_SELL`))
        }
        self$`CURRENT_DAY_VOLUME_SELL` <- `CURRENT_DAY_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_DAY_VOLUME_UNKNOWN`) && length(`CURRENT_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_DAY_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_DAY_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_DAY_VOLUME_UNKNOWN` <- `CURRENT_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_HOUR_HIGH`)) {
        if (!(is.numeric(`CURRENT_HOUR_HIGH`) && length(`CURRENT_HOUR_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_HIGH`. Must be an integer:", `CURRENT_HOUR_HIGH`))
        }
        self$`CURRENT_HOUR_HIGH` <- `CURRENT_HOUR_HIGH`
      }
      if (!is.null(`CURRENT_HOUR_LOW`)) {
        if (!(is.numeric(`CURRENT_HOUR_LOW`) && length(`CURRENT_HOUR_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_LOW`. Must be an integer:", `CURRENT_HOUR_LOW`))
        }
        self$`CURRENT_HOUR_LOW` <- `CURRENT_HOUR_LOW`
      }
      if (!is.null(`CURRENT_HOUR_OPEN`)) {
        if (!(is.numeric(`CURRENT_HOUR_OPEN`) && length(`CURRENT_HOUR_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_OPEN`. Must be an integer:", `CURRENT_HOUR_OPEN`))
        }
        self$`CURRENT_HOUR_OPEN` <- `CURRENT_HOUR_OPEN`
      }
      if (!is.null(`CURRENT_HOUR_QUOTE_VOLUME`)) {
        if (!(is.numeric(`CURRENT_HOUR_QUOTE_VOLUME`) && length(`CURRENT_HOUR_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_QUOTE_VOLUME`. Must be an integer:", `CURRENT_HOUR_QUOTE_VOLUME`))
        }
        self$`CURRENT_HOUR_QUOTE_VOLUME` <- `CURRENT_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(`CURRENT_HOUR_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_HOUR_QUOTE_VOLUME_BUY`) && length(`CURRENT_HOUR_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_QUOTE_VOLUME_BUY`. Must be an integer:", `CURRENT_HOUR_QUOTE_VOLUME_BUY`))
        }
        self$`CURRENT_HOUR_QUOTE_VOLUME_BUY` <- `CURRENT_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_HOUR_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_HOUR_QUOTE_VOLUME_SELL`) && length(`CURRENT_HOUR_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_QUOTE_VOLUME_SELL`. Must be an integer:", `CURRENT_HOUR_QUOTE_VOLUME_SELL`))
        }
        self$`CURRENT_HOUR_QUOTE_VOLUME_SELL` <- `CURRENT_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`) && length(`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN` <- `CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_HOUR_TOTAL_TRADES`)) {
        if (!(is.numeric(`CURRENT_HOUR_TOTAL_TRADES`) && length(`CURRENT_HOUR_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_TOTAL_TRADES`. Must be an integer:", `CURRENT_HOUR_TOTAL_TRADES`))
        }
        self$`CURRENT_HOUR_TOTAL_TRADES` <- `CURRENT_HOUR_TOTAL_TRADES`
      }
      if (!is.null(`CURRENT_HOUR_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`CURRENT_HOUR_TOTAL_TRADES_BUY`) && length(`CURRENT_HOUR_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_TOTAL_TRADES_BUY`. Must be an integer:", `CURRENT_HOUR_TOTAL_TRADES_BUY`))
        }
        self$`CURRENT_HOUR_TOTAL_TRADES_BUY` <- `CURRENT_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(`CURRENT_HOUR_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`CURRENT_HOUR_TOTAL_TRADES_SELL`) && length(`CURRENT_HOUR_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_TOTAL_TRADES_SELL`. Must be an integer:", `CURRENT_HOUR_TOTAL_TRADES_SELL`))
        }
        self$`CURRENT_HOUR_TOTAL_TRADES_SELL` <- `CURRENT_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`) && length(`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`))
        }
        self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN` <- `CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`CURRENT_HOUR_VOLUME`)) {
        if (!(is.numeric(`CURRENT_HOUR_VOLUME`) && length(`CURRENT_HOUR_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_VOLUME`. Must be an integer:", `CURRENT_HOUR_VOLUME`))
        }
        self$`CURRENT_HOUR_VOLUME` <- `CURRENT_HOUR_VOLUME`
      }
      if (!is.null(`CURRENT_HOUR_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_HOUR_VOLUME_BUY`) && length(`CURRENT_HOUR_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_VOLUME_BUY`. Must be an integer:", `CURRENT_HOUR_VOLUME_BUY`))
        }
        self$`CURRENT_HOUR_VOLUME_BUY` <- `CURRENT_HOUR_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_HOUR_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_HOUR_VOLUME_SELL`) && length(`CURRENT_HOUR_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_VOLUME_SELL`. Must be an integer:", `CURRENT_HOUR_VOLUME_SELL`))
        }
        self$`CURRENT_HOUR_VOLUME_SELL` <- `CURRENT_HOUR_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_HOUR_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_HOUR_VOLUME_UNKNOWN`) && length(`CURRENT_HOUR_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_HOUR_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_HOUR_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_HOUR_VOLUME_UNKNOWN` <- `CURRENT_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_MONTH_HIGH`)) {
        if (!(is.numeric(`CURRENT_MONTH_HIGH`) && length(`CURRENT_MONTH_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_HIGH`. Must be an integer:", `CURRENT_MONTH_HIGH`))
        }
        self$`CURRENT_MONTH_HIGH` <- `CURRENT_MONTH_HIGH`
      }
      if (!is.null(`CURRENT_MONTH_LOW`)) {
        if (!(is.numeric(`CURRENT_MONTH_LOW`) && length(`CURRENT_MONTH_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_LOW`. Must be an integer:", `CURRENT_MONTH_LOW`))
        }
        self$`CURRENT_MONTH_LOW` <- `CURRENT_MONTH_LOW`
      }
      if (!is.null(`CURRENT_MONTH_OPEN`)) {
        if (!(is.numeric(`CURRENT_MONTH_OPEN`) && length(`CURRENT_MONTH_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_OPEN`. Must be an integer:", `CURRENT_MONTH_OPEN`))
        }
        self$`CURRENT_MONTH_OPEN` <- `CURRENT_MONTH_OPEN`
      }
      if (!is.null(`CURRENT_MONTH_QUOTE_VOLUME`)) {
        if (!(is.numeric(`CURRENT_MONTH_QUOTE_VOLUME`) && length(`CURRENT_MONTH_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_QUOTE_VOLUME`. Must be an integer:", `CURRENT_MONTH_QUOTE_VOLUME`))
        }
        self$`CURRENT_MONTH_QUOTE_VOLUME` <- `CURRENT_MONTH_QUOTE_VOLUME`
      }
      if (!is.null(`CURRENT_MONTH_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_MONTH_QUOTE_VOLUME_BUY`) && length(`CURRENT_MONTH_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_QUOTE_VOLUME_BUY`. Must be an integer:", `CURRENT_MONTH_QUOTE_VOLUME_BUY`))
        }
        self$`CURRENT_MONTH_QUOTE_VOLUME_BUY` <- `CURRENT_MONTH_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_MONTH_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_MONTH_QUOTE_VOLUME_SELL`) && length(`CURRENT_MONTH_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_QUOTE_VOLUME_SELL`. Must be an integer:", `CURRENT_MONTH_QUOTE_VOLUME_SELL`))
        }
        self$`CURRENT_MONTH_QUOTE_VOLUME_SELL` <- `CURRENT_MONTH_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`) && length(`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN` <- `CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_MONTH_TOTAL_TRADES`)) {
        if (!(is.numeric(`CURRENT_MONTH_TOTAL_TRADES`) && length(`CURRENT_MONTH_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_TOTAL_TRADES`. Must be an integer:", `CURRENT_MONTH_TOTAL_TRADES`))
        }
        self$`CURRENT_MONTH_TOTAL_TRADES` <- `CURRENT_MONTH_TOTAL_TRADES`
      }
      if (!is.null(`CURRENT_MONTH_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`CURRENT_MONTH_TOTAL_TRADES_BUY`) && length(`CURRENT_MONTH_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_TOTAL_TRADES_BUY`. Must be an integer:", `CURRENT_MONTH_TOTAL_TRADES_BUY`))
        }
        self$`CURRENT_MONTH_TOTAL_TRADES_BUY` <- `CURRENT_MONTH_TOTAL_TRADES_BUY`
      }
      if (!is.null(`CURRENT_MONTH_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`CURRENT_MONTH_TOTAL_TRADES_SELL`) && length(`CURRENT_MONTH_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_TOTAL_TRADES_SELL`. Must be an integer:", `CURRENT_MONTH_TOTAL_TRADES_SELL`))
        }
        self$`CURRENT_MONTH_TOTAL_TRADES_SELL` <- `CURRENT_MONTH_TOTAL_TRADES_SELL`
      }
      if (!is.null(`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`) && length(`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`))
        }
        self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN` <- `CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`CURRENT_MONTH_VOLUME`)) {
        if (!(is.numeric(`CURRENT_MONTH_VOLUME`) && length(`CURRENT_MONTH_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_VOLUME`. Must be an integer:", `CURRENT_MONTH_VOLUME`))
        }
        self$`CURRENT_MONTH_VOLUME` <- `CURRENT_MONTH_VOLUME`
      }
      if (!is.null(`CURRENT_MONTH_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_MONTH_VOLUME_BUY`) && length(`CURRENT_MONTH_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_VOLUME_BUY`. Must be an integer:", `CURRENT_MONTH_VOLUME_BUY`))
        }
        self$`CURRENT_MONTH_VOLUME_BUY` <- `CURRENT_MONTH_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_MONTH_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_MONTH_VOLUME_SELL`) && length(`CURRENT_MONTH_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_VOLUME_SELL`. Must be an integer:", `CURRENT_MONTH_VOLUME_SELL`))
        }
        self$`CURRENT_MONTH_VOLUME_SELL` <- `CURRENT_MONTH_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_MONTH_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_MONTH_VOLUME_UNKNOWN`) && length(`CURRENT_MONTH_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_MONTH_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_MONTH_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_MONTH_VOLUME_UNKNOWN` <- `CURRENT_MONTH_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_WEEK_HIGH`)) {
        if (!(is.numeric(`CURRENT_WEEK_HIGH`) && length(`CURRENT_WEEK_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_HIGH`. Must be an integer:", `CURRENT_WEEK_HIGH`))
        }
        self$`CURRENT_WEEK_HIGH` <- `CURRENT_WEEK_HIGH`
      }
      if (!is.null(`CURRENT_WEEK_LOW`)) {
        if (!(is.numeric(`CURRENT_WEEK_LOW`) && length(`CURRENT_WEEK_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_LOW`. Must be an integer:", `CURRENT_WEEK_LOW`))
        }
        self$`CURRENT_WEEK_LOW` <- `CURRENT_WEEK_LOW`
      }
      if (!is.null(`CURRENT_WEEK_OPEN`)) {
        if (!(is.numeric(`CURRENT_WEEK_OPEN`) && length(`CURRENT_WEEK_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_OPEN`. Must be an integer:", `CURRENT_WEEK_OPEN`))
        }
        self$`CURRENT_WEEK_OPEN` <- `CURRENT_WEEK_OPEN`
      }
      if (!is.null(`CURRENT_WEEK_QUOTE_VOLUME`)) {
        if (!(is.numeric(`CURRENT_WEEK_QUOTE_VOLUME`) && length(`CURRENT_WEEK_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_QUOTE_VOLUME`. Must be an integer:", `CURRENT_WEEK_QUOTE_VOLUME`))
        }
        self$`CURRENT_WEEK_QUOTE_VOLUME` <- `CURRENT_WEEK_QUOTE_VOLUME`
      }
      if (!is.null(`CURRENT_WEEK_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_WEEK_QUOTE_VOLUME_BUY`) && length(`CURRENT_WEEK_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_QUOTE_VOLUME_BUY`. Must be an integer:", `CURRENT_WEEK_QUOTE_VOLUME_BUY`))
        }
        self$`CURRENT_WEEK_QUOTE_VOLUME_BUY` <- `CURRENT_WEEK_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_WEEK_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_WEEK_QUOTE_VOLUME_SELL`) && length(`CURRENT_WEEK_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_QUOTE_VOLUME_SELL`. Must be an integer:", `CURRENT_WEEK_QUOTE_VOLUME_SELL`))
        }
        self$`CURRENT_WEEK_QUOTE_VOLUME_SELL` <- `CURRENT_WEEK_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`) && length(`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN` <- `CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_WEEK_TOTAL_TRADES`)) {
        if (!(is.numeric(`CURRENT_WEEK_TOTAL_TRADES`) && length(`CURRENT_WEEK_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_TOTAL_TRADES`. Must be an integer:", `CURRENT_WEEK_TOTAL_TRADES`))
        }
        self$`CURRENT_WEEK_TOTAL_TRADES` <- `CURRENT_WEEK_TOTAL_TRADES`
      }
      if (!is.null(`CURRENT_WEEK_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`CURRENT_WEEK_TOTAL_TRADES_BUY`) && length(`CURRENT_WEEK_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_TOTAL_TRADES_BUY`. Must be an integer:", `CURRENT_WEEK_TOTAL_TRADES_BUY`))
        }
        self$`CURRENT_WEEK_TOTAL_TRADES_BUY` <- `CURRENT_WEEK_TOTAL_TRADES_BUY`
      }
      if (!is.null(`CURRENT_WEEK_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`CURRENT_WEEK_TOTAL_TRADES_SELL`) && length(`CURRENT_WEEK_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_TOTAL_TRADES_SELL`. Must be an integer:", `CURRENT_WEEK_TOTAL_TRADES_SELL`))
        }
        self$`CURRENT_WEEK_TOTAL_TRADES_SELL` <- `CURRENT_WEEK_TOTAL_TRADES_SELL`
      }
      if (!is.null(`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`) && length(`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`))
        }
        self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN` <- `CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`CURRENT_WEEK_VOLUME`)) {
        if (!(is.numeric(`CURRENT_WEEK_VOLUME`) && length(`CURRENT_WEEK_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_VOLUME`. Must be an integer:", `CURRENT_WEEK_VOLUME`))
        }
        self$`CURRENT_WEEK_VOLUME` <- `CURRENT_WEEK_VOLUME`
      }
      if (!is.null(`CURRENT_WEEK_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_WEEK_VOLUME_BUY`) && length(`CURRENT_WEEK_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_VOLUME_BUY`. Must be an integer:", `CURRENT_WEEK_VOLUME_BUY`))
        }
        self$`CURRENT_WEEK_VOLUME_BUY` <- `CURRENT_WEEK_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_WEEK_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_WEEK_VOLUME_SELL`) && length(`CURRENT_WEEK_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_VOLUME_SELL`. Must be an integer:", `CURRENT_WEEK_VOLUME_SELL`))
        }
        self$`CURRENT_WEEK_VOLUME_SELL` <- `CURRENT_WEEK_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_WEEK_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_WEEK_VOLUME_UNKNOWN`) && length(`CURRENT_WEEK_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_WEEK_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_WEEK_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_WEEK_VOLUME_UNKNOWN` <- `CURRENT_WEEK_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_YEAR_HIGH`)) {
        if (!(is.numeric(`CURRENT_YEAR_HIGH`) && length(`CURRENT_YEAR_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_HIGH`. Must be an integer:", `CURRENT_YEAR_HIGH`))
        }
        self$`CURRENT_YEAR_HIGH` <- `CURRENT_YEAR_HIGH`
      }
      if (!is.null(`CURRENT_YEAR_LOW`)) {
        if (!(is.numeric(`CURRENT_YEAR_LOW`) && length(`CURRENT_YEAR_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_LOW`. Must be an integer:", `CURRENT_YEAR_LOW`))
        }
        self$`CURRENT_YEAR_LOW` <- `CURRENT_YEAR_LOW`
      }
      if (!is.null(`CURRENT_YEAR_OPEN`)) {
        if (!(is.numeric(`CURRENT_YEAR_OPEN`) && length(`CURRENT_YEAR_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_OPEN`. Must be an integer:", `CURRENT_YEAR_OPEN`))
        }
        self$`CURRENT_YEAR_OPEN` <- `CURRENT_YEAR_OPEN`
      }
      if (!is.null(`CURRENT_YEAR_QUOTE_VOLUME`)) {
        if (!(is.numeric(`CURRENT_YEAR_QUOTE_VOLUME`) && length(`CURRENT_YEAR_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_QUOTE_VOLUME`. Must be an integer:", `CURRENT_YEAR_QUOTE_VOLUME`))
        }
        self$`CURRENT_YEAR_QUOTE_VOLUME` <- `CURRENT_YEAR_QUOTE_VOLUME`
      }
      if (!is.null(`CURRENT_YEAR_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_YEAR_QUOTE_VOLUME_BUY`) && length(`CURRENT_YEAR_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_QUOTE_VOLUME_BUY`. Must be an integer:", `CURRENT_YEAR_QUOTE_VOLUME_BUY`))
        }
        self$`CURRENT_YEAR_QUOTE_VOLUME_BUY` <- `CURRENT_YEAR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_YEAR_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_YEAR_QUOTE_VOLUME_SELL`) && length(`CURRENT_YEAR_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_QUOTE_VOLUME_SELL`. Must be an integer:", `CURRENT_YEAR_QUOTE_VOLUME_SELL`))
        }
        self$`CURRENT_YEAR_QUOTE_VOLUME_SELL` <- `CURRENT_YEAR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`) && length(`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN` <- `CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`CURRENT_YEAR_TOTAL_TRADES`)) {
        if (!(is.numeric(`CURRENT_YEAR_TOTAL_TRADES`) && length(`CURRENT_YEAR_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_TOTAL_TRADES`. Must be an integer:", `CURRENT_YEAR_TOTAL_TRADES`))
        }
        self$`CURRENT_YEAR_TOTAL_TRADES` <- `CURRENT_YEAR_TOTAL_TRADES`
      }
      if (!is.null(`CURRENT_YEAR_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`CURRENT_YEAR_TOTAL_TRADES_BUY`) && length(`CURRENT_YEAR_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_TOTAL_TRADES_BUY`. Must be an integer:", `CURRENT_YEAR_TOTAL_TRADES_BUY`))
        }
        self$`CURRENT_YEAR_TOTAL_TRADES_BUY` <- `CURRENT_YEAR_TOTAL_TRADES_BUY`
      }
      if (!is.null(`CURRENT_YEAR_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`CURRENT_YEAR_TOTAL_TRADES_SELL`) && length(`CURRENT_YEAR_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_TOTAL_TRADES_SELL`. Must be an integer:", `CURRENT_YEAR_TOTAL_TRADES_SELL`))
        }
        self$`CURRENT_YEAR_TOTAL_TRADES_SELL` <- `CURRENT_YEAR_TOTAL_TRADES_SELL`
      }
      if (!is.null(`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`) && length(`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`))
        }
        self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN` <- `CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`CURRENT_YEAR_VOLUME`)) {
        if (!(is.numeric(`CURRENT_YEAR_VOLUME`) && length(`CURRENT_YEAR_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_VOLUME`. Must be an integer:", `CURRENT_YEAR_VOLUME`))
        }
        self$`CURRENT_YEAR_VOLUME` <- `CURRENT_YEAR_VOLUME`
      }
      if (!is.null(`CURRENT_YEAR_VOLUME_BUY`)) {
        if (!(is.numeric(`CURRENT_YEAR_VOLUME_BUY`) && length(`CURRENT_YEAR_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_VOLUME_BUY`. Must be an integer:", `CURRENT_YEAR_VOLUME_BUY`))
        }
        self$`CURRENT_YEAR_VOLUME_BUY` <- `CURRENT_YEAR_VOLUME_BUY`
      }
      if (!is.null(`CURRENT_YEAR_VOLUME_SELL`)) {
        if (!(is.numeric(`CURRENT_YEAR_VOLUME_SELL`) && length(`CURRENT_YEAR_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_VOLUME_SELL`. Must be an integer:", `CURRENT_YEAR_VOLUME_SELL`))
        }
        self$`CURRENT_YEAR_VOLUME_SELL` <- `CURRENT_YEAR_VOLUME_SELL`
      }
      if (!is.null(`CURRENT_YEAR_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`CURRENT_YEAR_VOLUME_UNKNOWN`) && length(`CURRENT_YEAR_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `CURRENT_YEAR_VOLUME_UNKNOWN`. Must be an integer:", `CURRENT_YEAR_VOLUME_UNKNOWN`))
        }
        self$`CURRENT_YEAR_VOLUME_UNKNOWN` <- `CURRENT_YEAR_VOLUME_UNKNOWN`
      }
      if (!is.null(`INSTRUMENT`)) {
        if (!(is.character(`INSTRUMENT`) && length(`INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT`. Must be a string:", `INSTRUMENT`))
        }
        self$`INSTRUMENT` <- `INSTRUMENT`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_CCSEQ`)) {
        if (!(is.character(`LAST_PROCESSED_TRADE_CCSEQ`) && length(`LAST_PROCESSED_TRADE_CCSEQ`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_CCSEQ`. Must be a string:", `LAST_PROCESSED_TRADE_CCSEQ`))
        }
        self$`LAST_PROCESSED_TRADE_CCSEQ` <- `LAST_PROCESSED_TRADE_CCSEQ`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_PRICE`)) {
        if (!(is.numeric(`LAST_PROCESSED_TRADE_PRICE`) && length(`LAST_PROCESSED_TRADE_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_PRICE`. Must be an integer:", `LAST_PROCESSED_TRADE_PRICE`))
        }
        self$`LAST_PROCESSED_TRADE_PRICE` <- `LAST_PROCESSED_TRADE_PRICE`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_QUANTITY`)) {
        if (!(is.numeric(`LAST_PROCESSED_TRADE_QUANTITY`) && length(`LAST_PROCESSED_TRADE_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_QUANTITY`. Must be an integer:", `LAST_PROCESSED_TRADE_QUANTITY`))
        }
        self$`LAST_PROCESSED_TRADE_QUANTITY` <- `LAST_PROCESSED_TRADE_QUANTITY`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`)) {
        if (!(is.numeric(`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`) && length(`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_QUOTE_QUANTITY`. Must be an integer:", `LAST_PROCESSED_TRADE_QUOTE_QUANTITY`))
        }
        self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY` <- `LAST_PROCESSED_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_SIDE`)) {
        if (!(is.character(`LAST_PROCESSED_TRADE_SIDE`) && length(`LAST_PROCESSED_TRADE_SIDE`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_SIDE`. Must be a string:", `LAST_PROCESSED_TRADE_SIDE`))
        }
        self$`LAST_PROCESSED_TRADE_SIDE` <- `LAST_PROCESSED_TRADE_SIDE`
      }
      if (!is.null(`LAST_PROCESSED_TRADE_TS`)) {
        if (!(is.numeric(`LAST_PROCESSED_TRADE_TS`) && length(`LAST_PROCESSED_TRADE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_PROCESSED_TRADE_TS`. Must be an integer:", `LAST_PROCESSED_TRADE_TS`))
        }
        self$`LAST_PROCESSED_TRADE_TS` <- `LAST_PROCESSED_TRADE_TS`
      }
      if (!is.null(`LAST_TRADE_CCSEQ`)) {
        if (!(is.character(`LAST_TRADE_CCSEQ`) && length(`LAST_TRADE_CCSEQ`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_CCSEQ`. Must be a string:", `LAST_TRADE_CCSEQ`))
        }
        self$`LAST_TRADE_CCSEQ` <- `LAST_TRADE_CCSEQ`
      }
      if (!is.null(`LAST_TRADE_ID`)) {
        if (!(is.character(`LAST_TRADE_ID`) && length(`LAST_TRADE_ID`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_ID`. Must be a string:", `LAST_TRADE_ID`))
        }
        self$`LAST_TRADE_ID` <- `LAST_TRADE_ID`
      }
      if (!is.null(`LAST_TRADE_QUANTITY`)) {
        if (!(is.numeric(`LAST_TRADE_QUANTITY`) && length(`LAST_TRADE_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_QUANTITY`. Must be an integer:", `LAST_TRADE_QUANTITY`))
        }
        self$`LAST_TRADE_QUANTITY` <- `LAST_TRADE_QUANTITY`
      }
      if (!is.null(`LAST_TRADE_QUOTE_QUANTITY`)) {
        if (!(is.numeric(`LAST_TRADE_QUOTE_QUANTITY`) && length(`LAST_TRADE_QUOTE_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_QUOTE_QUANTITY`. Must be an integer:", `LAST_TRADE_QUOTE_QUANTITY`))
        }
        self$`LAST_TRADE_QUOTE_QUANTITY` <- `LAST_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(`LAST_TRADE_SIDE`)) {
        if (!(is.character(`LAST_TRADE_SIDE`) && length(`LAST_TRADE_SIDE`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_SIDE`. Must be a string:", `LAST_TRADE_SIDE`))
        }
        self$`LAST_TRADE_SIDE` <- `LAST_TRADE_SIDE`
      }
      if (!is.null(`LIFETIME_FIRST_TRADE_TS`)) {
        if (!(is.numeric(`LIFETIME_FIRST_TRADE_TS`) && length(`LIFETIME_FIRST_TRADE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_FIRST_TRADE_TS`. Must be an integer:", `LIFETIME_FIRST_TRADE_TS`))
        }
        self$`LIFETIME_FIRST_TRADE_TS` <- `LIFETIME_FIRST_TRADE_TS`
      }
      if (!is.null(`LIFETIME_HIGH`)) {
        if (!(is.numeric(`LIFETIME_HIGH`) && length(`LIFETIME_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_HIGH`. Must be an integer:", `LIFETIME_HIGH`))
        }
        self$`LIFETIME_HIGH` <- `LIFETIME_HIGH`
      }
      if (!is.null(`LIFETIME_HIGH_TS`)) {
        if (!(is.numeric(`LIFETIME_HIGH_TS`) && length(`LIFETIME_HIGH_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_HIGH_TS`. Must be an integer:", `LIFETIME_HIGH_TS`))
        }
        self$`LIFETIME_HIGH_TS` <- `LIFETIME_HIGH_TS`
      }
      if (!is.null(`LIFETIME_LOW`)) {
        if (!(is.numeric(`LIFETIME_LOW`) && length(`LIFETIME_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_LOW`. Must be an integer:", `LIFETIME_LOW`))
        }
        self$`LIFETIME_LOW` <- `LIFETIME_LOW`
      }
      if (!is.null(`LIFETIME_LOW_TS`)) {
        if (!(is.numeric(`LIFETIME_LOW_TS`) && length(`LIFETIME_LOW_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_LOW_TS`. Must be an integer:", `LIFETIME_LOW_TS`))
        }
        self$`LIFETIME_LOW_TS` <- `LIFETIME_LOW_TS`
      }
      if (!is.null(`LIFETIME_OPEN`)) {
        if (!(is.numeric(`LIFETIME_OPEN`) && length(`LIFETIME_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_OPEN`. Must be an integer:", `LIFETIME_OPEN`))
        }
        self$`LIFETIME_OPEN` <- `LIFETIME_OPEN`
      }
      if (!is.null(`LIFETIME_QUOTE_VOLUME`)) {
        if (!(is.numeric(`LIFETIME_QUOTE_VOLUME`) && length(`LIFETIME_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_QUOTE_VOLUME`. Must be an integer:", `LIFETIME_QUOTE_VOLUME`))
        }
        self$`LIFETIME_QUOTE_VOLUME` <- `LIFETIME_QUOTE_VOLUME`
      }
      if (!is.null(`LIFETIME_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`LIFETIME_QUOTE_VOLUME_BUY`) && length(`LIFETIME_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_QUOTE_VOLUME_BUY`. Must be an integer:", `LIFETIME_QUOTE_VOLUME_BUY`))
        }
        self$`LIFETIME_QUOTE_VOLUME_BUY` <- `LIFETIME_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`LIFETIME_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`LIFETIME_QUOTE_VOLUME_SELL`) && length(`LIFETIME_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_QUOTE_VOLUME_SELL`. Must be an integer:", `LIFETIME_QUOTE_VOLUME_SELL`))
        }
        self$`LIFETIME_QUOTE_VOLUME_SELL` <- `LIFETIME_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`LIFETIME_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`LIFETIME_QUOTE_VOLUME_UNKNOWN`) && length(`LIFETIME_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `LIFETIME_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`LIFETIME_QUOTE_VOLUME_UNKNOWN` <- `LIFETIME_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`LIFETIME_TOTAL_TRADES`)) {
        if (!(is.numeric(`LIFETIME_TOTAL_TRADES`) && length(`LIFETIME_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_TOTAL_TRADES`. Must be an integer:", `LIFETIME_TOTAL_TRADES`))
        }
        self$`LIFETIME_TOTAL_TRADES` <- `LIFETIME_TOTAL_TRADES`
      }
      if (!is.null(`LIFETIME_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`LIFETIME_TOTAL_TRADES_BUY`) && length(`LIFETIME_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_TOTAL_TRADES_BUY`. Must be an integer:", `LIFETIME_TOTAL_TRADES_BUY`))
        }
        self$`LIFETIME_TOTAL_TRADES_BUY` <- `LIFETIME_TOTAL_TRADES_BUY`
      }
      if (!is.null(`LIFETIME_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`LIFETIME_TOTAL_TRADES_SELL`) && length(`LIFETIME_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_TOTAL_TRADES_SELL`. Must be an integer:", `LIFETIME_TOTAL_TRADES_SELL`))
        }
        self$`LIFETIME_TOTAL_TRADES_SELL` <- `LIFETIME_TOTAL_TRADES_SELL`
      }
      if (!is.null(`LIFETIME_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`LIFETIME_TOTAL_TRADES_UNKNOWN`) && length(`LIFETIME_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `LIFETIME_TOTAL_TRADES_UNKNOWN`))
        }
        self$`LIFETIME_TOTAL_TRADES_UNKNOWN` <- `LIFETIME_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`LIFETIME_VOLUME`)) {
        if (!(is.numeric(`LIFETIME_VOLUME`) && length(`LIFETIME_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_VOLUME`. Must be an integer:", `LIFETIME_VOLUME`))
        }
        self$`LIFETIME_VOLUME` <- `LIFETIME_VOLUME`
      }
      if (!is.null(`LIFETIME_VOLUME_BUY`)) {
        if (!(is.numeric(`LIFETIME_VOLUME_BUY`) && length(`LIFETIME_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_VOLUME_BUY`. Must be an integer:", `LIFETIME_VOLUME_BUY`))
        }
        self$`LIFETIME_VOLUME_BUY` <- `LIFETIME_VOLUME_BUY`
      }
      if (!is.null(`LIFETIME_VOLUME_SELL`)) {
        if (!(is.numeric(`LIFETIME_VOLUME_SELL`) && length(`LIFETIME_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_VOLUME_SELL`. Must be an integer:", `LIFETIME_VOLUME_SELL`))
        }
        self$`LIFETIME_VOLUME_SELL` <- `LIFETIME_VOLUME_SELL`
      }
      if (!is.null(`LIFETIME_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`LIFETIME_VOLUME_UNKNOWN`) && length(`LIFETIME_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `LIFETIME_VOLUME_UNKNOWN`. Must be an integer:", `LIFETIME_VOLUME_UNKNOWN`))
        }
        self$`LIFETIME_VOLUME_UNKNOWN` <- `LIFETIME_VOLUME_UNKNOWN`
      }
      if (!is.null(`MAPPED_INSTRUMENT`)) {
        if (!(is.character(`MAPPED_INSTRUMENT`) && length(`MAPPED_INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `MAPPED_INSTRUMENT`. Must be a string:", `MAPPED_INSTRUMENT`))
        }
        self$`MAPPED_INSTRUMENT` <- `MAPPED_INSTRUMENT`
      }
      if (!is.null(`MARKET`)) {
        if (!(is.character(`MARKET`) && length(`MARKET`) == 1)) {
          stop(paste("Error! Invalid data for `MARKET`. Must be a string:", `MARKET`))
        }
        self$`MARKET` <- `MARKET`
      }
      if (!is.null(`MOVING_180_DAY_HIGH`)) {
        if (!(is.numeric(`MOVING_180_DAY_HIGH`) && length(`MOVING_180_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_HIGH`. Must be an integer:", `MOVING_180_DAY_HIGH`))
        }
        self$`MOVING_180_DAY_HIGH` <- `MOVING_180_DAY_HIGH`
      }
      if (!is.null(`MOVING_180_DAY_LOW`)) {
        if (!(is.numeric(`MOVING_180_DAY_LOW`) && length(`MOVING_180_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_LOW`. Must be an integer:", `MOVING_180_DAY_LOW`))
        }
        self$`MOVING_180_DAY_LOW` <- `MOVING_180_DAY_LOW`
      }
      if (!is.null(`MOVING_180_DAY_OPEN`)) {
        if (!(is.numeric(`MOVING_180_DAY_OPEN`) && length(`MOVING_180_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_OPEN`. Must be an integer:", `MOVING_180_DAY_OPEN`))
        }
        self$`MOVING_180_DAY_OPEN` <- `MOVING_180_DAY_OPEN`
      }
      if (!is.null(`MOVING_180_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_180_DAY_QUOTE_VOLUME`) && length(`MOVING_180_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_QUOTE_VOLUME`. Must be an integer:", `MOVING_180_DAY_QUOTE_VOLUME`))
        }
        self$`MOVING_180_DAY_QUOTE_VOLUME` <- `MOVING_180_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_180_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_180_DAY_QUOTE_VOLUME_BUY`) && length(`MOVING_180_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_180_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_180_DAY_QUOTE_VOLUME_BUY` <- `MOVING_180_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_180_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_180_DAY_QUOTE_VOLUME_SELL`) && length(`MOVING_180_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_180_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_180_DAY_QUOTE_VOLUME_SELL` <- `MOVING_180_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN` <- `MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_180_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_180_DAY_TOTAL_TRADES`) && length(`MOVING_180_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_TOTAL_TRADES`. Must be an integer:", `MOVING_180_DAY_TOTAL_TRADES`))
        }
        self$`MOVING_180_DAY_TOTAL_TRADES` <- `MOVING_180_DAY_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_180_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_180_DAY_TOTAL_TRADES_BUY`) && length(`MOVING_180_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_180_DAY_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_180_DAY_TOTAL_TRADES_BUY` <- `MOVING_180_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_180_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_180_DAY_TOTAL_TRADES_SELL`) && length(`MOVING_180_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_180_DAY_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_180_DAY_TOTAL_TRADES_SELL` <- `MOVING_180_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN` <- `MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_180_DAY_VOLUME`)) {
        if (!(is.numeric(`MOVING_180_DAY_VOLUME`) && length(`MOVING_180_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_VOLUME`. Must be an integer:", `MOVING_180_DAY_VOLUME`))
        }
        self$`MOVING_180_DAY_VOLUME` <- `MOVING_180_DAY_VOLUME`
      }
      if (!is.null(`MOVING_180_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_180_DAY_VOLUME_BUY`) && length(`MOVING_180_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_VOLUME_BUY`. Must be an integer:", `MOVING_180_DAY_VOLUME_BUY`))
        }
        self$`MOVING_180_DAY_VOLUME_BUY` <- `MOVING_180_DAY_VOLUME_BUY`
      }
      if (!is.null(`MOVING_180_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_180_DAY_VOLUME_SELL`) && length(`MOVING_180_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_VOLUME_SELL`. Must be an integer:", `MOVING_180_DAY_VOLUME_SELL`))
        }
        self$`MOVING_180_DAY_VOLUME_SELL` <- `MOVING_180_DAY_VOLUME_SELL`
      }
      if (!is.null(`MOVING_180_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_180_DAY_VOLUME_UNKNOWN`) && length(`MOVING_180_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_180_DAY_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_180_DAY_VOLUME_UNKNOWN`))
        }
        self$`MOVING_180_DAY_VOLUME_UNKNOWN` <- `MOVING_180_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_24_HOUR_HIGH`)) {
        if (!(is.numeric(`MOVING_24_HOUR_HIGH`) && length(`MOVING_24_HOUR_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_HIGH`. Must be an integer:", `MOVING_24_HOUR_HIGH`))
        }
        self$`MOVING_24_HOUR_HIGH` <- `MOVING_24_HOUR_HIGH`
      }
      if (!is.null(`MOVING_24_HOUR_LOW`)) {
        if (!(is.numeric(`MOVING_24_HOUR_LOW`) && length(`MOVING_24_HOUR_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_LOW`. Must be an integer:", `MOVING_24_HOUR_LOW`))
        }
        self$`MOVING_24_HOUR_LOW` <- `MOVING_24_HOUR_LOW`
      }
      if (!is.null(`MOVING_24_HOUR_OPEN`)) {
        if (!(is.numeric(`MOVING_24_HOUR_OPEN`) && length(`MOVING_24_HOUR_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_OPEN`. Must be an integer:", `MOVING_24_HOUR_OPEN`))
        }
        self$`MOVING_24_HOUR_OPEN` <- `MOVING_24_HOUR_OPEN`
      }
      if (!is.null(`MOVING_24_HOUR_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_24_HOUR_QUOTE_VOLUME`) && length(`MOVING_24_HOUR_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_QUOTE_VOLUME`. Must be an integer:", `MOVING_24_HOUR_QUOTE_VOLUME`))
        }
        self$`MOVING_24_HOUR_QUOTE_VOLUME` <- `MOVING_24_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_24_HOUR_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_24_HOUR_QUOTE_VOLUME_BUY`) && length(`MOVING_24_HOUR_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_24_HOUR_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY` <- `MOVING_24_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_24_HOUR_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_24_HOUR_QUOTE_VOLUME_SELL`) && length(`MOVING_24_HOUR_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_24_HOUR_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL` <- `MOVING_24_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN` <- `MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_24_HOUR_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_24_HOUR_TOTAL_TRADES`) && length(`MOVING_24_HOUR_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_TOTAL_TRADES`. Must be an integer:", `MOVING_24_HOUR_TOTAL_TRADES`))
        }
        self$`MOVING_24_HOUR_TOTAL_TRADES` <- `MOVING_24_HOUR_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_24_HOUR_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_24_HOUR_TOTAL_TRADES_BUY`) && length(`MOVING_24_HOUR_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_24_HOUR_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_24_HOUR_TOTAL_TRADES_BUY` <- `MOVING_24_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_24_HOUR_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_24_HOUR_TOTAL_TRADES_SELL`) && length(`MOVING_24_HOUR_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_24_HOUR_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_24_HOUR_TOTAL_TRADES_SELL` <- `MOVING_24_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN` <- `MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_24_HOUR_VOLUME`)) {
        if (!(is.numeric(`MOVING_24_HOUR_VOLUME`) && length(`MOVING_24_HOUR_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_VOLUME`. Must be an integer:", `MOVING_24_HOUR_VOLUME`))
        }
        self$`MOVING_24_HOUR_VOLUME` <- `MOVING_24_HOUR_VOLUME`
      }
      if (!is.null(`MOVING_24_HOUR_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_24_HOUR_VOLUME_BUY`) && length(`MOVING_24_HOUR_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_VOLUME_BUY`. Must be an integer:", `MOVING_24_HOUR_VOLUME_BUY`))
        }
        self$`MOVING_24_HOUR_VOLUME_BUY` <- `MOVING_24_HOUR_VOLUME_BUY`
      }
      if (!is.null(`MOVING_24_HOUR_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_24_HOUR_VOLUME_SELL`) && length(`MOVING_24_HOUR_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_VOLUME_SELL`. Must be an integer:", `MOVING_24_HOUR_VOLUME_SELL`))
        }
        self$`MOVING_24_HOUR_VOLUME_SELL` <- `MOVING_24_HOUR_VOLUME_SELL`
      }
      if (!is.null(`MOVING_24_HOUR_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_24_HOUR_VOLUME_UNKNOWN`) && length(`MOVING_24_HOUR_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_24_HOUR_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_24_HOUR_VOLUME_UNKNOWN`))
        }
        self$`MOVING_24_HOUR_VOLUME_UNKNOWN` <- `MOVING_24_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_30_DAY_HIGH`)) {
        if (!(is.numeric(`MOVING_30_DAY_HIGH`) && length(`MOVING_30_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_HIGH`. Must be an integer:", `MOVING_30_DAY_HIGH`))
        }
        self$`MOVING_30_DAY_HIGH` <- `MOVING_30_DAY_HIGH`
      }
      if (!is.null(`MOVING_30_DAY_LOW`)) {
        if (!(is.numeric(`MOVING_30_DAY_LOW`) && length(`MOVING_30_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_LOW`. Must be an integer:", `MOVING_30_DAY_LOW`))
        }
        self$`MOVING_30_DAY_LOW` <- `MOVING_30_DAY_LOW`
      }
      if (!is.null(`MOVING_30_DAY_OPEN`)) {
        if (!(is.numeric(`MOVING_30_DAY_OPEN`) && length(`MOVING_30_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_OPEN`. Must be an integer:", `MOVING_30_DAY_OPEN`))
        }
        self$`MOVING_30_DAY_OPEN` <- `MOVING_30_DAY_OPEN`
      }
      if (!is.null(`MOVING_30_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_30_DAY_QUOTE_VOLUME`) && length(`MOVING_30_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_QUOTE_VOLUME`. Must be an integer:", `MOVING_30_DAY_QUOTE_VOLUME`))
        }
        self$`MOVING_30_DAY_QUOTE_VOLUME` <- `MOVING_30_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_30_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_30_DAY_QUOTE_VOLUME_BUY`) && length(`MOVING_30_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_30_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_30_DAY_QUOTE_VOLUME_BUY` <- `MOVING_30_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_30_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_30_DAY_QUOTE_VOLUME_SELL`) && length(`MOVING_30_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_30_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_30_DAY_QUOTE_VOLUME_SELL` <- `MOVING_30_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN` <- `MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_30_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_30_DAY_TOTAL_TRADES`) && length(`MOVING_30_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_TOTAL_TRADES`. Must be an integer:", `MOVING_30_DAY_TOTAL_TRADES`))
        }
        self$`MOVING_30_DAY_TOTAL_TRADES` <- `MOVING_30_DAY_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_30_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_30_DAY_TOTAL_TRADES_BUY`) && length(`MOVING_30_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_30_DAY_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_30_DAY_TOTAL_TRADES_BUY` <- `MOVING_30_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_30_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_30_DAY_TOTAL_TRADES_SELL`) && length(`MOVING_30_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_30_DAY_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_30_DAY_TOTAL_TRADES_SELL` <- `MOVING_30_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN` <- `MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_30_DAY_VOLUME`)) {
        if (!(is.numeric(`MOVING_30_DAY_VOLUME`) && length(`MOVING_30_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_VOLUME`. Must be an integer:", `MOVING_30_DAY_VOLUME`))
        }
        self$`MOVING_30_DAY_VOLUME` <- `MOVING_30_DAY_VOLUME`
      }
      if (!is.null(`MOVING_30_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_30_DAY_VOLUME_BUY`) && length(`MOVING_30_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_VOLUME_BUY`. Must be an integer:", `MOVING_30_DAY_VOLUME_BUY`))
        }
        self$`MOVING_30_DAY_VOLUME_BUY` <- `MOVING_30_DAY_VOLUME_BUY`
      }
      if (!is.null(`MOVING_30_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_30_DAY_VOLUME_SELL`) && length(`MOVING_30_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_VOLUME_SELL`. Must be an integer:", `MOVING_30_DAY_VOLUME_SELL`))
        }
        self$`MOVING_30_DAY_VOLUME_SELL` <- `MOVING_30_DAY_VOLUME_SELL`
      }
      if (!is.null(`MOVING_30_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_30_DAY_VOLUME_UNKNOWN`) && length(`MOVING_30_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_30_DAY_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_30_DAY_VOLUME_UNKNOWN`))
        }
        self$`MOVING_30_DAY_VOLUME_UNKNOWN` <- `MOVING_30_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_365_DAY_HIGH`)) {
        if (!(is.numeric(`MOVING_365_DAY_HIGH`) && length(`MOVING_365_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_HIGH`. Must be an integer:", `MOVING_365_DAY_HIGH`))
        }
        self$`MOVING_365_DAY_HIGH` <- `MOVING_365_DAY_HIGH`
      }
      if (!is.null(`MOVING_365_DAY_LOW`)) {
        if (!(is.numeric(`MOVING_365_DAY_LOW`) && length(`MOVING_365_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_LOW`. Must be an integer:", `MOVING_365_DAY_LOW`))
        }
        self$`MOVING_365_DAY_LOW` <- `MOVING_365_DAY_LOW`
      }
      if (!is.null(`MOVING_365_DAY_OPEN`)) {
        if (!(is.numeric(`MOVING_365_DAY_OPEN`) && length(`MOVING_365_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_OPEN`. Must be an integer:", `MOVING_365_DAY_OPEN`))
        }
        self$`MOVING_365_DAY_OPEN` <- `MOVING_365_DAY_OPEN`
      }
      if (!is.null(`MOVING_365_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_365_DAY_QUOTE_VOLUME`) && length(`MOVING_365_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_QUOTE_VOLUME`. Must be an integer:", `MOVING_365_DAY_QUOTE_VOLUME`))
        }
        self$`MOVING_365_DAY_QUOTE_VOLUME` <- `MOVING_365_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_365_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_365_DAY_QUOTE_VOLUME_BUY`) && length(`MOVING_365_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_365_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_365_DAY_QUOTE_VOLUME_BUY` <- `MOVING_365_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_365_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_365_DAY_QUOTE_VOLUME_SELL`) && length(`MOVING_365_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_365_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_365_DAY_QUOTE_VOLUME_SELL` <- `MOVING_365_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN` <- `MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_365_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_365_DAY_TOTAL_TRADES`) && length(`MOVING_365_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_TOTAL_TRADES`. Must be an integer:", `MOVING_365_DAY_TOTAL_TRADES`))
        }
        self$`MOVING_365_DAY_TOTAL_TRADES` <- `MOVING_365_DAY_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_365_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_365_DAY_TOTAL_TRADES_BUY`) && length(`MOVING_365_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_365_DAY_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_365_DAY_TOTAL_TRADES_BUY` <- `MOVING_365_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_365_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_365_DAY_TOTAL_TRADES_SELL`) && length(`MOVING_365_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_365_DAY_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_365_DAY_TOTAL_TRADES_SELL` <- `MOVING_365_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN` <- `MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_365_DAY_VOLUME`)) {
        if (!(is.numeric(`MOVING_365_DAY_VOLUME`) && length(`MOVING_365_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_VOLUME`. Must be an integer:", `MOVING_365_DAY_VOLUME`))
        }
        self$`MOVING_365_DAY_VOLUME` <- `MOVING_365_DAY_VOLUME`
      }
      if (!is.null(`MOVING_365_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_365_DAY_VOLUME_BUY`) && length(`MOVING_365_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_VOLUME_BUY`. Must be an integer:", `MOVING_365_DAY_VOLUME_BUY`))
        }
        self$`MOVING_365_DAY_VOLUME_BUY` <- `MOVING_365_DAY_VOLUME_BUY`
      }
      if (!is.null(`MOVING_365_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_365_DAY_VOLUME_SELL`) && length(`MOVING_365_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_VOLUME_SELL`. Must be an integer:", `MOVING_365_DAY_VOLUME_SELL`))
        }
        self$`MOVING_365_DAY_VOLUME_SELL` <- `MOVING_365_DAY_VOLUME_SELL`
      }
      if (!is.null(`MOVING_365_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_365_DAY_VOLUME_UNKNOWN`) && length(`MOVING_365_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_365_DAY_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_365_DAY_VOLUME_UNKNOWN`))
        }
        self$`MOVING_365_DAY_VOLUME_UNKNOWN` <- `MOVING_365_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_7_DAY_HIGH`)) {
        if (!(is.numeric(`MOVING_7_DAY_HIGH`) && length(`MOVING_7_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_HIGH`. Must be an integer:", `MOVING_7_DAY_HIGH`))
        }
        self$`MOVING_7_DAY_HIGH` <- `MOVING_7_DAY_HIGH`
      }
      if (!is.null(`MOVING_7_DAY_LOW`)) {
        if (!(is.numeric(`MOVING_7_DAY_LOW`) && length(`MOVING_7_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_LOW`. Must be an integer:", `MOVING_7_DAY_LOW`))
        }
        self$`MOVING_7_DAY_LOW` <- `MOVING_7_DAY_LOW`
      }
      if (!is.null(`MOVING_7_DAY_OPEN`)) {
        if (!(is.numeric(`MOVING_7_DAY_OPEN`) && length(`MOVING_7_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_OPEN`. Must be an integer:", `MOVING_7_DAY_OPEN`))
        }
        self$`MOVING_7_DAY_OPEN` <- `MOVING_7_DAY_OPEN`
      }
      if (!is.null(`MOVING_7_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_7_DAY_QUOTE_VOLUME`) && length(`MOVING_7_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_QUOTE_VOLUME`. Must be an integer:", `MOVING_7_DAY_QUOTE_VOLUME`))
        }
        self$`MOVING_7_DAY_QUOTE_VOLUME` <- `MOVING_7_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_7_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_7_DAY_QUOTE_VOLUME_BUY`) && length(`MOVING_7_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_7_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_7_DAY_QUOTE_VOLUME_BUY` <- `MOVING_7_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_7_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_7_DAY_QUOTE_VOLUME_SELL`) && length(`MOVING_7_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_7_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_7_DAY_QUOTE_VOLUME_SELL` <- `MOVING_7_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN` <- `MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_7_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_7_DAY_TOTAL_TRADES`) && length(`MOVING_7_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_TOTAL_TRADES`. Must be an integer:", `MOVING_7_DAY_TOTAL_TRADES`))
        }
        self$`MOVING_7_DAY_TOTAL_TRADES` <- `MOVING_7_DAY_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_7_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_7_DAY_TOTAL_TRADES_BUY`) && length(`MOVING_7_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_7_DAY_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_7_DAY_TOTAL_TRADES_BUY` <- `MOVING_7_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_7_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_7_DAY_TOTAL_TRADES_SELL`) && length(`MOVING_7_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_7_DAY_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_7_DAY_TOTAL_TRADES_SELL` <- `MOVING_7_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN` <- `MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_7_DAY_VOLUME`)) {
        if (!(is.numeric(`MOVING_7_DAY_VOLUME`) && length(`MOVING_7_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_VOLUME`. Must be an integer:", `MOVING_7_DAY_VOLUME`))
        }
        self$`MOVING_7_DAY_VOLUME` <- `MOVING_7_DAY_VOLUME`
      }
      if (!is.null(`MOVING_7_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_7_DAY_VOLUME_BUY`) && length(`MOVING_7_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_VOLUME_BUY`. Must be an integer:", `MOVING_7_DAY_VOLUME_BUY`))
        }
        self$`MOVING_7_DAY_VOLUME_BUY` <- `MOVING_7_DAY_VOLUME_BUY`
      }
      if (!is.null(`MOVING_7_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_7_DAY_VOLUME_SELL`) && length(`MOVING_7_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_VOLUME_SELL`. Must be an integer:", `MOVING_7_DAY_VOLUME_SELL`))
        }
        self$`MOVING_7_DAY_VOLUME_SELL` <- `MOVING_7_DAY_VOLUME_SELL`
      }
      if (!is.null(`MOVING_7_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_7_DAY_VOLUME_UNKNOWN`) && length(`MOVING_7_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_7_DAY_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_7_DAY_VOLUME_UNKNOWN`))
        }
        self$`MOVING_7_DAY_VOLUME_UNKNOWN` <- `MOVING_7_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_90_DAY_HIGH`)) {
        if (!(is.numeric(`MOVING_90_DAY_HIGH`) && length(`MOVING_90_DAY_HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_HIGH`. Must be an integer:", `MOVING_90_DAY_HIGH`))
        }
        self$`MOVING_90_DAY_HIGH` <- `MOVING_90_DAY_HIGH`
      }
      if (!is.null(`MOVING_90_DAY_LOW`)) {
        if (!(is.numeric(`MOVING_90_DAY_LOW`) && length(`MOVING_90_DAY_LOW`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_LOW`. Must be an integer:", `MOVING_90_DAY_LOW`))
        }
        self$`MOVING_90_DAY_LOW` <- `MOVING_90_DAY_LOW`
      }
      if (!is.null(`MOVING_90_DAY_OPEN`)) {
        if (!(is.numeric(`MOVING_90_DAY_OPEN`) && length(`MOVING_90_DAY_OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_OPEN`. Must be an integer:", `MOVING_90_DAY_OPEN`))
        }
        self$`MOVING_90_DAY_OPEN` <- `MOVING_90_DAY_OPEN`
      }
      if (!is.null(`MOVING_90_DAY_QUOTE_VOLUME`)) {
        if (!(is.numeric(`MOVING_90_DAY_QUOTE_VOLUME`) && length(`MOVING_90_DAY_QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_QUOTE_VOLUME`. Must be an integer:", `MOVING_90_DAY_QUOTE_VOLUME`))
        }
        self$`MOVING_90_DAY_QUOTE_VOLUME` <- `MOVING_90_DAY_QUOTE_VOLUME`
      }
      if (!is.null(`MOVING_90_DAY_QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_90_DAY_QUOTE_VOLUME_BUY`) && length(`MOVING_90_DAY_QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_QUOTE_VOLUME_BUY`. Must be an integer:", `MOVING_90_DAY_QUOTE_VOLUME_BUY`))
        }
        self$`MOVING_90_DAY_QUOTE_VOLUME_BUY` <- `MOVING_90_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(`MOVING_90_DAY_QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_90_DAY_QUOTE_VOLUME_SELL`) && length(`MOVING_90_DAY_QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_QUOTE_VOLUME_SELL`. Must be an integer:", `MOVING_90_DAY_QUOTE_VOLUME_SELL`))
        }
        self$`MOVING_90_DAY_QUOTE_VOLUME_SELL` <- `MOVING_90_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`) && length(`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`))
        }
        self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN` <- `MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`MOVING_90_DAY_TOTAL_TRADES`)) {
        if (!(is.numeric(`MOVING_90_DAY_TOTAL_TRADES`) && length(`MOVING_90_DAY_TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_TOTAL_TRADES`. Must be an integer:", `MOVING_90_DAY_TOTAL_TRADES`))
        }
        self$`MOVING_90_DAY_TOTAL_TRADES` <- `MOVING_90_DAY_TOTAL_TRADES`
      }
      if (!is.null(`MOVING_90_DAY_TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`MOVING_90_DAY_TOTAL_TRADES_BUY`) && length(`MOVING_90_DAY_TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_TOTAL_TRADES_BUY`. Must be an integer:", `MOVING_90_DAY_TOTAL_TRADES_BUY`))
        }
        self$`MOVING_90_DAY_TOTAL_TRADES_BUY` <- `MOVING_90_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(`MOVING_90_DAY_TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`MOVING_90_DAY_TOTAL_TRADES_SELL`) && length(`MOVING_90_DAY_TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_TOTAL_TRADES_SELL`. Must be an integer:", `MOVING_90_DAY_TOTAL_TRADES_SELL`))
        }
        self$`MOVING_90_DAY_TOTAL_TRADES_SELL` <- `MOVING_90_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`) && length(`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`. Must be an integer:", `MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`))
        }
        self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN` <- `MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`MOVING_90_DAY_VOLUME`)) {
        if (!(is.numeric(`MOVING_90_DAY_VOLUME`) && length(`MOVING_90_DAY_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_VOLUME`. Must be an integer:", `MOVING_90_DAY_VOLUME`))
        }
        self$`MOVING_90_DAY_VOLUME` <- `MOVING_90_DAY_VOLUME`
      }
      if (!is.null(`MOVING_90_DAY_VOLUME_BUY`)) {
        if (!(is.numeric(`MOVING_90_DAY_VOLUME_BUY`) && length(`MOVING_90_DAY_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_VOLUME_BUY`. Must be an integer:", `MOVING_90_DAY_VOLUME_BUY`))
        }
        self$`MOVING_90_DAY_VOLUME_BUY` <- `MOVING_90_DAY_VOLUME_BUY`
      }
      if (!is.null(`MOVING_90_DAY_VOLUME_SELL`)) {
        if (!(is.numeric(`MOVING_90_DAY_VOLUME_SELL`) && length(`MOVING_90_DAY_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_VOLUME_SELL`. Must be an integer:", `MOVING_90_DAY_VOLUME_SELL`))
        }
        self$`MOVING_90_DAY_VOLUME_SELL` <- `MOVING_90_DAY_VOLUME_SELL`
      }
      if (!is.null(`MOVING_90_DAY_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`MOVING_90_DAY_VOLUME_UNKNOWN`) && length(`MOVING_90_DAY_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `MOVING_90_DAY_VOLUME_UNKNOWN`. Must be an integer:", `MOVING_90_DAY_VOLUME_UNKNOWN`))
        }
        self$`MOVING_90_DAY_VOLUME_UNKNOWN` <- `MOVING_90_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(`PRICE`)) {
        if (!(is.numeric(`PRICE`) && length(`PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `PRICE`. Must be an integer:", `PRICE`))
        }
        self$`PRICE` <- `PRICE`
      }
      if (!is.null(`PRICE_FLAG`)) {
        if (!(is.character(`PRICE_FLAG`) && length(`PRICE_FLAG`) == 1)) {
          stop(paste("Error! Invalid data for `PRICE_FLAG`. Must be a string:", `PRICE_FLAG`))
        }
        self$`PRICE_FLAG` <- `PRICE_FLAG`
      }
      if (!is.null(`PRICE_LAST_UPDATE_TS`)) {
        if (!(is.numeric(`PRICE_LAST_UPDATE_TS`) && length(`PRICE_LAST_UPDATE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `PRICE_LAST_UPDATE_TS`. Must be an integer:", `PRICE_LAST_UPDATE_TS`))
        }
        self$`PRICE_LAST_UPDATE_TS` <- `PRICE_LAST_UPDATE_TS`
      }
      if (!is.null(`QUOTE`)) {
        if (!(is.character(`QUOTE`) && length(`QUOTE`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE`. Must be a string:", `QUOTE`))
        }
        self$`QUOTE` <- `QUOTE`
      }
      if (!is.null(`TOP_ASK_LAST_UPDATE_TS`)) {
        if (!(is.numeric(`TOP_ASK_LAST_UPDATE_TS`) && length(`TOP_ASK_LAST_UPDATE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_ASK_LAST_UPDATE_TS`. Must be an integer:", `TOP_ASK_LAST_UPDATE_TS`))
        }
        self$`TOP_ASK_LAST_UPDATE_TS` <- `TOP_ASK_LAST_UPDATE_TS`
      }
      if (!is.null(`TOP_ASK_PRICE`)) {
        if (!(is.numeric(`TOP_ASK_PRICE`) && length(`TOP_ASK_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_ASK_PRICE`. Must be an integer:", `TOP_ASK_PRICE`))
        }
        self$`TOP_ASK_PRICE` <- `TOP_ASK_PRICE`
      }
      if (!is.null(`TOP_ASK_QUANTITY`)) {
        if (!(is.numeric(`TOP_ASK_QUANTITY`) && length(`TOP_ASK_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_ASK_QUANTITY`. Must be an integer:", `TOP_ASK_QUANTITY`))
        }
        self$`TOP_ASK_QUANTITY` <- `TOP_ASK_QUANTITY`
      }
      if (!is.null(`TOP_BID_LAST_UPDATE_TS`)) {
        if (!(is.numeric(`TOP_BID_LAST_UPDATE_TS`) && length(`TOP_BID_LAST_UPDATE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_BID_LAST_UPDATE_TS`. Must be an integer:", `TOP_BID_LAST_UPDATE_TS`))
        }
        self$`TOP_BID_LAST_UPDATE_TS` <- `TOP_BID_LAST_UPDATE_TS`
      }
      if (!is.null(`TOP_BID_PRICE`)) {
        if (!(is.numeric(`TOP_BID_PRICE`) && length(`TOP_BID_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_BID_PRICE`. Must be an integer:", `TOP_BID_PRICE`))
        }
        self$`TOP_BID_PRICE` <- `TOP_BID_PRICE`
      }
      if (!is.null(`TOP_BID_QUANTITY`)) {
        if (!(is.numeric(`TOP_BID_QUANTITY`) && length(`TOP_BID_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `TOP_BID_QUANTITY`. Must be an integer:", `TOP_BID_QUANTITY`))
        }
        self$`TOP_BID_QUANTITY` <- `TOP_BID_QUANTITY`
      }
      if (!is.null(`TYPE`)) {
        if (!(is.character(`TYPE`) && length(`TYPE`) == 1)) {
          stop(paste("Error! Invalid data for `TYPE`. Must be a string:", `TYPE`))
        }
        self$`TYPE` <- `TYPE`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMARKETDATA in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTMARKETDATAObject <- list()
      if (!is.null(self$`BASE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["BASE"]] <-
          self$`BASE`
      }
      if (!is.null(self$`CCSEQ`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CCSEQ"]] <-
          self$`CCSEQ`
      }
      if (!is.null(self$`CURRENT_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_HIGH"]] <-
          self$`CURRENT_DAY_HIGH`
      }
      if (!is.null(self$`CURRENT_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_LOW"]] <-
          self$`CURRENT_DAY_LOW`
      }
      if (!is.null(self$`CURRENT_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_OPEN"]] <-
          self$`CURRENT_DAY_OPEN`
      }
      if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_QUOTE_VOLUME"]] <-
          self$`CURRENT_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`CURRENT_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`CURRENT_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_TOTAL_TRADES"]] <-
          self$`CURRENT_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_TOTAL_TRADES_BUY"]] <-
          self$`CURRENT_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_TOTAL_TRADES_SELL"]] <-
          self$`CURRENT_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_VOLUME"]] <-
          self$`CURRENT_DAY_VOLUME`
      }
      if (!is.null(self$`CURRENT_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_VOLUME_BUY"]] <-
          self$`CURRENT_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_VOLUME_SELL"]] <-
          self$`CURRENT_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_DAY_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_HOUR_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_HIGH"]] <-
          self$`CURRENT_HOUR_HIGH`
      }
      if (!is.null(self$`CURRENT_HOUR_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_LOW"]] <-
          self$`CURRENT_HOUR_LOW`
      }
      if (!is.null(self$`CURRENT_HOUR_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_OPEN"]] <-
          self$`CURRENT_HOUR_OPEN`
      }
      if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_QUOTE_VOLUME"]] <-
          self$`CURRENT_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_QUOTE_VOLUME_BUY"]] <-
          self$`CURRENT_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_QUOTE_VOLUME_SELL"]] <-
          self$`CURRENT_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_TOTAL_TRADES"]] <-
          self$`CURRENT_HOUR_TOTAL_TRADES`
      }
      if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_TOTAL_TRADES_BUY"]] <-
          self$`CURRENT_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_TOTAL_TRADES_SELL"]] <-
          self$`CURRENT_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_TOTAL_TRADES_UNKNOWN"]] <-
          self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_HOUR_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_VOLUME"]] <-
          self$`CURRENT_HOUR_VOLUME`
      }
      if (!is.null(self$`CURRENT_HOUR_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_VOLUME_BUY"]] <-
          self$`CURRENT_HOUR_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_HOUR_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_VOLUME_SELL"]] <-
          self$`CURRENT_HOUR_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_HOUR_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_HOUR_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_MONTH_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_HIGH"]] <-
          self$`CURRENT_MONTH_HIGH`
      }
      if (!is.null(self$`CURRENT_MONTH_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_LOW"]] <-
          self$`CURRENT_MONTH_LOW`
      }
      if (!is.null(self$`CURRENT_MONTH_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_OPEN"]] <-
          self$`CURRENT_MONTH_OPEN`
      }
      if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_QUOTE_VOLUME"]] <-
          self$`CURRENT_MONTH_QUOTE_VOLUME`
      }
      if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_QUOTE_VOLUME_BUY"]] <-
          self$`CURRENT_MONTH_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_QUOTE_VOLUME_SELL"]] <-
          self$`CURRENT_MONTH_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_TOTAL_TRADES"]] <-
          self$`CURRENT_MONTH_TOTAL_TRADES`
      }
      if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_TOTAL_TRADES_BUY"]] <-
          self$`CURRENT_MONTH_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_TOTAL_TRADES_SELL"]] <-
          self$`CURRENT_MONTH_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_TOTAL_TRADES_UNKNOWN"]] <-
          self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_MONTH_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_VOLUME"]] <-
          self$`CURRENT_MONTH_VOLUME`
      }
      if (!is.null(self$`CURRENT_MONTH_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_VOLUME_BUY"]] <-
          self$`CURRENT_MONTH_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_MONTH_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_VOLUME_SELL"]] <-
          self$`CURRENT_MONTH_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_MONTH_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_MONTH_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_MONTH_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_WEEK_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_HIGH"]] <-
          self$`CURRENT_WEEK_HIGH`
      }
      if (!is.null(self$`CURRENT_WEEK_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_LOW"]] <-
          self$`CURRENT_WEEK_LOW`
      }
      if (!is.null(self$`CURRENT_WEEK_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_OPEN"]] <-
          self$`CURRENT_WEEK_OPEN`
      }
      if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_QUOTE_VOLUME"]] <-
          self$`CURRENT_WEEK_QUOTE_VOLUME`
      }
      if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_QUOTE_VOLUME_BUY"]] <-
          self$`CURRENT_WEEK_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_QUOTE_VOLUME_SELL"]] <-
          self$`CURRENT_WEEK_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_TOTAL_TRADES"]] <-
          self$`CURRENT_WEEK_TOTAL_TRADES`
      }
      if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_TOTAL_TRADES_BUY"]] <-
          self$`CURRENT_WEEK_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_TOTAL_TRADES_SELL"]] <-
          self$`CURRENT_WEEK_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_TOTAL_TRADES_UNKNOWN"]] <-
          self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_WEEK_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_VOLUME"]] <-
          self$`CURRENT_WEEK_VOLUME`
      }
      if (!is.null(self$`CURRENT_WEEK_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_VOLUME_BUY"]] <-
          self$`CURRENT_WEEK_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_WEEK_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_VOLUME_SELL"]] <-
          self$`CURRENT_WEEK_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_WEEK_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_WEEK_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_WEEK_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_YEAR_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_HIGH"]] <-
          self$`CURRENT_YEAR_HIGH`
      }
      if (!is.null(self$`CURRENT_YEAR_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_LOW"]] <-
          self$`CURRENT_YEAR_LOW`
      }
      if (!is.null(self$`CURRENT_YEAR_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_OPEN"]] <-
          self$`CURRENT_YEAR_OPEN`
      }
      if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_QUOTE_VOLUME"]] <-
          self$`CURRENT_YEAR_QUOTE_VOLUME`
      }
      if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_QUOTE_VOLUME_BUY"]] <-
          self$`CURRENT_YEAR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_QUOTE_VOLUME_SELL"]] <-
          self$`CURRENT_YEAR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_TOTAL_TRADES"]] <-
          self$`CURRENT_YEAR_TOTAL_TRADES`
      }
      if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_TOTAL_TRADES_BUY"]] <-
          self$`CURRENT_YEAR_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_TOTAL_TRADES_SELL"]] <-
          self$`CURRENT_YEAR_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_TOTAL_TRADES_UNKNOWN"]] <-
          self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`CURRENT_YEAR_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_VOLUME"]] <-
          self$`CURRENT_YEAR_VOLUME`
      }
      if (!is.null(self$`CURRENT_YEAR_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_VOLUME_BUY"]] <-
          self$`CURRENT_YEAR_VOLUME_BUY`
      }
      if (!is.null(self$`CURRENT_YEAR_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_VOLUME_SELL"]] <-
          self$`CURRENT_YEAR_VOLUME_SELL`
      }
      if (!is.null(self$`CURRENT_YEAR_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["CURRENT_YEAR_VOLUME_UNKNOWN"]] <-
          self$`CURRENT_YEAR_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`INSTRUMENT`)) {
        SPOTINSTRUMENTMARKETDATAObject[["INSTRUMENT"]] <-
          self$`INSTRUMENT`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_CCSEQ`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_CCSEQ"]] <-
          self$`LAST_PROCESSED_TRADE_CCSEQ`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_PRICE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_PRICE"]] <-
          self$`LAST_PROCESSED_TRADE_PRICE`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_QUANTITY"]] <-
          self$`LAST_PROCESSED_TRADE_QUANTITY`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_QUOTE_QUANTITY"]] <-
          self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_SIDE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_SIDE"]] <-
          self$`LAST_PROCESSED_TRADE_SIDE`
      }
      if (!is.null(self$`LAST_PROCESSED_TRADE_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_PROCESSED_TRADE_TS"]] <-
          self$`LAST_PROCESSED_TRADE_TS`
      }
      if (!is.null(self$`LAST_TRADE_CCSEQ`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_TRADE_CCSEQ"]] <-
          self$`LAST_TRADE_CCSEQ`
      }
      if (!is.null(self$`LAST_TRADE_ID`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_TRADE_ID"]] <-
          self$`LAST_TRADE_ID`
      }
      if (!is.null(self$`LAST_TRADE_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_TRADE_QUANTITY"]] <-
          self$`LAST_TRADE_QUANTITY`
      }
      if (!is.null(self$`LAST_TRADE_QUOTE_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_TRADE_QUOTE_QUANTITY"]] <-
          self$`LAST_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(self$`LAST_TRADE_SIDE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LAST_TRADE_SIDE"]] <-
          self$`LAST_TRADE_SIDE`
      }
      if (!is.null(self$`LIFETIME_FIRST_TRADE_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_FIRST_TRADE_TS"]] <-
          self$`LIFETIME_FIRST_TRADE_TS`
      }
      if (!is.null(self$`LIFETIME_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_HIGH"]] <-
          self$`LIFETIME_HIGH`
      }
      if (!is.null(self$`LIFETIME_HIGH_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_HIGH_TS"]] <-
          self$`LIFETIME_HIGH_TS`
      }
      if (!is.null(self$`LIFETIME_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_LOW"]] <-
          self$`LIFETIME_LOW`
      }
      if (!is.null(self$`LIFETIME_LOW_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_LOW_TS"]] <-
          self$`LIFETIME_LOW_TS`
      }
      if (!is.null(self$`LIFETIME_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_OPEN"]] <-
          self$`LIFETIME_OPEN`
      }
      if (!is.null(self$`LIFETIME_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_QUOTE_VOLUME"]] <-
          self$`LIFETIME_QUOTE_VOLUME`
      }
      if (!is.null(self$`LIFETIME_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_QUOTE_VOLUME_BUY"]] <-
          self$`LIFETIME_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`LIFETIME_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_QUOTE_VOLUME_SELL"]] <-
          self$`LIFETIME_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`LIFETIME_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`LIFETIME_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`LIFETIME_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_TOTAL_TRADES"]] <-
          self$`LIFETIME_TOTAL_TRADES`
      }
      if (!is.null(self$`LIFETIME_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_TOTAL_TRADES_BUY"]] <-
          self$`LIFETIME_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`LIFETIME_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_TOTAL_TRADES_SELL"]] <-
          self$`LIFETIME_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`LIFETIME_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_TOTAL_TRADES_UNKNOWN"]] <-
          self$`LIFETIME_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`LIFETIME_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_VOLUME"]] <-
          self$`LIFETIME_VOLUME`
      }
      if (!is.null(self$`LIFETIME_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_VOLUME_BUY"]] <-
          self$`LIFETIME_VOLUME_BUY`
      }
      if (!is.null(self$`LIFETIME_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_VOLUME_SELL"]] <-
          self$`LIFETIME_VOLUME_SELL`
      }
      if (!is.null(self$`LIFETIME_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["LIFETIME_VOLUME_UNKNOWN"]] <-
          self$`LIFETIME_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MAPPED_INSTRUMENT`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MAPPED_INSTRUMENT"]] <-
          self$`MAPPED_INSTRUMENT`
      }
      if (!is.null(self$`MARKET`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MARKET"]] <-
          self$`MARKET`
      }
      if (!is.null(self$`MOVING_180_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_HIGH"]] <-
          self$`MOVING_180_DAY_HIGH`
      }
      if (!is.null(self$`MOVING_180_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_LOW"]] <-
          self$`MOVING_180_DAY_LOW`
      }
      if (!is.null(self$`MOVING_180_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_OPEN"]] <-
          self$`MOVING_180_DAY_OPEN`
      }
      if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_QUOTE_VOLUME"]] <-
          self$`MOVING_180_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_180_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_180_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_TOTAL_TRADES"]] <-
          self$`MOVING_180_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_180_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_180_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_180_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_VOLUME"]] <-
          self$`MOVING_180_DAY_VOLUME`
      }
      if (!is.null(self$`MOVING_180_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_VOLUME_BUY"]] <-
          self$`MOVING_180_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_180_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_VOLUME_SELL"]] <-
          self$`MOVING_180_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_180_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_180_DAY_VOLUME_UNKNOWN"]] <-
          self$`MOVING_180_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_24_HOUR_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_HIGH"]] <-
          self$`MOVING_24_HOUR_HIGH`
      }
      if (!is.null(self$`MOVING_24_HOUR_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_LOW"]] <-
          self$`MOVING_24_HOUR_LOW`
      }
      if (!is.null(self$`MOVING_24_HOUR_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_OPEN"]] <-
          self$`MOVING_24_HOUR_OPEN`
      }
      if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_QUOTE_VOLUME"]] <-
          self$`MOVING_24_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_TOTAL_TRADES"]] <-
          self$`MOVING_24_HOUR_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_24_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_24_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_24_HOUR_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_VOLUME"]] <-
          self$`MOVING_24_HOUR_VOLUME`
      }
      if (!is.null(self$`MOVING_24_HOUR_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_VOLUME_BUY"]] <-
          self$`MOVING_24_HOUR_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_24_HOUR_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_VOLUME_SELL"]] <-
          self$`MOVING_24_HOUR_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_24_HOUR_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_24_HOUR_VOLUME_UNKNOWN"]] <-
          self$`MOVING_24_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_30_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_HIGH"]] <-
          self$`MOVING_30_DAY_HIGH`
      }
      if (!is.null(self$`MOVING_30_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_LOW"]] <-
          self$`MOVING_30_DAY_LOW`
      }
      if (!is.null(self$`MOVING_30_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_OPEN"]] <-
          self$`MOVING_30_DAY_OPEN`
      }
      if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_QUOTE_VOLUME"]] <-
          self$`MOVING_30_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_30_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_30_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_TOTAL_TRADES"]] <-
          self$`MOVING_30_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_30_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_30_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_30_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_VOLUME"]] <-
          self$`MOVING_30_DAY_VOLUME`
      }
      if (!is.null(self$`MOVING_30_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_VOLUME_BUY"]] <-
          self$`MOVING_30_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_30_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_VOLUME_SELL"]] <-
          self$`MOVING_30_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_30_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_30_DAY_VOLUME_UNKNOWN"]] <-
          self$`MOVING_30_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_365_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_HIGH"]] <-
          self$`MOVING_365_DAY_HIGH`
      }
      if (!is.null(self$`MOVING_365_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_LOW"]] <-
          self$`MOVING_365_DAY_LOW`
      }
      if (!is.null(self$`MOVING_365_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_OPEN"]] <-
          self$`MOVING_365_DAY_OPEN`
      }
      if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_QUOTE_VOLUME"]] <-
          self$`MOVING_365_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_365_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_365_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_TOTAL_TRADES"]] <-
          self$`MOVING_365_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_365_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_365_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_365_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_VOLUME"]] <-
          self$`MOVING_365_DAY_VOLUME`
      }
      if (!is.null(self$`MOVING_365_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_VOLUME_BUY"]] <-
          self$`MOVING_365_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_365_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_VOLUME_SELL"]] <-
          self$`MOVING_365_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_365_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_365_DAY_VOLUME_UNKNOWN"]] <-
          self$`MOVING_365_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_7_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_HIGH"]] <-
          self$`MOVING_7_DAY_HIGH`
      }
      if (!is.null(self$`MOVING_7_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_LOW"]] <-
          self$`MOVING_7_DAY_LOW`
      }
      if (!is.null(self$`MOVING_7_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_OPEN"]] <-
          self$`MOVING_7_DAY_OPEN`
      }
      if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_QUOTE_VOLUME"]] <-
          self$`MOVING_7_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_7_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_7_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_TOTAL_TRADES"]] <-
          self$`MOVING_7_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_7_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_7_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_7_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_VOLUME"]] <-
          self$`MOVING_7_DAY_VOLUME`
      }
      if (!is.null(self$`MOVING_7_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_VOLUME_BUY"]] <-
          self$`MOVING_7_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_7_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_VOLUME_SELL"]] <-
          self$`MOVING_7_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_7_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_7_DAY_VOLUME_UNKNOWN"]] <-
          self$`MOVING_7_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_90_DAY_HIGH`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_HIGH"]] <-
          self$`MOVING_90_DAY_HIGH`
      }
      if (!is.null(self$`MOVING_90_DAY_LOW`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_LOW"]] <-
          self$`MOVING_90_DAY_LOW`
      }
      if (!is.null(self$`MOVING_90_DAY_OPEN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_OPEN"]] <-
          self$`MOVING_90_DAY_OPEN`
      }
      if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_QUOTE_VOLUME"]] <-
          self$`MOVING_90_DAY_QUOTE_VOLUME`
      }
      if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_QUOTE_VOLUME_BUY"]] <-
          self$`MOVING_90_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_QUOTE_VOLUME_SELL"]] <-
          self$`MOVING_90_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN"]] <-
          self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_TOTAL_TRADES"]] <-
          self$`MOVING_90_DAY_TOTAL_TRADES`
      }
      if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_TOTAL_TRADES_BUY"]] <-
          self$`MOVING_90_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_TOTAL_TRADES_SELL"]] <-
          self$`MOVING_90_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_TOTAL_TRADES_UNKNOWN"]] <-
          self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`MOVING_90_DAY_VOLUME`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_VOLUME"]] <-
          self$`MOVING_90_DAY_VOLUME`
      }
      if (!is.null(self$`MOVING_90_DAY_VOLUME_BUY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_VOLUME_BUY"]] <-
          self$`MOVING_90_DAY_VOLUME_BUY`
      }
      if (!is.null(self$`MOVING_90_DAY_VOLUME_SELL`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_VOLUME_SELL"]] <-
          self$`MOVING_90_DAY_VOLUME_SELL`
      }
      if (!is.null(self$`MOVING_90_DAY_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTMARKETDATAObject[["MOVING_90_DAY_VOLUME_UNKNOWN"]] <-
          self$`MOVING_90_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`PRICE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["PRICE"]] <-
          self$`PRICE`
      }
      if (!is.null(self$`PRICE_FLAG`)) {
        SPOTINSTRUMENTMARKETDATAObject[["PRICE_FLAG"]] <-
          self$`PRICE_FLAG`
      }
      if (!is.null(self$`PRICE_LAST_UPDATE_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["PRICE_LAST_UPDATE_TS"]] <-
          self$`PRICE_LAST_UPDATE_TS`
      }
      if (!is.null(self$`QUOTE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["QUOTE"]] <-
          self$`QUOTE`
      }
      if (!is.null(self$`TOP_ASK_LAST_UPDATE_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_ASK_LAST_UPDATE_TS"]] <-
          self$`TOP_ASK_LAST_UPDATE_TS`
      }
      if (!is.null(self$`TOP_ASK_PRICE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_ASK_PRICE"]] <-
          self$`TOP_ASK_PRICE`
      }
      if (!is.null(self$`TOP_ASK_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_ASK_QUANTITY"]] <-
          self$`TOP_ASK_QUANTITY`
      }
      if (!is.null(self$`TOP_BID_LAST_UPDATE_TS`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_BID_LAST_UPDATE_TS"]] <-
          self$`TOP_BID_LAST_UPDATE_TS`
      }
      if (!is.null(self$`TOP_BID_PRICE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_BID_PRICE"]] <-
          self$`TOP_BID_PRICE`
      }
      if (!is.null(self$`TOP_BID_QUANTITY`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TOP_BID_QUANTITY"]] <-
          self$`TOP_BID_QUANTITY`
      }
      if (!is.null(self$`TYPE`)) {
        SPOTINSTRUMENTMARKETDATAObject[["TYPE"]] <-
          self$`TYPE`
      }
      SPOTINSTRUMENTMARKETDATAObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMARKETDATA
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`BASE`)) {
        self$`BASE` <- this_object$`BASE`
      }
      if (!is.null(this_object$`CCSEQ`)) {
        self$`CCSEQ` <- this_object$`CCSEQ`
      }
      if (!is.null(this_object$`CURRENT_DAY_HIGH`)) {
        self$`CURRENT_DAY_HIGH` <- this_object$`CURRENT_DAY_HIGH`
      }
      if (!is.null(this_object$`CURRENT_DAY_LOW`)) {
        self$`CURRENT_DAY_LOW` <- this_object$`CURRENT_DAY_LOW`
      }
      if (!is.null(this_object$`CURRENT_DAY_OPEN`)) {
        self$`CURRENT_DAY_OPEN` <- this_object$`CURRENT_DAY_OPEN`
      }
      if (!is.null(this_object$`CURRENT_DAY_QUOTE_VOLUME`)) {
        self$`CURRENT_DAY_QUOTE_VOLUME` <- this_object$`CURRENT_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_DAY_QUOTE_VOLUME_BUY`)) {
        self$`CURRENT_DAY_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_DAY_QUOTE_VOLUME_SELL`)) {
        self$`CURRENT_DAY_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_DAY_TOTAL_TRADES`)) {
        self$`CURRENT_DAY_TOTAL_TRADES` <- this_object$`CURRENT_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`CURRENT_DAY_TOTAL_TRADES_BUY`)) {
        self$`CURRENT_DAY_TOTAL_TRADES_BUY` <- this_object$`CURRENT_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`CURRENT_DAY_TOTAL_TRADES_SELL`)) {
        self$`CURRENT_DAY_TOTAL_TRADES_SELL` <- this_object$`CURRENT_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_DAY_VOLUME`)) {
        self$`CURRENT_DAY_VOLUME` <- this_object$`CURRENT_DAY_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_DAY_VOLUME_BUY`)) {
        self$`CURRENT_DAY_VOLUME_BUY` <- this_object$`CURRENT_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_DAY_VOLUME_SELL`)) {
        self$`CURRENT_DAY_VOLUME_SELL` <- this_object$`CURRENT_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_DAY_VOLUME_UNKNOWN`)) {
        self$`CURRENT_DAY_VOLUME_UNKNOWN` <- this_object$`CURRENT_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_HOUR_HIGH`)) {
        self$`CURRENT_HOUR_HIGH` <- this_object$`CURRENT_HOUR_HIGH`
      }
      if (!is.null(this_object$`CURRENT_HOUR_LOW`)) {
        self$`CURRENT_HOUR_LOW` <- this_object$`CURRENT_HOUR_LOW`
      }
      if (!is.null(this_object$`CURRENT_HOUR_OPEN`)) {
        self$`CURRENT_HOUR_OPEN` <- this_object$`CURRENT_HOUR_OPEN`
      }
      if (!is.null(this_object$`CURRENT_HOUR_QUOTE_VOLUME`)) {
        self$`CURRENT_HOUR_QUOTE_VOLUME` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_HOUR_QUOTE_VOLUME_BUY`)) {
        self$`CURRENT_HOUR_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_HOUR_QUOTE_VOLUME_SELL`)) {
        self$`CURRENT_HOUR_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_HOUR_TOTAL_TRADES`)) {
        self$`CURRENT_HOUR_TOTAL_TRADES` <- this_object$`CURRENT_HOUR_TOTAL_TRADES`
      }
      if (!is.null(this_object$`CURRENT_HOUR_TOTAL_TRADES_BUY`)) {
        self$`CURRENT_HOUR_TOTAL_TRADES_BUY` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`CURRENT_HOUR_TOTAL_TRADES_SELL`)) {
        self$`CURRENT_HOUR_TOTAL_TRADES_SELL` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_HOUR_VOLUME`)) {
        self$`CURRENT_HOUR_VOLUME` <- this_object$`CURRENT_HOUR_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_HOUR_VOLUME_BUY`)) {
        self$`CURRENT_HOUR_VOLUME_BUY` <- this_object$`CURRENT_HOUR_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_HOUR_VOLUME_SELL`)) {
        self$`CURRENT_HOUR_VOLUME_SELL` <- this_object$`CURRENT_HOUR_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_HOUR_VOLUME_UNKNOWN`)) {
        self$`CURRENT_HOUR_VOLUME_UNKNOWN` <- this_object$`CURRENT_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_MONTH_HIGH`)) {
        self$`CURRENT_MONTH_HIGH` <- this_object$`CURRENT_MONTH_HIGH`
      }
      if (!is.null(this_object$`CURRENT_MONTH_LOW`)) {
        self$`CURRENT_MONTH_LOW` <- this_object$`CURRENT_MONTH_LOW`
      }
      if (!is.null(this_object$`CURRENT_MONTH_OPEN`)) {
        self$`CURRENT_MONTH_OPEN` <- this_object$`CURRENT_MONTH_OPEN`
      }
      if (!is.null(this_object$`CURRENT_MONTH_QUOTE_VOLUME`)) {
        self$`CURRENT_MONTH_QUOTE_VOLUME` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_MONTH_QUOTE_VOLUME_BUY`)) {
        self$`CURRENT_MONTH_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_MONTH_QUOTE_VOLUME_SELL`)) {
        self$`CURRENT_MONTH_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`)) {
        self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_MONTH_TOTAL_TRADES`)) {
        self$`CURRENT_MONTH_TOTAL_TRADES` <- this_object$`CURRENT_MONTH_TOTAL_TRADES`
      }
      if (!is.null(this_object$`CURRENT_MONTH_TOTAL_TRADES_BUY`)) {
        self$`CURRENT_MONTH_TOTAL_TRADES_BUY` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`CURRENT_MONTH_TOTAL_TRADES_SELL`)) {
        self$`CURRENT_MONTH_TOTAL_TRADES_SELL` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`)) {
        self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_MONTH_VOLUME`)) {
        self$`CURRENT_MONTH_VOLUME` <- this_object$`CURRENT_MONTH_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_MONTH_VOLUME_BUY`)) {
        self$`CURRENT_MONTH_VOLUME_BUY` <- this_object$`CURRENT_MONTH_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_MONTH_VOLUME_SELL`)) {
        self$`CURRENT_MONTH_VOLUME_SELL` <- this_object$`CURRENT_MONTH_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_MONTH_VOLUME_UNKNOWN`)) {
        self$`CURRENT_MONTH_VOLUME_UNKNOWN` <- this_object$`CURRENT_MONTH_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_WEEK_HIGH`)) {
        self$`CURRENT_WEEK_HIGH` <- this_object$`CURRENT_WEEK_HIGH`
      }
      if (!is.null(this_object$`CURRENT_WEEK_LOW`)) {
        self$`CURRENT_WEEK_LOW` <- this_object$`CURRENT_WEEK_LOW`
      }
      if (!is.null(this_object$`CURRENT_WEEK_OPEN`)) {
        self$`CURRENT_WEEK_OPEN` <- this_object$`CURRENT_WEEK_OPEN`
      }
      if (!is.null(this_object$`CURRENT_WEEK_QUOTE_VOLUME`)) {
        self$`CURRENT_WEEK_QUOTE_VOLUME` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_WEEK_QUOTE_VOLUME_BUY`)) {
        self$`CURRENT_WEEK_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_WEEK_QUOTE_VOLUME_SELL`)) {
        self$`CURRENT_WEEK_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`)) {
        self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_WEEK_TOTAL_TRADES`)) {
        self$`CURRENT_WEEK_TOTAL_TRADES` <- this_object$`CURRENT_WEEK_TOTAL_TRADES`
      }
      if (!is.null(this_object$`CURRENT_WEEK_TOTAL_TRADES_BUY`)) {
        self$`CURRENT_WEEK_TOTAL_TRADES_BUY` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`CURRENT_WEEK_TOTAL_TRADES_SELL`)) {
        self$`CURRENT_WEEK_TOTAL_TRADES_SELL` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`)) {
        self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_WEEK_VOLUME`)) {
        self$`CURRENT_WEEK_VOLUME` <- this_object$`CURRENT_WEEK_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_WEEK_VOLUME_BUY`)) {
        self$`CURRENT_WEEK_VOLUME_BUY` <- this_object$`CURRENT_WEEK_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_WEEK_VOLUME_SELL`)) {
        self$`CURRENT_WEEK_VOLUME_SELL` <- this_object$`CURRENT_WEEK_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_WEEK_VOLUME_UNKNOWN`)) {
        self$`CURRENT_WEEK_VOLUME_UNKNOWN` <- this_object$`CURRENT_WEEK_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_YEAR_HIGH`)) {
        self$`CURRENT_YEAR_HIGH` <- this_object$`CURRENT_YEAR_HIGH`
      }
      if (!is.null(this_object$`CURRENT_YEAR_LOW`)) {
        self$`CURRENT_YEAR_LOW` <- this_object$`CURRENT_YEAR_LOW`
      }
      if (!is.null(this_object$`CURRENT_YEAR_OPEN`)) {
        self$`CURRENT_YEAR_OPEN` <- this_object$`CURRENT_YEAR_OPEN`
      }
      if (!is.null(this_object$`CURRENT_YEAR_QUOTE_VOLUME`)) {
        self$`CURRENT_YEAR_QUOTE_VOLUME` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_YEAR_QUOTE_VOLUME_BUY`)) {
        self$`CURRENT_YEAR_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_YEAR_QUOTE_VOLUME_SELL`)) {
        self$`CURRENT_YEAR_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`)) {
        self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_YEAR_TOTAL_TRADES`)) {
        self$`CURRENT_YEAR_TOTAL_TRADES` <- this_object$`CURRENT_YEAR_TOTAL_TRADES`
      }
      if (!is.null(this_object$`CURRENT_YEAR_TOTAL_TRADES_BUY`)) {
        self$`CURRENT_YEAR_TOTAL_TRADES_BUY` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`CURRENT_YEAR_TOTAL_TRADES_SELL`)) {
        self$`CURRENT_YEAR_TOTAL_TRADES_SELL` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`)) {
        self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`CURRENT_YEAR_VOLUME`)) {
        self$`CURRENT_YEAR_VOLUME` <- this_object$`CURRENT_YEAR_VOLUME`
      }
      if (!is.null(this_object$`CURRENT_YEAR_VOLUME_BUY`)) {
        self$`CURRENT_YEAR_VOLUME_BUY` <- this_object$`CURRENT_YEAR_VOLUME_BUY`
      }
      if (!is.null(this_object$`CURRENT_YEAR_VOLUME_SELL`)) {
        self$`CURRENT_YEAR_VOLUME_SELL` <- this_object$`CURRENT_YEAR_VOLUME_SELL`
      }
      if (!is.null(this_object$`CURRENT_YEAR_VOLUME_UNKNOWN`)) {
        self$`CURRENT_YEAR_VOLUME_UNKNOWN` <- this_object$`CURRENT_YEAR_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`INSTRUMENT`)) {
        self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_CCSEQ`)) {
        self$`LAST_PROCESSED_TRADE_CCSEQ` <- this_object$`LAST_PROCESSED_TRADE_CCSEQ`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_PRICE`)) {
        self$`LAST_PROCESSED_TRADE_PRICE` <- this_object$`LAST_PROCESSED_TRADE_PRICE`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_QUANTITY`)) {
        self$`LAST_PROCESSED_TRADE_QUANTITY` <- this_object$`LAST_PROCESSED_TRADE_QUANTITY`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`)) {
        self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY` <- this_object$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_SIDE`)) {
        self$`LAST_PROCESSED_TRADE_SIDE` <- this_object$`LAST_PROCESSED_TRADE_SIDE`
      }
      if (!is.null(this_object$`LAST_PROCESSED_TRADE_TS`)) {
        self$`LAST_PROCESSED_TRADE_TS` <- this_object$`LAST_PROCESSED_TRADE_TS`
      }
      if (!is.null(this_object$`LAST_TRADE_CCSEQ`)) {
        self$`LAST_TRADE_CCSEQ` <- this_object$`LAST_TRADE_CCSEQ`
      }
      if (!is.null(this_object$`LAST_TRADE_ID`)) {
        self$`LAST_TRADE_ID` <- this_object$`LAST_TRADE_ID`
      }
      if (!is.null(this_object$`LAST_TRADE_QUANTITY`)) {
        self$`LAST_TRADE_QUANTITY` <- this_object$`LAST_TRADE_QUANTITY`
      }
      if (!is.null(this_object$`LAST_TRADE_QUOTE_QUANTITY`)) {
        self$`LAST_TRADE_QUOTE_QUANTITY` <- this_object$`LAST_TRADE_QUOTE_QUANTITY`
      }
      if (!is.null(this_object$`LAST_TRADE_SIDE`)) {
        self$`LAST_TRADE_SIDE` <- this_object$`LAST_TRADE_SIDE`
      }
      if (!is.null(this_object$`LIFETIME_FIRST_TRADE_TS`)) {
        self$`LIFETIME_FIRST_TRADE_TS` <- this_object$`LIFETIME_FIRST_TRADE_TS`
      }
      if (!is.null(this_object$`LIFETIME_HIGH`)) {
        self$`LIFETIME_HIGH` <- this_object$`LIFETIME_HIGH`
      }
      if (!is.null(this_object$`LIFETIME_HIGH_TS`)) {
        self$`LIFETIME_HIGH_TS` <- this_object$`LIFETIME_HIGH_TS`
      }
      if (!is.null(this_object$`LIFETIME_LOW`)) {
        self$`LIFETIME_LOW` <- this_object$`LIFETIME_LOW`
      }
      if (!is.null(this_object$`LIFETIME_LOW_TS`)) {
        self$`LIFETIME_LOW_TS` <- this_object$`LIFETIME_LOW_TS`
      }
      if (!is.null(this_object$`LIFETIME_OPEN`)) {
        self$`LIFETIME_OPEN` <- this_object$`LIFETIME_OPEN`
      }
      if (!is.null(this_object$`LIFETIME_QUOTE_VOLUME`)) {
        self$`LIFETIME_QUOTE_VOLUME` <- this_object$`LIFETIME_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`LIFETIME_QUOTE_VOLUME_BUY`)) {
        self$`LIFETIME_QUOTE_VOLUME_BUY` <- this_object$`LIFETIME_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`LIFETIME_QUOTE_VOLUME_SELL`)) {
        self$`LIFETIME_QUOTE_VOLUME_SELL` <- this_object$`LIFETIME_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`LIFETIME_QUOTE_VOLUME_UNKNOWN`)) {
        self$`LIFETIME_QUOTE_VOLUME_UNKNOWN` <- this_object$`LIFETIME_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`LIFETIME_TOTAL_TRADES`)) {
        self$`LIFETIME_TOTAL_TRADES` <- this_object$`LIFETIME_TOTAL_TRADES`
      }
      if (!is.null(this_object$`LIFETIME_TOTAL_TRADES_BUY`)) {
        self$`LIFETIME_TOTAL_TRADES_BUY` <- this_object$`LIFETIME_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`LIFETIME_TOTAL_TRADES_SELL`)) {
        self$`LIFETIME_TOTAL_TRADES_SELL` <- this_object$`LIFETIME_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`LIFETIME_TOTAL_TRADES_UNKNOWN`)) {
        self$`LIFETIME_TOTAL_TRADES_UNKNOWN` <- this_object$`LIFETIME_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`LIFETIME_VOLUME`)) {
        self$`LIFETIME_VOLUME` <- this_object$`LIFETIME_VOLUME`
      }
      if (!is.null(this_object$`LIFETIME_VOLUME_BUY`)) {
        self$`LIFETIME_VOLUME_BUY` <- this_object$`LIFETIME_VOLUME_BUY`
      }
      if (!is.null(this_object$`LIFETIME_VOLUME_SELL`)) {
        self$`LIFETIME_VOLUME_SELL` <- this_object$`LIFETIME_VOLUME_SELL`
      }
      if (!is.null(this_object$`LIFETIME_VOLUME_UNKNOWN`)) {
        self$`LIFETIME_VOLUME_UNKNOWN` <- this_object$`LIFETIME_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MAPPED_INSTRUMENT`)) {
        self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      }
      if (!is.null(this_object$`MARKET`)) {
        self$`MARKET` <- this_object$`MARKET`
      }
      if (!is.null(this_object$`MOVING_180_DAY_HIGH`)) {
        self$`MOVING_180_DAY_HIGH` <- this_object$`MOVING_180_DAY_HIGH`
      }
      if (!is.null(this_object$`MOVING_180_DAY_LOW`)) {
        self$`MOVING_180_DAY_LOW` <- this_object$`MOVING_180_DAY_LOW`
      }
      if (!is.null(this_object$`MOVING_180_DAY_OPEN`)) {
        self$`MOVING_180_DAY_OPEN` <- this_object$`MOVING_180_DAY_OPEN`
      }
      if (!is.null(this_object$`MOVING_180_DAY_QUOTE_VOLUME`)) {
        self$`MOVING_180_DAY_QUOTE_VOLUME` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_180_DAY_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_180_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_180_DAY_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_180_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_180_DAY_TOTAL_TRADES`)) {
        self$`MOVING_180_DAY_TOTAL_TRADES` <- this_object$`MOVING_180_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_180_DAY_TOTAL_TRADES_BUY`)) {
        self$`MOVING_180_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_180_DAY_TOTAL_TRADES_SELL`)) {
        self$`MOVING_180_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_180_DAY_VOLUME`)) {
        self$`MOVING_180_DAY_VOLUME` <- this_object$`MOVING_180_DAY_VOLUME`
      }
      if (!is.null(this_object$`MOVING_180_DAY_VOLUME_BUY`)) {
        self$`MOVING_180_DAY_VOLUME_BUY` <- this_object$`MOVING_180_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_180_DAY_VOLUME_SELL`)) {
        self$`MOVING_180_DAY_VOLUME_SELL` <- this_object$`MOVING_180_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_180_DAY_VOLUME_UNKNOWN`)) {
        self$`MOVING_180_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_180_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_HIGH`)) {
        self$`MOVING_24_HOUR_HIGH` <- this_object$`MOVING_24_HOUR_HIGH`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_LOW`)) {
        self$`MOVING_24_HOUR_LOW` <- this_object$`MOVING_24_HOUR_LOW`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_OPEN`)) {
        self$`MOVING_24_HOUR_OPEN` <- this_object$`MOVING_24_HOUR_OPEN`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_QUOTE_VOLUME`)) {
        self$`MOVING_24_HOUR_QUOTE_VOLUME` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_TOTAL_TRADES`)) {
        self$`MOVING_24_HOUR_TOTAL_TRADES` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_TOTAL_TRADES_BUY`)) {
        self$`MOVING_24_HOUR_TOTAL_TRADES_BUY` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_TOTAL_TRADES_SELL`)) {
        self$`MOVING_24_HOUR_TOTAL_TRADES_SELL` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_VOLUME`)) {
        self$`MOVING_24_HOUR_VOLUME` <- this_object$`MOVING_24_HOUR_VOLUME`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_VOLUME_BUY`)) {
        self$`MOVING_24_HOUR_VOLUME_BUY` <- this_object$`MOVING_24_HOUR_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_VOLUME_SELL`)) {
        self$`MOVING_24_HOUR_VOLUME_SELL` <- this_object$`MOVING_24_HOUR_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_24_HOUR_VOLUME_UNKNOWN`)) {
        self$`MOVING_24_HOUR_VOLUME_UNKNOWN` <- this_object$`MOVING_24_HOUR_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_30_DAY_HIGH`)) {
        self$`MOVING_30_DAY_HIGH` <- this_object$`MOVING_30_DAY_HIGH`
      }
      if (!is.null(this_object$`MOVING_30_DAY_LOW`)) {
        self$`MOVING_30_DAY_LOW` <- this_object$`MOVING_30_DAY_LOW`
      }
      if (!is.null(this_object$`MOVING_30_DAY_OPEN`)) {
        self$`MOVING_30_DAY_OPEN` <- this_object$`MOVING_30_DAY_OPEN`
      }
      if (!is.null(this_object$`MOVING_30_DAY_QUOTE_VOLUME`)) {
        self$`MOVING_30_DAY_QUOTE_VOLUME` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_30_DAY_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_30_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_30_DAY_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_30_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_30_DAY_TOTAL_TRADES`)) {
        self$`MOVING_30_DAY_TOTAL_TRADES` <- this_object$`MOVING_30_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_30_DAY_TOTAL_TRADES_BUY`)) {
        self$`MOVING_30_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_30_DAY_TOTAL_TRADES_SELL`)) {
        self$`MOVING_30_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_30_DAY_VOLUME`)) {
        self$`MOVING_30_DAY_VOLUME` <- this_object$`MOVING_30_DAY_VOLUME`
      }
      if (!is.null(this_object$`MOVING_30_DAY_VOLUME_BUY`)) {
        self$`MOVING_30_DAY_VOLUME_BUY` <- this_object$`MOVING_30_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_30_DAY_VOLUME_SELL`)) {
        self$`MOVING_30_DAY_VOLUME_SELL` <- this_object$`MOVING_30_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_30_DAY_VOLUME_UNKNOWN`)) {
        self$`MOVING_30_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_30_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_365_DAY_HIGH`)) {
        self$`MOVING_365_DAY_HIGH` <- this_object$`MOVING_365_DAY_HIGH`
      }
      if (!is.null(this_object$`MOVING_365_DAY_LOW`)) {
        self$`MOVING_365_DAY_LOW` <- this_object$`MOVING_365_DAY_LOW`
      }
      if (!is.null(this_object$`MOVING_365_DAY_OPEN`)) {
        self$`MOVING_365_DAY_OPEN` <- this_object$`MOVING_365_DAY_OPEN`
      }
      if (!is.null(this_object$`MOVING_365_DAY_QUOTE_VOLUME`)) {
        self$`MOVING_365_DAY_QUOTE_VOLUME` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_365_DAY_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_365_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_365_DAY_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_365_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_365_DAY_TOTAL_TRADES`)) {
        self$`MOVING_365_DAY_TOTAL_TRADES` <- this_object$`MOVING_365_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_365_DAY_TOTAL_TRADES_BUY`)) {
        self$`MOVING_365_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_365_DAY_TOTAL_TRADES_SELL`)) {
        self$`MOVING_365_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_365_DAY_VOLUME`)) {
        self$`MOVING_365_DAY_VOLUME` <- this_object$`MOVING_365_DAY_VOLUME`
      }
      if (!is.null(this_object$`MOVING_365_DAY_VOLUME_BUY`)) {
        self$`MOVING_365_DAY_VOLUME_BUY` <- this_object$`MOVING_365_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_365_DAY_VOLUME_SELL`)) {
        self$`MOVING_365_DAY_VOLUME_SELL` <- this_object$`MOVING_365_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_365_DAY_VOLUME_UNKNOWN`)) {
        self$`MOVING_365_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_365_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_7_DAY_HIGH`)) {
        self$`MOVING_7_DAY_HIGH` <- this_object$`MOVING_7_DAY_HIGH`
      }
      if (!is.null(this_object$`MOVING_7_DAY_LOW`)) {
        self$`MOVING_7_DAY_LOW` <- this_object$`MOVING_7_DAY_LOW`
      }
      if (!is.null(this_object$`MOVING_7_DAY_OPEN`)) {
        self$`MOVING_7_DAY_OPEN` <- this_object$`MOVING_7_DAY_OPEN`
      }
      if (!is.null(this_object$`MOVING_7_DAY_QUOTE_VOLUME`)) {
        self$`MOVING_7_DAY_QUOTE_VOLUME` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_7_DAY_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_7_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_7_DAY_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_7_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_7_DAY_TOTAL_TRADES`)) {
        self$`MOVING_7_DAY_TOTAL_TRADES` <- this_object$`MOVING_7_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_7_DAY_TOTAL_TRADES_BUY`)) {
        self$`MOVING_7_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_7_DAY_TOTAL_TRADES_SELL`)) {
        self$`MOVING_7_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_7_DAY_VOLUME`)) {
        self$`MOVING_7_DAY_VOLUME` <- this_object$`MOVING_7_DAY_VOLUME`
      }
      if (!is.null(this_object$`MOVING_7_DAY_VOLUME_BUY`)) {
        self$`MOVING_7_DAY_VOLUME_BUY` <- this_object$`MOVING_7_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_7_DAY_VOLUME_SELL`)) {
        self$`MOVING_7_DAY_VOLUME_SELL` <- this_object$`MOVING_7_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_7_DAY_VOLUME_UNKNOWN`)) {
        self$`MOVING_7_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_7_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_90_DAY_HIGH`)) {
        self$`MOVING_90_DAY_HIGH` <- this_object$`MOVING_90_DAY_HIGH`
      }
      if (!is.null(this_object$`MOVING_90_DAY_LOW`)) {
        self$`MOVING_90_DAY_LOW` <- this_object$`MOVING_90_DAY_LOW`
      }
      if (!is.null(this_object$`MOVING_90_DAY_OPEN`)) {
        self$`MOVING_90_DAY_OPEN` <- this_object$`MOVING_90_DAY_OPEN`
      }
      if (!is.null(this_object$`MOVING_90_DAY_QUOTE_VOLUME`)) {
        self$`MOVING_90_DAY_QUOTE_VOLUME` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME`
      }
      if (!is.null(this_object$`MOVING_90_DAY_QUOTE_VOLUME_BUY`)) {
        self$`MOVING_90_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_90_DAY_QUOTE_VOLUME_SELL`)) {
        self$`MOVING_90_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`)) {
        self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_90_DAY_TOTAL_TRADES`)) {
        self$`MOVING_90_DAY_TOTAL_TRADES` <- this_object$`MOVING_90_DAY_TOTAL_TRADES`
      }
      if (!is.null(this_object$`MOVING_90_DAY_TOTAL_TRADES_BUY`)) {
        self$`MOVING_90_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`MOVING_90_DAY_TOTAL_TRADES_SELL`)) {
        self$`MOVING_90_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`)) {
        self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`MOVING_90_DAY_VOLUME`)) {
        self$`MOVING_90_DAY_VOLUME` <- this_object$`MOVING_90_DAY_VOLUME`
      }
      if (!is.null(this_object$`MOVING_90_DAY_VOLUME_BUY`)) {
        self$`MOVING_90_DAY_VOLUME_BUY` <- this_object$`MOVING_90_DAY_VOLUME_BUY`
      }
      if (!is.null(this_object$`MOVING_90_DAY_VOLUME_SELL`)) {
        self$`MOVING_90_DAY_VOLUME_SELL` <- this_object$`MOVING_90_DAY_VOLUME_SELL`
      }
      if (!is.null(this_object$`MOVING_90_DAY_VOLUME_UNKNOWN`)) {
        self$`MOVING_90_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_90_DAY_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`PRICE`)) {
        self$`PRICE` <- this_object$`PRICE`
      }
      if (!is.null(this_object$`PRICE_FLAG`)) {
        self$`PRICE_FLAG` <- this_object$`PRICE_FLAG`
      }
      if (!is.null(this_object$`PRICE_LAST_UPDATE_TS`)) {
        self$`PRICE_LAST_UPDATE_TS` <- this_object$`PRICE_LAST_UPDATE_TS`
      }
      if (!is.null(this_object$`QUOTE`)) {
        self$`QUOTE` <- this_object$`QUOTE`
      }
      if (!is.null(this_object$`TOP_ASK_LAST_UPDATE_TS`)) {
        self$`TOP_ASK_LAST_UPDATE_TS` <- this_object$`TOP_ASK_LAST_UPDATE_TS`
      }
      if (!is.null(this_object$`TOP_ASK_PRICE`)) {
        self$`TOP_ASK_PRICE` <- this_object$`TOP_ASK_PRICE`
      }
      if (!is.null(this_object$`TOP_ASK_QUANTITY`)) {
        self$`TOP_ASK_QUANTITY` <- this_object$`TOP_ASK_QUANTITY`
      }
      if (!is.null(this_object$`TOP_BID_LAST_UPDATE_TS`)) {
        self$`TOP_BID_LAST_UPDATE_TS` <- this_object$`TOP_BID_LAST_UPDATE_TS`
      }
      if (!is.null(this_object$`TOP_BID_PRICE`)) {
        self$`TOP_BID_PRICE` <- this_object$`TOP_BID_PRICE`
      }
      if (!is.null(this_object$`TOP_BID_QUANTITY`)) {
        self$`TOP_BID_QUANTITY` <- this_object$`TOP_BID_QUANTITY`
      }
      if (!is.null(this_object$`TYPE`)) {
        self$`TYPE` <- this_object$`TYPE`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMARKETDATA in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`BASE`)) {
          sprintf(
          '"BASE":
            "%s"
                    ',
          self$`BASE`
          )
        },
        if (!is.null(self$`CCSEQ`)) {
          sprintf(
          '"CCSEQ":
            %d
                    ',
          self$`CCSEQ`
          )
        },
        if (!is.null(self$`CURRENT_DAY_HIGH`)) {
          sprintf(
          '"CURRENT_DAY_HIGH":
            %d
                    ',
          self$`CURRENT_DAY_HIGH`
          )
        },
        if (!is.null(self$`CURRENT_DAY_LOW`)) {
          sprintf(
          '"CURRENT_DAY_LOW":
            %d
                    ',
          self$`CURRENT_DAY_LOW`
          )
        },
        if (!is.null(self$`CURRENT_DAY_OPEN`)) {
          sprintf(
          '"CURRENT_DAY_OPEN":
            %d
                    ',
          self$`CURRENT_DAY_OPEN`
          )
        },
        if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"CURRENT_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`CURRENT_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"CURRENT_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`CURRENT_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"CURRENT_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`CURRENT_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"CURRENT_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`CURRENT_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"CURRENT_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_DAY_VOLUME`)) {
          sprintf(
          '"CURRENT_DAY_VOLUME":
            %d
                    ',
          self$`CURRENT_DAY_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_DAY_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_DAY_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_DAY_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_DAY_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_HIGH`)) {
          sprintf(
          '"CURRENT_HOUR_HIGH":
            %d
                    ',
          self$`CURRENT_HOUR_HIGH`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_LOW`)) {
          sprintf(
          '"CURRENT_HOUR_LOW":
            %d
                    ',
          self$`CURRENT_HOUR_LOW`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_OPEN`)) {
          sprintf(
          '"CURRENT_HOUR_OPEN":
            %d
                    ',
          self$`CURRENT_HOUR_OPEN`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME`)) {
          sprintf(
          '"CURRENT_HOUR_QUOTE_VOLUME":
            %d
                    ',
          self$`CURRENT_HOUR_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_HOUR_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_HOUR_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_HOUR_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_HOUR_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES`)) {
          sprintf(
          '"CURRENT_HOUR_TOTAL_TRADES":
            %d
                    ',
          self$`CURRENT_HOUR_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"CURRENT_HOUR_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`CURRENT_HOUR_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"CURRENT_HOUR_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`CURRENT_HOUR_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"CURRENT_HOUR_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_VOLUME`)) {
          sprintf(
          '"CURRENT_HOUR_VOLUME":
            %d
                    ',
          self$`CURRENT_HOUR_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_HOUR_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_HOUR_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_HOUR_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_HOUR_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_HOUR_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_HOUR_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_HOUR_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_HIGH`)) {
          sprintf(
          '"CURRENT_MONTH_HIGH":
            %d
                    ',
          self$`CURRENT_MONTH_HIGH`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_LOW`)) {
          sprintf(
          '"CURRENT_MONTH_LOW":
            %d
                    ',
          self$`CURRENT_MONTH_LOW`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_OPEN`)) {
          sprintf(
          '"CURRENT_MONTH_OPEN":
            %d
                    ',
          self$`CURRENT_MONTH_OPEN`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME`)) {
          sprintf(
          '"CURRENT_MONTH_QUOTE_VOLUME":
            %d
                    ',
          self$`CURRENT_MONTH_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_MONTH_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_MONTH_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_MONTH_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_MONTH_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES`)) {
          sprintf(
          '"CURRENT_MONTH_TOTAL_TRADES":
            %d
                    ',
          self$`CURRENT_MONTH_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"CURRENT_MONTH_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`CURRENT_MONTH_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"CURRENT_MONTH_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`CURRENT_MONTH_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"CURRENT_MONTH_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_VOLUME`)) {
          sprintf(
          '"CURRENT_MONTH_VOLUME":
            %d
                    ',
          self$`CURRENT_MONTH_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_MONTH_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_MONTH_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_MONTH_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_MONTH_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_MONTH_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_MONTH_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_MONTH_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_HIGH`)) {
          sprintf(
          '"CURRENT_WEEK_HIGH":
            %d
                    ',
          self$`CURRENT_WEEK_HIGH`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_LOW`)) {
          sprintf(
          '"CURRENT_WEEK_LOW":
            %d
                    ',
          self$`CURRENT_WEEK_LOW`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_OPEN`)) {
          sprintf(
          '"CURRENT_WEEK_OPEN":
            %d
                    ',
          self$`CURRENT_WEEK_OPEN`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME`)) {
          sprintf(
          '"CURRENT_WEEK_QUOTE_VOLUME":
            %d
                    ',
          self$`CURRENT_WEEK_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_WEEK_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_WEEK_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_WEEK_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_WEEK_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES`)) {
          sprintf(
          '"CURRENT_WEEK_TOTAL_TRADES":
            %d
                    ',
          self$`CURRENT_WEEK_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"CURRENT_WEEK_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`CURRENT_WEEK_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"CURRENT_WEEK_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`CURRENT_WEEK_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"CURRENT_WEEK_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_VOLUME`)) {
          sprintf(
          '"CURRENT_WEEK_VOLUME":
            %d
                    ',
          self$`CURRENT_WEEK_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_WEEK_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_WEEK_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_WEEK_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_WEEK_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_WEEK_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_WEEK_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_WEEK_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_HIGH`)) {
          sprintf(
          '"CURRENT_YEAR_HIGH":
            %d
                    ',
          self$`CURRENT_YEAR_HIGH`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_LOW`)) {
          sprintf(
          '"CURRENT_YEAR_LOW":
            %d
                    ',
          self$`CURRENT_YEAR_LOW`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_OPEN`)) {
          sprintf(
          '"CURRENT_YEAR_OPEN":
            %d
                    ',
          self$`CURRENT_YEAR_OPEN`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME`)) {
          sprintf(
          '"CURRENT_YEAR_QUOTE_VOLUME":
            %d
                    ',
          self$`CURRENT_YEAR_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_YEAR_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_YEAR_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_YEAR_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_YEAR_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES`)) {
          sprintf(
          '"CURRENT_YEAR_TOTAL_TRADES":
            %d
                    ',
          self$`CURRENT_YEAR_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"CURRENT_YEAR_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`CURRENT_YEAR_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"CURRENT_YEAR_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`CURRENT_YEAR_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"CURRENT_YEAR_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_VOLUME`)) {
          sprintf(
          '"CURRENT_YEAR_VOLUME":
            %d
                    ',
          self$`CURRENT_YEAR_VOLUME`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_VOLUME_BUY`)) {
          sprintf(
          '"CURRENT_YEAR_VOLUME_BUY":
            %d
                    ',
          self$`CURRENT_YEAR_VOLUME_BUY`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_VOLUME_SELL`)) {
          sprintf(
          '"CURRENT_YEAR_VOLUME_SELL":
            %d
                    ',
          self$`CURRENT_YEAR_VOLUME_SELL`
          )
        },
        if (!is.null(self$`CURRENT_YEAR_VOLUME_UNKNOWN`)) {
          sprintf(
          '"CURRENT_YEAR_VOLUME_UNKNOWN":
            %d
                    ',
          self$`CURRENT_YEAR_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`INSTRUMENT`)) {
          sprintf(
          '"INSTRUMENT":
            "%s"
                    ',
          self$`INSTRUMENT`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_CCSEQ`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_CCSEQ":
            "%s"
                    ',
          self$`LAST_PROCESSED_TRADE_CCSEQ`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_PRICE`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_PRICE":
            %d
                    ',
          self$`LAST_PROCESSED_TRADE_PRICE`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_QUANTITY`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_QUANTITY":
            %d
                    ',
          self$`LAST_PROCESSED_TRADE_QUANTITY`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_QUOTE_QUANTITY":
            %d
                    ',
          self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_SIDE`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_SIDE":
            "%s"
                    ',
          self$`LAST_PROCESSED_TRADE_SIDE`
          )
        },
        if (!is.null(self$`LAST_PROCESSED_TRADE_TS`)) {
          sprintf(
          '"LAST_PROCESSED_TRADE_TS":
            %d
                    ',
          self$`LAST_PROCESSED_TRADE_TS`
          )
        },
        if (!is.null(self$`LAST_TRADE_CCSEQ`)) {
          sprintf(
          '"LAST_TRADE_CCSEQ":
            "%s"
                    ',
          self$`LAST_TRADE_CCSEQ`
          )
        },
        if (!is.null(self$`LAST_TRADE_ID`)) {
          sprintf(
          '"LAST_TRADE_ID":
            "%s"
                    ',
          self$`LAST_TRADE_ID`
          )
        },
        if (!is.null(self$`LAST_TRADE_QUANTITY`)) {
          sprintf(
          '"LAST_TRADE_QUANTITY":
            %d
                    ',
          self$`LAST_TRADE_QUANTITY`
          )
        },
        if (!is.null(self$`LAST_TRADE_QUOTE_QUANTITY`)) {
          sprintf(
          '"LAST_TRADE_QUOTE_QUANTITY":
            %d
                    ',
          self$`LAST_TRADE_QUOTE_QUANTITY`
          )
        },
        if (!is.null(self$`LAST_TRADE_SIDE`)) {
          sprintf(
          '"LAST_TRADE_SIDE":
            "%s"
                    ',
          self$`LAST_TRADE_SIDE`
          )
        },
        if (!is.null(self$`LIFETIME_FIRST_TRADE_TS`)) {
          sprintf(
          '"LIFETIME_FIRST_TRADE_TS":
            %d
                    ',
          self$`LIFETIME_FIRST_TRADE_TS`
          )
        },
        if (!is.null(self$`LIFETIME_HIGH`)) {
          sprintf(
          '"LIFETIME_HIGH":
            %d
                    ',
          self$`LIFETIME_HIGH`
          )
        },
        if (!is.null(self$`LIFETIME_HIGH_TS`)) {
          sprintf(
          '"LIFETIME_HIGH_TS":
            %d
                    ',
          self$`LIFETIME_HIGH_TS`
          )
        },
        if (!is.null(self$`LIFETIME_LOW`)) {
          sprintf(
          '"LIFETIME_LOW":
            %d
                    ',
          self$`LIFETIME_LOW`
          )
        },
        if (!is.null(self$`LIFETIME_LOW_TS`)) {
          sprintf(
          '"LIFETIME_LOW_TS":
            %d
                    ',
          self$`LIFETIME_LOW_TS`
          )
        },
        if (!is.null(self$`LIFETIME_OPEN`)) {
          sprintf(
          '"LIFETIME_OPEN":
            %d
                    ',
          self$`LIFETIME_OPEN`
          )
        },
        if (!is.null(self$`LIFETIME_QUOTE_VOLUME`)) {
          sprintf(
          '"LIFETIME_QUOTE_VOLUME":
            %d
                    ',
          self$`LIFETIME_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`LIFETIME_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"LIFETIME_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`LIFETIME_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`LIFETIME_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"LIFETIME_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`LIFETIME_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`LIFETIME_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"LIFETIME_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`LIFETIME_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`LIFETIME_TOTAL_TRADES`)) {
          sprintf(
          '"LIFETIME_TOTAL_TRADES":
            %d
                    ',
          self$`LIFETIME_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`LIFETIME_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"LIFETIME_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`LIFETIME_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`LIFETIME_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"LIFETIME_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`LIFETIME_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`LIFETIME_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"LIFETIME_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`LIFETIME_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`LIFETIME_VOLUME`)) {
          sprintf(
          '"LIFETIME_VOLUME":
            %d
                    ',
          self$`LIFETIME_VOLUME`
          )
        },
        if (!is.null(self$`LIFETIME_VOLUME_BUY`)) {
          sprintf(
          '"LIFETIME_VOLUME_BUY":
            %d
                    ',
          self$`LIFETIME_VOLUME_BUY`
          )
        },
        if (!is.null(self$`LIFETIME_VOLUME_SELL`)) {
          sprintf(
          '"LIFETIME_VOLUME_SELL":
            %d
                    ',
          self$`LIFETIME_VOLUME_SELL`
          )
        },
        if (!is.null(self$`LIFETIME_VOLUME_UNKNOWN`)) {
          sprintf(
          '"LIFETIME_VOLUME_UNKNOWN":
            %d
                    ',
          self$`LIFETIME_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MAPPED_INSTRUMENT`)) {
          sprintf(
          '"MAPPED_INSTRUMENT":
            "%s"
                    ',
          self$`MAPPED_INSTRUMENT`
          )
        },
        if (!is.null(self$`MARKET`)) {
          sprintf(
          '"MARKET":
            "%s"
                    ',
          self$`MARKET`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_HIGH`)) {
          sprintf(
          '"MOVING_180_DAY_HIGH":
            %d
                    ',
          self$`MOVING_180_DAY_HIGH`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_LOW`)) {
          sprintf(
          '"MOVING_180_DAY_LOW":
            %d
                    ',
          self$`MOVING_180_DAY_LOW`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_OPEN`)) {
          sprintf(
          '"MOVING_180_DAY_OPEN":
            %d
                    ',
          self$`MOVING_180_DAY_OPEN`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_180_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_180_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_180_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_180_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_180_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_180_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_180_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_180_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_180_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_180_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_180_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_180_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_180_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_VOLUME`)) {
          sprintf(
          '"MOVING_180_DAY_VOLUME":
            %d
                    ',
          self$`MOVING_180_DAY_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_180_DAY_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_180_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_180_DAY_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_180_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_180_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_180_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_180_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_HIGH`)) {
          sprintf(
          '"MOVING_24_HOUR_HIGH":
            %d
                    ',
          self$`MOVING_24_HOUR_HIGH`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_LOW`)) {
          sprintf(
          '"MOVING_24_HOUR_LOW":
            %d
                    ',
          self$`MOVING_24_HOUR_LOW`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_OPEN`)) {
          sprintf(
          '"MOVING_24_HOUR_OPEN":
            %d
                    ',
          self$`MOVING_24_HOUR_OPEN`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_24_HOUR_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_24_HOUR_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_24_HOUR_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_24_HOUR_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_24_HOUR_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_24_HOUR_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_24_HOUR_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_24_HOUR_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_24_HOUR_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_24_HOUR_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_VOLUME`)) {
          sprintf(
          '"MOVING_24_HOUR_VOLUME":
            %d
                    ',
          self$`MOVING_24_HOUR_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_24_HOUR_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_24_HOUR_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_24_HOUR_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_24_HOUR_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_24_HOUR_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_24_HOUR_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_24_HOUR_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_HIGH`)) {
          sprintf(
          '"MOVING_30_DAY_HIGH":
            %d
                    ',
          self$`MOVING_30_DAY_HIGH`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_LOW`)) {
          sprintf(
          '"MOVING_30_DAY_LOW":
            %d
                    ',
          self$`MOVING_30_DAY_LOW`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_OPEN`)) {
          sprintf(
          '"MOVING_30_DAY_OPEN":
            %d
                    ',
          self$`MOVING_30_DAY_OPEN`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_30_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_30_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_30_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_30_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_30_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_30_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_30_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_30_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_30_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_30_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_30_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_30_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_30_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_VOLUME`)) {
          sprintf(
          '"MOVING_30_DAY_VOLUME":
            %d
                    ',
          self$`MOVING_30_DAY_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_30_DAY_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_30_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_30_DAY_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_30_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_30_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_30_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_30_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_HIGH`)) {
          sprintf(
          '"MOVING_365_DAY_HIGH":
            %d
                    ',
          self$`MOVING_365_DAY_HIGH`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_LOW`)) {
          sprintf(
          '"MOVING_365_DAY_LOW":
            %d
                    ',
          self$`MOVING_365_DAY_LOW`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_OPEN`)) {
          sprintf(
          '"MOVING_365_DAY_OPEN":
            %d
                    ',
          self$`MOVING_365_DAY_OPEN`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_365_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_365_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_365_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_365_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_365_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_365_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_365_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_365_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_365_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_365_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_365_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_365_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_365_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_VOLUME`)) {
          sprintf(
          '"MOVING_365_DAY_VOLUME":
            %d
                    ',
          self$`MOVING_365_DAY_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_365_DAY_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_365_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_365_DAY_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_365_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_365_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_365_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_365_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_HIGH`)) {
          sprintf(
          '"MOVING_7_DAY_HIGH":
            %d
                    ',
          self$`MOVING_7_DAY_HIGH`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_LOW`)) {
          sprintf(
          '"MOVING_7_DAY_LOW":
            %d
                    ',
          self$`MOVING_7_DAY_LOW`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_OPEN`)) {
          sprintf(
          '"MOVING_7_DAY_OPEN":
            %d
                    ',
          self$`MOVING_7_DAY_OPEN`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_7_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_7_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_7_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_7_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_7_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_7_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_7_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_7_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_7_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_7_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_7_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_7_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_7_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_VOLUME`)) {
          sprintf(
          '"MOVING_7_DAY_VOLUME":
            %d
                    ',
          self$`MOVING_7_DAY_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_7_DAY_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_7_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_7_DAY_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_7_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_7_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_7_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_7_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_HIGH`)) {
          sprintf(
          '"MOVING_90_DAY_HIGH":
            %d
                    ',
          self$`MOVING_90_DAY_HIGH`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_LOW`)) {
          sprintf(
          '"MOVING_90_DAY_LOW":
            %d
                    ',
          self$`MOVING_90_DAY_LOW`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_OPEN`)) {
          sprintf(
          '"MOVING_90_DAY_OPEN":
            %d
                    ',
          self$`MOVING_90_DAY_OPEN`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME`)) {
          sprintf(
          '"MOVING_90_DAY_QUOTE_VOLUME":
            %d
                    ',
          self$`MOVING_90_DAY_QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_90_DAY_QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_90_DAY_QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_90_DAY_QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_90_DAY_QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES`)) {
          sprintf(
          '"MOVING_90_DAY_TOTAL_TRADES":
            %d
                    ',
          self$`MOVING_90_DAY_TOTAL_TRADES`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_BUY`)) {
          sprintf(
          '"MOVING_90_DAY_TOTAL_TRADES_BUY":
            %d
                    ',
          self$`MOVING_90_DAY_TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_SELL`)) {
          sprintf(
          '"MOVING_90_DAY_TOTAL_TRADES_SELL":
            %d
                    ',
          self$`MOVING_90_DAY_TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"MOVING_90_DAY_TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_VOLUME`)) {
          sprintf(
          '"MOVING_90_DAY_VOLUME":
            %d
                    ',
          self$`MOVING_90_DAY_VOLUME`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_VOLUME_BUY`)) {
          sprintf(
          '"MOVING_90_DAY_VOLUME_BUY":
            %d
                    ',
          self$`MOVING_90_DAY_VOLUME_BUY`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_VOLUME_SELL`)) {
          sprintf(
          '"MOVING_90_DAY_VOLUME_SELL":
            %d
                    ',
          self$`MOVING_90_DAY_VOLUME_SELL`
          )
        },
        if (!is.null(self$`MOVING_90_DAY_VOLUME_UNKNOWN`)) {
          sprintf(
          '"MOVING_90_DAY_VOLUME_UNKNOWN":
            %d
                    ',
          self$`MOVING_90_DAY_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`PRICE`)) {
          sprintf(
          '"PRICE":
            %d
                    ',
          self$`PRICE`
          )
        },
        if (!is.null(self$`PRICE_FLAG`)) {
          sprintf(
          '"PRICE_FLAG":
            "%s"
                    ',
          self$`PRICE_FLAG`
          )
        },
        if (!is.null(self$`PRICE_LAST_UPDATE_TS`)) {
          sprintf(
          '"PRICE_LAST_UPDATE_TS":
            %d
                    ',
          self$`PRICE_LAST_UPDATE_TS`
          )
        },
        if (!is.null(self$`QUOTE`)) {
          sprintf(
          '"QUOTE":
            "%s"
                    ',
          self$`QUOTE`
          )
        },
        if (!is.null(self$`TOP_ASK_LAST_UPDATE_TS`)) {
          sprintf(
          '"TOP_ASK_LAST_UPDATE_TS":
            %d
                    ',
          self$`TOP_ASK_LAST_UPDATE_TS`
          )
        },
        if (!is.null(self$`TOP_ASK_PRICE`)) {
          sprintf(
          '"TOP_ASK_PRICE":
            %d
                    ',
          self$`TOP_ASK_PRICE`
          )
        },
        if (!is.null(self$`TOP_ASK_QUANTITY`)) {
          sprintf(
          '"TOP_ASK_QUANTITY":
            %d
                    ',
          self$`TOP_ASK_QUANTITY`
          )
        },
        if (!is.null(self$`TOP_BID_LAST_UPDATE_TS`)) {
          sprintf(
          '"TOP_BID_LAST_UPDATE_TS":
            %d
                    ',
          self$`TOP_BID_LAST_UPDATE_TS`
          )
        },
        if (!is.null(self$`TOP_BID_PRICE`)) {
          sprintf(
          '"TOP_BID_PRICE":
            %d
                    ',
          self$`TOP_BID_PRICE`
          )
        },
        if (!is.null(self$`TOP_BID_QUANTITY`)) {
          sprintf(
          '"TOP_BID_QUANTITY":
            %d
                    ',
          self$`TOP_BID_QUANTITY`
          )
        },
        if (!is.null(self$`TYPE`)) {
          sprintf(
          '"TYPE":
            "%s"
                    ',
          self$`TYPE`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMARKETDATA
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`BASE` <- this_object$`BASE`
      self$`CCSEQ` <- this_object$`CCSEQ`
      self$`CURRENT_DAY_HIGH` <- this_object$`CURRENT_DAY_HIGH`
      self$`CURRENT_DAY_LOW` <- this_object$`CURRENT_DAY_LOW`
      self$`CURRENT_DAY_OPEN` <- this_object$`CURRENT_DAY_OPEN`
      self$`CURRENT_DAY_QUOTE_VOLUME` <- this_object$`CURRENT_DAY_QUOTE_VOLUME`
      self$`CURRENT_DAY_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_BUY`
      self$`CURRENT_DAY_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_SELL`
      self$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`CURRENT_DAY_TOTAL_TRADES` <- this_object$`CURRENT_DAY_TOTAL_TRADES`
      self$`CURRENT_DAY_TOTAL_TRADES_BUY` <- this_object$`CURRENT_DAY_TOTAL_TRADES_BUY`
      self$`CURRENT_DAY_TOTAL_TRADES_SELL` <- this_object$`CURRENT_DAY_TOTAL_TRADES_SELL`
      self$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_DAY_TOTAL_TRADES_UNKNOWN`
      self$`CURRENT_DAY_VOLUME` <- this_object$`CURRENT_DAY_VOLUME`
      self$`CURRENT_DAY_VOLUME_BUY` <- this_object$`CURRENT_DAY_VOLUME_BUY`
      self$`CURRENT_DAY_VOLUME_SELL` <- this_object$`CURRENT_DAY_VOLUME_SELL`
      self$`CURRENT_DAY_VOLUME_UNKNOWN` <- this_object$`CURRENT_DAY_VOLUME_UNKNOWN`
      self$`CURRENT_HOUR_HIGH` <- this_object$`CURRENT_HOUR_HIGH`
      self$`CURRENT_HOUR_LOW` <- this_object$`CURRENT_HOUR_LOW`
      self$`CURRENT_HOUR_OPEN` <- this_object$`CURRENT_HOUR_OPEN`
      self$`CURRENT_HOUR_QUOTE_VOLUME` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME`
      self$`CURRENT_HOUR_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_BUY`
      self$`CURRENT_HOUR_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_SELL`
      self$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN`
      self$`CURRENT_HOUR_TOTAL_TRADES` <- this_object$`CURRENT_HOUR_TOTAL_TRADES`
      self$`CURRENT_HOUR_TOTAL_TRADES_BUY` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_BUY`
      self$`CURRENT_HOUR_TOTAL_TRADES_SELL` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_SELL`
      self$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_HOUR_TOTAL_TRADES_UNKNOWN`
      self$`CURRENT_HOUR_VOLUME` <- this_object$`CURRENT_HOUR_VOLUME`
      self$`CURRENT_HOUR_VOLUME_BUY` <- this_object$`CURRENT_HOUR_VOLUME_BUY`
      self$`CURRENT_HOUR_VOLUME_SELL` <- this_object$`CURRENT_HOUR_VOLUME_SELL`
      self$`CURRENT_HOUR_VOLUME_UNKNOWN` <- this_object$`CURRENT_HOUR_VOLUME_UNKNOWN`
      self$`CURRENT_MONTH_HIGH` <- this_object$`CURRENT_MONTH_HIGH`
      self$`CURRENT_MONTH_LOW` <- this_object$`CURRENT_MONTH_LOW`
      self$`CURRENT_MONTH_OPEN` <- this_object$`CURRENT_MONTH_OPEN`
      self$`CURRENT_MONTH_QUOTE_VOLUME` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME`
      self$`CURRENT_MONTH_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_BUY`
      self$`CURRENT_MONTH_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_SELL`
      self$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN`
      self$`CURRENT_MONTH_TOTAL_TRADES` <- this_object$`CURRENT_MONTH_TOTAL_TRADES`
      self$`CURRENT_MONTH_TOTAL_TRADES_BUY` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_BUY`
      self$`CURRENT_MONTH_TOTAL_TRADES_SELL` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_SELL`
      self$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_MONTH_TOTAL_TRADES_UNKNOWN`
      self$`CURRENT_MONTH_VOLUME` <- this_object$`CURRENT_MONTH_VOLUME`
      self$`CURRENT_MONTH_VOLUME_BUY` <- this_object$`CURRENT_MONTH_VOLUME_BUY`
      self$`CURRENT_MONTH_VOLUME_SELL` <- this_object$`CURRENT_MONTH_VOLUME_SELL`
      self$`CURRENT_MONTH_VOLUME_UNKNOWN` <- this_object$`CURRENT_MONTH_VOLUME_UNKNOWN`
      self$`CURRENT_WEEK_HIGH` <- this_object$`CURRENT_WEEK_HIGH`
      self$`CURRENT_WEEK_LOW` <- this_object$`CURRENT_WEEK_LOW`
      self$`CURRENT_WEEK_OPEN` <- this_object$`CURRENT_WEEK_OPEN`
      self$`CURRENT_WEEK_QUOTE_VOLUME` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME`
      self$`CURRENT_WEEK_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_BUY`
      self$`CURRENT_WEEK_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_SELL`
      self$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN`
      self$`CURRENT_WEEK_TOTAL_TRADES` <- this_object$`CURRENT_WEEK_TOTAL_TRADES`
      self$`CURRENT_WEEK_TOTAL_TRADES_BUY` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_BUY`
      self$`CURRENT_WEEK_TOTAL_TRADES_SELL` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_SELL`
      self$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_WEEK_TOTAL_TRADES_UNKNOWN`
      self$`CURRENT_WEEK_VOLUME` <- this_object$`CURRENT_WEEK_VOLUME`
      self$`CURRENT_WEEK_VOLUME_BUY` <- this_object$`CURRENT_WEEK_VOLUME_BUY`
      self$`CURRENT_WEEK_VOLUME_SELL` <- this_object$`CURRENT_WEEK_VOLUME_SELL`
      self$`CURRENT_WEEK_VOLUME_UNKNOWN` <- this_object$`CURRENT_WEEK_VOLUME_UNKNOWN`
      self$`CURRENT_YEAR_HIGH` <- this_object$`CURRENT_YEAR_HIGH`
      self$`CURRENT_YEAR_LOW` <- this_object$`CURRENT_YEAR_LOW`
      self$`CURRENT_YEAR_OPEN` <- this_object$`CURRENT_YEAR_OPEN`
      self$`CURRENT_YEAR_QUOTE_VOLUME` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME`
      self$`CURRENT_YEAR_QUOTE_VOLUME_BUY` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_BUY`
      self$`CURRENT_YEAR_QUOTE_VOLUME_SELL` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_SELL`
      self$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN` <- this_object$`CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN`
      self$`CURRENT_YEAR_TOTAL_TRADES` <- this_object$`CURRENT_YEAR_TOTAL_TRADES`
      self$`CURRENT_YEAR_TOTAL_TRADES_BUY` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_BUY`
      self$`CURRENT_YEAR_TOTAL_TRADES_SELL` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_SELL`
      self$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN` <- this_object$`CURRENT_YEAR_TOTAL_TRADES_UNKNOWN`
      self$`CURRENT_YEAR_VOLUME` <- this_object$`CURRENT_YEAR_VOLUME`
      self$`CURRENT_YEAR_VOLUME_BUY` <- this_object$`CURRENT_YEAR_VOLUME_BUY`
      self$`CURRENT_YEAR_VOLUME_SELL` <- this_object$`CURRENT_YEAR_VOLUME_SELL`
      self$`CURRENT_YEAR_VOLUME_UNKNOWN` <- this_object$`CURRENT_YEAR_VOLUME_UNKNOWN`
      self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      self$`LAST_PROCESSED_TRADE_CCSEQ` <- this_object$`LAST_PROCESSED_TRADE_CCSEQ`
      self$`LAST_PROCESSED_TRADE_PRICE` <- this_object$`LAST_PROCESSED_TRADE_PRICE`
      self$`LAST_PROCESSED_TRADE_QUANTITY` <- this_object$`LAST_PROCESSED_TRADE_QUANTITY`
      self$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY` <- this_object$`LAST_PROCESSED_TRADE_QUOTE_QUANTITY`
      self$`LAST_PROCESSED_TRADE_SIDE` <- this_object$`LAST_PROCESSED_TRADE_SIDE`
      self$`LAST_PROCESSED_TRADE_TS` <- this_object$`LAST_PROCESSED_TRADE_TS`
      self$`LAST_TRADE_CCSEQ` <- this_object$`LAST_TRADE_CCSEQ`
      self$`LAST_TRADE_ID` <- this_object$`LAST_TRADE_ID`
      self$`LAST_TRADE_QUANTITY` <- this_object$`LAST_TRADE_QUANTITY`
      self$`LAST_TRADE_QUOTE_QUANTITY` <- this_object$`LAST_TRADE_QUOTE_QUANTITY`
      self$`LAST_TRADE_SIDE` <- this_object$`LAST_TRADE_SIDE`
      self$`LIFETIME_FIRST_TRADE_TS` <- this_object$`LIFETIME_FIRST_TRADE_TS`
      self$`LIFETIME_HIGH` <- this_object$`LIFETIME_HIGH`
      self$`LIFETIME_HIGH_TS` <- this_object$`LIFETIME_HIGH_TS`
      self$`LIFETIME_LOW` <- this_object$`LIFETIME_LOW`
      self$`LIFETIME_LOW_TS` <- this_object$`LIFETIME_LOW_TS`
      self$`LIFETIME_OPEN` <- this_object$`LIFETIME_OPEN`
      self$`LIFETIME_QUOTE_VOLUME` <- this_object$`LIFETIME_QUOTE_VOLUME`
      self$`LIFETIME_QUOTE_VOLUME_BUY` <- this_object$`LIFETIME_QUOTE_VOLUME_BUY`
      self$`LIFETIME_QUOTE_VOLUME_SELL` <- this_object$`LIFETIME_QUOTE_VOLUME_SELL`
      self$`LIFETIME_QUOTE_VOLUME_UNKNOWN` <- this_object$`LIFETIME_QUOTE_VOLUME_UNKNOWN`
      self$`LIFETIME_TOTAL_TRADES` <- this_object$`LIFETIME_TOTAL_TRADES`
      self$`LIFETIME_TOTAL_TRADES_BUY` <- this_object$`LIFETIME_TOTAL_TRADES_BUY`
      self$`LIFETIME_TOTAL_TRADES_SELL` <- this_object$`LIFETIME_TOTAL_TRADES_SELL`
      self$`LIFETIME_TOTAL_TRADES_UNKNOWN` <- this_object$`LIFETIME_TOTAL_TRADES_UNKNOWN`
      self$`LIFETIME_VOLUME` <- this_object$`LIFETIME_VOLUME`
      self$`LIFETIME_VOLUME_BUY` <- this_object$`LIFETIME_VOLUME_BUY`
      self$`LIFETIME_VOLUME_SELL` <- this_object$`LIFETIME_VOLUME_SELL`
      self$`LIFETIME_VOLUME_UNKNOWN` <- this_object$`LIFETIME_VOLUME_UNKNOWN`
      self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      self$`MARKET` <- this_object$`MARKET`
      self$`MOVING_180_DAY_HIGH` <- this_object$`MOVING_180_DAY_HIGH`
      self$`MOVING_180_DAY_LOW` <- this_object$`MOVING_180_DAY_LOW`
      self$`MOVING_180_DAY_OPEN` <- this_object$`MOVING_180_DAY_OPEN`
      self$`MOVING_180_DAY_QUOTE_VOLUME` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME`
      self$`MOVING_180_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_BUY`
      self$`MOVING_180_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_SELL`
      self$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_180_DAY_TOTAL_TRADES` <- this_object$`MOVING_180_DAY_TOTAL_TRADES`
      self$`MOVING_180_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_BUY`
      self$`MOVING_180_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_SELL`
      self$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_180_DAY_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_180_DAY_VOLUME` <- this_object$`MOVING_180_DAY_VOLUME`
      self$`MOVING_180_DAY_VOLUME_BUY` <- this_object$`MOVING_180_DAY_VOLUME_BUY`
      self$`MOVING_180_DAY_VOLUME_SELL` <- this_object$`MOVING_180_DAY_VOLUME_SELL`
      self$`MOVING_180_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_180_DAY_VOLUME_UNKNOWN`
      self$`MOVING_24_HOUR_HIGH` <- this_object$`MOVING_24_HOUR_HIGH`
      self$`MOVING_24_HOUR_LOW` <- this_object$`MOVING_24_HOUR_LOW`
      self$`MOVING_24_HOUR_OPEN` <- this_object$`MOVING_24_HOUR_OPEN`
      self$`MOVING_24_HOUR_QUOTE_VOLUME` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME`
      self$`MOVING_24_HOUR_QUOTE_VOLUME_BUY` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_BUY`
      self$`MOVING_24_HOUR_QUOTE_VOLUME_SELL` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_SELL`
      self$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_24_HOUR_TOTAL_TRADES` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES`
      self$`MOVING_24_HOUR_TOTAL_TRADES_BUY` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_BUY`
      self$`MOVING_24_HOUR_TOTAL_TRADES_SELL` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_SELL`
      self$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_24_HOUR_VOLUME` <- this_object$`MOVING_24_HOUR_VOLUME`
      self$`MOVING_24_HOUR_VOLUME_BUY` <- this_object$`MOVING_24_HOUR_VOLUME_BUY`
      self$`MOVING_24_HOUR_VOLUME_SELL` <- this_object$`MOVING_24_HOUR_VOLUME_SELL`
      self$`MOVING_24_HOUR_VOLUME_UNKNOWN` <- this_object$`MOVING_24_HOUR_VOLUME_UNKNOWN`
      self$`MOVING_30_DAY_HIGH` <- this_object$`MOVING_30_DAY_HIGH`
      self$`MOVING_30_DAY_LOW` <- this_object$`MOVING_30_DAY_LOW`
      self$`MOVING_30_DAY_OPEN` <- this_object$`MOVING_30_DAY_OPEN`
      self$`MOVING_30_DAY_QUOTE_VOLUME` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME`
      self$`MOVING_30_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_BUY`
      self$`MOVING_30_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_SELL`
      self$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_30_DAY_TOTAL_TRADES` <- this_object$`MOVING_30_DAY_TOTAL_TRADES`
      self$`MOVING_30_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_BUY`
      self$`MOVING_30_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_SELL`
      self$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_30_DAY_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_30_DAY_VOLUME` <- this_object$`MOVING_30_DAY_VOLUME`
      self$`MOVING_30_DAY_VOLUME_BUY` <- this_object$`MOVING_30_DAY_VOLUME_BUY`
      self$`MOVING_30_DAY_VOLUME_SELL` <- this_object$`MOVING_30_DAY_VOLUME_SELL`
      self$`MOVING_30_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_30_DAY_VOLUME_UNKNOWN`
      self$`MOVING_365_DAY_HIGH` <- this_object$`MOVING_365_DAY_HIGH`
      self$`MOVING_365_DAY_LOW` <- this_object$`MOVING_365_DAY_LOW`
      self$`MOVING_365_DAY_OPEN` <- this_object$`MOVING_365_DAY_OPEN`
      self$`MOVING_365_DAY_QUOTE_VOLUME` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME`
      self$`MOVING_365_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_BUY`
      self$`MOVING_365_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_SELL`
      self$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_365_DAY_TOTAL_TRADES` <- this_object$`MOVING_365_DAY_TOTAL_TRADES`
      self$`MOVING_365_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_BUY`
      self$`MOVING_365_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_SELL`
      self$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_365_DAY_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_365_DAY_VOLUME` <- this_object$`MOVING_365_DAY_VOLUME`
      self$`MOVING_365_DAY_VOLUME_BUY` <- this_object$`MOVING_365_DAY_VOLUME_BUY`
      self$`MOVING_365_DAY_VOLUME_SELL` <- this_object$`MOVING_365_DAY_VOLUME_SELL`
      self$`MOVING_365_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_365_DAY_VOLUME_UNKNOWN`
      self$`MOVING_7_DAY_HIGH` <- this_object$`MOVING_7_DAY_HIGH`
      self$`MOVING_7_DAY_LOW` <- this_object$`MOVING_7_DAY_LOW`
      self$`MOVING_7_DAY_OPEN` <- this_object$`MOVING_7_DAY_OPEN`
      self$`MOVING_7_DAY_QUOTE_VOLUME` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME`
      self$`MOVING_7_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_BUY`
      self$`MOVING_7_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_SELL`
      self$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_7_DAY_TOTAL_TRADES` <- this_object$`MOVING_7_DAY_TOTAL_TRADES`
      self$`MOVING_7_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_BUY`
      self$`MOVING_7_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_SELL`
      self$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_7_DAY_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_7_DAY_VOLUME` <- this_object$`MOVING_7_DAY_VOLUME`
      self$`MOVING_7_DAY_VOLUME_BUY` <- this_object$`MOVING_7_DAY_VOLUME_BUY`
      self$`MOVING_7_DAY_VOLUME_SELL` <- this_object$`MOVING_7_DAY_VOLUME_SELL`
      self$`MOVING_7_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_7_DAY_VOLUME_UNKNOWN`
      self$`MOVING_90_DAY_HIGH` <- this_object$`MOVING_90_DAY_HIGH`
      self$`MOVING_90_DAY_LOW` <- this_object$`MOVING_90_DAY_LOW`
      self$`MOVING_90_DAY_OPEN` <- this_object$`MOVING_90_DAY_OPEN`
      self$`MOVING_90_DAY_QUOTE_VOLUME` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME`
      self$`MOVING_90_DAY_QUOTE_VOLUME_BUY` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_BUY`
      self$`MOVING_90_DAY_QUOTE_VOLUME_SELL` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_SELL`
      self$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN` <- this_object$`MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN`
      self$`MOVING_90_DAY_TOTAL_TRADES` <- this_object$`MOVING_90_DAY_TOTAL_TRADES`
      self$`MOVING_90_DAY_TOTAL_TRADES_BUY` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_BUY`
      self$`MOVING_90_DAY_TOTAL_TRADES_SELL` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_SELL`
      self$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN` <- this_object$`MOVING_90_DAY_TOTAL_TRADES_UNKNOWN`
      self$`MOVING_90_DAY_VOLUME` <- this_object$`MOVING_90_DAY_VOLUME`
      self$`MOVING_90_DAY_VOLUME_BUY` <- this_object$`MOVING_90_DAY_VOLUME_BUY`
      self$`MOVING_90_DAY_VOLUME_SELL` <- this_object$`MOVING_90_DAY_VOLUME_SELL`
      self$`MOVING_90_DAY_VOLUME_UNKNOWN` <- this_object$`MOVING_90_DAY_VOLUME_UNKNOWN`
      self$`PRICE` <- this_object$`PRICE`
      self$`PRICE_FLAG` <- this_object$`PRICE_FLAG`
      self$`PRICE_LAST_UPDATE_TS` <- this_object$`PRICE_LAST_UPDATE_TS`
      self$`QUOTE` <- this_object$`QUOTE`
      self$`TOP_ASK_LAST_UPDATE_TS` <- this_object$`TOP_ASK_LAST_UPDATE_TS`
      self$`TOP_ASK_PRICE` <- this_object$`TOP_ASK_PRICE`
      self$`TOP_ASK_QUANTITY` <- this_object$`TOP_ASK_QUANTITY`
      self$`TOP_BID_LAST_UPDATE_TS` <- this_object$`TOP_BID_LAST_UPDATE_TS`
      self$`TOP_BID_PRICE` <- this_object$`TOP_BID_PRICE`
      self$`TOP_BID_QUANTITY` <- this_object$`TOP_BID_QUANTITY`
      self$`TYPE` <- this_object$`TYPE`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTMARKETDATA
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTMARKETDATA and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SPOTINSTRUMENTMARKETDATA
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# SPOTINSTRUMENTMARKETDATA$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTMARKETDATA$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTMARKETDATA$lock()

