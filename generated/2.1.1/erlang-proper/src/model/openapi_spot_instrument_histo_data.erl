-module(openapi_spot_instrument_histo_data).

-include("openapi.hrl").

-export([openapi_spot_instrument_histo_data/0]).

-export([openapi_spot_instrument_histo_data/1]).

-export_type([openapi_spot_instrument_histo_data/0]).

-type openapi_spot_instrument_histo_data() ::
  [ {'BASE', binary() }
  | {'CLOSE', integer() }
  | {'FIRST_TRADE_PRICE', integer() }
  | {'FIRST_TRADE_TIMESTAMP', integer() }
  | {'HIGH', integer() }
  | {'HIGH_TRADE_PRICE', integer() }
  | {'HIGH_TRADE_TIMESTAMP', integer() }
  | {'INSTRUMENT', binary() }
  | {'LAST_TRADE_PRICE', integer() }
  | {'LAST_TRADE_TIMESTAMP', integer() }
  | {'LOW', integer() }
  | {'LOW_TRADE_PRICE', integer() }
  | {'LOW_TRADE_TIMESTAMP', integer() }
  | {'MAPPED_INSTRUMENT', binary() }
  | {'MARKET', binary() }
  | {'OPEN', integer() }
  | {'QUOTE', binary() }
  | {'QUOTE_VOLUME', integer() }
  | {'QUOTE_VOLUME_BUY', integer() }
  | {'QUOTE_VOLUME_SELL', integer() }
  | {'QUOTE_VOLUME_UNKNOWN', integer() }
  | {'TIMESTAMP', integer() }
  | {'TOTAL_TRADES', integer() }
  | {'TOTAL_TRADES_BUY', integer() }
  | {'TOTAL_TRADES_SELL', integer() }
  | {'TOTAL_TRADES_UNKNOWN', integer() }
  | {'TYPE', binary() }
  | {'UNIT', binary() }
  | {'VOLUME', integer() }
  | {'VOLUME_BUY', integer() }
  | {'VOLUME_SELL', integer() }
  | {'VOLUME_UNKNOWN', integer() }
  ].


openapi_spot_instrument_histo_data() ->
    openapi_spot_instrument_histo_data([]).

openapi_spot_instrument_histo_data(Fields) ->
  Default = [ {'BASE', binary() }
            , {'CLOSE', integer() }
            , {'FIRST_TRADE_PRICE', integer() }
            , {'FIRST_TRADE_TIMESTAMP', integer() }
            , {'HIGH', integer() }
            , {'HIGH_TRADE_PRICE', integer() }
            , {'HIGH_TRADE_TIMESTAMP', integer() }
            , {'INSTRUMENT', binary() }
            , {'LAST_TRADE_PRICE', integer() }
            , {'LAST_TRADE_TIMESTAMP', integer() }
            , {'LOW', integer() }
            , {'LOW_TRADE_PRICE', integer() }
            , {'LOW_TRADE_TIMESTAMP', integer() }
            , {'MAPPED_INSTRUMENT', binary() }
            , {'MARKET', binary() }
            , {'OPEN', integer() }
            , {'QUOTE', binary() }
            , {'QUOTE_VOLUME', integer() }
            , {'QUOTE_VOLUME_BUY', integer() }
            , {'QUOTE_VOLUME_SELL', integer() }
            , {'QUOTE_VOLUME_UNKNOWN', integer() }
            , {'TIMESTAMP', integer() }
            , {'TOTAL_TRADES', integer() }
            , {'TOTAL_TRADES_BUY', integer() }
            , {'TOTAL_TRADES_SELL', integer() }
            , {'TOTAL_TRADES_UNKNOWN', integer() }
            , {'TYPE', binary() }
            , {'UNIT', binary() }
            , {'VOLUME', integer() }
            , {'VOLUME_BUY', integer() }
            , {'VOLUME_SELL', integer() }
            , {'VOLUME_UNKNOWN', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

