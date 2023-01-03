-module(openapi_spot_instrument_market_data_response).

-include("openapi.hrl").

-export([openapi_spot_instrument_market_data_response/0]).

-export([openapi_spot_instrument_market_data_response/1]).

-export_type([openapi_spot_instrument_market_data_response/0]).

-type openapi_spot_instrument_market_data_response() ::
  [ {'Data', map() }
  | {'Err', openapi_s_pot_instrument_market_data_response_err:openapi_s_pot_instrument_market_data_response_err() }
  ].


openapi_spot_instrument_market_data_response() ->
    openapi_spot_instrument_market_data_response([]).

openapi_spot_instrument_market_data_response(Fields) ->
  Default = [ {'Data', map() }
            , {'Err', openapi_s_pot_instrument_market_data_response_err:openapi_s_pot_instrument_market_data_response_err() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

