-module(openapi_spot_instrument_trade).

-include("openapi.hrl").

-export([openapi_spot_instrument_trade/0]).

-export([openapi_spot_instrument_trade/1]).

-export_type([openapi_spot_instrument_trade/0]).

-type openapi_spot_instrument_trade() ::
  [ {'BASE', binary() }
  | {'CCSEQ', integer() }
  | {'ID', binary() }
  | {'INSTRUMENT', binary() }
  | {'MAPPED_INSTRUMENT', binary() }
  | {'MARKET', binary() }
  | {'PRICE', integer() }
  | {'QUANTITY', integer() }
  | {'QUOTE', binary() }
  | {'QUOTE_QUANTITY', integer() }
  | {'RECEIVED_TIMESTAMP', integer() }
  | {'RECEIVED_TIMESTAMP_NS', integer() }
  | {'SIDE', binary() }
  | {'SOURCE', binary() }
  | {'TIMESTAMP', integer() }
  | {'TIMESTAMP_NS', integer() }
  | {'TYPE', binary() }
  ].


openapi_spot_instrument_trade() ->
    openapi_spot_instrument_trade([]).

openapi_spot_instrument_trade(Fields) ->
  Default = [ {'BASE', binary() }
            , {'CCSEQ', integer() }
            , {'ID', binary() }
            , {'INSTRUMENT', binary() }
            , {'MAPPED_INSTRUMENT', binary() }
            , {'MARKET', binary() }
            , {'PRICE', integer() }
            , {'QUANTITY', integer() }
            , {'QUOTE', binary() }
            , {'QUOTE_QUANTITY', integer() }
            , {'RECEIVED_TIMESTAMP', integer() }
            , {'RECEIVED_TIMESTAMP_NS', integer() }
            , {'SIDE', binary() }
            , {'SOURCE', binary() }
            , {'TIMESTAMP', integer() }
            , {'TIMESTAMP_NS', integer() }
            , {'TYPE', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

