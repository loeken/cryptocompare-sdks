-module(openapi_error).

-export([encode/1]).

-export_type([openapi_error/0]).

-type openapi_error() ::
    #{ 'Data' => maps:map(),
       'Err' => openapi_error_err:openapi_error_err()
     }.

encode(#{ 'Data' := Data,
          'Err' := Err
        }) ->
    #{ 'Data' => Data,
       'Err' => Err
     }.
