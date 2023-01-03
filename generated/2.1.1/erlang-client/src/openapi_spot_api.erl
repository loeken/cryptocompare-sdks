-module(openapi_spot_api).

-export([spot_v1_historical_days/3, spot_v1_historical_days/4,
         spot_v1_historical_hours/3, spot_v1_historical_hours/4,
         spot_v1_historical_minutes/3, spot_v1_historical_minutes/4,
         spot_v1_historical_orderbook_l2_snapshot_minute/4, spot_v1_historical_orderbook_l2_snapshot_minute/5,
         spot_v1_historical_trades/3, spot_v1_historical_trades/4,
         spot_v1_historical_trades_hour/3, spot_v1_historical_trades_hour/4,
         spot_v1_latest_instrument_metadata/3, spot_v1_latest_instrument_metadata/4,
         spot_v1_latest_tick/3, spot_v1_latest_tick/4,
         spot_v1_markets/1, spot_v1_markets/2,
         spot_v1_markets_instruments/1, spot_v1_markets_instruments/2,
         spot_v1_markets_instruments_unmapped/1, spot_v1_markets_instruments_unmapped/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec spot_v1_historical_days(ctx:ctx(), binary(), binary()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_days(Ctx, Market, Instrument) ->
    spot_v1_historical_days(Ctx, Market, Instrument, #{}).

-spec spot_v1_historical_days(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_days(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/days">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_historical_hours(ctx:ctx(), binary(), binary()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_hours(Ctx, Market, Instrument) ->
    spot_v1_historical_hours(Ctx, Market, Instrument, #{}).

-spec spot_v1_historical_hours(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_hours(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/hours">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_historical_minutes(ctx:ctx(), binary(), binary()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_minutes(Ctx, Market, Instrument) ->
    spot_v1_historical_minutes(Ctx, Market, Instrument, #{}).

-spec spot_v1_historical_minutes(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_s_pot_instrument_histo_data_response:openapi_s_pot_instrument_histo_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_minutes(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/minutes">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_historical_orderbook_l2_snapshot_minute(ctx:ctx(), binary(), binary(), integer()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_orderbook_l2_snapshot_minute(Ctx, Market, Instrument, MinuteTs) ->
    spot_v1_historical_orderbook_l2_snapshot_minute(Ctx, Market, Instrument, MinuteTs, #{}).

-spec spot_v1_historical_orderbook_l2_snapshot_minute(ctx:ctx(), binary(), binary(), integer(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_orderbook_l2_snapshot_minute(Ctx, Market, Instrument, MinuteTs, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/orderbook/l2/snapshot/minute">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}, {<<"minute_ts">>, MinuteTs}])++openapi_utils:optional_params(['depth', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_historical_trades(ctx:ctx(), binary(), binary()) -> {ok, openapi_s_pot_instrument_trade_response:openapi_s_pot_instrument_trade_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_trades(Ctx, Market, Instrument) ->
    spot_v1_historical_trades(Ctx, Market, Instrument, #{}).

-spec spot_v1_historical_trades(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_s_pot_instrument_trade_response:openapi_s_pot_instrument_trade_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_trades(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/trades">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['after_ts', 'last_ccseq', 'limit', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_historical_trades_hour(ctx:ctx(), binary(), binary()) -> {ok, openapi_s_pot_instrument_trade_response:openapi_s_pot_instrument_trade_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_trades_hour(Ctx, Market, Instrument) ->
    spot_v1_historical_trades_hour(Ctx, Market, Instrument, #{}).

-spec spot_v1_historical_trades_hour(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_s_pot_instrument_trade_response:openapi_s_pot_instrument_trade_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_historical_trades_hour(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/historical/trades/hour">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['hour_ts', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_latest_instrument_metadata(ctx:ctx(), binary(), list()) -> {ok, openapi_s_pot_instrument_metadata_response:openapi_s_pot_instrument_metadata_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_latest_instrument_metadata(Ctx, Market, Instruments) ->
    spot_v1_latest_instrument_metadata(Ctx, Market, Instruments, #{}).

-spec spot_v1_latest_instrument_metadata(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_s_pot_instrument_metadata_response:openapi_s_pot_instrument_metadata_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_latest_instrument_metadata(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/latest/instrument/metadata">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_latest_tick(ctx:ctx(), binary(), list()) -> {ok, openapi_s_pot_instrument_market_data_response:openapi_s_pot_instrument_market_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_latest_tick(Ctx, Market, Instruments) ->
    spot_v1_latest_tick(Ctx, Market, Instruments, #{}).

-spec spot_v1_latest_tick(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_s_pot_instrument_market_data_response:openapi_s_pot_instrument_market_data_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_latest_tick(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/latest/tick">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_markets(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets(Ctx) ->
    spot_v1_markets(Ctx, #{}).

-spec spot_v1_markets(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/markets">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_markets_instruments(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets_instruments(Ctx) ->
    spot_v1_markets_instruments(Ctx, #{}).

-spec spot_v1_markets_instruments(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets_instruments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/markets/instruments">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec spot_v1_markets_instruments_unmapped(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets_instruments_unmapped(Ctx) ->
    spot_v1_markets_instruments_unmapped(Ctx, #{}).

-spec spot_v1_markets_instruments_unmapped(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
spot_v1_markets_instruments_unmapped(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/spot/v1/markets/instruments/unmapped">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


