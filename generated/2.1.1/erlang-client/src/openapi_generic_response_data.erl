-module(openapi_generic_response_data).

-export([encode/1]).

-export_type([openapi_generic_response_data/0]).

-type openapi_generic_response_data() ::
    #{ 'NO_DATA' => binary()
     }.

encode(#{ 'NO_DATA' := NODATA
        }) ->
    #{ 'NO_DATA' => NODATA
     }.
