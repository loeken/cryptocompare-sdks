-module(openapi_error_err).

-export([encode/1]).

-export_type([openapi_error_err/0]).

-type openapi_error_err() ::
    #{ 'message' => binary(),
       'other_info' => openapi_error_err_other_info:openapi_error_err_other_info(),
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
