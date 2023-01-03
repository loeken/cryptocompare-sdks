# SPOTINSTRUMENTMARKETDATA

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | Pointer to **string** | The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped. | [optional] 
**CCSEQ** | Pointer to **int32** | Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send. | [optional] 
**CURRENT_DAY_HIGH** | Pointer to **int32** | The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENT_DAY_LOW** | Pointer to **int32** | The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENT_DAY_OPEN** | Pointer to **int32** | The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset. | [optional] 
**CURRENT_DAY_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENT_DAY_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENT_DAY_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENT_DAY_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENT_DAY_TOTAL_TRADES** | Pointer to **int32** | The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENT_DAY_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of buy trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENT_DAY_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of sell trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENT_DAY_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENT_DAY_VOLUME** | Pointer to **int32** | The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENT_DAY_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENT_DAY_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENT_DAY_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENT_HOUR_HIGH** | Pointer to **int32** | The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENT_HOUR_LOW** | Pointer to **int32** | The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENT_HOUR_OPEN** | Pointer to **int32** | The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset. | [optional] 
**CURRENT_HOUR_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENT_HOUR_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENT_HOUR_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENT_HOUR_TOTAL_TRADES** | Pointer to **int32** | The total number of trades that have occurred since the start of the current hour. | [optional] 
**CURRENT_HOUR_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of buy trades since the start of the current hour. | [optional] 
**CURRENT_HOUR_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of sell trades since the start of the current hour. | [optional] 
**CURRENT_HOUR_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of unknown trades since the start of the current hour. | [optional] 
**CURRENT_HOUR_VOLUME** | Pointer to **int32** | The sum of all trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENT_HOUR_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENT_HOUR_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENT_HOUR_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENT_MONTH_HIGH** | Pointer to **int32** | The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. | [optional] 
**CURRENT_MONTH_LOW** | Pointer to **int32** | The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. | [optional] 
**CURRENT_MONTH_OPEN** | Pointer to **int32** | The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset. | [optional] 
**CURRENT_MONTH_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_MONTH_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_MONTH_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_MONTH_TOTAL_TRADES** | Pointer to **int32** | The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENT_MONTH_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENT_MONTH_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENT_MONTH_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENT_MONTH_VOLUME** | Pointer to **int32** | The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_MONTH_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_MONTH_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_MONTH_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_WEEK_HIGH** | Pointer to **int32** | The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset. | [optional] 
**CURRENT_WEEK_LOW** | Pointer to **int32** | The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset. | [optional] 
**CURRENT_WEEK_OPEN** | Pointer to **int32** | The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset. | [optional] 
**CURRENT_WEEK_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_WEEK_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_WEEK_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_WEEK_TOTAL_TRADES** | Pointer to **int32** | The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENT_WEEK_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENT_WEEK_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENT_WEEK_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENT_WEEK_VOLUME** | Pointer to **int32** | The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_WEEK_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_WEEK_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_WEEK_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_YEAR_HIGH** | Pointer to **int32** | The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. | [optional] 
**CURRENT_YEAR_LOW** | Pointer to **int32** | The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. | [optional] 
**CURRENT_YEAR_OPEN** | Pointer to **int32** | The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset. | [optional] 
**CURRENT_YEAR_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_YEAR_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_YEAR_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENT_YEAR_TOTAL_TRADES** | Pointer to **int32** | The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENT_YEAR_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENT_YEAR_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENT_YEAR_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENT_YEAR_VOLUME** | Pointer to **int32** | The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_YEAR_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_YEAR_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENT_YEAR_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**INSTRUMENT** | Pointer to **string** | The unmapped instrument ID | [optional] 
**LAST_PROCESSED_TRADE_CCSEQ** | Pointer to **string** | The CCSEQ of the latest trade. | [optional] 
**LAST_PROCESSED_TRADE_PRICE** | Pointer to **int32** | The price in the quote asset of the last trade processed, as reported by the market / exchange. | [optional] 
**LAST_PROCESSED_TRADE_QUANTITY** | Pointer to **int32** | The quantity of the last processed trade in the from symbol (base / coin). | [optional] 
**LAST_PROCESSED_TRADE_QUOTE_QUANTITY** | Pointer to **int32** | The  volume of the last processed trade in the to asset / quote. | [optional] 
**LAST_PROCESSED_TRADE_SIDE** | Pointer to **string** | The side of the last processed trade. | [optional] 
**LAST_PROCESSED_TRADE_TS** | Pointer to **int32** | The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned. | [optional] 
**LAST_TRADE_CCSEQ** | Pointer to **string** | The CCSEQ of the latest trade. | [optional] 
**LAST_TRADE_ID** | Pointer to **string** | The ID of the latest trade. | [optional] 
**LAST_TRADE_QUANTITY** | Pointer to **int32** | The quantity of the latest trade in the from symbol (base / coin). | [optional] 
**LAST_TRADE_QUOTE_QUANTITY** | Pointer to **int32** | The volume of the latest trade in the to asset / quote. | [optional] 
**LAST_TRADE_SIDE** | Pointer to **string** | The side of the latest trade. | [optional] 
**LIFETIME_FIRST_TRADE_TS** | Pointer to **int32** | The timestamp of the first trade ever recorded for the instrument | [optional] 
**LIFETIME_HIGH** | Pointer to **int32** | The price of the highest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIME_HIGH_TS** | Pointer to **int32** | The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIME_LOW** | Pointer to **int32** | The price of the lowest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIME_LOW_TS** | Pointer to **int32** | The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIME_OPEN** | Pointer to **int32** | The price of the first trade of the instrument. Given in the quote asset. | [optional] 
**LIFETIME_QUOTE_VOLUME** | Pointer to **int32** | The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIME_QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIME_QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIME_QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIME_TOTAL_TRADES** | Pointer to **int32** | The total number of all trades that have ever been executed for this instrument. | [optional] 
**LIFETIME_TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of all buy trades that have ever been executed for this instrument. | [optional] 
**LIFETIME_TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of all sell trades that have ever been executed for this instrument. | [optional] 
**LIFETIME_TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of all unknown trades that have ever been executed for this instrument. | [optional] 
**LIFETIME_VOLUME** | Pointer to **int32** | The sum of all trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIME_VOLUME_BUY** | Pointer to **int32** | The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIME_VOLUME_SELL** | Pointer to **int32** | The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIME_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**MAPPED_INSTRUMENT** | Pointer to **string** | The mapped instrument ID, derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**MARKET** | Pointer to **string** | The market / exchange under consideration (e.g. coinbase, kraken, etc). | [optional] 
**MOVING180DAYHIGH** | Pointer to **int32** | The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYOPEN** | Pointer to **int32** | The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYVOLUME** | Pointer to **int32** | The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMEBUY** | Pointer to **int32** | The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING24HOURHIGH** | Pointer to **int32** | The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOUROPEN** | Pointer to **int32** | The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURVOLUME** | Pointer to **int32** | The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING30DAYHIGH** | Pointer to **int32** | The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYOPEN** | Pointer to **int32** | The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYVOLUME** | Pointer to **int32** | The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING365DAYHIGH** | Pointer to **int32** | The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYOPEN** | Pointer to **int32** | The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYVOLUME** | Pointer to **int32** | The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMEBUY** | Pointer to **int32** | The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING7DAYHIGH** | Pointer to **int32** | The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYOPEN** | Pointer to **int32** | The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYVOLUME** | Pointer to **int32** | The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING90DAYHIGH** | Pointer to **int32** | The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYLOW** | Pointer to **int32** | The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYOPEN** | Pointer to **int32** | The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUME** | Pointer to **int32** | The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMEBUY** | Pointer to **int32** | The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYTOTALTRADES** | Pointer to **int32** | The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESBUY** | Pointer to **int32** | The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESSELL** | Pointer to **int32** | The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESUNKNOWN** | Pointer to **int32** | The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYVOLUME** | Pointer to **int32** | The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMEBUY** | Pointer to **int32** | The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMESELL** | Pointer to **int32** | The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMEUNKNOWN** | Pointer to **int32** | The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**PRICE** | Pointer to **int32** | The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD). | [optional] 
**PRICE_FLAG** | Pointer to **string** | The flag indicating whether the price has increased, decreased, or not changed | [optional] 
**PRICE_LAST_UPDATE_TS** | Pointer to **int32** | The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned. | [optional] 
**QUOTE** | Pointer to **string** | The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped. | [optional] 
**TOP_ASK_LAST_UPDATE_TS** | Pointer to **int32** | The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. | [optional] 
**TOP_ASK_PRICE** | Pointer to **int32** | The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC. | [optional] 
**TOP_ASK_QUANTITY** | Pointer to **int32** | The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price. | [optional] 
**TOP_BID_LAST_UPDATE_TS** | Pointer to **int32** | The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. | [optional] 
**TOP_BID_PRICE** | Pointer to **int32** | The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC. | [optional] 
**TOP_BID_QUANTITY** | Pointer to **int32** | The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price. | [optional] 
**TYPE** | Pointer to **string** | The type of the message. | [optional] 

## Methods

### NewSPOTINSTRUMENTMARKETDATA

`func NewSPOTINSTRUMENTMARKETDATA() *SPOTINSTRUMENTMARKETDATA`

NewSPOTINSTRUMENTMARKETDATA instantiates a new SPOTINSTRUMENTMARKETDATA object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTMARKETDATAWithDefaults

`func NewSPOTINSTRUMENTMARKETDATAWithDefaults() *SPOTINSTRUMENTMARKETDATA`

NewSPOTINSTRUMENTMARKETDATAWithDefaults instantiates a new SPOTINSTRUMENTMARKETDATA object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBASE

`func (o *SPOTINSTRUMENTMARKETDATA) GetBASE() string`

GetBASE returns the BASE field if non-nil, zero value otherwise.

### GetBASEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetBASEOk() (*string, bool)`

GetBASEOk returns a tuple with the BASE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBASE

`func (o *SPOTINSTRUMENTMARKETDATA) SetBASE(v string)`

SetBASE sets BASE field to given value.

### HasBASE

`func (o *SPOTINSTRUMENTMARKETDATA) HasBASE() bool`

HasBASE returns a boolean if a field has been set.

### GetCCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) GetCCSEQ() int32`

GetCCSEQ returns the CCSEQ field if non-nil, zero value otherwise.

### GetCCSEQOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCCSEQOk() (*int32, bool)`

GetCCSEQOk returns a tuple with the CCSEQ field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) SetCCSEQ(v int32)`

SetCCSEQ sets CCSEQ field to given value.

### HasCCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) HasCCSEQ() bool`

HasCCSEQ returns a boolean if a field has been set.

### GetCURRENT_DAY_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_HIGH() int32`

GetCURRENT_DAY_HIGH returns the CURRENT_DAY_HIGH field if non-nil, zero value otherwise.

### GetCURRENT_DAY_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_HIGHOk() (*int32, bool)`

GetCURRENT_DAY_HIGHOk returns a tuple with the CURRENT_DAY_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_HIGH(v int32)`

SetCURRENT_DAY_HIGH sets CURRENT_DAY_HIGH field to given value.

### HasCURRENT_DAY_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_HIGH() bool`

HasCURRENT_DAY_HIGH returns a boolean if a field has been set.

### GetCURRENT_DAY_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_LOW() int32`

GetCURRENT_DAY_LOW returns the CURRENT_DAY_LOW field if non-nil, zero value otherwise.

### GetCURRENT_DAY_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_LOWOk() (*int32, bool)`

GetCURRENT_DAY_LOWOk returns a tuple with the CURRENT_DAY_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_LOW(v int32)`

SetCURRENT_DAY_LOW sets CURRENT_DAY_LOW field to given value.

### HasCURRENT_DAY_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_LOW() bool`

HasCURRENT_DAY_LOW returns a boolean if a field has been set.

### GetCURRENT_DAY_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_OPEN() int32`

GetCURRENT_DAY_OPEN returns the CURRENT_DAY_OPEN field if non-nil, zero value otherwise.

### GetCURRENT_DAY_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_OPENOk() (*int32, bool)`

GetCURRENT_DAY_OPENOk returns a tuple with the CURRENT_DAY_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_OPEN(v int32)`

SetCURRENT_DAY_OPEN sets CURRENT_DAY_OPEN field to given value.

### HasCURRENT_DAY_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_OPEN() bool`

HasCURRENT_DAY_OPEN returns a boolean if a field has been set.

### GetCURRENT_DAY_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME() int32`

GetCURRENT_DAY_QUOTE_VOLUME returns the CURRENT_DAY_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_DAY_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUMEOk() (*int32, bool)`

GetCURRENT_DAY_QUOTE_VOLUMEOk returns a tuple with the CURRENT_DAY_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_QUOTE_VOLUME(v int32)`

SetCURRENT_DAY_QUOTE_VOLUME sets CURRENT_DAY_QUOTE_VOLUME field to given value.

### HasCURRENT_DAY_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_QUOTE_VOLUME() bool`

HasCURRENT_DAY_QUOTE_VOLUME returns a boolean if a field has been set.

### GetCURRENT_DAY_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_BUY() int32`

GetCURRENT_DAY_QUOTE_VOLUME_BUY returns the CURRENT_DAY_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_DAY_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_DAY_QUOTE_VOLUME_BUYOk returns a tuple with the CURRENT_DAY_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_QUOTE_VOLUME_BUY(v int32)`

SetCURRENT_DAY_QUOTE_VOLUME_BUY sets CURRENT_DAY_QUOTE_VOLUME_BUY field to given value.

### HasCURRENT_DAY_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_QUOTE_VOLUME_BUY() bool`

HasCURRENT_DAY_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_DAY_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_SELL() int32`

GetCURRENT_DAY_QUOTE_VOLUME_SELL returns the CURRENT_DAY_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_DAY_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_DAY_QUOTE_VOLUME_SELLOk returns a tuple with the CURRENT_DAY_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_QUOTE_VOLUME_SELL(v int32)`

SetCURRENT_DAY_QUOTE_VOLUME_SELL sets CURRENT_DAY_QUOTE_VOLUME_SELL field to given value.

### HasCURRENT_DAY_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_QUOTE_VOLUME_SELL() bool`

HasCURRENT_DAY_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN() int32`

GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN returns the CURRENT_DAY_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_DAY_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_DAY_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN(v int32)`

SetCURRENT_DAY_QUOTE_VOLUME_UNKNOWN sets CURRENT_DAY_QUOTE_VOLUME_UNKNOWN field to given value.

### HasCURRENT_DAY_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_QUOTE_VOLUME_UNKNOWN() bool`

HasCURRENT_DAY_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_DAY_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES() int32`

GetCURRENT_DAY_TOTAL_TRADES returns the CURRENT_DAY_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetCURRENT_DAY_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADESOk() (*int32, bool)`

GetCURRENT_DAY_TOTAL_TRADESOk returns a tuple with the CURRENT_DAY_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_TOTAL_TRADES(v int32)`

SetCURRENT_DAY_TOTAL_TRADES sets CURRENT_DAY_TOTAL_TRADES field to given value.

### HasCURRENT_DAY_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_TOTAL_TRADES() bool`

HasCURRENT_DAY_TOTAL_TRADES returns a boolean if a field has been set.

### GetCURRENT_DAY_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_BUY() int32`

GetCURRENT_DAY_TOTAL_TRADES_BUY returns the CURRENT_DAY_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetCURRENT_DAY_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetCURRENT_DAY_TOTAL_TRADES_BUYOk returns a tuple with the CURRENT_DAY_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_TOTAL_TRADES_BUY(v int32)`

SetCURRENT_DAY_TOTAL_TRADES_BUY sets CURRENT_DAY_TOTAL_TRADES_BUY field to given value.

### HasCURRENT_DAY_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_TOTAL_TRADES_BUY() bool`

HasCURRENT_DAY_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetCURRENT_DAY_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_SELL() int32`

GetCURRENT_DAY_TOTAL_TRADES_SELL returns the CURRENT_DAY_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetCURRENT_DAY_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetCURRENT_DAY_TOTAL_TRADES_SELLOk returns a tuple with the CURRENT_DAY_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_TOTAL_TRADES_SELL(v int32)`

