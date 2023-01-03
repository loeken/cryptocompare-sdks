
package org.openapitools.client.model


case class SPOTINSTRUMENTTRADE (
    /* The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). */
    _BASE: Option[String],
    /* Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. */
    _CCSEQ: Option[Integer],
    /* The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. */
    _ID: Option[String],
    /* The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). */
    _INSTRUMENT: Option[String],
    /* The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD). */
    _MAPPED_INSTRUMENT: Option[String],
    /* The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). */
    _MARKET: Option[String],
    /* The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. */
    _PRICE: Option[Integer],
    /* The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. */
    _QUANTITY: Option[Integer],
    /* The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). */
    _QUOTE: Option[String],
    /* The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. */
    _QUOTE_QUANTITY: Option[Integer],
    /* The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. */
    _RECEIVED_TIMESTAMP: Option[Integer],
    /* The nanosecond part of the received timestamp. */
    _RECEIVED_TIMESTAMP_NS: Option[Integer],
    /* The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned. */
    _SIDE: Option[String],
    /* The source of the trade update: POLLING, STREAMING, GO, BLOB etc. */
    _SOURCE: Option[String],
    /* The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. */
    _TIMESTAMP: Option[Integer],
    /* The nanosecond part of the reported timestamp. */
    _TIMESTAMP_NS: Option[Integer],
    /* The type of the message. */
    _TYPE: Option[String]
)
object SPOTINSTRUMENTTRADE {
    def toStringBody(var_BASE: Object, var_CCSEQ: Object, var_ID: Object, var_INSTRUMENT: Object, var_MAPPED_INSTRUMENT: Object, var_MARKET: Object, var_PRICE: Object, var_QUANTITY: Object, var_QUOTE: Object, var_QUOTE_QUANTITY: Object, var_RECEIVED_TIMESTAMP: Object, var_RECEIVED_TIMESTAMP_NS: Object, var_SIDE: Object, var_SOURCE: Object, var_TIMESTAMP: Object, var_TIMESTAMP_NS: Object, var_TYPE: Object) =
        s"""
        | {
        | "BASE":$var_BASE,"CCSEQ":$var_CCSEQ,"ID":$var_ID,"INSTRUMENT":$var_INSTRUMENT,"MAPPED_INSTRUMENT":$var_MAPPED_INSTRUMENT,"MARKET":$var_MARKET,"PRICE":$var_PRICE,"QUANTITY":$var_QUANTITY,"QUOTE":$var_QUOTE,"QUOTE_QUANTITY":$var_QUOTE_QUANTITY,"RECEIVED_TIMESTAMP":$var_RECEIVED_TIMESTAMP,"RECEIVED_TIMESTAMP_NS":$var_RECEIVED_TIMESTAMP_NS,"SIDE":$var_SIDE,"SOURCE":$var_SOURCE,"TIMESTAMP":$var_TIMESTAMP,"TIMESTAMP_NS":$var_TIMESTAMP_NS,"TYPE":$var_TYPE
        | }
        """.stripMargin
}
