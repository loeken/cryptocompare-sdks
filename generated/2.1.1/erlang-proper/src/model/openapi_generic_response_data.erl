-module(openapi_generic_response_data).

-include("openapi.hrl").

-export([openapi_generic_response_data/0]).

-export([openapi_generic_response_data/1]).

-export_type([openapi_generic_response_data/0]).

-type openapi_generic_response_data() ::
  [ {'NO_DATA', binary() }
  ].


openapi_generic_response_data() ->
    openapi_generic_response_data([]).

openapi_generic_response_data(Fields) ->
  Default = [ {'NO_DATA', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