SetCURRENT_DAY_TOTAL_TRADES_SELL sets CURRENT_DAY_TOTAL_TRADES_SELL field to given value.

### HasCURRENT_DAY_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_TOTAL_TRADES_SELL() bool`

HasCURRENT_DAY_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetCURRENT_DAY_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_UNKNOWN() int32`

GetCURRENT_DAY_TOTAL_TRADES_UNKNOWN returns the CURRENT_DAY_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_DAY_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetCURRENT_DAY_TOTAL_TRADES_UNKNOWNOk returns a tuple with the CURRENT_DAY_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_TOTAL_TRADES_UNKNOWN(v int32)`

SetCURRENT_DAY_TOTAL_TRADES_UNKNOWN sets CURRENT_DAY_TOTAL_TRADES_UNKNOWN field to given value.

### HasCURRENT_DAY_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_TOTAL_TRADES_UNKNOWN() bool`

HasCURRENT_DAY_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_DAY_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME() int32`

GetCURRENT_DAY_VOLUME returns the CURRENT_DAY_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_DAY_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUMEOk() (*int32, bool)`

GetCURRENT_DAY_VOLUMEOk returns a tuple with the CURRENT_DAY_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_VOLUME(v int32)`

SetCURRENT_DAY_VOLUME sets CURRENT_DAY_VOLUME field to given value.

### HasCURRENT_DAY_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_VOLUME() bool`

HasCURRENT_DAY_VOLUME returns a boolean if a field has been set.

### GetCURRENT_DAY_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_BUY() int32`

GetCURRENT_DAY_VOLUME_BUY returns the CURRENT_DAY_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_DAY_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_DAY_VOLUME_BUYOk returns a tuple with the CURRENT_DAY_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_VOLUME_BUY(v int32)`

SetCURRENT_DAY_VOLUME_BUY sets CURRENT_DAY_VOLUME_BUY field to given value.

### HasCURRENT_DAY_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_VOLUME_BUY() bool`

HasCURRENT_DAY_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_DAY_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_SELL() int32`

GetCURRENT_DAY_VOLUME_SELL returns the CURRENT_DAY_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_DAY_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_DAY_VOLUME_SELLOk returns a tuple with the CURRENT_DAY_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_VOLUME_SELL(v int32)`

SetCURRENT_DAY_VOLUME_SELL sets CURRENT_DAY_VOLUME_SELL field to given value.

### HasCURRENT_DAY_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_VOLUME_SELL() bool`

HasCURRENT_DAY_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_DAY_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_UNKNOWN() int32`

GetCURRENT_DAY_VOLUME_UNKNOWN returns the CURRENT_DAY_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_DAY_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_DAY_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_DAY_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_DAY_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_DAY_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_DAY_VOLUME_UNKNOWN(v int32)`

SetCURRENT_DAY_VOLUME_UNKNOWN sets CURRENT_DAY_VOLUME_UNKNOWN field to given value.

### HasCURRENT_DAY_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_DAY_VOLUME_UNKNOWN() bool`

HasCURRENT_DAY_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_HOUR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_HIGH() int32`

GetCURRENT_HOUR_HIGH returns the CURRENT_HOUR_HIGH field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_HIGHOk() (*int32, bool)`

GetCURRENT_HOUR_HIGHOk returns a tuple with the CURRENT_HOUR_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_HIGH(v int32)`

SetCURRENT_HOUR_HIGH sets CURRENT_HOUR_HIGH field to given value.

### HasCURRENT_HOUR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_HIGH() bool`

HasCURRENT_HOUR_HIGH returns a boolean if a field has been set.

### GetCURRENT_HOUR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_LOW() int32`

GetCURRENT_HOUR_LOW returns the CURRENT_HOUR_LOW field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_LOWOk() (*int32, bool)`

GetCURRENT_HOUR_LOWOk returns a tuple with the CURRENT_HOUR_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_LOW(v int32)`

SetCURRENT_HOUR_LOW sets CURRENT_HOUR_LOW field to given value.

### HasCURRENT_HOUR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_LOW() bool`

HasCURRENT_HOUR_LOW returns a boolean if a field has been set.

### GetCURRENT_HOUR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_OPEN() int32`

GetCURRENT_HOUR_OPEN returns the CURRENT_HOUR_OPEN field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_OPENOk() (*int32, bool)`

GetCURRENT_HOUR_OPENOk returns a tuple with the CURRENT_HOUR_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_OPEN(v int32)`

SetCURRENT_HOUR_OPEN sets CURRENT_HOUR_OPEN field to given value.

### HasCURRENT_HOUR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_OPEN() bool`

HasCURRENT_HOUR_OPEN returns a boolean if a field has been set.

### GetCURRENT_HOUR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME() int32`

GetCURRENT_HOUR_QUOTE_VOLUME returns the CURRENT_HOUR_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUMEOk() (*int32, bool)`

GetCURRENT_HOUR_QUOTE_VOLUMEOk returns a tuple with the CURRENT_HOUR_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_QUOTE_VOLUME(v int32)`

SetCURRENT_HOUR_QUOTE_VOLUME sets CURRENT_HOUR_QUOTE_VOLUME field to given value.

### HasCURRENT_HOUR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_QUOTE_VOLUME() bool`

HasCURRENT_HOUR_QUOTE_VOLUME returns a boolean if a field has been set.

### GetCURRENT_HOUR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_BUY() int32`

GetCURRENT_HOUR_QUOTE_VOLUME_BUY returns the CURRENT_HOUR_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_HOUR_QUOTE_VOLUME_BUYOk returns a tuple with the CURRENT_HOUR_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_QUOTE_VOLUME_BUY(v int32)`

SetCURRENT_HOUR_QUOTE_VOLUME_BUY sets CURRENT_HOUR_QUOTE_VOLUME_BUY field to given value.

### HasCURRENT_HOUR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_QUOTE_VOLUME_BUY() bool`

HasCURRENT_HOUR_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_HOUR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_SELL() int32`

GetCURRENT_HOUR_QUOTE_VOLUME_SELL returns the CURRENT_HOUR_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_HOUR_QUOTE_VOLUME_SELLOk returns a tuple with the CURRENT_HOUR_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_QUOTE_VOLUME_SELL(v int32)`

SetCURRENT_HOUR_QUOTE_VOLUME_SELL sets CURRENT_HOUR_QUOTE_VOLUME_SELL field to given value.

### HasCURRENT_HOUR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_QUOTE_VOLUME_SELL() bool`

HasCURRENT_HOUR_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN() int32`

GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN returns the CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN(v int32)`

SetCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN sets CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN field to given value.

### HasCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN() bool`

HasCURRENT_HOUR_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_HOUR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES() int32`

GetCURRENT_HOUR_TOTAL_TRADES returns the CURRENT_HOUR_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADESOk() (*int32, bool)`

GetCURRENT_HOUR_TOTAL_TRADESOk returns a tuple with the CURRENT_HOUR_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_TOTAL_TRADES(v int32)`

SetCURRENT_HOUR_TOTAL_TRADES sets CURRENT_HOUR_TOTAL_TRADES field to given value.

### HasCURRENT_HOUR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_TOTAL_TRADES() bool`

HasCURRENT_HOUR_TOTAL_TRADES returns a boolean if a field has been set.

### GetCURRENT_HOUR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_BUY() int32`

GetCURRENT_HOUR_TOTAL_TRADES_BUY returns the CURRENT_HOUR_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetCURRENT_HOUR_TOTAL_TRADES_BUYOk returns a tuple with the CURRENT_HOUR_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_TOTAL_TRADES_BUY(v int32)`

SetCURRENT_HOUR_TOTAL_TRADES_BUY sets CURRENT_HOUR_TOTAL_TRADES_BUY field to given value.

### HasCURRENT_HOUR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_TOTAL_TRADES_BUY() bool`

HasCURRENT_HOUR_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetCURRENT_HOUR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_SELL() int32`

GetCURRENT_HOUR_TOTAL_TRADES_SELL returns the CURRENT_HOUR_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetCURRENT_HOUR_TOTAL_TRADES_SELLOk returns a tuple with the CURRENT_HOUR_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_TOTAL_TRADES_SELL(v int32)`

SetCURRENT_HOUR_TOTAL_TRADES_SELL sets CURRENT_HOUR_TOTAL_TRADES_SELL field to given value.

### HasCURRENT_HOUR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_TOTAL_TRADES_SELL() bool`

HasCURRENT_HOUR_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN() int32`

GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN returns the CURRENT_HOUR_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetCURRENT_HOUR_TOTAL_TRADES_UNKNOWNOk returns a tuple with the CURRENT_HOUR_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN(v int32)`

SetCURRENT_HOUR_TOTAL_TRADES_UNKNOWN sets CURRENT_HOUR_TOTAL_TRADES_UNKNOWN field to given value.

### HasCURRENT_HOUR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_TOTAL_TRADES_UNKNOWN() bool`

HasCURRENT_HOUR_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_HOUR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME() int32`

GetCURRENT_HOUR_VOLUME returns the CURRENT_HOUR_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUMEOk() (*int32, bool)`

GetCURRENT_HOUR_VOLUMEOk returns a tuple with the CURRENT_HOUR_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_VOLUME(v int32)`

SetCURRENT_HOUR_VOLUME sets CURRENT_HOUR_VOLUME field to given value.

### HasCURRENT_HOUR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_VOLUME() bool`

HasCURRENT_HOUR_VOLUME returns a boolean if a field has been set.

### GetCURRENT_HOUR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_BUY() int32`

GetCURRENT_HOUR_VOLUME_BUY returns the CURRENT_HOUR_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_HOUR_VOLUME_BUYOk returns a tuple with the CURRENT_HOUR_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_VOLUME_BUY(v int32)`

SetCURRENT_HOUR_VOLUME_BUY sets CURRENT_HOUR_VOLUME_BUY field to given value.

### HasCURRENT_HOUR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_VOLUME_BUY() bool`

HasCURRENT_HOUR_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_HOUR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_SELL() int32`

GetCURRENT_HOUR_VOLUME_SELL returns the CURRENT_HOUR_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_HOUR_VOLUME_SELLOk returns a tuple with the CURRENT_HOUR_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_VOLUME_SELL(v int32)`

SetCURRENT_HOUR_VOLUME_SELL sets CURRENT_HOUR_VOLUME_SELL field to given value.

### HasCURRENT_HOUR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_VOLUME_SELL() bool`

HasCURRENT_HOUR_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_HOUR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_UNKNOWN() int32`

GetCURRENT_HOUR_VOLUME_UNKNOWN returns the CURRENT_HOUR_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_HOUR_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_HOUR_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_HOUR_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_HOUR_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_HOUR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_HOUR_VOLUME_UNKNOWN(v int32)`

SetCURRENT_HOUR_VOLUME_UNKNOWN sets CURRENT_HOUR_VOLUME_UNKNOWN field to given value.

### HasCURRENT_HOUR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_HOUR_VOLUME_UNKNOWN() bool`

HasCURRENT_HOUR_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_MONTH_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_HIGH() int32`

GetCURRENT_MONTH_HIGH returns the CURRENT_MONTH_HIGH field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_HIGHOk() (*int32, bool)`

GetCURRENT_MONTH_HIGHOk returns a tuple with the CURRENT_MONTH_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_HIGH(v int32)`

SetCURRENT_MONTH_HIGH sets CURRENT_MONTH_HIGH field to given value.

### HasCURRENT_MONTH_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_HIGH() bool`

HasCURRENT_MONTH_HIGH returns a boolean if a field has been set.

### GetCURRENT_MONTH_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_LOW() int32`

GetCURRENT_MONTH_LOW returns the CURRENT_MONTH_LOW field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_LOWOk() (*int32, bool)`

GetCURRENT_MONTH_LOWOk returns a tuple with the CURRENT_MONTH_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_LOW(v int32)`

SetCURRENT_MONTH_LOW sets CURRENT_MONTH_LOW field to given value.

### HasCURRENT_MONTH_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_LOW() bool`

HasCURRENT_MONTH_LOW returns a boolean if a field has been set.

### GetCURRENT_MONTH_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_OPEN() int32`

GetCURRENT_MONTH_OPEN returns the CURRENT_MONTH_OPEN field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_OPENOk() (*int32, bool)`

GetCURRENT_MONTH_OPENOk returns a tuple with the CURRENT_MONTH_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_OPEN(v int32)`

SetCURRENT_MONTH_OPEN sets CURRENT_MONTH_OPEN field to given value.

### HasCURRENT_MONTH_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_OPEN() bool`

HasCURRENT_MONTH_OPEN returns a boolean if a field has been set.

### GetCURRENT_MONTH_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME() int32`

GetCURRENT_MONTH_QUOTE_VOLUME returns the CURRENT_MONTH_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUMEOk() (*int32, bool)`

GetCURRENT_MONTH_QUOTE_VOLUMEOk returns a tuple with the CURRENT_MONTH_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_QUOTE_VOLUME(v int32)`

SetCURRENT_MONTH_QUOTE_VOLUME sets CURRENT_MONTH_QUOTE_VOLUME field to given value.

### HasCURRENT_MONTH_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_QUOTE_VOLUME() bool`

HasCURRENT_MONTH_QUOTE_VOLUME returns a boolean if a field has been set.

### GetCURRENT_MONTH_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_BUY() int32`

GetCURRENT_MONTH_QUOTE_VOLUME_BUY returns the CURRENT_MONTH_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_MONTH_QUOTE_VOLUME_BUYOk returns a tuple with the CURRENT_MONTH_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_QUOTE_VOLUME_BUY(v int32)`

SetCURRENT_MONTH_QUOTE_VOLUME_BUY sets CURRENT_MONTH_QUOTE_VOLUME_BUY field to given value.

### HasCURRENT_MONTH_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_QUOTE_VOLUME_BUY() bool`

HasCURRENT_MONTH_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_MONTH_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_SELL() int32`

GetCURRENT_MONTH_QUOTE_VOLUME_SELL returns the CURRENT_MONTH_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_MONTH_QUOTE_VOLUME_SELLOk returns a tuple with the CURRENT_MONTH_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_QUOTE_VOLUME_SELL(v int32)`

SetCURRENT_MONTH_QUOTE_VOLUME_SELL sets CURRENT_MONTH_QUOTE_VOLUME_SELL field to given value.

### HasCURRENT_MONTH_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_QUOTE_VOLUME_SELL() bool`

HasCURRENT_MONTH_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN() int32`

GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN returns the CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN(v int32)`

SetCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN sets CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN field to given value.

### HasCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN() bool`

HasCURRENT_MONTH_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_MONTH_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES() int32`

GetCURRENT_MONTH_TOTAL_TRADES returns the CURRENT_MONTH_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADESOk() (*int32, bool)`

GetCURRENT_MONTH_TOTAL_TRADESOk returns a tuple with the CURRENT_MONTH_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_TOTAL_TRADES(v int32)`

SetCURRENT_MONTH_TOTAL_TRADES sets CURRENT_MONTH_TOTAL_TRADES field to given value.

### HasCURRENT_MONTH_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_TOTAL_TRADES() bool`

HasCURRENT_MONTH_TOTAL_TRADES returns a boolean if a field has been set.

### GetCURRENT_MONTH_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_BUY() int32`

GetCURRENT_MONTH_TOTAL_TRADES_BUY returns the CURRENT_MONTH_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetCURRENT_MONTH_TOTAL_TRADES_BUYOk returns a tuple with the CURRENT_MONTH_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_TOTAL_TRADES_BUY(v int32)`

SetCURRENT_MONTH_TOTAL_TRADES_BUY sets CURRENT_MONTH_TOTAL_TRADES_BUY field to given value.

### HasCURRENT_MONTH_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_TOTAL_TRADES_BUY() bool`

HasCURRENT_MONTH_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetCURRENT_MONTH_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_SELL() int32`

GetCURRENT_MONTH_TOTAL_TRADES_SELL returns the CURRENT_MONTH_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetCURRENT_MONTH_TOTAL_TRADES_SELLOk returns a tuple with the CURRENT_MONTH_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_TOTAL_TRADES_SELL(v int32)`

SetCURRENT_MONTH_TOTAL_TRADES_SELL sets CURRENT_MONTH_TOTAL_TRADES_SELL field to given value.

