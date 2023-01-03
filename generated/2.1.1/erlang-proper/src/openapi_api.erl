-module(openapi_api).

-export([ spot_v1_historical_days/2
        , spot_v1_historical_hours/2
        , spot_v1_historical_minutes/2
        , spot_v1_historical_orderbook_l2_snapshot_minute/3
        , spot_v1_historical_trades/2
        , spot_v1_historical_trades_hour/2
        , spot_v1_latest_instrument_metadata/2
        , spot_v1_latest_tick/2
        , spot_v1_markets/0
        , spot_v1_markets_instruments/0
        , spot_v1_markets_instruments_unmapped/0
        ]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec spot_v1_historical_days(binary(), binary()) ->
  openapi_utils:response().
spot_v1_historical_days(Market, Instrument) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/days"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"limit=">>, Limit, <<"&">>, <<"to_ts=">>, ToTs, <<"&">>, <<"aggregate=">>, Aggregate, <<"&">>, <<"fill=">>, Fill, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_historical_hours(binary(), binary()) ->
  openapi_utils:response().
spot_v1_historical_hours(Market, Instrument) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/hours"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"limit=">>, Limit, <<"&">>, <<"to_ts=">>, ToTs, <<"&">>, <<"aggregate=">>, Aggregate, <<"&">>, <<"fill=">>, Fill, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_historical_minutes(binary(), binary()) ->
  openapi_utils:response().
spot_v1_historical_minutes(Market, Instrument) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/minutes"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"limit=">>, Limit, <<"&">>, <<"to_ts=">>, ToTs, <<"&">>, <<"aggregate=">>, Aggregate, <<"&">>, <<"fill=">>, Fill, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_historical_orderbook_l2_snapshot_minute(binary(), binary(), integer()) ->
  openapi_utils:response().
spot_v1_historical_orderbook_l2_snapshot_minute(Market, Instrument, MinuteTs) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/orderbook/l2/snapshot/minute"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"minute_ts=">>, MinuteTs, <<"&">>, <<"depth=">>, Depth, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_historical_trades(binary(), binary()) ->
  openapi_utils:response().
spot_v1_historical_trades(Market, Instrument) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/trades"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"after_ts=">>, AfterTs, <<"&">>, <<"last_ccseq=">>, LastCcseq, <<"&">>, <<"limit=">>, Limit, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>, <<"return_404_on_empty_response=">>, Return404OnEmptyResponse, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_historical_trades_hour(binary(), binary()) ->
  openapi_utils:response().
spot_v1_historical_trades_hour(Market, Instrument) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/historical/trades/hour"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"hour_ts=">>, HourTs, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>, <<"response_format=">>, ResponseFormat, <<"&">>, <<"return_404_on_empty_response=">>, Return404OnEmptyResponse, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_latest_instrument_metadata(binary(), list(binary())) ->
  openapi_utils:response().
spot_v1_latest_instrument_metadata(Market, Instruments) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/latest/instrument/metadata"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instruments=">>, Instruments, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_latest_tick(binary(), list(binary())) ->
  openapi_utils:response().
spot_v1_latest_tick(Market, Instruments) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/latest/tick"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instruments=">>, Instruments, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"mapping_priority=">>, MappingPriority, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_markets() ->
  openapi_utils:response().
spot_v1_markets() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/markets"],
  QueryString = [<<"market=">>, Market, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_markets_instruments() ->
  openapi_utils:response().
spot_v1_markets_instruments() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/markets/instruments"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"instrument_status=">>, InstrumentStatus, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec spot_v1_markets_instruments_unmapped() ->
  openapi_utils:response().
spot_v1_markets_instruments_unmapped() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/spot/v1/markets/instruments/unmapped"],
  QueryString = [<<"market=">>, Market, <<"&">>, <<"instrument=">>, Instrument, <<"&">>, <<"instrument_status=">>, InstrumentStatus, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

