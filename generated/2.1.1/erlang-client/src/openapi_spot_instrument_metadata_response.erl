-module(openapi_spot_instrument_metadata_response).

-export([encode/1]).

-export_type([openapi_spot_instrument_metadata_response/0]).

-type openapi_spot_instrument_metadata_response() ::
    #{ 'Data' => maps:map(),
       'Err' => openapi_s_pot_instrument_market_data_response_err:openapi_s_pot_instrument_market_data_response_err()
     }.

encode(#{ 'Data' := Data,
          'Err' := Err
        }) ->
    #{ 'Data' => Data,
       'Err' => Err
     }.
