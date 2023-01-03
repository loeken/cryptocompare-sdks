<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTMARKETDATA
{
    /**
     * The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
     * @DTA\Data(field="BASE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $base;

    /**
     * Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
     * @DTA\Data(field="CCSEQ", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $ccseq;

    /**
     * The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_high;

    /**
     * The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_low;

    /**
     * The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_open;

    /**
     * The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
     * @DTA\Data(field="CURRENT_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_total_trades;

    /**
     * The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
     * @DTA\Data(field="CURRENT_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_total_trades_buy;

    /**
     * The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
     * @DTA\Data(field="CURRENT_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_total_trades_sell;

    /**
     * The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
     * @DTA\Data(field="CURRENT_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_volume;

    /**
     * The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_volume_buy;

    /**
     * The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_day_volume_unknown;

    /**
     * The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_high;

    /**
     * The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_low;

    /**
     * The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_open;

    /**
     * The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_quote_volume;

    /**
     * The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
     * @DTA\Data(field="CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_quote_volume_unknown;

    /**
     * The total number of trades that have occurred since the start of the current hour.
     * @DTA\Data(field="CURRENT_HOUR_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_total_trades;

    /**
     * The total number of buy trades since the start of the current hour.
     * @DTA\Data(field="CURRENT_HOUR_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_total_trades_buy;

    /**
     * The total number of sell trades since the start of the current hour.
     * @DTA\Data(field="CURRENT_HOUR_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_total_trades_sell;

    /**
     * The total number of unknown trades since the start of the current hour.
     * @DTA\Data(field="CURRENT_HOUR_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_total_trades_unknown;

    /**
     * The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_HOUR_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_volume;

    /**
     * The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_HOUR_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_volume_buy;

    /**
     * The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_HOUR_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_volume_sell;

    /**
     * The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
     * @DTA\Data(field="CURRENT_HOUR_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_hour_volume_unknown;

    /**
     * The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_high;

    /**
     * The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_low;

    /**
     * The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_open;

    /**
     * The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_quote_volume;

    /**
     * The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_quote_volume_unknown;

    /**
     * The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
     * @DTA\Data(field="CURRENT_MONTH_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_total_trades;

    /**
     * The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
     * @DTA\Data(field="CURRENT_MONTH_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_total_trades_buy;

    /**
     * The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
     * @DTA\Data(field="CURRENT_MONTH_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_total_trades_sell;

    /**
     * The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
     * @DTA\Data(field="CURRENT_MONTH_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_total_trades_unknown;

    /**
     * The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_MONTH_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_volume;

    /**
     * The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_MONTH_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_volume_buy;

    /**
     * The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_MONTH_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_volume_sell;

    /**
     * The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_MONTH_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_month_volume_unknown;

    /**
     * The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_high;

    /**
     * The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_low;

    /**
     * The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_open;

    /**
     * The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_quote_volume;

    /**
     * The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_quote_volume_unknown;

    /**
     * The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
     * @DTA\Data(field="CURRENT_WEEK_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_total_trades;

    /**
     * The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
     * @DTA\Data(field="CURRENT_WEEK_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_total_trades_buy;

    /**
     * The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
     * @DTA\Data(field="CURRENT_WEEK_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_total_trades_sell;

    /**
     * The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
     * @DTA\Data(field="CURRENT_WEEK_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_total_trades_unknown;

    /**
     * The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_WEEK_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_volume;

    /**
     * The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_WEEK_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_volume_buy;

    /**
     * The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_WEEK_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_volume_sell;

    /**
     * The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_WEEK_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_week_volume_unknown;

    /**
     * The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_high;

    /**
     * The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_low;

    /**
     * The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_open;

    /**
     * The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_quote_volume;

    /**
     * The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
     * @DTA\Data(field="CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_quote_volume_unknown;

    /**
     * The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
     * @DTA\Data(field="CURRENT_YEAR_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_total_trades;

    /**
     * The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
     * @DTA\Data(field="CURRENT_YEAR_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_total_trades_buy;

    /**
     * The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
     * @DTA\Data(field="CURRENT_YEAR_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_total_trades_sell;

    /**
     * The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
     * @DTA\Data(field="CURRENT_YEAR_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_total_trades_unknown;

    /**
     * The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_YEAR_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_volume;

    /**
     * The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_YEAR_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_volume_buy;

    /**
     * The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_YEAR_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_volume_sell;

    /**
     * The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
     * @DTA\Data(field="CURRENT_YEAR_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $current_year_volume_unknown;

    /**
     * The unmapped instrument ID
     * @DTA\Data(field="INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument;

    /**
     * The CCSEQ of the latest trade.
     * @DTA\Data(field="LAST_PROCESSED_TRADE_CCSEQ", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $last_processed_trade_ccseq;

    /**
     * The price in the quote asset of the last trade processed, as reported by the market / exchange.
     * @DTA\Data(field="LAST_PROCESSED_TRADE_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_processed_trade_price;

    /**
     * The quantity of the last processed trade in the from symbol (base / coin).
     * @DTA\Data(field="LAST_PROCESSED_TRADE_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_processed_trade_quantity;

    /**
     * The  volume of the last processed trade in the to asset / quote.
     * @DTA\Data(field="LAST_PROCESSED_TRADE_QUOTE_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_processed_trade_quote_quantity;

    /**
     * The side of the last processed trade.
     * @DTA\Data(field="LAST_PROCESSED_TRADE_SIDE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $last_processed_trade_side;

    /**
     * The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
     * @DTA\Data(field="LAST_PROCESSED_TRADE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_processed_trade_ts;

    /**
     * The CCSEQ of the latest trade.
     * @DTA\Data(field="LAST_TRADE_CCSEQ", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $last_trade_ccseq;

    /**
     * The ID of the latest trade.
     * @DTA\Data(field="LAST_TRADE_ID", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $last_trade_id;

    /**
     * The quantity of the latest trade in the from symbol (base / coin).
     * @DTA\Data(field="LAST_TRADE_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_trade_quantity;

    /**
     * The volume of the latest trade in the to asset / quote.
     * @DTA\Data(field="LAST_TRADE_QUOTE_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_trade_quote_quantity;

    /**
     * The side of the latest trade.
     * @DTA\Data(field="LAST_TRADE_SIDE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $last_trade_side;

    /**
     * The timestamp of the first trade ever recorded for the instrument
     * @DTA\Data(field="LIFETIME_FIRST_TRADE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_first_trade_ts;

    /**
     * The price of the highest trade ever executed for this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_high;

    /**
     * The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_HIGH_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_high_ts;

    /**
     * The price of the lowest trade ever executed for this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_low;

    /**
     * The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_LOW_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_low_ts;

    /**
     * The price of the first trade of the instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_open;

    /**
     * The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_quote_volume;

    /**
     * The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
     * @DTA\Data(field="LIFETIME_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_quote_volume_unknown;

    /**
     * The total number of all trades that have ever been executed for this instrument.
     * @DTA\Data(field="LIFETIME_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_total_trades;

    /**
     * The total number of all buy trades that have ever been executed for this instrument.
     * @DTA\Data(field="LIFETIME_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_total_trades_buy;

    /**
     * The total number of all sell trades that have ever been executed for this instrument.
     * @DTA\Data(field="LIFETIME_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_total_trades_sell;

    /**
     * The total number of all unknown trades that have ever been executed for this instrument.
     * @DTA\Data(field="LIFETIME_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_total_trades_unknown;

    /**
     * The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
     * @DTA\Data(field="LIFETIME_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_volume;

    /**
     * The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
     * @DTA\Data(field="LIFETIME_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_volume_buy;

    /**
     * The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
     * @DTA\Data(field="LIFETIME_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_volume_sell;

    /**
     * The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
     * @DTA\Data(field="LIFETIME_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $lifetime_volume_unknown;

    /**
     * The mapped instrument ID, derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped.
     * @DTA\Data(field="MAPPED_INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $mapped_instrument;

    /**
     * The market / exchange under consideration (e.g. coinbase, kraken, etc).
     * @DTA\Data(field="MARKET", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $market;

    /**
     * The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_low;

    /**
     * The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_open;

    /**
     * The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
     * @DTA\Data(field="MOVING_180_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_total_trades;

    /**
     * The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
     * @DTA\Data(field="MOVING_180_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_total_trades_buy;

    /**
     * The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
     * @DTA\Data(field="MOVING_180_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
     * @DTA\Data(field="MOVING_180_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_180_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_volume;

    /**
     * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_180_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_volume_buy;

    /**
     * The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_180_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_180_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_180_day_volume_unknown;

    /**
     * The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_low;

    /**
     * The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_open;

    /**
     * The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_quote_volume_unknown;

    /**
     * The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
     * @DTA\Data(field="MOVING_24_HOUR_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_total_trades;

    /**
     * The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
     * @DTA\Data(field="MOVING_24_HOUR_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_total_trades_buy;

    /**
     * The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
     * @DTA\Data(field="MOVING_24_HOUR_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
     * @DTA\Data(field="MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_total_trades_unknown;

    /**
     * The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
     * @DTA\Data(field="MOVING_24_HOUR_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_volume;

    /**
     * The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
     * @DTA\Data(field="MOVING_24_HOUR_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_volume_buy;

    /**
     * The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
     * @DTA\Data(field="MOVING_24_HOUR_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_volume_sell;

    /**
     * The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
     * @DTA\Data(field="MOVING_24_HOUR_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_24_hour_volume_unknown;

    /**
     * The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_low;

    /**
     * The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_open;

    /**
     * The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
     * @DTA\Data(field="MOVING_30_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_total_trades;

    /**
     * The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
     * @DTA\Data(field="MOVING_30_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_total_trades_buy;

    /**
     * The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
     * @DTA\Data(field="MOVING_30_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
     * @DTA\Data(field="MOVING_30_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_30_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_volume;

    /**
     * The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_30_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_volume_buy;

    /**
     * The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_30_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_30_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_30_day_volume_unknown;

    /**
     * The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_low;

    /**
     * The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_open;

    /**
     * The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
     * @DTA\Data(field="MOVING_365_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_total_trades;

    /**
     * The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
     * @DTA\Data(field="MOVING_365_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_total_trades_buy;

    /**
     * The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
     * @DTA\Data(field="MOVING_365_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
     * @DTA\Data(field="MOVING_365_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_365_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_volume;

    /**
     * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_365_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_volume_buy;

    /**
     * The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_365_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_365_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_365_day_volume_unknown;

    /**
     * The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_low;

    /**
     * The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_open;

    /**
     * The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
     * @DTA\Data(field="MOVING_7_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_total_trades;

    /**
     * The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
     * @DTA\Data(field="MOVING_7_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_total_trades_buy;

    /**
     * The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
     * @DTA\Data(field="MOVING_7_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
     * @DTA\Data(field="MOVING_7_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_7_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_volume;

    /**
     * The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_7_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_volume_buy;

    /**
     * The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_7_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_7_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_7_day_volume_unknown;

    /**
     * The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_high;

    /**
     * The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_low;

    /**
     * The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_open;

    /**
     * The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_quote_volume;

    /**
     * The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_quote_volume_buy;

    /**
     * The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_quote_volume_sell;

    /**
     * The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
     * @DTA\Data(field="MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_quote_volume_unknown;

    /**
     * The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
     * @DTA\Data(field="MOVING_90_DAY_TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_total_trades;

    /**
     * The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
     * @DTA\Data(field="MOVING_90_DAY_TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_total_trades_buy;

    /**
     * The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
     * @DTA\Data(field="MOVING_90_DAY_TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_total_trades_sell;

    /**
     * The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
     * @DTA\Data(field="MOVING_90_DAY_TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_total_trades_unknown;

    /**
     * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_90_DAY_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_volume;

    /**
     * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_90_DAY_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_volume_buy;

    /**
     * The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_90_DAY_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_volume_sell;

    /**
     * The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
     * @DTA\Data(field="MOVING_90_DAY_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $moving_90_day_volume_unknown;

    /**
     * The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
     * @DTA\Data(field="PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $price;

    /**
     * The flag indicating whether the price has increased, decreased, or not changed
     * @DTA\Data(field="PRICE_FLAG", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $price_flag;

    /**
     * The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
     * @DTA\Data(field="PRICE_LAST_UPDATE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $price_last_update_ts;

    /**
     * The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
     * @DTA\Data(field="QUOTE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $quote;

    /**
     * The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
     * @DTA\Data(field="TOP_ASK_LAST_UPDATE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_ask_last_update_ts;

    /**
     * The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
     * @DTA\Data(field="TOP_ASK_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_ask_price;

    /**
     * The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
     * @DTA\Data(field="TOP_ASK_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_ask_quantity;

    /**
     * The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
     * @DTA\Data(field="TOP_BID_LAST_UPDATE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_bid_last_update_ts;

    /**
     * The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
     * @DTA\Data(field="TOP_BID_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_bid_price;

    /**
     * The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
     * @DTA\Data(field="TOP_BID_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $top_bid_quantity;

    /**
     * The type of the message.
     * @DTA\Data(field="TYPE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $type;

}