### HasCURRENT_MONTH_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_TOTAL_TRADES_SELL() bool`

HasCURRENT_MONTH_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN() int32`

GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN returns the CURRENT_MONTH_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetCURRENT_MONTH_TOTAL_TRADES_UNKNOWNOk returns a tuple with the CURRENT_MONTH_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN(v int32)`

SetCURRENT_MONTH_TOTAL_TRADES_UNKNOWN sets CURRENT_MONTH_TOTAL_TRADES_UNKNOWN field to given value.

### HasCURRENT_MONTH_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_TOTAL_TRADES_UNKNOWN() bool`

HasCURRENT_MONTH_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_MONTH_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME() int32`

GetCURRENT_MONTH_VOLUME returns the CURRENT_MONTH_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUMEOk() (*int32, bool)`

GetCURRENT_MONTH_VOLUMEOk returns a tuple with the CURRENT_MONTH_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_VOLUME(v int32)`

SetCURRENT_MONTH_VOLUME sets CURRENT_MONTH_VOLUME field to given value.

### HasCURRENT_MONTH_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_VOLUME() bool`

HasCURRENT_MONTH_VOLUME returns a boolean if a field has been set.

### GetCURRENT_MONTH_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_BUY() int32`

GetCURRENT_MONTH_VOLUME_BUY returns the CURRENT_MONTH_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_MONTH_VOLUME_BUYOk returns a tuple with the CURRENT_MONTH_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_VOLUME_BUY(v int32)`

SetCURRENT_MONTH_VOLUME_BUY sets CURRENT_MONTH_VOLUME_BUY field to given value.

### HasCURRENT_MONTH_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_VOLUME_BUY() bool`

HasCURRENT_MONTH_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_MONTH_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_SELL() int32`

GetCURRENT_MONTH_VOLUME_SELL returns the CURRENT_MONTH_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_MONTH_VOLUME_SELLOk returns a tuple with the CURRENT_MONTH_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_VOLUME_SELL(v int32)`

SetCURRENT_MONTH_VOLUME_SELL sets CURRENT_MONTH_VOLUME_SELL field to given value.

### HasCURRENT_MONTH_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_VOLUME_SELL() bool`

HasCURRENT_MONTH_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_MONTH_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_UNKNOWN() int32`

GetCURRENT_MONTH_VOLUME_UNKNOWN returns the CURRENT_MONTH_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_MONTH_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_MONTH_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_MONTH_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_MONTH_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_MONTH_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_MONTH_VOLUME_UNKNOWN(v int32)`

SetCURRENT_MONTH_VOLUME_UNKNOWN sets CURRENT_MONTH_VOLUME_UNKNOWN field to given value.

### HasCURRENT_MONTH_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_MONTH_VOLUME_UNKNOWN() bool`

HasCURRENT_MONTH_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_WEEK_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_HIGH() int32`

GetCURRENT_WEEK_HIGH returns the CURRENT_WEEK_HIGH field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_HIGHOk() (*int32, bool)`

GetCURRENT_WEEK_HIGHOk returns a tuple with the CURRENT_WEEK_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_HIGH(v int32)`

SetCURRENT_WEEK_HIGH sets CURRENT_WEEK_HIGH field to given value.

### HasCURRENT_WEEK_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_HIGH() bool`

HasCURRENT_WEEK_HIGH returns a boolean if a field has been set.

### GetCURRENT_WEEK_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_LOW() int32`

GetCURRENT_WEEK_LOW returns the CURRENT_WEEK_LOW field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_LOWOk() (*int32, bool)`

GetCURRENT_WEEK_LOWOk returns a tuple with the CURRENT_WEEK_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_LOW(v int32)`

SetCURRENT_WEEK_LOW sets CURRENT_WEEK_LOW field to given value.

### HasCURRENT_WEEK_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_LOW() bool`

HasCURRENT_WEEK_LOW returns a boolean if a field has been set.

### GetCURRENT_WEEK_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_OPEN() int32`

GetCURRENT_WEEK_OPEN returns the CURRENT_WEEK_OPEN field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_OPENOk() (*int32, bool)`

GetCURRENT_WEEK_OPENOk returns a tuple with the CURRENT_WEEK_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_OPEN(v int32)`

SetCURRENT_WEEK_OPEN sets CURRENT_WEEK_OPEN field to given value.

### HasCURRENT_WEEK_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_OPEN() bool`

HasCURRENT_WEEK_OPEN returns a boolean if a field has been set.

### GetCURRENT_WEEK_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME() int32`

GetCURRENT_WEEK_QUOTE_VOLUME returns the CURRENT_WEEK_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUMEOk() (*int32, bool)`

GetCURRENT_WEEK_QUOTE_VOLUMEOk returns a tuple with the CURRENT_WEEK_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_QUOTE_VOLUME(v int32)`

SetCURRENT_WEEK_QUOTE_VOLUME sets CURRENT_WEEK_QUOTE_VOLUME field to given value.

### HasCURRENT_WEEK_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_QUOTE_VOLUME() bool`

HasCURRENT_WEEK_QUOTE_VOLUME returns a boolean if a field has been set.

### GetCURRENT_WEEK_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_BUY() int32`

GetCURRENT_WEEK_QUOTE_VOLUME_BUY returns the CURRENT_WEEK_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_WEEK_QUOTE_VOLUME_BUYOk returns a tuple with the CURRENT_WEEK_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_QUOTE_VOLUME_BUY(v int32)`

SetCURRENT_WEEK_QUOTE_VOLUME_BUY sets CURRENT_WEEK_QUOTE_VOLUME_BUY field to given value.

### HasCURRENT_WEEK_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_QUOTE_VOLUME_BUY() bool`

HasCURRENT_WEEK_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_WEEK_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_SELL() int32`

GetCURRENT_WEEK_QUOTE_VOLUME_SELL returns the CURRENT_WEEK_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_WEEK_QUOTE_VOLUME_SELLOk returns a tuple with the CURRENT_WEEK_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_QUOTE_VOLUME_SELL(v int32)`

SetCURRENT_WEEK_QUOTE_VOLUME_SELL sets CURRENT_WEEK_QUOTE_VOLUME_SELL field to given value.

### HasCURRENT_WEEK_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_QUOTE_VOLUME_SELL() bool`

HasCURRENT_WEEK_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN() int32`

GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN returns the CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN(v int32)`

SetCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN sets CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN field to given value.

### HasCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN() bool`

HasCURRENT_WEEK_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_WEEK_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES() int32`

GetCURRENT_WEEK_TOTAL_TRADES returns the CURRENT_WEEK_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADESOk() (*int32, bool)`

GetCURRENT_WEEK_TOTAL_TRADESOk returns a tuple with the CURRENT_WEEK_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_TOTAL_TRADES(v int32)`

SetCURRENT_WEEK_TOTAL_TRADES sets CURRENT_WEEK_TOTAL_TRADES field to given value.

### HasCURRENT_WEEK_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_TOTAL_TRADES() bool`

HasCURRENT_WEEK_TOTAL_TRADES returns a boolean if a field has been set.

### GetCURRENT_WEEK_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_BUY() int32`

GetCURRENT_WEEK_TOTAL_TRADES_BUY returns the CURRENT_WEEK_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetCURRENT_WEEK_TOTAL_TRADES_BUYOk returns a tuple with the CURRENT_WEEK_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_TOTAL_TRADES_BUY(v int32)`

SetCURRENT_WEEK_TOTAL_TRADES_BUY sets CURRENT_WEEK_TOTAL_TRADES_BUY field to given value.

### HasCURRENT_WEEK_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_TOTAL_TRADES_BUY() bool`

HasCURRENT_WEEK_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetCURRENT_WEEK_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_SELL() int32`

GetCURRENT_WEEK_TOTAL_TRADES_SELL returns the CURRENT_WEEK_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetCURRENT_WEEK_TOTAL_TRADES_SELLOk returns a tuple with the CURRENT_WEEK_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_TOTAL_TRADES_SELL(v int32)`

SetCURRENT_WEEK_TOTAL_TRADES_SELL sets CURRENT_WEEK_TOTAL_TRADES_SELL field to given value.

### HasCURRENT_WEEK_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_TOTAL_TRADES_SELL() bool`

HasCURRENT_WEEK_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN() int32`

GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN returns the CURRENT_WEEK_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetCURRENT_WEEK_TOTAL_TRADES_UNKNOWNOk returns a tuple with the CURRENT_WEEK_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN(v int32)`

SetCURRENT_WEEK_TOTAL_TRADES_UNKNOWN sets CURRENT_WEEK_TOTAL_TRADES_UNKNOWN field to given value.

### HasCURRENT_WEEK_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_TOTAL_TRADES_UNKNOWN() bool`

HasCURRENT_WEEK_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_WEEK_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME() int32`

GetCURRENT_WEEK_VOLUME returns the CURRENT_WEEK_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUMEOk() (*int32, bool)`

GetCURRENT_WEEK_VOLUMEOk returns a tuple with the CURRENT_WEEK_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_VOLUME(v int32)`

SetCURRENT_WEEK_VOLUME sets CURRENT_WEEK_VOLUME field to given value.

### HasCURRENT_WEEK_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_VOLUME() bool`

HasCURRENT_WEEK_VOLUME returns a boolean if a field has been set.

### GetCURRENT_WEEK_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_BUY() int32`

GetCURRENT_WEEK_VOLUME_BUY returns the CURRENT_WEEK_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_WEEK_VOLUME_BUYOk returns a tuple with the CURRENT_WEEK_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_VOLUME_BUY(v int32)`

SetCURRENT_WEEK_VOLUME_BUY sets CURRENT_WEEK_VOLUME_BUY field to given value.

### HasCURRENT_WEEK_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_VOLUME_BUY() bool`

HasCURRENT_WEEK_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_WEEK_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_SELL() int32`

GetCURRENT_WEEK_VOLUME_SELL returns the CURRENT_WEEK_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_WEEK_VOLUME_SELLOk returns a tuple with the CURRENT_WEEK_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_VOLUME_SELL(v int32)`

SetCURRENT_WEEK_VOLUME_SELL sets CURRENT_WEEK_VOLUME_SELL field to given value.

### HasCURRENT_WEEK_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_VOLUME_SELL() bool`

HasCURRENT_WEEK_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_WEEK_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_UNKNOWN() int32`

GetCURRENT_WEEK_VOLUME_UNKNOWN returns the CURRENT_WEEK_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_WEEK_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_WEEK_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_WEEK_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_WEEK_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_WEEK_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_WEEK_VOLUME_UNKNOWN(v int32)`

SetCURRENT_WEEK_VOLUME_UNKNOWN sets CURRENT_WEEK_VOLUME_UNKNOWN field to given value.

### HasCURRENT_WEEK_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_WEEK_VOLUME_UNKNOWN() bool`

HasCURRENT_WEEK_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_YEAR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_HIGH() int32`

GetCURRENT_YEAR_HIGH returns the CURRENT_YEAR_HIGH field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_HIGHOk() (*int32, bool)`

GetCURRENT_YEAR_HIGHOk returns a tuple with the CURRENT_YEAR_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_HIGH(v int32)`

SetCURRENT_YEAR_HIGH sets CURRENT_YEAR_HIGH field to given value.

### HasCURRENT_YEAR_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_HIGH() bool`

HasCURRENT_YEAR_HIGH returns a boolean if a field has been set.

### GetCURRENT_YEAR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_LOW() int32`

GetCURRENT_YEAR_LOW returns the CURRENT_YEAR_LOW field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_LOWOk() (*int32, bool)`

GetCURRENT_YEAR_LOWOk returns a tuple with the CURRENT_YEAR_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_LOW(v int32)`

SetCURRENT_YEAR_LOW sets CURRENT_YEAR_LOW field to given value.

### HasCURRENT_YEAR_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_LOW() bool`

HasCURRENT_YEAR_LOW returns a boolean if a field has been set.

### GetCURRENT_YEAR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_OPEN() int32`

GetCURRENT_YEAR_OPEN returns the CURRENT_YEAR_OPEN field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_OPENOk() (*int32, bool)`

GetCURRENT_YEAR_OPENOk returns a tuple with the CURRENT_YEAR_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_OPEN(v int32)`

SetCURRENT_YEAR_OPEN sets CURRENT_YEAR_OPEN field to given value.

### HasCURRENT_YEAR_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_OPEN() bool`

HasCURRENT_YEAR_OPEN returns a boolean if a field has been set.

### GetCURRENT_YEAR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME() int32`

GetCURRENT_YEAR_QUOTE_VOLUME returns the CURRENT_YEAR_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUMEOk() (*int32, bool)`

GetCURRENT_YEAR_QUOTE_VOLUMEOk returns a tuple with the CURRENT_YEAR_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_QUOTE_VOLUME(v int32)`

SetCURRENT_YEAR_QUOTE_VOLUME sets CURRENT_YEAR_QUOTE_VOLUME field to given value.

### HasCURRENT_YEAR_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_QUOTE_VOLUME() bool`

HasCURRENT_YEAR_QUOTE_VOLUME returns a boolean if a field has been set.

### GetCURRENT_YEAR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_BUY() int32`

GetCURRENT_YEAR_QUOTE_VOLUME_BUY returns the CURRENT_YEAR_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_YEAR_QUOTE_VOLUME_BUYOk returns a tuple with the CURRENT_YEAR_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_QUOTE_VOLUME_BUY(v int32)`

SetCURRENT_YEAR_QUOTE_VOLUME_BUY sets CURRENT_YEAR_QUOTE_VOLUME_BUY field to given value.

### HasCURRENT_YEAR_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_QUOTE_VOLUME_BUY() bool`

HasCURRENT_YEAR_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_YEAR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_SELL() int32`

GetCURRENT_YEAR_QUOTE_VOLUME_SELL returns the CURRENT_YEAR_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_YEAR_QUOTE_VOLUME_SELLOk returns a tuple with the CURRENT_YEAR_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_QUOTE_VOLUME_SELL(v int32)`

SetCURRENT_YEAR_QUOTE_VOLUME_SELL sets CURRENT_YEAR_QUOTE_VOLUME_SELL field to given value.

### HasCURRENT_YEAR_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_QUOTE_VOLUME_SELL() bool`

HasCURRENT_YEAR_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN() int32`

GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN returns the CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN(v int32)`

SetCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN sets CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN field to given value.

### HasCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN() bool`

HasCURRENT_YEAR_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_YEAR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES() int32`

GetCURRENT_YEAR_TOTAL_TRADES returns the CURRENT_YEAR_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADESOk() (*int32, bool)`

GetCURRENT_YEAR_TOTAL_TRADESOk returns a tuple with the CURRENT_YEAR_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_TOTAL_TRADES(v int32)`

SetCURRENT_YEAR_TOTAL_TRADES sets CURRENT_YEAR_TOTAL_TRADES field to given value.

### HasCURRENT_YEAR_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_TOTAL_TRADES() bool`

HasCURRENT_YEAR_TOTAL_TRADES returns a boolean if a field has been set.

### GetCURRENT_YEAR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_BUY() int32`

GetCURRENT_YEAR_TOTAL_TRADES_BUY returns the CURRENT_YEAR_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetCURRENT_YEAR_TOTAL_TRADES_BUYOk returns a tuple with the CURRENT_YEAR_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_TOTAL_TRADES_BUY(v int32)`

SetCURRENT_YEAR_TOTAL_TRADES_BUY sets CURRENT_YEAR_TOTAL_TRADES_BUY field to given value.

### HasCURRENT_YEAR_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_TOTAL_TRADES_BUY() bool`

HasCURRENT_YEAR_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetCURRENT_YEAR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_SELL() int32`

GetCURRENT_YEAR_TOTAL_TRADES_SELL returns the CURRENT_YEAR_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetCURRENT_YEAR_TOTAL_TRADES_SELLOk returns a tuple with the CURRENT_YEAR_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_TOTAL_TRADES_SELL(v int32)`

SetCURRENT_YEAR_TOTAL_TRADES_SELL sets CURRENT_YEAR_TOTAL_TRADES_SELL field to given value.

### HasCURRENT_YEAR_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_TOTAL_TRADES_SELL() bool`

HasCURRENT_YEAR_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN() int32`

GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN returns the CURRENT_YEAR_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetCURRENT_YEAR_TOTAL_TRADES_UNKNOWNOk returns a tuple with the CURRENT_YEAR_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN(v int32)`

