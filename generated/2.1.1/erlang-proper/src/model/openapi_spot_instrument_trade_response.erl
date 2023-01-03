-module(openapi_spot_instrument_trade_response).

-include("openapi.hrl").

-export([openapi_spot_instrument_trade_response/0]).

-export([openapi_spot_instrument_trade_response/1]).

-export_type([openapi_spot_instrument_trade_response/0]).

-type openapi_spot_instrument_trade_response() ::
  [ {'Data', list(openapi_s_pot_instrument_trade:openapi_s_pot_instrument_trade()) }
  | {'Err', map() }
  ].


openapi_spot_instrument_trade_response() ->
    openapi_spot_instrument_trade_response([]).

openapi_spot_instrument_trade_response(Fields) ->
  Default = [ {'Data', list(openapi_s_pot_instrument_trade:openapi_s_pot_instrument_trade()) }
            , {'Err', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

