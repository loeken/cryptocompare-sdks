goog.provide('API.Client.SPOT_INSTRUMENT_MARKET_DATA');

/**
 * @record
 */
API.Client.SPOTINSTRUMENTMARKETDATA = function() {}

/**
 * The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.BASE;

/**
 * Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CCSEQ;

/**
 * The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_HIGH;

/**
 * The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_LOW;

/**
 * The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_OPEN;

/**
 * The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_TOTAL_TRADES;

/**
 * The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_TOTAL_TRADES_BUY;

/**
 * The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_TOTAL_TRADES_SELL;

/**
 * The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_VOLUME;

/**
 * The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_VOLUME_BUY;

/**
 * The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_VOLUME_SELL;

/**
 * The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_DAY_VOLUME_UNKNOWN;

/**
 * The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_HIGH;

/**
 * The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_LOW;

/**
 * The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_OPEN;

/**
 * The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of trades that have occurred since the start of the current hour.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_TOTAL_TRADES;

/**
 * The total number of buy trades since the start of the current hour.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_TOTAL_TRADES_BUY;

/**
 * The total number of sell trades since the start of the current hour.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_TOTAL_TRADES_SELL;

/**
 * The total number of unknown trades since the start of the current hour.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_VOLUME;

/**
 * The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_VOLUME_BUY;

/**
 * The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_VOLUME_SELL;

/**
 * The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_HOUR_VOLUME_UNKNOWN;

/**
 * The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_HIGH;

/**
 * The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_LOW;

/**
 * The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_OPEN;

/**
 * The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_TOTAL_TRADES;

/**
 * The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_TOTAL_TRADES_BUY;

/**
 * The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_TOTAL_TRADES_SELL;

/**
 * The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_VOLUME;

/**
 * The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_VOLUME_BUY;

/**
 * The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_VOLUME_SELL;

/**
 * The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_MONTH_VOLUME_UNKNOWN;

/**
 * The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_HIGH;

/**
 * The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_LOW;

/**
 * The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_OPEN;

/**
 * The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_TOTAL_TRADES;

/**
 * The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_TOTAL_TRADES_BUY;

/**
 * The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_TOTAL_TRADES_SELL;

/**
 * The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_VOLUME;

/**
 * The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_VOLUME_BUY;

/**
 * The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_VOLUME_SELL;

/**
 * The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_WEEK_VOLUME_UNKNOWN;

/**
 * The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_HIGH;

/**
 * The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_LOW;

/**
 * The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_OPEN;

/**
 * The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_TOTAL_TRADES;

/**
 * The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_TOTAL_TRADES_BUY;

/**
 * The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_TOTAL_TRADES_SELL;

/**
 * The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_VOLUME;

/**
 * The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_VOLUME_BUY;

/**
 * The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_VOLUME_SELL;

/**
 * The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.CURRENT_YEAR_VOLUME_UNKNOWN;

/**
 * The unmapped instrument ID
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.INSTRUMENT;

/**
 * The CCSEQ of the latest trade.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_CCSEQ;

/**
 * The price in the quote asset of the last trade processed, as reported by the market / exchange.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_PRICE;

/**
 * The quantity of the last processed trade in the from symbol (base / coin).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_QUANTITY;

/**
 * The  volume of the last processed trade in the to asset / quote.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_QUOTE_QUANTITY;

/**
 * The side of the last processed trade.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_SIDE;

/**
 * The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_PROCESSED_TRADE_TS;

/**
 * The CCSEQ of the latest trade.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_TRADE_CCSEQ;

/**
 * The ID of the latest trade.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_TRADE_ID;

/**
 * The quantity of the latest trade in the from symbol (base / coin).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_TRADE_QUANTITY;

/**
 * The volume of the latest trade in the to asset / quote.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_TRADE_QUOTE_QUANTITY;

/**
 * The side of the latest trade.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LAST_TRADE_SIDE;

/**
 * The timestamp of the first trade ever recorded for the instrument
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_FIRST_TRADE_TS;

/**
 * The price of the highest trade ever executed for this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_HIGH;

/**
 * The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_HIGH_TS;

/**
 * The price of the lowest trade ever executed for this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_LOW;

/**
 * The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_LOW_TS;

/**
 * The price of the first trade of the instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_OPEN;

/**
 * The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_QUOTE_VOLUME;

/**
 * The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_QUOTE_VOLUME_BUY;

/**
 * The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_QUOTE_VOLUME_SELL;

/**
 * The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_QUOTE_VOLUME_UNKNOWN;

/**
 * The total number of all trades that have ever been executed for this instrument.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_TOTAL_TRADES;

/**
 * The total number of all buy trades that have ever been executed for this instrument.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_TOTAL_TRADES_BUY;

/**
 * The total number of all sell trades that have ever been executed for this instrument.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_TOTAL_TRADES_SELL;

/**
 * The total number of all unknown trades that have ever been executed for this instrument.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_TOTAL_TRADES_UNKNOWN;

/**
 * The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_VOLUME;

/**
 * The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_VOLUME_BUY;

/**
 * The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_VOLUME_SELL;

/**
 * The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.LIFETIME_VOLUME_UNKNOWN;

/**
 * The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.MAPPED_INSTRUMENT;

/**
 * The market / exchange under consideration (e.g. coinbase, kraken, etc).
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.MARKET;

/**
 * The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYLOW;

/**
 * The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYOPEN;

/**
 * The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYTOTALTRADES;

/**
 * The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYVOLUME;

/**
 * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING180DAYVOLUMEUNKNOWN;

/**
 * The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURLOW;

/**
 * The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOUROPEN;

/**
 * The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURTOTALTRADES;

/**
 * The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURVOLUME;

/**
 * The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING24HOURVOLUMEUNKNOWN;

/**
 * The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYLOW;

/**
 * The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYOPEN;

/**
 * The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYTOTALTRADES;

/**
 * The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYVOLUME;

/**
 * The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING30DAYVOLUMEUNKNOWN;

/**
 * The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYLOW;

/**
 * The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYOPEN;

/**
 * The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYTOTALTRADES;

/**
 * The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYVOLUME;

/**
 * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING365DAYVOLUMEUNKNOWN;

/**
 * The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYLOW;

/**
 * The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYOPEN;

/**
 * The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYTOTALTRADES;

/**
 * The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYVOLUME;

/**
 * The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING7DAYVOLUMEUNKNOWN;

/**
 * The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYHIGH;

/**
 * The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYLOW;

/**
 * The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYOPEN;

/**
 * The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYQUOTEVOLUME;

/**
 * The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYQUOTEVOLUMEBUY;

/**
 * The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYQUOTEVOLUMESELL;

/**
 * The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYQUOTEVOLUMEUNKNOWN;

/**
 * The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYTOTALTRADES;

/**
 * The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYTOTALTRADESBUY;

/**
 * The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYTOTALTRADESSELL;

/**
 * The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYTOTALTRADESUNKNOWN;

/**
 * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYVOLUME;

/**
 * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYVOLUMEBUY;

/**
 * The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYVOLUMESELL;

/**
 * The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.mOVING90DAYVOLUMEUNKNOWN;

/**
 * The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.PRICE;

/**
 * The flag indicating whether the price has increased, decreased, or not changed
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.PRICE_FLAG;

/**
 * The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.PRICE_LAST_UPDATE_TS;

/**
 * The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.QUOTE;

/**
 * The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_ASK_LAST_UPDATE_TS;

/**
 * The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_ASK_PRICE;

/**
 * The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_ASK_QUANTITY;

/**
 * The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_BID_LAST_UPDATE_TS;

/**
 * The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_BID_PRICE;

/**
 * The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TOP_BID_QUANTITY;

/**
 * The type of the message.
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATA.prototype.TYPE;