SetCURRENT_YEAR_TOTAL_TRADES_UNKNOWN sets CURRENT_YEAR_TOTAL_TRADES_UNKNOWN field to given value.

### HasCURRENT_YEAR_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_TOTAL_TRADES_UNKNOWN() bool`

HasCURRENT_YEAR_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetCURRENT_YEAR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME() int32`

GetCURRENT_YEAR_VOLUME returns the CURRENT_YEAR_VOLUME field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUMEOk() (*int32, bool)`

GetCURRENT_YEAR_VOLUMEOk returns a tuple with the CURRENT_YEAR_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_VOLUME(v int32)`

SetCURRENT_YEAR_VOLUME sets CURRENT_YEAR_VOLUME field to given value.

### HasCURRENT_YEAR_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_VOLUME() bool`

HasCURRENT_YEAR_VOLUME returns a boolean if a field has been set.

### GetCURRENT_YEAR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_BUY() int32`

GetCURRENT_YEAR_VOLUME_BUY returns the CURRENT_YEAR_VOLUME_BUY field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_BUYOk() (*int32, bool)`

GetCURRENT_YEAR_VOLUME_BUYOk returns a tuple with the CURRENT_YEAR_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_VOLUME_BUY(v int32)`

SetCURRENT_YEAR_VOLUME_BUY sets CURRENT_YEAR_VOLUME_BUY field to given value.

### HasCURRENT_YEAR_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_VOLUME_BUY() bool`

HasCURRENT_YEAR_VOLUME_BUY returns a boolean if a field has been set.

### GetCURRENT_YEAR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_SELL() int32`

GetCURRENT_YEAR_VOLUME_SELL returns the CURRENT_YEAR_VOLUME_SELL field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_SELLOk() (*int32, bool)`

GetCURRENT_YEAR_VOLUME_SELLOk returns a tuple with the CURRENT_YEAR_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_VOLUME_SELL(v int32)`

SetCURRENT_YEAR_VOLUME_SELL sets CURRENT_YEAR_VOLUME_SELL field to given value.

### HasCURRENT_YEAR_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_VOLUME_SELL() bool`

HasCURRENT_YEAR_VOLUME_SELL returns a boolean if a field has been set.

### GetCURRENT_YEAR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_UNKNOWN() int32`

GetCURRENT_YEAR_VOLUME_UNKNOWN returns the CURRENT_YEAR_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetCURRENT_YEAR_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetCURRENT_YEAR_VOLUME_UNKNOWNOk() (*int32, bool)`

GetCURRENT_YEAR_VOLUME_UNKNOWNOk returns a tuple with the CURRENT_YEAR_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCURRENT_YEAR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetCURRENT_YEAR_VOLUME_UNKNOWN(v int32)`

SetCURRENT_YEAR_VOLUME_UNKNOWN sets CURRENT_YEAR_VOLUME_UNKNOWN field to given value.

### HasCURRENT_YEAR_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasCURRENT_YEAR_VOLUME_UNKNOWN() bool`

HasCURRENT_YEAR_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetINSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) GetINSTRUMENT() string`

GetINSTRUMENT returns the INSTRUMENT field if non-nil, zero value otherwise.

### GetINSTRUMENTOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetINSTRUMENTOk() (*string, bool)`

GetINSTRUMENTOk returns a tuple with the INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) SetINSTRUMENT(v string)`

SetINSTRUMENT sets INSTRUMENT field to given value.

### HasINSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) HasINSTRUMENT() bool`

HasINSTRUMENT returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_CCSEQ() string`

GetLAST_PROCESSED_TRADE_CCSEQ returns the LAST_PROCESSED_TRADE_CCSEQ field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_CCSEQOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_CCSEQOk() (*string, bool)`

GetLAST_PROCESSED_TRADE_CCSEQOk returns a tuple with the LAST_PROCESSED_TRADE_CCSEQ field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_CCSEQ(v string)`

SetLAST_PROCESSED_TRADE_CCSEQ sets LAST_PROCESSED_TRADE_CCSEQ field to given value.

### HasLAST_PROCESSED_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_CCSEQ() bool`

HasLAST_PROCESSED_TRADE_CCSEQ returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_PRICE() int32`

GetLAST_PROCESSED_TRADE_PRICE returns the LAST_PROCESSED_TRADE_PRICE field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_PRICEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_PRICEOk() (*int32, bool)`

GetLAST_PROCESSED_TRADE_PRICEOk returns a tuple with the LAST_PROCESSED_TRADE_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_PRICE(v int32)`

SetLAST_PROCESSED_TRADE_PRICE sets LAST_PROCESSED_TRADE_PRICE field to given value.

### HasLAST_PROCESSED_TRADE_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_PRICE() bool`

HasLAST_PROCESSED_TRADE_PRICE returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_QUANTITY() int32`

GetLAST_PROCESSED_TRADE_QUANTITY returns the LAST_PROCESSED_TRADE_QUANTITY field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_QUANTITYOk() (*int32, bool)`

GetLAST_PROCESSED_TRADE_QUANTITYOk returns a tuple with the LAST_PROCESSED_TRADE_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_QUANTITY(v int32)`

SetLAST_PROCESSED_TRADE_QUANTITY sets LAST_PROCESSED_TRADE_QUANTITY field to given value.

### HasLAST_PROCESSED_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_QUANTITY() bool`

HasLAST_PROCESSED_TRADE_QUANTITY returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_QUOTE_QUANTITY() int32`

GetLAST_PROCESSED_TRADE_QUOTE_QUANTITY returns the LAST_PROCESSED_TRADE_QUOTE_QUANTITY field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_QUOTE_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_QUOTE_QUANTITYOk() (*int32, bool)`

GetLAST_PROCESSED_TRADE_QUOTE_QUANTITYOk returns a tuple with the LAST_PROCESSED_TRADE_QUOTE_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_QUOTE_QUANTITY(v int32)`

SetLAST_PROCESSED_TRADE_QUOTE_QUANTITY sets LAST_PROCESSED_TRADE_QUOTE_QUANTITY field to given value.

### HasLAST_PROCESSED_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_QUOTE_QUANTITY() bool`

HasLAST_PROCESSED_TRADE_QUOTE_QUANTITY returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_SIDE() string`

GetLAST_PROCESSED_TRADE_SIDE returns the LAST_PROCESSED_TRADE_SIDE field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_SIDEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_SIDEOk() (*string, bool)`

GetLAST_PROCESSED_TRADE_SIDEOk returns a tuple with the LAST_PROCESSED_TRADE_SIDE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_SIDE(v string)`

SetLAST_PROCESSED_TRADE_SIDE sets LAST_PROCESSED_TRADE_SIDE field to given value.

### HasLAST_PROCESSED_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_SIDE() bool`

HasLAST_PROCESSED_TRADE_SIDE returns a boolean if a field has been set.

### GetLAST_PROCESSED_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_TS() int32`

GetLAST_PROCESSED_TRADE_TS returns the LAST_PROCESSED_TRADE_TS field if non-nil, zero value otherwise.

### GetLAST_PROCESSED_TRADE_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_PROCESSED_TRADE_TSOk() (*int32, bool)`

GetLAST_PROCESSED_TRADE_TSOk returns a tuple with the LAST_PROCESSED_TRADE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_PROCESSED_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_PROCESSED_TRADE_TS(v int32)`

SetLAST_PROCESSED_TRADE_TS sets LAST_PROCESSED_TRADE_TS field to given value.

### HasLAST_PROCESSED_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_PROCESSED_TRADE_TS() bool`

HasLAST_PROCESSED_TRADE_TS returns a boolean if a field has been set.

### GetLAST_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_CCSEQ() string`

GetLAST_TRADE_CCSEQ returns the LAST_TRADE_CCSEQ field if non-nil, zero value otherwise.

### GetLAST_TRADE_CCSEQOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_CCSEQOk() (*string, bool)`

GetLAST_TRADE_CCSEQOk returns a tuple with the LAST_TRADE_CCSEQ field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_TRADE_CCSEQ(v string)`

SetLAST_TRADE_CCSEQ sets LAST_TRADE_CCSEQ field to given value.

### HasLAST_TRADE_CCSEQ

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_TRADE_CCSEQ() bool`

HasLAST_TRADE_CCSEQ returns a boolean if a field has been set.

### GetLAST_TRADE_ID

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_ID() string`

GetLAST_TRADE_ID returns the LAST_TRADE_ID field if non-nil, zero value otherwise.

### GetLAST_TRADE_IDOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_IDOk() (*string, bool)`

GetLAST_TRADE_IDOk returns a tuple with the LAST_TRADE_ID field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_ID

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_TRADE_ID(v string)`

SetLAST_TRADE_ID sets LAST_TRADE_ID field to given value.

### HasLAST_TRADE_ID

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_TRADE_ID() bool`

HasLAST_TRADE_ID returns a boolean if a field has been set.

### GetLAST_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_QUANTITY() int32`

GetLAST_TRADE_QUANTITY returns the LAST_TRADE_QUANTITY field if non-nil, zero value otherwise.

### GetLAST_TRADE_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_QUANTITYOk() (*int32, bool)`

GetLAST_TRADE_QUANTITYOk returns a tuple with the LAST_TRADE_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_TRADE_QUANTITY(v int32)`

SetLAST_TRADE_QUANTITY sets LAST_TRADE_QUANTITY field to given value.

### HasLAST_TRADE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_TRADE_QUANTITY() bool`

HasLAST_TRADE_QUANTITY returns a boolean if a field has been set.

### GetLAST_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_QUOTE_QUANTITY() int32`

GetLAST_TRADE_QUOTE_QUANTITY returns the LAST_TRADE_QUOTE_QUANTITY field if non-nil, zero value otherwise.

### GetLAST_TRADE_QUOTE_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_QUOTE_QUANTITYOk() (*int32, bool)`

GetLAST_TRADE_QUOTE_QUANTITYOk returns a tuple with the LAST_TRADE_QUOTE_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_TRADE_QUOTE_QUANTITY(v int32)`

SetLAST_TRADE_QUOTE_QUANTITY sets LAST_TRADE_QUOTE_QUANTITY field to given value.

### HasLAST_TRADE_QUOTE_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_TRADE_QUOTE_QUANTITY() bool`

HasLAST_TRADE_QUOTE_QUANTITY returns a boolean if a field has been set.

### GetLAST_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_SIDE() string`

GetLAST_TRADE_SIDE returns the LAST_TRADE_SIDE field if non-nil, zero value otherwise.

### GetLAST_TRADE_SIDEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLAST_TRADE_SIDEOk() (*string, bool)`

GetLAST_TRADE_SIDEOk returns a tuple with the LAST_TRADE_SIDE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) SetLAST_TRADE_SIDE(v string)`

SetLAST_TRADE_SIDE sets LAST_TRADE_SIDE field to given value.

### HasLAST_TRADE_SIDE

`func (o *SPOTINSTRUMENTMARKETDATA) HasLAST_TRADE_SIDE() bool`

HasLAST_TRADE_SIDE returns a boolean if a field has been set.

### GetLIFETIME_FIRST_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_FIRST_TRADE_TS() int32`

GetLIFETIME_FIRST_TRADE_TS returns the LIFETIME_FIRST_TRADE_TS field if non-nil, zero value otherwise.

### GetLIFETIME_FIRST_TRADE_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_FIRST_TRADE_TSOk() (*int32, bool)`

GetLIFETIME_FIRST_TRADE_TSOk returns a tuple with the LIFETIME_FIRST_TRADE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_FIRST_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_FIRST_TRADE_TS(v int32)`

SetLIFETIME_FIRST_TRADE_TS sets LIFETIME_FIRST_TRADE_TS field to given value.

### HasLIFETIME_FIRST_TRADE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_FIRST_TRADE_TS() bool`

HasLIFETIME_FIRST_TRADE_TS returns a boolean if a field has been set.

### GetLIFETIME_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_HIGH() int32`

GetLIFETIME_HIGH returns the LIFETIME_HIGH field if non-nil, zero value otherwise.

### GetLIFETIME_HIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_HIGHOk() (*int32, bool)`

GetLIFETIME_HIGHOk returns a tuple with the LIFETIME_HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_HIGH(v int32)`

SetLIFETIME_HIGH sets LIFETIME_HIGH field to given value.

### HasLIFETIME_HIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_HIGH() bool`

HasLIFETIME_HIGH returns a boolean if a field has been set.

### GetLIFETIME_HIGH_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_HIGH_TS() int32`

GetLIFETIME_HIGH_TS returns the LIFETIME_HIGH_TS field if non-nil, zero value otherwise.

### GetLIFETIME_HIGH_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_HIGH_TSOk() (*int32, bool)`

GetLIFETIME_HIGH_TSOk returns a tuple with the LIFETIME_HIGH_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_HIGH_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_HIGH_TS(v int32)`

SetLIFETIME_HIGH_TS sets LIFETIME_HIGH_TS field to given value.

### HasLIFETIME_HIGH_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_HIGH_TS() bool`

HasLIFETIME_HIGH_TS returns a boolean if a field has been set.

### GetLIFETIME_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_LOW() int32`

GetLIFETIME_LOW returns the LIFETIME_LOW field if non-nil, zero value otherwise.

### GetLIFETIME_LOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_LOWOk() (*int32, bool)`

GetLIFETIME_LOWOk returns a tuple with the LIFETIME_LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_LOW(v int32)`

SetLIFETIME_LOW sets LIFETIME_LOW field to given value.

### HasLIFETIME_LOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_LOW() bool`

HasLIFETIME_LOW returns a boolean if a field has been set.

### GetLIFETIME_LOW_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_LOW_TS() int32`

GetLIFETIME_LOW_TS returns the LIFETIME_LOW_TS field if non-nil, zero value otherwise.

### GetLIFETIME_LOW_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_LOW_TSOk() (*int32, bool)`

GetLIFETIME_LOW_TSOk returns a tuple with the LIFETIME_LOW_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_LOW_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_LOW_TS(v int32)`

SetLIFETIME_LOW_TS sets LIFETIME_LOW_TS field to given value.

### HasLIFETIME_LOW_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_LOW_TS() bool`

HasLIFETIME_LOW_TS returns a boolean if a field has been set.

### GetLIFETIME_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_OPEN() int32`

GetLIFETIME_OPEN returns the LIFETIME_OPEN field if non-nil, zero value otherwise.

### GetLIFETIME_OPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_OPENOk() (*int32, bool)`

GetLIFETIME_OPENOk returns a tuple with the LIFETIME_OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_OPEN(v int32)`

SetLIFETIME_OPEN sets LIFETIME_OPEN field to given value.

### HasLIFETIME_OPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_OPEN() bool`

HasLIFETIME_OPEN returns a boolean if a field has been set.

### GetLIFETIME_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME() int32`

GetLIFETIME_QUOTE_VOLUME returns the LIFETIME_QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetLIFETIME_QUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUMEOk() (*int32, bool)`

GetLIFETIME_QUOTE_VOLUMEOk returns a tuple with the LIFETIME_QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_QUOTE_VOLUME(v int32)`

SetLIFETIME_QUOTE_VOLUME sets LIFETIME_QUOTE_VOLUME field to given value.

### HasLIFETIME_QUOTE_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_QUOTE_VOLUME() bool`

HasLIFETIME_QUOTE_VOLUME returns a boolean if a field has been set.

### GetLIFETIME_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_BUY() int32`

GetLIFETIME_QUOTE_VOLUME_BUY returns the LIFETIME_QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetLIFETIME_QUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_BUYOk() (*int32, bool)`

GetLIFETIME_QUOTE_VOLUME_BUYOk returns a tuple with the LIFETIME_QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_QUOTE_VOLUME_BUY(v int32)`

SetLIFETIME_QUOTE_VOLUME_BUY sets LIFETIME_QUOTE_VOLUME_BUY field to given value.

### HasLIFETIME_QUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_QUOTE_VOLUME_BUY() bool`

HasLIFETIME_QUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetLIFETIME_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_SELL() int32`

GetLIFETIME_QUOTE_VOLUME_SELL returns the LIFETIME_QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetLIFETIME_QUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_SELLOk() (*int32, bool)`

