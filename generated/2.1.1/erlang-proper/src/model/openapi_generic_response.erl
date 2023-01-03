-module(openapi_generic_response).

-include("openapi.hrl").

-export([openapi_generic_response/0]).

-export([openapi_generic_response/1]).

-export_type([openapi_generic_response/0]).

-type openapi_generic_response() ::
  [ {'Data', openapi_g_eneric_response_data:openapi_g_eneric_response_data() }
  | {'Err', map() }
  ].


openapi_generic_response() ->
    openapi_generic_response([]).

openapi_generic_response(Fields) ->
  Default = [ {'Data', openapi_g_eneric_response_data:openapi_g_eneric_response_data() }
            , {'Err', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

