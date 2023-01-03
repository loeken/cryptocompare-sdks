note
 description:"[
		CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 		CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
  		The version of the OpenAPI document: 2.1.1
 	    Contact: data@cryptocompare.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class SPOT_INSTRUMENT_TRADE




feature --Access

    BASE: detachable STRING_32
      -- The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
 	CCSEQ: INTEGER_32
    	 -- Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
    ID: detachable STRING_32
      -- The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
    INSTRUMENT: detachable STRING_32
      -- The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
    MAPPED_INSTRUMENT: detachable STRING_32
      -- The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
    MARKET: detachable STRING_32
      -- The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
 	PRICE: INTEGER_32
    	 -- The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
 	QUANTITY: INTEGER_32
    	 -- The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
    QUOTE: detachable STRING_32
      -- The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
 	QUOTE_QUANTITY: INTEGER_32
    	 -- The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
 	RECEIVED_TIMESTAMP: INTEGER_32
    	 -- The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
 	RECEIVED_TIMESTAMP_NS: INTEGER_32
    	 -- The nanosecond part of the received timestamp.
    SIDE: detachable STRING_32
      -- The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
    SOURCE: detachable STRING_32
      -- The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
 	TIMESTAMP: INTEGER_32
    	 -- The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
 	TIMESTAMP_NS: INTEGER_32
    	 -- The nanosecond part of the reported timestamp.
    TYPE: detachable STRING_32
      -- The type of the message.