GetLIFETIME_QUOTE_VOLUME_SELLOk returns a tuple with the LIFETIME_QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_QUOTE_VOLUME_SELL(v int32)`

SetLIFETIME_QUOTE_VOLUME_SELL sets LIFETIME_QUOTE_VOLUME_SELL field to given value.

### HasLIFETIME_QUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_QUOTE_VOLUME_SELL() bool`

HasLIFETIME_QUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetLIFETIME_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_UNKNOWN() int32`

GetLIFETIME_QUOTE_VOLUME_UNKNOWN returns the LIFETIME_QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetLIFETIME_QUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_QUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetLIFETIME_QUOTE_VOLUME_UNKNOWNOk returns a tuple with the LIFETIME_QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_QUOTE_VOLUME_UNKNOWN(v int32)`

SetLIFETIME_QUOTE_VOLUME_UNKNOWN sets LIFETIME_QUOTE_VOLUME_UNKNOWN field to given value.

### HasLIFETIME_QUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_QUOTE_VOLUME_UNKNOWN() bool`

HasLIFETIME_QUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetLIFETIME_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES() int32`

GetLIFETIME_TOTAL_TRADES returns the LIFETIME_TOTAL_TRADES field if non-nil, zero value otherwise.

### GetLIFETIME_TOTAL_TRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADESOk() (*int32, bool)`

GetLIFETIME_TOTAL_TRADESOk returns a tuple with the LIFETIME_TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_TOTAL_TRADES(v int32)`

SetLIFETIME_TOTAL_TRADES sets LIFETIME_TOTAL_TRADES field to given value.

### HasLIFETIME_TOTAL_TRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_TOTAL_TRADES() bool`

HasLIFETIME_TOTAL_TRADES returns a boolean if a field has been set.

### GetLIFETIME_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_BUY() int32`

GetLIFETIME_TOTAL_TRADES_BUY returns the LIFETIME_TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetLIFETIME_TOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_BUYOk() (*int32, bool)`

GetLIFETIME_TOTAL_TRADES_BUYOk returns a tuple with the LIFETIME_TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_TOTAL_TRADES_BUY(v int32)`

SetLIFETIME_TOTAL_TRADES_BUY sets LIFETIME_TOTAL_TRADES_BUY field to given value.

### HasLIFETIME_TOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_TOTAL_TRADES_BUY() bool`

HasLIFETIME_TOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetLIFETIME_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_SELL() int32`

GetLIFETIME_TOTAL_TRADES_SELL returns the LIFETIME_TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetLIFETIME_TOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_SELLOk() (*int32, bool)`

GetLIFETIME_TOTAL_TRADES_SELLOk returns a tuple with the LIFETIME_TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_TOTAL_TRADES_SELL(v int32)`

SetLIFETIME_TOTAL_TRADES_SELL sets LIFETIME_TOTAL_TRADES_SELL field to given value.

### HasLIFETIME_TOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_TOTAL_TRADES_SELL() bool`

HasLIFETIME_TOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetLIFETIME_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_UNKNOWN() int32`

GetLIFETIME_TOTAL_TRADES_UNKNOWN returns the LIFETIME_TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetLIFETIME_TOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_TOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetLIFETIME_TOTAL_TRADES_UNKNOWNOk returns a tuple with the LIFETIME_TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_TOTAL_TRADES_UNKNOWN(v int32)`

SetLIFETIME_TOTAL_TRADES_UNKNOWN sets LIFETIME_TOTAL_TRADES_UNKNOWN field to given value.

### HasLIFETIME_TOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_TOTAL_TRADES_UNKNOWN() bool`

HasLIFETIME_TOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetLIFETIME_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME() int32`

GetLIFETIME_VOLUME returns the LIFETIME_VOLUME field if non-nil, zero value otherwise.

### GetLIFETIME_VOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUMEOk() (*int32, bool)`

GetLIFETIME_VOLUMEOk returns a tuple with the LIFETIME_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_VOLUME(v int32)`

SetLIFETIME_VOLUME sets LIFETIME_VOLUME field to given value.

### HasLIFETIME_VOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_VOLUME() bool`

HasLIFETIME_VOLUME returns a boolean if a field has been set.

### GetLIFETIME_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_BUY() int32`

GetLIFETIME_VOLUME_BUY returns the LIFETIME_VOLUME_BUY field if non-nil, zero value otherwise.

### GetLIFETIME_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_BUYOk() (*int32, bool)`

GetLIFETIME_VOLUME_BUYOk returns a tuple with the LIFETIME_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_VOLUME_BUY(v int32)`

SetLIFETIME_VOLUME_BUY sets LIFETIME_VOLUME_BUY field to given value.

### HasLIFETIME_VOLUME_BUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_VOLUME_BUY() bool`

HasLIFETIME_VOLUME_BUY returns a boolean if a field has been set.

### GetLIFETIME_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_SELL() int32`

GetLIFETIME_VOLUME_SELL returns the LIFETIME_VOLUME_SELL field if non-nil, zero value otherwise.

### GetLIFETIME_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_SELLOk() (*int32, bool)`

GetLIFETIME_VOLUME_SELLOk returns a tuple with the LIFETIME_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_VOLUME_SELL(v int32)`

SetLIFETIME_VOLUME_SELL sets LIFETIME_VOLUME_SELL field to given value.

### HasLIFETIME_VOLUME_SELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_VOLUME_SELL() bool`

HasLIFETIME_VOLUME_SELL returns a boolean if a field has been set.

### GetLIFETIME_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_UNKNOWN() int32`

GetLIFETIME_VOLUME_UNKNOWN returns the LIFETIME_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetLIFETIME_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetLIFETIME_VOLUME_UNKNOWNOk() (*int32, bool)`

GetLIFETIME_VOLUME_UNKNOWNOk returns a tuple with the LIFETIME_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLIFETIME_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetLIFETIME_VOLUME_UNKNOWN(v int32)`

SetLIFETIME_VOLUME_UNKNOWN sets LIFETIME_VOLUME_UNKNOWN field to given value.

### HasLIFETIME_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasLIFETIME_VOLUME_UNKNOWN() bool`

HasLIFETIME_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) GetMAPPED_INSTRUMENT() string`

GetMAPPED_INSTRUMENT returns the MAPPED_INSTRUMENT field if non-nil, zero value otherwise.

### GetMAPPED_INSTRUMENTOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMAPPED_INSTRUMENTOk() (*string, bool)`

GetMAPPED_INSTRUMENTOk returns a tuple with the MAPPED_INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) SetMAPPED_INSTRUMENT(v string)`

SetMAPPED_INSTRUMENT sets MAPPED_INSTRUMENT field to given value.

### HasMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTMARKETDATA) HasMAPPED_INSTRUMENT() bool`

HasMAPPED_INSTRUMENT returns a boolean if a field has been set.

### GetMARKET

`func (o *SPOTINSTRUMENTMARKETDATA) GetMARKET() string`

GetMARKET returns the MARKET field if non-nil, zero value otherwise.

### GetMARKETOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMARKETOk() (*string, bool)`

GetMARKETOk returns a tuple with the MARKET field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMARKET

`func (o *SPOTINSTRUMENTMARKETDATA) SetMARKET(v string)`

SetMARKET sets MARKET field to given value.

### HasMARKET

`func (o *SPOTINSTRUMENTMARKETDATA) HasMARKET() bool`

HasMARKET returns a boolean if a field has been set.

### GetMOVING180DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYHIGH() int32`

GetMOVING180DAYHIGH returns the MOVING180DAYHIGH field if non-nil, zero value otherwise.

### GetMOVING180DAYHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYHIGHOk() (*int32, bool)`

GetMOVING180DAYHIGHOk returns a tuple with the MOVING180DAYHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYHIGH(v int32)`

SetMOVING180DAYHIGH sets MOVING180DAYHIGH field to given value.

### HasMOVING180DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYHIGH() bool`

HasMOVING180DAYHIGH returns a boolean if a field has been set.

### GetMOVING180DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYLOW() int32`

GetMOVING180DAYLOW returns the MOVING180DAYLOW field if non-nil, zero value otherwise.

### GetMOVING180DAYLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYLOWOk() (*int32, bool)`

GetMOVING180DAYLOWOk returns a tuple with the MOVING180DAYLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYLOW(v int32)`

SetMOVING180DAYLOW sets MOVING180DAYLOW field to given value.

### HasMOVING180DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYLOW() bool`

HasMOVING180DAYLOW returns a boolean if a field has been set.

### GetMOVING180DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYOPEN() int32`

GetMOVING180DAYOPEN returns the MOVING180DAYOPEN field if non-nil, zero value otherwise.

### GetMOVING180DAYOPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYOPENOk() (*int32, bool)`

GetMOVING180DAYOPENOk returns a tuple with the MOVING180DAYOPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYOPEN(v int32)`

SetMOVING180DAYOPEN sets MOVING180DAYOPEN field to given value.

### HasMOVING180DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYOPEN() bool`

HasMOVING180DAYOPEN returns a boolean if a field has been set.

### GetMOVING180DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUME() int32`

GetMOVING180DAYQUOTEVOLUME returns the MOVING180DAYQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING180DAYQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING180DAYQUOTEVOLUMEOk returns a tuple with the MOVING180DAYQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYQUOTEVOLUME(v int32)`

SetMOVING180DAYQUOTEVOLUME sets MOVING180DAYQUOTEVOLUME field to given value.

### HasMOVING180DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYQUOTEVOLUME() bool`

HasMOVING180DAYQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING180DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMEBUY() int32`

GetMOVING180DAYQUOTEVOLUMEBUY returns the MOVING180DAYQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING180DAYQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING180DAYQUOTEVOLUMEBUYOk returns a tuple with the MOVING180DAYQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYQUOTEVOLUMEBUY(v int32)`

SetMOVING180DAYQUOTEVOLUMEBUY sets MOVING180DAYQUOTEVOLUMEBUY field to given value.

### HasMOVING180DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYQUOTEVOLUMEBUY() bool`

HasMOVING180DAYQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING180DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMESELL() int32`

GetMOVING180DAYQUOTEVOLUMESELL returns the MOVING180DAYQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING180DAYQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING180DAYQUOTEVOLUMESELLOk returns a tuple with the MOVING180DAYQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYQUOTEVOLUMESELL(v int32)`

SetMOVING180DAYQUOTEVOLUMESELL sets MOVING180DAYQUOTEVOLUMESELL field to given value.

### HasMOVING180DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYQUOTEVOLUMESELL() bool`

HasMOVING180DAYQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING180DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMEUNKNOWN() int32`

GetMOVING180DAYQUOTEVOLUMEUNKNOWN returns the MOVING180DAYQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING180DAYQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING180DAYQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING180DAYQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING180DAYQUOTEVOLUMEUNKNOWN sets MOVING180DAYQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING180DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYQUOTEVOLUMEUNKNOWN() bool`

HasMOVING180DAYQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING180DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADES() int32`

GetMOVING180DAYTOTALTRADES returns the MOVING180DAYTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING180DAYTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESOk() (*int32, bool)`

GetMOVING180DAYTOTALTRADESOk returns a tuple with the MOVING180DAYTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYTOTALTRADES(v int32)`

SetMOVING180DAYTOTALTRADES sets MOVING180DAYTOTALTRADES field to given value.

### HasMOVING180DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYTOTALTRADES() bool`

HasMOVING180DAYTOTALTRADES returns a boolean if a field has been set.

### GetMOVING180DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESBUY() int32`

GetMOVING180DAYTOTALTRADESBUY returns the MOVING180DAYTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING180DAYTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING180DAYTOTALTRADESBUYOk returns a tuple with the MOVING180DAYTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYTOTALTRADESBUY(v int32)`

SetMOVING180DAYTOTALTRADESBUY sets MOVING180DAYTOTALTRADESBUY field to given value.

### HasMOVING180DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYTOTALTRADESBUY() bool`

HasMOVING180DAYTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING180DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESSELL() int32`

GetMOVING180DAYTOTALTRADESSELL returns the MOVING180DAYTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING180DAYTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING180DAYTOTALTRADESSELLOk returns a tuple with the MOVING180DAYTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYTOTALTRADESSELL(v int32)`

SetMOVING180DAYTOTALTRADESSELL sets MOVING180DAYTOTALTRADESSELL field to given value.

### HasMOVING180DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYTOTALTRADESSELL() bool`

HasMOVING180DAYTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING180DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESUNKNOWN() int32`

GetMOVING180DAYTOTALTRADESUNKNOWN returns the MOVING180DAYTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING180DAYTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING180DAYTOTALTRADESUNKNOWNOk returns a tuple with the MOVING180DAYTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYTOTALTRADESUNKNOWN(v int32)`

SetMOVING180DAYTOTALTRADESUNKNOWN sets MOVING180DAYTOTALTRADESUNKNOWN field to given value.

### HasMOVING180DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYTOTALTRADESUNKNOWN() bool`

HasMOVING180DAYTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING180DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUME() int32`

GetMOVING180DAYVOLUME returns the MOVING180DAYVOLUME field if non-nil, zero value otherwise.

### GetMOVING180DAYVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMEOk() (*int32, bool)`

GetMOVING180DAYVOLUMEOk returns a tuple with the MOVING180DAYVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYVOLUME(v int32)`

SetMOVING180DAYVOLUME sets MOVING180DAYVOLUME field to given value.

### HasMOVING180DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYVOLUME() bool`

HasMOVING180DAYVOLUME returns a boolean if a field has been set.

### GetMOVING180DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMEBUY() int32`

GetMOVING180DAYVOLUMEBUY returns the MOVING180DAYVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING180DAYVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMEBUYOk() (*int32, bool)`

GetMOVING180DAYVOLUMEBUYOk returns a tuple with the MOVING180DAYVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYVOLUMEBUY(v int32)`

SetMOVING180DAYVOLUMEBUY sets MOVING180DAYVOLUMEBUY field to given value.

### HasMOVING180DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYVOLUMEBUY() bool`

HasMOVING180DAYVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING180DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMESELL() int32`

GetMOVING180DAYVOLUMESELL returns the MOVING180DAYVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING180DAYVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMESELLOk() (*int32, bool)`

GetMOVING180DAYVOLUMESELLOk returns a tuple with the MOVING180DAYVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYVOLUMESELL(v int32)`

SetMOVING180DAYVOLUMESELL sets MOVING180DAYVOLUMESELL field to given value.

### HasMOVING180DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYVOLUMESELL() bool`

HasMOVING180DAYVOLUMESELL returns a boolean if a field has been set.

### GetMOVING180DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMEUNKNOWN() int32`

GetMOVING180DAYVOLUMEUNKNOWN returns the MOVING180DAYVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING180DAYVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING180DAYVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING180DAYVOLUMEUNKNOWNOk returns a tuple with the MOVING180DAYVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING180DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING180DAYVOLUMEUNKNOWN(v int32)`

SetMOVING180DAYVOLUMEUNKNOWN sets MOVING180DAYVOLUMEUNKNOWN field to given value.

### HasMOVING180DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING180DAYVOLUMEUNKNOWN() bool`

HasMOVING180DAYVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING24HOURHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURHIGH() int32`

GetMOVING24HOURHIGH returns the MOVING24HOURHIGH field if non-nil, zero value otherwise.

### GetMOVING24HOURHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURHIGHOk() (*int32, bool)`

GetMOVING24HOURHIGHOk returns a tuple with the MOVING24HOURHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURHIGH(v int32)`

SetMOVING24HOURHIGH sets MOVING24HOURHIGH field to given value.

### HasMOVING24HOURHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURHIGH() bool`

HasMOVING24HOURHIGH returns a boolean if a field has been set.

### GetMOVING24HOURLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURLOW() int32`

GetMOVING24HOURLOW returns the MOVING24HOURLOW field if non-nil, zero value otherwise.

### GetMOVING24HOURLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURLOWOk() (*int32, bool)`

GetMOVING24HOURLOWOk returns a tuple with the MOVING24HOURLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURLOW(v int32)`

SetMOVING24HOURLOW sets MOVING24HOURLOW field to given value.

### HasMOVING24HOURLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURLOW() bool`

