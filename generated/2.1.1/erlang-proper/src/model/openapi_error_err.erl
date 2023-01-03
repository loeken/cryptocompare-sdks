-module(openapi_error_err).

-include("openapi.hrl").

-export([openapi_error_err/0]).

-export([openapi_error_err/1]).

-export_type([openapi_error_err/0]).

-type openapi_error_err() ::
  [ {'message', binary() }
  | {'other_info', openapi_error_err_other_info:openapi_error_err_other_info() }
  | {'type', integer() }
  ].


openapi_error_err() ->
    openapi_error_err([]).

openapi_error_err(Fields) ->
  Default = [ {'message', binary() }
            , {'other_info', openapi_error_err_other_info:openapi_error_err_other_info() }
            , {'type', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

