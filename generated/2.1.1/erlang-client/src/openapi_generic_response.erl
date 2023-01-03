-module(openapi_generic_response).

-export([encode/1]).

-export_type([openapi_generic_response/0]).

-type openapi_generic_response() ::
    #{ 'Data' => openapi_g_eneric_response_data:openapi_g_eneric_response_data(),
       'Err' => maps:map()
     }.

encode(#{ 'Data' := Data,
          'Err' := Err
        }) ->
    #{ 'Data' => Data,
       'Err' => Err
     }.