HasMOVING24HOURLOW returns a boolean if a field has been set.

### GetMOVING24HOUROPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOUROPEN() int32`

GetMOVING24HOUROPEN returns the MOVING24HOUROPEN field if non-nil, zero value otherwise.

### GetMOVING24HOUROPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOUROPENOk() (*int32, bool)`

GetMOVING24HOUROPENOk returns a tuple with the MOVING24HOUROPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOUROPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOUROPEN(v int32)`

SetMOVING24HOUROPEN sets MOVING24HOUROPEN field to given value.

### HasMOVING24HOUROPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOUROPEN() bool`

HasMOVING24HOUROPEN returns a boolean if a field has been set.

### GetMOVING24HOURQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUME() int32`

GetMOVING24HOURQUOTEVOLUME returns the MOVING24HOURQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING24HOURQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING24HOURQUOTEVOLUMEOk returns a tuple with the MOVING24HOURQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURQUOTEVOLUME(v int32)`

SetMOVING24HOURQUOTEVOLUME sets MOVING24HOURQUOTEVOLUME field to given value.

### HasMOVING24HOURQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURQUOTEVOLUME() bool`

HasMOVING24HOURQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING24HOURQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMEBUY() int32`

GetMOVING24HOURQUOTEVOLUMEBUY returns the MOVING24HOURQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING24HOURQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING24HOURQUOTEVOLUMEBUYOk returns a tuple with the MOVING24HOURQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURQUOTEVOLUMEBUY(v int32)`

SetMOVING24HOURQUOTEVOLUMEBUY sets MOVING24HOURQUOTEVOLUMEBUY field to given value.

### HasMOVING24HOURQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURQUOTEVOLUMEBUY() bool`

HasMOVING24HOURQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING24HOURQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMESELL() int32`

GetMOVING24HOURQUOTEVOLUMESELL returns the MOVING24HOURQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING24HOURQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING24HOURQUOTEVOLUMESELLOk returns a tuple with the MOVING24HOURQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURQUOTEVOLUMESELL(v int32)`

SetMOVING24HOURQUOTEVOLUMESELL sets MOVING24HOURQUOTEVOLUMESELL field to given value.

### HasMOVING24HOURQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURQUOTEVOLUMESELL() bool`

HasMOVING24HOURQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING24HOURQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMEUNKNOWN() int32`

GetMOVING24HOURQUOTEVOLUMEUNKNOWN returns the MOVING24HOURQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING24HOURQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING24HOURQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING24HOURQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING24HOURQUOTEVOLUMEUNKNOWN sets MOVING24HOURQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING24HOURQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURQUOTEVOLUMEUNKNOWN() bool`

HasMOVING24HOURQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING24HOURTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADES() int32`

GetMOVING24HOURTOTALTRADES returns the MOVING24HOURTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING24HOURTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESOk() (*int32, bool)`

GetMOVING24HOURTOTALTRADESOk returns a tuple with the MOVING24HOURTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURTOTALTRADES(v int32)`

SetMOVING24HOURTOTALTRADES sets MOVING24HOURTOTALTRADES field to given value.

### HasMOVING24HOURTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURTOTALTRADES() bool`

HasMOVING24HOURTOTALTRADES returns a boolean if a field has been set.

### GetMOVING24HOURTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESBUY() int32`

GetMOVING24HOURTOTALTRADESBUY returns the MOVING24HOURTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING24HOURTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING24HOURTOTALTRADESBUYOk returns a tuple with the MOVING24HOURTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURTOTALTRADESBUY(v int32)`

SetMOVING24HOURTOTALTRADESBUY sets MOVING24HOURTOTALTRADESBUY field to given value.

### HasMOVING24HOURTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURTOTALTRADESBUY() bool`

HasMOVING24HOURTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING24HOURTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESSELL() int32`

GetMOVING24HOURTOTALTRADESSELL returns the MOVING24HOURTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING24HOURTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING24HOURTOTALTRADESSELLOk returns a tuple with the MOVING24HOURTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURTOTALTRADESSELL(v int32)`

SetMOVING24HOURTOTALTRADESSELL sets MOVING24HOURTOTALTRADESSELL field to given value.

### HasMOVING24HOURTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURTOTALTRADESSELL() bool`

HasMOVING24HOURTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING24HOURTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESUNKNOWN() int32`

GetMOVING24HOURTOTALTRADESUNKNOWN returns the MOVING24HOURTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING24HOURTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING24HOURTOTALTRADESUNKNOWNOk returns a tuple with the MOVING24HOURTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURTOTALTRADESUNKNOWN(v int32)`

SetMOVING24HOURTOTALTRADESUNKNOWN sets MOVING24HOURTOTALTRADESUNKNOWN field to given value.

### HasMOVING24HOURTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURTOTALTRADESUNKNOWN() bool`

HasMOVING24HOURTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING24HOURVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUME() int32`

GetMOVING24HOURVOLUME returns the MOVING24HOURVOLUME field if non-nil, zero value otherwise.

### GetMOVING24HOURVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMEOk() (*int32, bool)`

GetMOVING24HOURVOLUMEOk returns a tuple with the MOVING24HOURVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURVOLUME(v int32)`

SetMOVING24HOURVOLUME sets MOVING24HOURVOLUME field to given value.

### HasMOVING24HOURVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURVOLUME() bool`

HasMOVING24HOURVOLUME returns a boolean if a field has been set.

### GetMOVING24HOURVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMEBUY() int32`

GetMOVING24HOURVOLUMEBUY returns the MOVING24HOURVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING24HOURVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMEBUYOk() (*int32, bool)`

GetMOVING24HOURVOLUMEBUYOk returns a tuple with the MOVING24HOURVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURVOLUMEBUY(v int32)`

SetMOVING24HOURVOLUMEBUY sets MOVING24HOURVOLUMEBUY field to given value.

### HasMOVING24HOURVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURVOLUMEBUY() bool`

HasMOVING24HOURVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING24HOURVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMESELL() int32`

GetMOVING24HOURVOLUMESELL returns the MOVING24HOURVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING24HOURVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMESELLOk() (*int32, bool)`

GetMOVING24HOURVOLUMESELLOk returns a tuple with the MOVING24HOURVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURVOLUMESELL(v int32)`

SetMOVING24HOURVOLUMESELL sets MOVING24HOURVOLUMESELL field to given value.

### HasMOVING24HOURVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURVOLUMESELL() bool`

HasMOVING24HOURVOLUMESELL returns a boolean if a field has been set.

### GetMOVING24HOURVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMEUNKNOWN() int32`

GetMOVING24HOURVOLUMEUNKNOWN returns the MOVING24HOURVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING24HOURVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING24HOURVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING24HOURVOLUMEUNKNOWNOk returns a tuple with the MOVING24HOURVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING24HOURVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING24HOURVOLUMEUNKNOWN(v int32)`

SetMOVING24HOURVOLUMEUNKNOWN sets MOVING24HOURVOLUMEUNKNOWN field to given value.

### HasMOVING24HOURVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING24HOURVOLUMEUNKNOWN() bool`

HasMOVING24HOURVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING30DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYHIGH() int32`

GetMOVING30DAYHIGH returns the MOVING30DAYHIGH field if non-nil, zero value otherwise.

### GetMOVING30DAYHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYHIGHOk() (*int32, bool)`

GetMOVING30DAYHIGHOk returns a tuple with the MOVING30DAYHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYHIGH(v int32)`

SetMOVING30DAYHIGH sets MOVING30DAYHIGH field to given value.

### HasMOVING30DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYHIGH() bool`

HasMOVING30DAYHIGH returns a boolean if a field has been set.

### GetMOVING30DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYLOW() int32`

GetMOVING30DAYLOW returns the MOVING30DAYLOW field if non-nil, zero value otherwise.

### GetMOVING30DAYLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYLOWOk() (*int32, bool)`

GetMOVING30DAYLOWOk returns a tuple with the MOVING30DAYLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYLOW(v int32)`

SetMOVING30DAYLOW sets MOVING30DAYLOW field to given value.

### HasMOVING30DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYLOW() bool`

HasMOVING30DAYLOW returns a boolean if a field has been set.

### GetMOVING30DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYOPEN() int32`

GetMOVING30DAYOPEN returns the MOVING30DAYOPEN field if non-nil, zero value otherwise.

### GetMOVING30DAYOPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYOPENOk() (*int32, bool)`

GetMOVING30DAYOPENOk returns a tuple with the MOVING30DAYOPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYOPEN(v int32)`

SetMOVING30DAYOPEN sets MOVING30DAYOPEN field to given value.

### HasMOVING30DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYOPEN() bool`

HasMOVING30DAYOPEN returns a boolean if a field has been set.

### GetMOVING30DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUME() int32`

GetMOVING30DAYQUOTEVOLUME returns the MOVING30DAYQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING30DAYQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING30DAYQUOTEVOLUMEOk returns a tuple with the MOVING30DAYQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYQUOTEVOLUME(v int32)`

SetMOVING30DAYQUOTEVOLUME sets MOVING30DAYQUOTEVOLUME field to given value.

### HasMOVING30DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYQUOTEVOLUME() bool`

HasMOVING30DAYQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING30DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMEBUY() int32`

GetMOVING30DAYQUOTEVOLUMEBUY returns the MOVING30DAYQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING30DAYQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING30DAYQUOTEVOLUMEBUYOk returns a tuple with the MOVING30DAYQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYQUOTEVOLUMEBUY(v int32)`

SetMOVING30DAYQUOTEVOLUMEBUY sets MOVING30DAYQUOTEVOLUMEBUY field to given value.

### HasMOVING30DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYQUOTEVOLUMEBUY() bool`

HasMOVING30DAYQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING30DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMESELL() int32`

GetMOVING30DAYQUOTEVOLUMESELL returns the MOVING30DAYQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING30DAYQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING30DAYQUOTEVOLUMESELLOk returns a tuple with the MOVING30DAYQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYQUOTEVOLUMESELL(v int32)`

SetMOVING30DAYQUOTEVOLUMESELL sets MOVING30DAYQUOTEVOLUMESELL field to given value.

### HasMOVING30DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYQUOTEVOLUMESELL() bool`

HasMOVING30DAYQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING30DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMEUNKNOWN() int32`

GetMOVING30DAYQUOTEVOLUMEUNKNOWN returns the MOVING30DAYQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING30DAYQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING30DAYQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING30DAYQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING30DAYQUOTEVOLUMEUNKNOWN sets MOVING30DAYQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING30DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYQUOTEVOLUMEUNKNOWN() bool`

HasMOVING30DAYQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING30DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADES() int32`

GetMOVING30DAYTOTALTRADES returns the MOVING30DAYTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING30DAYTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESOk() (*int32, bool)`

GetMOVING30DAYTOTALTRADESOk returns a tuple with the MOVING30DAYTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYTOTALTRADES(v int32)`

SetMOVING30DAYTOTALTRADES sets MOVING30DAYTOTALTRADES field to given value.

### HasMOVING30DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYTOTALTRADES() bool`

HasMOVING30DAYTOTALTRADES returns a boolean if a field has been set.

### GetMOVING30DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESBUY() int32`

GetMOVING30DAYTOTALTRADESBUY returns the MOVING30DAYTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING30DAYTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING30DAYTOTALTRADESBUYOk returns a tuple with the MOVING30DAYTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYTOTALTRADESBUY(v int32)`

SetMOVING30DAYTOTALTRADESBUY sets MOVING30DAYTOTALTRADESBUY field to given value.

### HasMOVING30DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYTOTALTRADESBUY() bool`

HasMOVING30DAYTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING30DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESSELL() int32`

GetMOVING30DAYTOTALTRADESSELL returns the MOVING30DAYTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING30DAYTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING30DAYTOTALTRADESSELLOk returns a tuple with the MOVING30DAYTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYTOTALTRADESSELL(v int32)`

SetMOVING30DAYTOTALTRADESSELL sets MOVING30DAYTOTALTRADESSELL field to given value.

### HasMOVING30DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYTOTALTRADESSELL() bool`

HasMOVING30DAYTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING30DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESUNKNOWN() int32`

GetMOVING30DAYTOTALTRADESUNKNOWN returns the MOVING30DAYTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING30DAYTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING30DAYTOTALTRADESUNKNOWNOk returns a tuple with the MOVING30DAYTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYTOTALTRADESUNKNOWN(v int32)`

SetMOVING30DAYTOTALTRADESUNKNOWN sets MOVING30DAYTOTALTRADESUNKNOWN field to given value.

### HasMOVING30DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYTOTALTRADESUNKNOWN() bool`

HasMOVING30DAYTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING30DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUME() int32`

GetMOVING30DAYVOLUME returns the MOVING30DAYVOLUME field if non-nil, zero value otherwise.

### GetMOVING30DAYVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMEOk() (*int32, bool)`

GetMOVING30DAYVOLUMEOk returns a tuple with the MOVING30DAYVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYVOLUME(v int32)`

SetMOVING30DAYVOLUME sets MOVING30DAYVOLUME field to given value.

### HasMOVING30DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYVOLUME() bool`

HasMOVING30DAYVOLUME returns a boolean if a field has been set.

### GetMOVING30DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMEBUY() int32`

GetMOVING30DAYVOLUMEBUY returns the MOVING30DAYVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING30DAYVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMEBUYOk() (*int32, bool)`

GetMOVING30DAYVOLUMEBUYOk returns a tuple with the MOVING30DAYVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYVOLUMEBUY(v int32)`

SetMOVING30DAYVOLUMEBUY sets MOVING30DAYVOLUMEBUY field to given value.

### HasMOVING30DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYVOLUMEBUY() bool`

HasMOVING30DAYVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING30DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMESELL() int32`

GetMOVING30DAYVOLUMESELL returns the MOVING30DAYVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING30DAYVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMESELLOk() (*int32, bool)`

GetMOVING30DAYVOLUMESELLOk returns a tuple with the MOVING30DAYVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYVOLUMESELL(v int32)`

SetMOVING30DAYVOLUMESELL sets MOVING30DAYVOLUMESELL field to given value.

### HasMOVING30DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYVOLUMESELL() bool`

HasMOVING30DAYVOLUMESELL returns a boolean if a field has been set.

### GetMOVING30DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMEUNKNOWN() int32`

GetMOVING30DAYVOLUMEUNKNOWN returns the MOVING30DAYVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING30DAYVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING30DAYVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING30DAYVOLUMEUNKNOWNOk returns a tuple with the MOVING30DAYVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING30DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING30DAYVOLUMEUNKNOWN(v int32)`

SetMOVING30DAYVOLUMEUNKNOWN sets MOVING30DAYVOLUMEUNKNOWN field to given value.

### HasMOVING30DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING30DAYVOLUMEUNKNOWN() bool`

HasMOVING30DAYVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING365DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYHIGH() int32`

GetMOVING365DAYHIGH returns the MOVING365DAYHIGH field if non-nil, zero value otherwise.

### GetMOVING365DAYHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYHIGHOk() (*int32, bool)`

GetMOVING365DAYHIGHOk returns a tuple with the MOVING365DAYHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYHIGH(v int32)`

SetMOVING365DAYHIGH sets MOVING365DAYHIGH field to given value.

### HasMOVING365DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYHIGH() bool`

HasMOVING365DAYHIGH returns a boolean if a field has been set.

### GetMOVING365DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYLOW() int32`

GetMOVING365DAYLOW returns the MOVING365DAYLOW field if non-nil, zero value otherwise.

### GetMOVING365DAYLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYLOWOk() (*int32, bool)`

GetMOVING365DAYLOWOk returns a tuple with the MOVING365DAYLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYLOW(v int32)`

SetMOVING365DAYLOW sets MOVING365DAYLOW field to given value.

### HasMOVING365DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYLOW() bool`

HasMOVING365DAYLOW returns a boolean if a field has been set.

### GetMOVING365DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYOPEN() int32`

GetMOVING365DAYOPEN returns the MOVING365DAYOPEN field if non-nil, zero value otherwise.

