<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTTRADE
{
    /**
     * The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
     * @DTA\Data(field="BASE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $base;

    /**
     * Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
     * @DTA\Data(field="CCSEQ", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $ccseq;

    /**
     * The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
     * @DTA\Data(field="ID", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $id;

    /**
     * The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
     * @DTA\Data(field="INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument;

    /**
     * The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD).
     * @DTA\Data(field="MAPPED_INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $mapped_instrument;

    /**
     * The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
     * @DTA\Data(field="MARKET", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $market;

    /**
     * The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
     * @DTA\Data(field="PRICE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $price;

    /**
     * The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
     * @DTA\Data(field="QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quantity;

    /**
     * The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
     * @DTA\Data(field="QUOTE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $quote;

    /**
     * The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
     * @DTA\Data(field="QUOTE_QUANTITY", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $quote_quantity;

    /**
     * The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
     * @DTA\Data(field="RECEIVED_TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $received_timestamp;

    /**
     * The nanosecond part of the received timestamp.
     * @DTA\Data(field="RECEIVED_TIMESTAMP_NS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $received_timestamp_ns;

    /**
     * The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned.
     * @DTA\Data(field="SIDE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $side;

    /**
     * The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
     * @DTA\Data(field="SOURCE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $source;

    /**
     * The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
     * @DTA\Data(field="TIMESTAMP", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $timestamp;

    /**
     * The nanosecond part of the reported timestamp.
     * @DTA\Data(field="TIMESTAMP_NS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $timestamp_ns;

    /**
     * The type of the message.
     * @DTA\Data(field="TYPE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $type;

}
