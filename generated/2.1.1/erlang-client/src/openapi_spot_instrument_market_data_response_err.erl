-module(openapi_spot_instrument_market_data_response_err).

-export([encode/1]).

-export_type([openapi_spot_instrument_market_data_response_err/0]).

-type openapi_spot_instrument_market_data_response_err() ::
    #{ 'message' => binary(),
       'other_info' => openapi_s_pot_instrument_market_data_response_err_other_info:openapi_s_pot_instrument_market_data_response_err_other_info(),
       'type' => integer()
     }.

encode(#{ 'message' := Message,
          'other_info' := OtherInfo,
          'type' := Type
        }) ->
    #{ 'message' => Message,
       'other_info' => OtherInfo,
       'type' => Type
     }.