### GetMOVING365DAYOPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYOPENOk() (*int32, bool)`

GetMOVING365DAYOPENOk returns a tuple with the MOVING365DAYOPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYOPEN(v int32)`

SetMOVING365DAYOPEN sets MOVING365DAYOPEN field to given value.

### HasMOVING365DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYOPEN() bool`

HasMOVING365DAYOPEN returns a boolean if a field has been set.

### GetMOVING365DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUME() int32`

GetMOVING365DAYQUOTEVOLUME returns the MOVING365DAYQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING365DAYQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING365DAYQUOTEVOLUMEOk returns a tuple with the MOVING365DAYQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYQUOTEVOLUME(v int32)`

SetMOVING365DAYQUOTEVOLUME sets MOVING365DAYQUOTEVOLUME field to given value.

### HasMOVING365DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYQUOTEVOLUME() bool`

HasMOVING365DAYQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING365DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMEBUY() int32`

GetMOVING365DAYQUOTEVOLUMEBUY returns the MOVING365DAYQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING365DAYQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING365DAYQUOTEVOLUMEBUYOk returns a tuple with the MOVING365DAYQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYQUOTEVOLUMEBUY(v int32)`

SetMOVING365DAYQUOTEVOLUMEBUY sets MOVING365DAYQUOTEVOLUMEBUY field to given value.

### HasMOVING365DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYQUOTEVOLUMEBUY() bool`

HasMOVING365DAYQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING365DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMESELL() int32`

GetMOVING365DAYQUOTEVOLUMESELL returns the MOVING365DAYQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING365DAYQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING365DAYQUOTEVOLUMESELLOk returns a tuple with the MOVING365DAYQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYQUOTEVOLUMESELL(v int32)`

SetMOVING365DAYQUOTEVOLUMESELL sets MOVING365DAYQUOTEVOLUMESELL field to given value.

### HasMOVING365DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYQUOTEVOLUMESELL() bool`

HasMOVING365DAYQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING365DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMEUNKNOWN() int32`

GetMOVING365DAYQUOTEVOLUMEUNKNOWN returns the MOVING365DAYQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING365DAYQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING365DAYQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING365DAYQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING365DAYQUOTEVOLUMEUNKNOWN sets MOVING365DAYQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING365DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYQUOTEVOLUMEUNKNOWN() bool`

HasMOVING365DAYQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING365DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADES() int32`

GetMOVING365DAYTOTALTRADES returns the MOVING365DAYTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING365DAYTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESOk() (*int32, bool)`

GetMOVING365DAYTOTALTRADESOk returns a tuple with the MOVING365DAYTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYTOTALTRADES(v int32)`

SetMOVING365DAYTOTALTRADES sets MOVING365DAYTOTALTRADES field to given value.

### HasMOVING365DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYTOTALTRADES() bool`

HasMOVING365DAYTOTALTRADES returns a boolean if a field has been set.

### GetMOVING365DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESBUY() int32`

GetMOVING365DAYTOTALTRADESBUY returns the MOVING365DAYTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING365DAYTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING365DAYTOTALTRADESBUYOk returns a tuple with the MOVING365DAYTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYTOTALTRADESBUY(v int32)`

SetMOVING365DAYTOTALTRADESBUY sets MOVING365DAYTOTALTRADESBUY field to given value.

### HasMOVING365DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYTOTALTRADESBUY() bool`

HasMOVING365DAYTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING365DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESSELL() int32`

GetMOVING365DAYTOTALTRADESSELL returns the MOVING365DAYTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING365DAYTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING365DAYTOTALTRADESSELLOk returns a tuple with the MOVING365DAYTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYTOTALTRADESSELL(v int32)`

SetMOVING365DAYTOTALTRADESSELL sets MOVING365DAYTOTALTRADESSELL field to given value.

### HasMOVING365DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYTOTALTRADESSELL() bool`

HasMOVING365DAYTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING365DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESUNKNOWN() int32`

GetMOVING365DAYTOTALTRADESUNKNOWN returns the MOVING365DAYTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING365DAYTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING365DAYTOTALTRADESUNKNOWNOk returns a tuple with the MOVING365DAYTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYTOTALTRADESUNKNOWN(v int32)`

SetMOVING365DAYTOTALTRADESUNKNOWN sets MOVING365DAYTOTALTRADESUNKNOWN field to given value.

### HasMOVING365DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYTOTALTRADESUNKNOWN() bool`

HasMOVING365DAYTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING365DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUME() int32`

GetMOVING365DAYVOLUME returns the MOVING365DAYVOLUME field if non-nil, zero value otherwise.

### GetMOVING365DAYVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMEOk() (*int32, bool)`

GetMOVING365DAYVOLUMEOk returns a tuple with the MOVING365DAYVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYVOLUME(v int32)`

SetMOVING365DAYVOLUME sets MOVING365DAYVOLUME field to given value.

### HasMOVING365DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYVOLUME() bool`

HasMOVING365DAYVOLUME returns a boolean if a field has been set.

### GetMOVING365DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMEBUY() int32`

GetMOVING365DAYVOLUMEBUY returns the MOVING365DAYVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING365DAYVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMEBUYOk() (*int32, bool)`

GetMOVING365DAYVOLUMEBUYOk returns a tuple with the MOVING365DAYVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYVOLUMEBUY(v int32)`

SetMOVING365DAYVOLUMEBUY sets MOVING365DAYVOLUMEBUY field to given value.

### HasMOVING365DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYVOLUMEBUY() bool`

HasMOVING365DAYVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING365DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMESELL() int32`

GetMOVING365DAYVOLUMESELL returns the MOVING365DAYVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING365DAYVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMESELLOk() (*int32, bool)`

GetMOVING365DAYVOLUMESELLOk returns a tuple with the MOVING365DAYVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYVOLUMESELL(v int32)`

SetMOVING365DAYVOLUMESELL sets MOVING365DAYVOLUMESELL field to given value.

### HasMOVING365DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYVOLUMESELL() bool`

HasMOVING365DAYVOLUMESELL returns a boolean if a field has been set.

### GetMOVING365DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMEUNKNOWN() int32`

GetMOVING365DAYVOLUMEUNKNOWN returns the MOVING365DAYVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING365DAYVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING365DAYVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING365DAYVOLUMEUNKNOWNOk returns a tuple with the MOVING365DAYVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING365DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING365DAYVOLUMEUNKNOWN(v int32)`

SetMOVING365DAYVOLUMEUNKNOWN sets MOVING365DAYVOLUMEUNKNOWN field to given value.

### HasMOVING365DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING365DAYVOLUMEUNKNOWN() bool`

HasMOVING365DAYVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING7DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYHIGH() int32`

GetMOVING7DAYHIGH returns the MOVING7DAYHIGH field if non-nil, zero value otherwise.

### GetMOVING7DAYHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYHIGHOk() (*int32, bool)`

GetMOVING7DAYHIGHOk returns a tuple with the MOVING7DAYHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYHIGH(v int32)`

SetMOVING7DAYHIGH sets MOVING7DAYHIGH field to given value.

### HasMOVING7DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYHIGH() bool`

HasMOVING7DAYHIGH returns a boolean if a field has been set.

### GetMOVING7DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYLOW() int32`

GetMOVING7DAYLOW returns the MOVING7DAYLOW field if non-nil, zero value otherwise.

### GetMOVING7DAYLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYLOWOk() (*int32, bool)`

GetMOVING7DAYLOWOk returns a tuple with the MOVING7DAYLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYLOW(v int32)`

SetMOVING7DAYLOW sets MOVING7DAYLOW field to given value.

### HasMOVING7DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYLOW() bool`

HasMOVING7DAYLOW returns a boolean if a field has been set.

### GetMOVING7DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYOPEN() int32`

GetMOVING7DAYOPEN returns the MOVING7DAYOPEN field if non-nil, zero value otherwise.

### GetMOVING7DAYOPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYOPENOk() (*int32, bool)`

GetMOVING7DAYOPENOk returns a tuple with the MOVING7DAYOPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYOPEN(v int32)`

SetMOVING7DAYOPEN sets MOVING7DAYOPEN field to given value.

### HasMOVING7DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYOPEN() bool`

HasMOVING7DAYOPEN returns a boolean if a field has been set.

### GetMOVING7DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUME() int32`

GetMOVING7DAYQUOTEVOLUME returns the MOVING7DAYQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING7DAYQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING7DAYQUOTEVOLUMEOk returns a tuple with the MOVING7DAYQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYQUOTEVOLUME(v int32)`

SetMOVING7DAYQUOTEVOLUME sets MOVING7DAYQUOTEVOLUME field to given value.

### HasMOVING7DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYQUOTEVOLUME() bool`

HasMOVING7DAYQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING7DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMEBUY() int32`

GetMOVING7DAYQUOTEVOLUMEBUY returns the MOVING7DAYQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING7DAYQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING7DAYQUOTEVOLUMEBUYOk returns a tuple with the MOVING7DAYQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYQUOTEVOLUMEBUY(v int32)`

SetMOVING7DAYQUOTEVOLUMEBUY sets MOVING7DAYQUOTEVOLUMEBUY field to given value.

### HasMOVING7DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYQUOTEVOLUMEBUY() bool`

HasMOVING7DAYQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING7DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMESELL() int32`

GetMOVING7DAYQUOTEVOLUMESELL returns the MOVING7DAYQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING7DAYQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING7DAYQUOTEVOLUMESELLOk returns a tuple with the MOVING7DAYQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYQUOTEVOLUMESELL(v int32)`

SetMOVING7DAYQUOTEVOLUMESELL sets MOVING7DAYQUOTEVOLUMESELL field to given value.

### HasMOVING7DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYQUOTEVOLUMESELL() bool`

HasMOVING7DAYQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING7DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMEUNKNOWN() int32`

GetMOVING7DAYQUOTEVOLUMEUNKNOWN returns the MOVING7DAYQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING7DAYQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING7DAYQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING7DAYQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING7DAYQUOTEVOLUMEUNKNOWN sets MOVING7DAYQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING7DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYQUOTEVOLUMEUNKNOWN() bool`

HasMOVING7DAYQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING7DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADES() int32`

GetMOVING7DAYTOTALTRADES returns the MOVING7DAYTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING7DAYTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESOk() (*int32, bool)`

GetMOVING7DAYTOTALTRADESOk returns a tuple with the MOVING7DAYTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYTOTALTRADES(v int32)`

SetMOVING7DAYTOTALTRADES sets MOVING7DAYTOTALTRADES field to given value.

### HasMOVING7DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYTOTALTRADES() bool`

HasMOVING7DAYTOTALTRADES returns a boolean if a field has been set.

### GetMOVING7DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESBUY() int32`

GetMOVING7DAYTOTALTRADESBUY returns the MOVING7DAYTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING7DAYTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING7DAYTOTALTRADESBUYOk returns a tuple with the MOVING7DAYTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYTOTALTRADESBUY(v int32)`

SetMOVING7DAYTOTALTRADESBUY sets MOVING7DAYTOTALTRADESBUY field to given value.

### HasMOVING7DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYTOTALTRADESBUY() bool`

HasMOVING7DAYTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING7DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESSELL() int32`

GetMOVING7DAYTOTALTRADESSELL returns the MOVING7DAYTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING7DAYTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING7DAYTOTALTRADESSELLOk returns a tuple with the MOVING7DAYTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYTOTALTRADESSELL(v int32)`

SetMOVING7DAYTOTALTRADESSELL sets MOVING7DAYTOTALTRADESSELL field to given value.

### HasMOVING7DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYTOTALTRADESSELL() bool`

HasMOVING7DAYTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING7DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESUNKNOWN() int32`

GetMOVING7DAYTOTALTRADESUNKNOWN returns the MOVING7DAYTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING7DAYTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING7DAYTOTALTRADESUNKNOWNOk returns a tuple with the MOVING7DAYTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYTOTALTRADESUNKNOWN(v int32)`

SetMOVING7DAYTOTALTRADESUNKNOWN sets MOVING7DAYTOTALTRADESUNKNOWN field to given value.

### HasMOVING7DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYTOTALTRADESUNKNOWN() bool`

HasMOVING7DAYTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING7DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUME() int32`

GetMOVING7DAYVOLUME returns the MOVING7DAYVOLUME field if non-nil, zero value otherwise.

### GetMOVING7DAYVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMEOk() (*int32, bool)`

GetMOVING7DAYVOLUMEOk returns a tuple with the MOVING7DAYVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYVOLUME(v int32)`

SetMOVING7DAYVOLUME sets MOVING7DAYVOLUME field to given value.

### HasMOVING7DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYVOLUME() bool`

HasMOVING7DAYVOLUME returns a boolean if a field has been set.

### GetMOVING7DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMEBUY() int32`

GetMOVING7DAYVOLUMEBUY returns the MOVING7DAYVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING7DAYVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMEBUYOk() (*int32, bool)`

GetMOVING7DAYVOLUMEBUYOk returns a tuple with the MOVING7DAYVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYVOLUMEBUY(v int32)`

SetMOVING7DAYVOLUMEBUY sets MOVING7DAYVOLUMEBUY field to given value.

### HasMOVING7DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYVOLUMEBUY() bool`

HasMOVING7DAYVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING7DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMESELL() int32`

GetMOVING7DAYVOLUMESELL returns the MOVING7DAYVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING7DAYVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMESELLOk() (*int32, bool)`

GetMOVING7DAYVOLUMESELLOk returns a tuple with the MOVING7DAYVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYVOLUMESELL(v int32)`

SetMOVING7DAYVOLUMESELL sets MOVING7DAYVOLUMESELL field to given value.

### HasMOVING7DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYVOLUMESELL() bool`

HasMOVING7DAYVOLUMESELL returns a boolean if a field has been set.

### GetMOVING7DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMEUNKNOWN() int32`

GetMOVING7DAYVOLUMEUNKNOWN returns the MOVING7DAYVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING7DAYVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING7DAYVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING7DAYVOLUMEUNKNOWNOk returns a tuple with the MOVING7DAYVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING7DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING7DAYVOLUMEUNKNOWN(v int32)`

SetMOVING7DAYVOLUMEUNKNOWN sets MOVING7DAYVOLUMEUNKNOWN field to given value.

### HasMOVING7DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING7DAYVOLUMEUNKNOWN() bool`

HasMOVING7DAYVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING90DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYHIGH() int32`

GetMOVING90DAYHIGH returns the MOVING90DAYHIGH field if non-nil, zero value otherwise.

### GetMOVING90DAYHIGHOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYHIGHOk() (*int32, bool)`

GetMOVING90DAYHIGHOk returns a tuple with the MOVING90DAYHIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYHIGH(v int32)`

SetMOVING90DAYHIGH sets MOVING90DAYHIGH field to given value.

### HasMOVING90DAYHIGH

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYHIGH() bool`

HasMOVING90DAYHIGH returns a boolean if a field has been set.

### GetMOVING90DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYLOW() int32`

GetMOVING90DAYLOW returns the MOVING90DAYLOW field if non-nil, zero value otherwise.

### GetMOVING90DAYLOWOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYLOWOk() (*int32, bool)`

GetMOVING90DAYLOWOk returns a tuple with the MOVING90DAYLOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYLOW(v int32)`

SetMOVING90DAYLOW sets MOVING90DAYLOW field to given value.

### HasMOVING90DAYLOW

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYLOW() bool`

HasMOVING90DAYLOW returns a boolean if a field has been set.

### GetMOVING90DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYOPEN() int32`

GetMOVING90DAYOPEN returns the MOVING90DAYOPEN field if non-nil, zero value otherwise.

### GetMOVING90DAYOPENOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYOPENOk() (*int32, bool)`

GetMOVING90DAYOPENOk returns a tuple with the MOVING90DAYOPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYOPEN(v int32)`

SetMOVING90DAYOPEN sets MOVING90DAYOPEN field to given value.

### HasMOVING90DAYOPEN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYOPEN() bool`

HasMOVING90DAYOPEN returns a boolean if a field has been set.

