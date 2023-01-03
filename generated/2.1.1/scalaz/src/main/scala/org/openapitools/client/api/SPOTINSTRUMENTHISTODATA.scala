package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTHISTODATA._

case class SPOTINSTRUMENTHISTODATA (
  /* The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. */
  BASE: Option[String],
/* The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. */
  CLOSE: Option[Integer],
/* The price of the first trade in the time period. This is only available when there is at least one trade in the time period. */
  FIRST_TRADE_PRICE: Option[Integer],
/* The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. */
  FIRST_TRADE_TIMESTAMP: Option[Integer],
/* The highest trade price in the time period. If there were no trades in the time period, the open price will be given. */
  HIGH: Option[Integer],
/* The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
  HIGH_TRADE_PRICE: Option[Integer],
/* The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. */
  HIGH_TRADE_TIMESTAMP: Option[Integer],
/* The unmapped instrument ID */
  INSTRUMENT: Option[String],
/* The last trade price in the time period. This is only available when there is at least one trade in the time period. */
  LAST_TRADE_PRICE: Option[Integer],
/* The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. */
  LAST_TRADE_TIMESTAMP: Option[Integer],
/* The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. */
  LOW: Option[Integer],
/* The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
  LOW_TRADE_PRICE: Option[Integer],
/* The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. */
  LOW_TRADE_TIMESTAMP: Option[Integer],
/* The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
  MAPPED_INSTRUMENT: Option[String],
/* The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). */
  MARKET: Option[String],
/* The open price for the historical period, this is based on the closest trade before the period start. */
  OPEN: Option[Integer],
/* The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. */
  QUOTE: Option[String],
/* The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. */
  QUOTE_VOLUME: Option[Integer],
/* The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. */
  QUOTE_VOLUME_BUY: Option[Integer],
/* The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
  QUOTE_VOLUME_SELL: Option[Integer],
/* The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
  QUOTE_VOLUME_UNKNOWN: Option[Integer],
/* The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. */
  TIMESTAMP: Option[Integer],
/* The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
  TOTAL_TRADES: Option[Integer],
/* The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
  TOTAL_TRADES_BUY: Option[Integer],
/* The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
  TOTAL_TRADES_SELL: Option[Integer],
/* The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
  TOTAL_TRADES_UNKNOWN: Option[Integer],
/* The type of the message. */
  `TYPE`: Option[String],
/* The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. */
  UNIT: Option[String],
/* The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. */
  VOLUME: Option[Integer],
/* The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. */
  VOLUME_BUY: Option[Integer],
/* The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. */
  VOLUME_SELL: Option[Integer],
/* The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. */
  VOLUME_UNKNOWN: Option[Integer])

object SPOTINSTRUMENTHISTODATA {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTHISTODATACodecJson: CodecJson[SPOTINSTRUMENTHISTODATA] = CodecJson.derive[SPOTINSTRUMENTHISTODATA]
  implicit val SPOTINSTRUMENTHISTODATADecoder: EntityDecoder[SPOTINSTRUMENTHISTODATA] = jsonOf[SPOTINSTRUMENTHISTODATA]
  implicit val SPOTINSTRUMENTHISTODATAEncoder: EntityEncoder[SPOTINSTRUMENTHISTODATA] = jsonEncoderOf[SPOTINSTRUMENTHISTODATA]
}
