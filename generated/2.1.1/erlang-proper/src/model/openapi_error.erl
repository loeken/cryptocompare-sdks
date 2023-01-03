-module(openapi_error).

-include("openapi.hrl").

-export([openapi_error/0]).

-export([openapi_error/1]).

-export_type([openapi_error/0]).

-type openapi_error() ::
  [ {'Data', map() }
  | {'Err', openapi_error_err:openapi_error_err() }
  ].


openapi_error() ->
    openapi_error([]).

openapi_error(Fields) ->
  Default = [ {'Data', map() }
            , {'Err', openapi_error_err:openapi_error_err() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

