-module(openapi_spot_instrument_histo_data_response).

-export([encode/1]).

-export_type([openapi_spot_instrument_histo_data_response/0]).

-type openapi_spot_instrument_histo_data_response() ::
    #{ 'Data' => list(),
       'Err' => maps:map()
     }.

encode(#{ 'Data' := Data,
          'Err' := Err
        }) ->
    #{ 'Data' => Data,
       'Err' => Err
     }.