### GetMOVING90DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUME() int32`

GetMOVING90DAYQUOTEVOLUME returns the MOVING90DAYQUOTEVOLUME field if non-nil, zero value otherwise.

### GetMOVING90DAYQUOTEVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMEOk() (*int32, bool)`

GetMOVING90DAYQUOTEVOLUMEOk returns a tuple with the MOVING90DAYQUOTEVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYQUOTEVOLUME(v int32)`

SetMOVING90DAYQUOTEVOLUME sets MOVING90DAYQUOTEVOLUME field to given value.

### HasMOVING90DAYQUOTEVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYQUOTEVOLUME() bool`

HasMOVING90DAYQUOTEVOLUME returns a boolean if a field has been set.

### GetMOVING90DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMEBUY() int32`

GetMOVING90DAYQUOTEVOLUMEBUY returns the MOVING90DAYQUOTEVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING90DAYQUOTEVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMEBUYOk() (*int32, bool)`

GetMOVING90DAYQUOTEVOLUMEBUYOk returns a tuple with the MOVING90DAYQUOTEVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYQUOTEVOLUMEBUY(v int32)`

SetMOVING90DAYQUOTEVOLUMEBUY sets MOVING90DAYQUOTEVOLUMEBUY field to given value.

### HasMOVING90DAYQUOTEVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYQUOTEVOLUMEBUY() bool`

HasMOVING90DAYQUOTEVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING90DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMESELL() int32`

GetMOVING90DAYQUOTEVOLUMESELL returns the MOVING90DAYQUOTEVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING90DAYQUOTEVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMESELLOk() (*int32, bool)`

GetMOVING90DAYQUOTEVOLUMESELLOk returns a tuple with the MOVING90DAYQUOTEVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYQUOTEVOLUMESELL(v int32)`

SetMOVING90DAYQUOTEVOLUMESELL sets MOVING90DAYQUOTEVOLUMESELL field to given value.

### HasMOVING90DAYQUOTEVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYQUOTEVOLUMESELL() bool`

HasMOVING90DAYQUOTEVOLUMESELL returns a boolean if a field has been set.

### GetMOVING90DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMEUNKNOWN() int32`

GetMOVING90DAYQUOTEVOLUMEUNKNOWN returns the MOVING90DAYQUOTEVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING90DAYQUOTEVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYQUOTEVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING90DAYQUOTEVOLUMEUNKNOWNOk returns a tuple with the MOVING90DAYQUOTEVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYQUOTEVOLUMEUNKNOWN(v int32)`

SetMOVING90DAYQUOTEVOLUMEUNKNOWN sets MOVING90DAYQUOTEVOLUMEUNKNOWN field to given value.

### HasMOVING90DAYQUOTEVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYQUOTEVOLUMEUNKNOWN() bool`

HasMOVING90DAYQUOTEVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetMOVING90DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADES() int32`

GetMOVING90DAYTOTALTRADES returns the MOVING90DAYTOTALTRADES field if non-nil, zero value otherwise.

### GetMOVING90DAYTOTALTRADESOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESOk() (*int32, bool)`

GetMOVING90DAYTOTALTRADESOk returns a tuple with the MOVING90DAYTOTALTRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYTOTALTRADES(v int32)`

SetMOVING90DAYTOTALTRADES sets MOVING90DAYTOTALTRADES field to given value.

### HasMOVING90DAYTOTALTRADES

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYTOTALTRADES() bool`

HasMOVING90DAYTOTALTRADES returns a boolean if a field has been set.

### GetMOVING90DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESBUY() int32`

GetMOVING90DAYTOTALTRADESBUY returns the MOVING90DAYTOTALTRADESBUY field if non-nil, zero value otherwise.

### GetMOVING90DAYTOTALTRADESBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESBUYOk() (*int32, bool)`

GetMOVING90DAYTOTALTRADESBUYOk returns a tuple with the MOVING90DAYTOTALTRADESBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYTOTALTRADESBUY(v int32)`

SetMOVING90DAYTOTALTRADESBUY sets MOVING90DAYTOTALTRADESBUY field to given value.

### HasMOVING90DAYTOTALTRADESBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYTOTALTRADESBUY() bool`

HasMOVING90DAYTOTALTRADESBUY returns a boolean if a field has been set.

### GetMOVING90DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESSELL() int32`

GetMOVING90DAYTOTALTRADESSELL returns the MOVING90DAYTOTALTRADESSELL field if non-nil, zero value otherwise.

### GetMOVING90DAYTOTALTRADESSELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESSELLOk() (*int32, bool)`

GetMOVING90DAYTOTALTRADESSELLOk returns a tuple with the MOVING90DAYTOTALTRADESSELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYTOTALTRADESSELL(v int32)`

SetMOVING90DAYTOTALTRADESSELL sets MOVING90DAYTOTALTRADESSELL field to given value.

### HasMOVING90DAYTOTALTRADESSELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYTOTALTRADESSELL() bool`

HasMOVING90DAYTOTALTRADESSELL returns a boolean if a field has been set.

### GetMOVING90DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESUNKNOWN() int32`

GetMOVING90DAYTOTALTRADESUNKNOWN returns the MOVING90DAYTOTALTRADESUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING90DAYTOTALTRADESUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYTOTALTRADESUNKNOWNOk() (*int32, bool)`

GetMOVING90DAYTOTALTRADESUNKNOWNOk returns a tuple with the MOVING90DAYTOTALTRADESUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYTOTALTRADESUNKNOWN(v int32)`

SetMOVING90DAYTOTALTRADESUNKNOWN sets MOVING90DAYTOTALTRADESUNKNOWN field to given value.

### HasMOVING90DAYTOTALTRADESUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYTOTALTRADESUNKNOWN() bool`

HasMOVING90DAYTOTALTRADESUNKNOWN returns a boolean if a field has been set.

### GetMOVING90DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUME() int32`

GetMOVING90DAYVOLUME returns the MOVING90DAYVOLUME field if non-nil, zero value otherwise.

### GetMOVING90DAYVOLUMEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMEOk() (*int32, bool)`

GetMOVING90DAYVOLUMEOk returns a tuple with the MOVING90DAYVOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYVOLUME(v int32)`

SetMOVING90DAYVOLUME sets MOVING90DAYVOLUME field to given value.

### HasMOVING90DAYVOLUME

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYVOLUME() bool`

HasMOVING90DAYVOLUME returns a boolean if a field has been set.

### GetMOVING90DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMEBUY() int32`

GetMOVING90DAYVOLUMEBUY returns the MOVING90DAYVOLUMEBUY field if non-nil, zero value otherwise.

### GetMOVING90DAYVOLUMEBUYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMEBUYOk() (*int32, bool)`

GetMOVING90DAYVOLUMEBUYOk returns a tuple with the MOVING90DAYVOLUMEBUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYVOLUMEBUY(v int32)`

SetMOVING90DAYVOLUMEBUY sets MOVING90DAYVOLUMEBUY field to given value.

### HasMOVING90DAYVOLUMEBUY

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYVOLUMEBUY() bool`

HasMOVING90DAYVOLUMEBUY returns a boolean if a field has been set.

### GetMOVING90DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMESELL() int32`

GetMOVING90DAYVOLUMESELL returns the MOVING90DAYVOLUMESELL field if non-nil, zero value otherwise.

### GetMOVING90DAYVOLUMESELLOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMESELLOk() (*int32, bool)`

GetMOVING90DAYVOLUMESELLOk returns a tuple with the MOVING90DAYVOLUMESELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYVOLUMESELL(v int32)`

SetMOVING90DAYVOLUMESELL sets MOVING90DAYVOLUMESELL field to given value.

### HasMOVING90DAYVOLUMESELL

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYVOLUMESELL() bool`

HasMOVING90DAYVOLUMESELL returns a boolean if a field has been set.

### GetMOVING90DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMEUNKNOWN() int32`

GetMOVING90DAYVOLUMEUNKNOWN returns the MOVING90DAYVOLUMEUNKNOWN field if non-nil, zero value otherwise.

### GetMOVING90DAYVOLUMEUNKNOWNOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetMOVING90DAYVOLUMEUNKNOWNOk() (*int32, bool)`

GetMOVING90DAYVOLUMEUNKNOWNOk returns a tuple with the MOVING90DAYVOLUMEUNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMOVING90DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) SetMOVING90DAYVOLUMEUNKNOWN(v int32)`

SetMOVING90DAYVOLUMEUNKNOWN sets MOVING90DAYVOLUMEUNKNOWN field to given value.

### HasMOVING90DAYVOLUMEUNKNOWN

`func (o *SPOTINSTRUMENTMARKETDATA) HasMOVING90DAYVOLUMEUNKNOWN() bool`

HasMOVING90DAYVOLUMEUNKNOWN returns a boolean if a field has been set.

### GetPRICE

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICE() int32`

GetPRICE returns the PRICE field if non-nil, zero value otherwise.

### GetPRICEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICEOk() (*int32, bool)`

GetPRICEOk returns a tuple with the PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPRICE

`func (o *SPOTINSTRUMENTMARKETDATA) SetPRICE(v int32)`

SetPRICE sets PRICE field to given value.

### HasPRICE

`func (o *SPOTINSTRUMENTMARKETDATA) HasPRICE() bool`

HasPRICE returns a boolean if a field has been set.

### GetPRICE_FLAG

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICE_FLAG() string`

GetPRICE_FLAG returns the PRICE_FLAG field if non-nil, zero value otherwise.

### GetPRICE_FLAGOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICE_FLAGOk() (*string, bool)`

GetPRICE_FLAGOk returns a tuple with the PRICE_FLAG field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPRICE_FLAG

`func (o *SPOTINSTRUMENTMARKETDATA) SetPRICE_FLAG(v string)`

SetPRICE_FLAG sets PRICE_FLAG field to given value.

### HasPRICE_FLAG

`func (o *SPOTINSTRUMENTMARKETDATA) HasPRICE_FLAG() bool`

HasPRICE_FLAG returns a boolean if a field has been set.

### GetPRICE_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICE_LAST_UPDATE_TS() int32`

GetPRICE_LAST_UPDATE_TS returns the PRICE_LAST_UPDATE_TS field if non-nil, zero value otherwise.

### GetPRICE_LAST_UPDATE_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetPRICE_LAST_UPDATE_TSOk() (*int32, bool)`

GetPRICE_LAST_UPDATE_TSOk returns a tuple with the PRICE_LAST_UPDATE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPRICE_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetPRICE_LAST_UPDATE_TS(v int32)`

SetPRICE_LAST_UPDATE_TS sets PRICE_LAST_UPDATE_TS field to given value.

### HasPRICE_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasPRICE_LAST_UPDATE_TS() bool`

HasPRICE_LAST_UPDATE_TS returns a boolean if a field has been set.

### GetQUOTE

`func (o *SPOTINSTRUMENTMARKETDATA) GetQUOTE() string`

GetQUOTE returns the QUOTE field if non-nil, zero value otherwise.

### GetQUOTEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetQUOTEOk() (*string, bool)`

GetQUOTEOk returns a tuple with the QUOTE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE

`func (o *SPOTINSTRUMENTMARKETDATA) SetQUOTE(v string)`

SetQUOTE sets QUOTE field to given value.

### HasQUOTE

`func (o *SPOTINSTRUMENTMARKETDATA) HasQUOTE() bool`

HasQUOTE returns a boolean if a field has been set.

### GetTOP_ASK_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_LAST_UPDATE_TS() int32`

GetTOP_ASK_LAST_UPDATE_TS returns the TOP_ASK_LAST_UPDATE_TS field if non-nil, zero value otherwise.

### GetTOP_ASK_LAST_UPDATE_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_LAST_UPDATE_TSOk() (*int32, bool)`

GetTOP_ASK_LAST_UPDATE_TSOk returns a tuple with the TOP_ASK_LAST_UPDATE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_ASK_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_ASK_LAST_UPDATE_TS(v int32)`

SetTOP_ASK_LAST_UPDATE_TS sets TOP_ASK_LAST_UPDATE_TS field to given value.

### HasTOP_ASK_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_ASK_LAST_UPDATE_TS() bool`

HasTOP_ASK_LAST_UPDATE_TS returns a boolean if a field has been set.

### GetTOP_ASK_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_PRICE() int32`

GetTOP_ASK_PRICE returns the TOP_ASK_PRICE field if non-nil, zero value otherwise.

### GetTOP_ASK_PRICEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_PRICEOk() (*int32, bool)`

GetTOP_ASK_PRICEOk returns a tuple with the TOP_ASK_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_ASK_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_ASK_PRICE(v int32)`

SetTOP_ASK_PRICE sets TOP_ASK_PRICE field to given value.

### HasTOP_ASK_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_ASK_PRICE() bool`

HasTOP_ASK_PRICE returns a boolean if a field has been set.

### GetTOP_ASK_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_QUANTITY() int32`

GetTOP_ASK_QUANTITY returns the TOP_ASK_QUANTITY field if non-nil, zero value otherwise.

### GetTOP_ASK_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_ASK_QUANTITYOk() (*int32, bool)`

GetTOP_ASK_QUANTITYOk returns a tuple with the TOP_ASK_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_ASK_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_ASK_QUANTITY(v int32)`

SetTOP_ASK_QUANTITY sets TOP_ASK_QUANTITY field to given value.

### HasTOP_ASK_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_ASK_QUANTITY() bool`

HasTOP_ASK_QUANTITY returns a boolean if a field has been set.

### GetTOP_BID_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_LAST_UPDATE_TS() int32`

GetTOP_BID_LAST_UPDATE_TS returns the TOP_BID_LAST_UPDATE_TS field if non-nil, zero value otherwise.

### GetTOP_BID_LAST_UPDATE_TSOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_LAST_UPDATE_TSOk() (*int32, bool)`

GetTOP_BID_LAST_UPDATE_TSOk returns a tuple with the TOP_BID_LAST_UPDATE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_BID_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_BID_LAST_UPDATE_TS(v int32)`

SetTOP_BID_LAST_UPDATE_TS sets TOP_BID_LAST_UPDATE_TS field to given value.

### HasTOP_BID_LAST_UPDATE_TS

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_BID_LAST_UPDATE_TS() bool`

HasTOP_BID_LAST_UPDATE_TS returns a boolean if a field has been set.

### GetTOP_BID_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_PRICE() int32`

GetTOP_BID_PRICE returns the TOP_BID_PRICE field if non-nil, zero value otherwise.

### GetTOP_BID_PRICEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_PRICEOk() (*int32, bool)`

GetTOP_BID_PRICEOk returns a tuple with the TOP_BID_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_BID_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_BID_PRICE(v int32)`

SetTOP_BID_PRICE sets TOP_BID_PRICE field to given value.

### HasTOP_BID_PRICE

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_BID_PRICE() bool`

HasTOP_BID_PRICE returns a boolean if a field has been set.

### GetTOP_BID_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_QUANTITY() int32`

GetTOP_BID_QUANTITY returns the TOP_BID_QUANTITY field if non-nil, zero value otherwise.

### GetTOP_BID_QUANTITYOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTOP_BID_QUANTITYOk() (*int32, bool)`

GetTOP_BID_QUANTITYOk returns a tuple with the TOP_BID_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOP_BID_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) SetTOP_BID_QUANTITY(v int32)`

SetTOP_BID_QUANTITY sets TOP_BID_QUANTITY field to given value.

### HasTOP_BID_QUANTITY

`func (o *SPOTINSTRUMENTMARKETDATA) HasTOP_BID_QUANTITY() bool`

HasTOP_BID_QUANTITY returns a boolean if a field has been set.

### GetTYPE

`func (o *SPOTINSTRUMENTMARKETDATA) GetTYPE() string`

GetTYPE returns the TYPE field if non-nil, zero value otherwise.

### GetTYPEOk

`func (o *SPOTINSTRUMENTMARKETDATA) GetTYPEOk() (*string, bool)`

GetTYPEOk returns a tuple with the TYPE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTYPE

`func (o *SPOTINSTRUMENTMARKETDATA) SetTYPE(v string)`

SetTYPE sets TYPE field to given value.

### HasTYPE

`func (o *SPOTINSTRUMENTMARKETDATA) HasTYPE() bool`

HasTYPE returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


