-module(openapi_spot_instrument_trade).

-export([encode/1]).

-export_type([openapi_spot_instrument_trade/0]).

-type openapi_spot_instrument_trade() ::
    #{ 'BASE' => binary(),
       'CCSEQ' => integer(),
       'ID' => binary(),
       'INSTRUMENT' => binary(),
       'MAPPED_INSTRUMENT' => binary(),
       'MARKET' => binary(),
       'PRICE' => integer(),
       'QUANTITY' => integer(),
       'QUOTE' => binary(),
       'QUOTE_QUANTITY' => integer(),
       'RECEIVED_TIMESTAMP' => integer(),
       'RECEIVED_TIMESTAMP_NS' => integer(),
       'SIDE' => binary(),
       'SOURCE' => binary(),
       'TIMESTAMP' => integer(),
       'TIMESTAMP_NS' => integer(),
       'TYPE' => binary()
     }.

encode(#{ 'BASE' := BASE,
          'CCSEQ' := CCSEQ,
          'ID' := ID,
          'INSTRUMENT' := INSTRUMENT,
          'MAPPED_INSTRUMENT' := MAPPEDINSTRUMENT,
          'MARKET' := MARKET,
          'PRICE' := PRICE,
          'QUANTITY' := QUANTITY,
          'QUOTE' := QUOTE,
          'QUOTE_QUANTITY' := QUOTEQUANTITY,
          'RECEIVED_TIMESTAMP' := RECEIVEDTIMESTAMP,
          'RECEIVED_TIMESTAMP_NS' := RECEIVEDTIMESTAMPNS,
          'SIDE' := SIDE,
          'SOURCE' := SOURCE,
          'TIMESTAMP' := TIMESTAMP,
          'TIMESTAMP_NS' := TIMESTAMPNS,
          'TYPE' := TYPE
        }) ->
    #{ 'BASE' => BASE,
       'CCSEQ' => CCSEQ,
       'ID' => ID,
       'INSTRUMENT' => INSTRUMENT,
       'MAPPED_INSTRUMENT' => MAPPEDINSTRUMENT,
       'MARKET' => MARKET,
       'PRICE' => PRICE,
       'QUANTITY' => QUANTITY,
       'QUOTE' => QUOTE,
       'QUOTE_QUANTITY' => QUOTEQUANTITY,
       'RECEIVED_TIMESTAMP' => RECEIVEDTIMESTAMP,
       'RECEIVED_TIMESTAMP_NS' => RECEIVEDTIMESTAMPNS,
       'SIDE' => SIDE,
       'SOURCE' => SOURCE,
       'TIMESTAMP' => TIMESTAMP,
       'TIMESTAMP_NS' => TIMESTAMPNS,
       'TYPE' => TYPE
     }.
