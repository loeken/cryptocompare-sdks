-module(openapi_spot_instrument_histo_data_response).

-include("openapi.hrl").

-export([openapi_spot_instrument_histo_data_response/0]).

-export([openapi_spot_instrument_histo_data_response/1]).

-export_type([openapi_spot_instrument_histo_data_response/0]).

-type openapi_spot_instrument_histo_data_response() ::
  [ {'Data', list(openapi_s_pot_instrument_histo_data:openapi_s_pot_instrument_histo_data()) }
  | {'Err', map() }
  ].


openapi_spot_instrument_histo_data_response() ->
    openapi_spot_instrument_histo_data_response([]).

openapi_spot_instrument_histo_data_response(Fields) ->
  Default = [ {'Data', list(openapi_s_pot_instrument_histo_data:openapi_s_pot_instrument_histo_data()) }
            , {'Err', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

