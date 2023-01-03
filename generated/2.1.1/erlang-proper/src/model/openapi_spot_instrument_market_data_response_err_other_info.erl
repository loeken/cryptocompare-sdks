-module(openapi_spot_instrument_market_data_response_err_other_info).

-include("openapi.hrl").

-export([openapi_spot_instrument_market_data_response_err_other_info/0]).

-export([openapi_spot_instrument_market_data_response_err_other_info/1]).

-export_type([openapi_spot_instrument_market_data_response_err_other_info/0]).

-type openapi_spot_instrument_market_data_response_err_other_info() ::
  [ {'param', binary() }
  | {'values', list(binary()) }
  ].


openapi_spot_instrument_market_data_response_err_other_info() ->
    openapi_spot_instrument_market_data_response_err_other_info([]).

openapi_spot_instrument_market_data_response_err_other_info(Fields) ->
  Default = [ {'param', binary() }
            , {'values', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

