-module(openapi_spot_instrument_market_data_response_err).

-include("openapi.hrl").

-export([openapi_spot_instrument_market_data_response_err/0]).

-export([openapi_spot_instrument_market_data_response_err/1]).

-export_type([openapi_spot_instrument_market_data_response_err/0]).

-type openapi_spot_instrument_market_data_response_err() ::
  [ {'message', binary() }
  | {'other_info', openapi_s_pot_instrument_market_data_response_err_other_info:openapi_s_pot_instrument_market_data_response_err_other_info() }
  | {'type', integer() }
  ].


openapi_spot_instrument_market_data_response_err() ->
    openapi_spot_instrument_market_data_response_err([]).

openapi_spot_instrument_market_data_response_err(Fields) ->
  Default = [ {'message', binary() }
            , {'other_info', openapi_s_pot_instrument_market_data_response_err_other_info:openapi_s_pot_instrument_market_data_response_err_other_info() }
            , {'type', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

