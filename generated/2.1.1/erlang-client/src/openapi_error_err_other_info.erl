-module(openapi_error_err_other_info).

-export([encode/1]).

-export_type([openapi_error_err_other_info/0]).

-type openapi_error_err_other_info() ::
    #{ 'param' => binary(),
       'values' => list()
     }.

encode(#{ 'param' := Param,
          'values' := Values
        }) ->
    #{ 'param' => Param,
       'values' => Values
     }.
