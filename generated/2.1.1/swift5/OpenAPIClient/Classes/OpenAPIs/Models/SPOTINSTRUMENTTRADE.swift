//
// SPOTINSTRUMENTTRADE.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SPOTINSTRUMENTTRADE: Codable, JSONEncodable, Hashable {

    /** The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). */
    public var BASE: String?
    /** Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. */
    public var CCSEQ: Int?
    /** The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. */
    public var ID: String?
    /** The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). */
    public var INSTRUMENT: String?
    /** The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD). */
    public var MAPPED_INSTRUMENT: String?
    /** The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). */
    public var MARKET: String?
    /** The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. */
    public var PRICE: Int?
    /** The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. */
    public var QUANTITY: Int?
    /** The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). */
    public var QUOTE: String?
    /** The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. */
    public var QUOTE_QUANTITY: Int?
    /** The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. */
    public var RECEIVED_TIMESTAMP: Int?
    /** The nanosecond part of the received timestamp. */
    public var RECEIVED_TIMESTAMP_NS: Int?
    /** The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned. */
    public var SIDE: String?
    /** The source of the trade update: POLLING, STREAMING, GO, BLOB etc. */
    public var SOURCE: String?
    /** The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. */
    public var TIMESTAMP: Int?
    /** The nanosecond part of the reported timestamp. */
    public var TIMESTAMP_NS: Int?
    /** The type of the message. */
    public var TYPE: String?

    public init(BASE: String? = nil, CCSEQ: Int? = nil, ID: String? = nil, INSTRUMENT: String? = nil, MAPPED_INSTRUMENT: String? = nil, MARKET: String? = nil, PRICE: Int? = nil, QUANTITY: Int? = nil, QUOTE: String? = nil, QUOTE_QUANTITY: Int? = nil, RECEIVED_TIMESTAMP: Int? = nil, RECEIVED_TIMESTAMP_NS: Int? = nil, SIDE: String? = nil, SOURCE: String? = nil, TIMESTAMP: Int? = nil, TIMESTAMP_NS: Int? = nil, TYPE: String? = nil) {
        self.BASE = BASE
        self.CCSEQ = CCSEQ
        self.ID = ID
        self.INSTRUMENT = INSTRUMENT
        self.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT
        self.MARKET = MARKET
        self.PRICE = PRICE
        self.QUANTITY = QUANTITY
        self.QUOTE = QUOTE
        self.QUOTE_QUANTITY = QUOTE_QUANTITY
        self.RECEIVED_TIMESTAMP = RECEIVED_TIMESTAMP
        self.RECEIVED_TIMESTAMP_NS = RECEIVED_TIMESTAMP_NS
        self.SIDE = SIDE
        self.SOURCE = SOURCE
        self.TIMESTAMP = TIMESTAMP
        self.TIMESTAMP_NS = TIMESTAMP_NS
        self.TYPE = TYPE
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case BASE
        case CCSEQ
        case ID
        case INSTRUMENT
        case MAPPED_INSTRUMENT
        case MARKET
        case PRICE
        case QUANTITY
        case QUOTE
        case QUOTE_QUANTITY
        case RECEIVED_TIMESTAMP
        case RECEIVED_TIMESTAMP_NS
        case SIDE
        case SOURCE
        case TIMESTAMP
        case TIMESTAMP_NS
        case TYPE
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(BASE, forKey: .BASE)
        try container.encodeIfPresent(CCSEQ, forKey: .CCSEQ)
        try container.encodeIfPresent(ID, forKey: .ID)
        try container.encodeIfPresent(INSTRUMENT, forKey: .INSTRUMENT)
        try container.encodeIfPresent(MAPPED_INSTRUMENT, forKey: .MAPPED_INSTRUMENT)
        try container.encodeIfPresent(MARKET, forKey: .MARKET)
        try container.encodeIfPresent(PRICE, forKey: .PRICE)
        try container.encodeIfPresent(QUANTITY, forKey: .QUANTITY)
        try container.encodeIfPresent(QUOTE, forKey: .QUOTE)
        try container.encodeIfPresent(QUOTE_QUANTITY, forKey: .QUOTE_QUANTITY)
        try container.encodeIfPresent(RECEIVED_TIMESTAMP, forKey: .RECEIVED_TIMESTAMP)
        try container.encodeIfPresent(RECEIVED_TIMESTAMP_NS, forKey: .RECEIVED_TIMESTAMP_NS)
        try container.encodeIfPresent(SIDE, forKey: .SIDE)
        try container.encodeIfPresent(SOURCE, forKey: .SOURCE)
        try container.encodeIfPresent(TIMESTAMP, forKey: .TIMESTAMP)
        try container.encodeIfPresent(TIMESTAMP_NS, forKey: .TIMESTAMP_NS)
        try container.encodeIfPresent(TYPE, forKey: .TYPE)
    }
}