feature -- Change Element

    set_BASE (a_name: like BASE)
        -- Set 'BASE' with 'a_name'.
      do
        BASE := a_name
      ensure
        BASE_set: BASE = a_name
      end

    set_CCSEQ (a_name: like CCSEQ)
        -- Set 'CCSEQ' with 'a_name'.
      do
        CCSEQ := a_name
      ensure
        CCSEQ_set: CCSEQ = a_name
      end

    set_ID (a_name: like ID)
        -- Set 'ID' with 'a_name'.
      do
        ID := a_name
      ensure
        ID_set: ID = a_name
      end

    set_INSTRUMENT (a_name: like INSTRUMENT)
        -- Set 'INSTRUMENT' with 'a_name'.
      do
        INSTRUMENT := a_name
      ensure
        INSTRUMENT_set: INSTRUMENT = a_name
      end

    set_MAPPED_INSTRUMENT (a_name: like MAPPED_INSTRUMENT)
        -- Set 'MAPPED_INSTRUMENT' with 'a_name'.
      do
        MAPPED_INSTRUMENT := a_name
      ensure
        MAPPED_INSTRUMENT_set: MAPPED_INSTRUMENT = a_name
      end

    set_MARKET (a_name: like MARKET)
        -- Set 'MARKET' with 'a_name'.
      do
        MARKET := a_name
      ensure
        MARKET_set: MARKET = a_name
      end

    set_PRICE (a_name: like PRICE)
        -- Set 'PRICE' with 'a_name'.
      do
        PRICE := a_name
      ensure
        PRICE_set: PRICE = a_name
      end

    set_QUANTITY (a_name: like QUANTITY)
        -- Set 'QUANTITY' with 'a_name'.
      do
        QUANTITY := a_name
      ensure
        QUANTITY_set: QUANTITY = a_name
      end

    set_QUOTE (a_name: like QUOTE)
        -- Set 'QUOTE' with 'a_name'.
      do
        QUOTE := a_name
      ensure
        QUOTE_set: QUOTE = a_name
      end

    set_QUOTE_QUANTITY (a_name: like QUOTE_QUANTITY)
        -- Set 'QUOTE_QUANTITY' with 'a_name'.
      do
        QUOTE_QUANTITY := a_name
      ensure
        QUOTE_QUANTITY_set: QUOTE_QUANTITY = a_name
      end

    set_RECEIVED_TIMESTAMP (a_name: like RECEIVED_TIMESTAMP)
        -- Set 'RECEIVED_TIMESTAMP' with 'a_name'.
      do
        RECEIVED_TIMESTAMP := a_name
      ensure
        RECEIVED_TIMESTAMP_set: RECEIVED_TIMESTAMP = a_name
      end

    set_RECEIVED_TIMESTAMP_NS (a_name: like RECEIVED_TIMESTAMP_NS)
        -- Set 'RECEIVED_TIMESTAMP_NS' with 'a_name'.
      do
        RECEIVED_TIMESTAMP_NS := a_name
      ensure
        RECEIVED_TIMESTAMP_NS_set: RECEIVED_TIMESTAMP_NS = a_name
      end

    set_SIDE (a_name: like SIDE)
        -- Set 'SIDE' with 'a_name'.
      do
        SIDE := a_name
      ensure
        SIDE_set: SIDE = a_name
      end

    set_SOURCE (a_name: like SOURCE)
        -- Set 'SOURCE' with 'a_name'.
      do
        SOURCE := a_name
      ensure
        SOURCE_set: SOURCE = a_name
      end

    set_TIMESTAMP (a_name: like TIMESTAMP)
        -- Set 'TIMESTAMP' with 'a_name'.
      do
        TIMESTAMP := a_name
      ensure
        TIMESTAMP_set: TIMESTAMP = a_name
      end

    set_TIMESTAMP_NS (a_name: like TIMESTAMP_NS)
        -- Set 'TIMESTAMP_NS' with 'a_name'.
      do
        TIMESTAMP_NS := a_name
      ensure
        TIMESTAMP_NS_set: TIMESTAMP_NS = a_name
      end

    set_TYPE (a_name: like TYPE)
        -- Set 'TYPE' with 'a_name'.
      do
        TYPE := a_name
      ensure
        TYPE_set: TYPE = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass SPOT_INSTRUMENT_TRADE%N")
        if attached BASE as l_BASE then
          Result.append ("%NBASE:")
          Result.append (l_BASE.out)
          Result.append ("%N")
        end
        if attached CCSEQ as l_CCSEQ then
          Result.append ("%NCCSEQ:")
          Result.append (l_CCSEQ.out)
          Result.append ("%N")
        end
        if attached ID as l_ID then
          Result.append ("%NID:")
          Result.append (l_ID.out)
          Result.append ("%N")
        end
        if attached INSTRUMENT as l_INSTRUMENT then
          Result.append ("%NINSTRUMENT:")
          Result.append (l_INSTRUMENT.out)
          Result.append ("%N")
        end
        if attached MAPPED_INSTRUMENT as l_MAPPED_INSTRUMENT then
          Result.append ("%NMAPPED_INSTRUMENT:")
          Result.append (l_MAPPED_INSTRUMENT.out)
          Result.append ("%N")
        end
        if attached MARKET as l_MARKET then
          Result.append ("%NMARKET:")
          Result.append (l_MARKET.out)
          Result.append ("%N")
        end
        if attached PRICE as l_PRICE then
          Result.append ("%NPRICE:")
          Result.append (l_PRICE.out)
          Result.append ("%N")
        end
        if attached QUANTITY as l_QUANTITY then
          Result.append ("%NQUANTITY:")
          Result.append (l_QUANTITY.out)
          Result.append ("%N")
        end
        if attached QUOTE as l_QUOTE then
          Result.append ("%NQUOTE:")
          Result.append (l_QUOTE.out)
          Result.append ("%N")
        end
        if attached QUOTE_QUANTITY as l_QUOTE_QUANTITY then
          Result.append ("%NQUOTE_QUANTITY:")
          Result.append (l_QUOTE_QUANTITY.out)
          Result.append ("%N")
        end
        if attached RECEIVED_TIMESTAMP as l_RECEIVED_TIMESTAMP then
          Result.append ("%NRECEIVED_TIMESTAMP:")
          Result.append (l_RECEIVED_TIMESTAMP.out)
          Result.append ("%N")
        end
        if attached RECEIVED_TIMESTAMP_NS as l_RECEIVED_TIMESTAMP_NS then
          Result.append ("%NRECEIVED_TIMESTAMP_NS:")
          Result.append (l_RECEIVED_TIMESTAMP_NS.out)
          Result.append ("%N")
        end
        if attached SIDE as l_SIDE then
          Result.append ("%NSIDE:")
          Result.append (l_SIDE.out)
          Result.append ("%N")
        end
        if attached SOURCE as l_SOURCE then
          Result.append ("%NSOURCE:")
          Result.append (l_SOURCE.out)
          Result.append ("%N")
        end
        if attached TIMESTAMP as l_TIMESTAMP then
          Result.append ("%NTIMESTAMP:")
          Result.append (l_TIMESTAMP.out)
          Result.append ("%N")
        end
        if attached TIMESTAMP_NS as l_TIMESTAMP_NS then
          Result.append ("%NTIMESTAMP_NS:")
          Result.append (l_TIMESTAMP_NS.out)
          Result.append ("%N")
        end
        if attached TYPE as l_TYPE then
          Result.append ("%NTYPE:")
          Result.append (l_TYPE.out)
          Result.append ("%N")
        end
      end
end
