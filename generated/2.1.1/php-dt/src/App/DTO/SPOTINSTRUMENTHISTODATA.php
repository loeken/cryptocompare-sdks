<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTHISTODATA
{
    /**
     * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
     * @DTA\Data(field="BASE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $base;

    /**
     * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
     * @DTA\Data(field="CLOSE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $close;

    /**
     * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="FIRST_TRADE_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_trade_price;

    /**
     * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="FIRST_TRADE_TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_trade_timestamp;

    /**
     * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
     * @DTA\Data(field="HIGH", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $high;

    /**
     * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="HIGH_TRADE_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $high_trade_price;

    /**
     * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="HIGH_TRADE_TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $high_trade_timestamp;

    /**
     * The unmapped instrument ID
     * @DTA\Data(field="INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument;

    /**
     * The last trade price in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="LAST_TRADE_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_trade_price;

    /**
     * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="LAST_TRADE_TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_trade_timestamp;

    /**
     * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
     * @DTA\Data(field="LOW", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $low;

    /**
     * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="LOW_TRADE_PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $low_trade_price;

    /**
     * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
     * @DTA\Data(field="LOW_TRADE_TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $low_trade_timestamp;

    /**
     * The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped.
     * @DTA\Data(field="MAPPED_INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $mapped_instrument;

    /**
     * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
     * @DTA\Data(field="MARKET", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $market;

    /**
     * The open price for the historical period, this is based on the closest trade before the period start.
     * @DTA\Data(field="OPEN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $open;

    /**
     * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
     * @DTA\Data(field="QUOTE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $quote;

    /**
     * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="QUOTE_VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quote_volume;

    /**
     * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
     * @DTA\Data(field="QUOTE_VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quote_volume_buy;

    /**
     * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
     * @DTA\Data(field="QUOTE_VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quote_volume_sell;

    /**
     * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
     * @DTA\Data(field="QUOTE_VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quote_volume_unknown;

    /**
     * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
     * @DTA\Data(field="TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $timestamp;

    /**
     * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="TOTAL_TRADES", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_trades;

    /**
     * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="TOTAL_TRADES_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_trades_buy;

    /**
     * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="TOTAL_TRADES_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_trades_sell;

    /**
     * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="TOTAL_TRADES_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_trades_unknown;

    /**
     * The type of the message.
     * @DTA\Data(field="TYPE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $type;

    /**
     * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
     * @DTA\Data(field="UNIT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $unit;

    /**
     * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
     * @DTA\Data(field="VOLUME", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $volume;

    /**
     * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
     * @DTA\Data(field="VOLUME_BUY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $volume_buy;

    /**
     * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
     * @DTA\Data(field="VOLUME_SELL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $volume_sell;

    /**
     * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
     * @DTA\Data(field="VOLUME_UNKNOWN", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $volume_unknown;

}
