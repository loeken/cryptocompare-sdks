(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). *)
    base: string option [@default None];
    (* Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. *)
    ccseq: int32 option [@default None];
    (* The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. *)
    id: string option [@default None];
    (* The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). *)
    instrument: string option [@default None];
    (* The mapped instrument ID, as derived from our mapping rules. This takes the form: \''BASE-QUOTE\''. Only available on instruments that have been mapped (e.g. BTC-USD). *)
    mapped_instrument: string option [@default None];
    (* The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). *)
    market: string option [@default None];
    (* The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. *)
    price: int32 option [@default None];
    (* The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. *)
    quantity: int32 option [@default None];
    (* The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). *)
    quote: string option [@default None];
    (* The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. *)
    quote_quantity: int32 option [@default None];
    (* The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. *)
    received_timestamp: int32 option [@default None];
    (* The nanosecond part of the received timestamp. *)
    received_timestamp_ns: int32 option [@default None];
    (* The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \''UNKNOWN\'' will be returned. *)
    side: string option [@default None];
    (* The source of the trade update: POLLING, STREAMING, GO, BLOB etc. *)
    source: string option [@default None];
    (* The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. *)
    timestamp: int32 option [@default None];
    (* The nanosecond part of the reported timestamp. *)
    timestamp_ns: int32 option [@default None];
    (* The type of the message. *)
    _type: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    base = None;
    ccseq = None;
    id = None;
    instrument = None;
    mapped_instrument = None;
    market = None;
    price = None;
    quantity = None;
    quote = None;
    quote_quantity = None;
    received_timestamp = None;
    received_timestamp_ns = None;
    side = None;
    source = None;
    timestamp = None;
    timestamp_ns = None;
    _type = None;
}
