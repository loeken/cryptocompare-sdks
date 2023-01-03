-module(openapi_futures_api).

-export([futures_v1_historical_days/3, futures_v1_historical_days/4,
         futures_v1_historical_funding_rate_days/3, futures_v1_historical_funding_rate_days/4,
         futures_v1_historical_funding_rate_hours/3, futures_v1_historical_funding_rate_hours/4,
         futures_v1_historical_funding_rate_messages/3, futures_v1_historical_funding_rate_messages/4,
         futures_v1_historical_funding_rate_messages_hour/3, futures_v1_historical_funding_rate_messages_hour/4,
         futures_v1_historical_funding_rate_minutes/3, futures_v1_historical_funding_rate_minutes/4,
         futures_v1_historical_hours/3, futures_v1_historical_hours/4,
         futures_v1_historical_minutes/3, futures_v1_historical_minutes/4,
         futures_v1_historical_open_interest_days/3, futures_v1_historical_open_interest_days/4,
         futures_v1_historical_open_interest_hours/3, futures_v1_historical_open_interest_hours/4,
         futures_v1_historical_open_interest_messages/3, futures_v1_historical_open_interest_messages/4,
         futures_v1_historical_open_interest_messages_hour/3, futures_v1_historical_open_interest_messages_hour/4,
         futures_v1_historical_open_interest_minutes/3, futures_v1_historical_open_interest_minutes/4,
         futures_v1_historical_trades/3, futures_v1_historical_trades/4,
         futures_v1_historical_trades_hour/3, futures_v1_historical_trades_hour/4,
         futures_v1_latest_funding_rate_tick/3, futures_v1_latest_funding_rate_tick/4,
         futures_v1_latest_instrument_metadata/3, futures_v1_latest_instrument_metadata/4,
         futures_v1_latest_open_interest_tick/3, futures_v1_latest_open_interest_tick/4,
         futures_v1_latest_tick/3, futures_v1_latest_tick/4,
         futures_v1_markets/1, futures_v1_markets/2,
         futures_v1_markets_instruments/1, futures_v1_markets_instruments/2,
         futures_v1_markets_instruments_unmapped/1, futures_v1_markets_instruments_unmapped/2,
         index_v1_historical_days/3, index_v1_historical_days/4,
         index_v1_historical_hours/3, index_v1_historical_hours/4,
         index_v1_historical_messages/3, index_v1_historical_messages/4,
         index_v1_historical_messages_hour/3, index_v1_historical_messages_hour/4,
         index_v1_historical_minutes/3, index_v1_historical_minutes/4,
         index_v1_latest_instrument_metadata/3, index_v1_latest_instrument_metadata/4,
         index_v1_latest_tick/3, index_v1_latest_tick/4,
         index_v1_markets/1, index_v1_markets/2,
         index_v1_markets_instruments/1, index_v1_markets_instruments/2,
         index_v1_markets_instruments_unmapped/1, index_v1_markets_instruments_unmapped/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec futures_v1_historical_days(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_days(Ctx, Market, Instrument) ->
    futures_v1_historical_days(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_days(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_days(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/days">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_funding_rate_days(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_days(Ctx, Market, Instrument) ->
    futures_v1_historical_funding_rate_days(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_funding_rate_days(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_days(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/funding-rate/days">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_funding_rate_hours(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_hours(Ctx, Market, Instrument) ->
    futures_v1_historical_funding_rate_hours(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_funding_rate_hours(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_hours(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/funding-rate/hours">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_funding_rate_messages(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_messages(Ctx, Market, Instrument) ->
    futures_v1_historical_funding_rate_messages(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_funding_rate_messages(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_messages(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/funding-rate-messages">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['after_ts', 'last_ccseq', 'limit', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_funding_rate_messages_hour(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_messages_hour(Ctx, Market, Instrument) ->
    futures_v1_historical_funding_rate_messages_hour(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_funding_rate_messages_hour(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_messages_hour(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/funding-rate-messages/hour">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['hour_ts', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_funding_rate_minutes(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_minutes(Ctx, Market, Instrument) ->
    futures_v1_historical_funding_rate_minutes(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_funding_rate_minutes(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_funding_rate_minutes(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/funding-rate/minutes">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_hours(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_hours(Ctx, Market, Instrument) ->
    futures_v1_historical_hours(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_hours(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_hours(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/hours">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_minutes(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_minutes(Ctx, Market, Instrument) ->
    futures_v1_historical_minutes(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_minutes(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_minutes(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/minutes">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_open_interest_days(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_days(Ctx, Market, Instrument) ->
    futures_v1_historical_open_interest_days(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_open_interest_days(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_days(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/open-interest/days">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_open_interest_hours(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_hours(Ctx, Market, Instrument) ->
    futures_v1_historical_open_interest_hours(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_open_interest_hours(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_hours(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/open-interest/hours">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_open_interest_messages(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_messages(Ctx, Market, Instrument) ->
    futures_v1_historical_open_interest_messages(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_open_interest_messages(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_messages(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/open-interest-messages">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['after_ts', 'last_ccseq', 'limit', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_open_interest_messages_hour(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_messages_hour(Ctx, Market, Instrument) ->
    futures_v1_historical_open_interest_messages_hour(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_open_interest_messages_hour(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_messages_hour(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/open-interest-messages/hour">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['hour_ts', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_open_interest_minutes(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_minutes(Ctx, Market, Instrument) ->
    futures_v1_historical_open_interest_minutes(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_open_interest_minutes(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_open_interest_minutes(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/open-interest/minutes">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_trades(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_trades(Ctx, Market, Instrument) ->
    futures_v1_historical_trades(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_trades(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_trades(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/trades">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['after_ts', 'last_ccseq', 'limit', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_historical_trades_hour(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_trades_hour(Ctx, Market, Instrument) ->
    futures_v1_historical_trades_hour(Ctx, Market, Instrument, #{}).

-spec futures_v1_historical_trades_hour(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_historical_trades_hour(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/historical/trades/hour">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['hour_ts', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_latest_funding_rate_tick(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_funding_rate_tick(Ctx, Market, Instruments) ->
    futures_v1_latest_funding_rate_tick(Ctx, Market, Instruments, #{}).

-spec futures_v1_latest_funding_rate_tick(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_funding_rate_tick(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/latest/funding-rate/tick">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_latest_instrument_metadata(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_instrument_metadata(Ctx, Market, Instruments) ->
    futures_v1_latest_instrument_metadata(Ctx, Market, Instruments, #{}).

-spec futures_v1_latest_instrument_metadata(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_instrument_metadata(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/latest/instrument/metadata">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_latest_open_interest_tick(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_open_interest_tick(Ctx, Market, Instruments) ->
    futures_v1_latest_open_interest_tick(Ctx, Market, Instruments, #{}).

-spec futures_v1_latest_open_interest_tick(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_open_interest_tick(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/latest/open-interest/tick">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_latest_tick(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_tick(Ctx, Market, Instruments) ->
    futures_v1_latest_tick(Ctx, Market, Instruments, #{}).

-spec futures_v1_latest_tick(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_latest_tick(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/latest/tick">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_markets(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets(Ctx) ->
    futures_v1_markets(Ctx, #{}).

-spec futures_v1_markets(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/markets">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_markets_instruments(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets_instruments(Ctx) ->
    futures_v1_markets_instruments(Ctx, #{}).

-spec futures_v1_markets_instruments(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets_instruments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/markets/instruments">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec futures_v1_markets_instruments_unmapped(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets_instruments_unmapped(Ctx) ->
    futures_v1_markets_instruments_unmapped(Ctx, #{}).

-spec futures_v1_markets_instruments_unmapped(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
futures_v1_markets_instruments_unmapped(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/futures/v1/markets/instruments/unmapped">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_historical_days(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_days(Ctx, Market, Instrument) ->
    index_v1_historical_days(Ctx, Market, Instrument, #{}).

-spec index_v1_historical_days(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_days(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/historical/days">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_historical_hours(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_hours(Ctx, Market, Instrument) ->
    index_v1_historical_hours(Ctx, Market, Instrument, #{}).

-spec index_v1_historical_hours(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_hours(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/historical/hours">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_historical_messages(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_messages(Ctx, Market, Instrument) ->
    index_v1_historical_messages(Ctx, Market, Instrument, #{}).

-spec index_v1_historical_messages(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_messages(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/historical/messages">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['after_ts', 'last_ccseq', 'limit', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_historical_messages_hour(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_messages_hour(Ctx, Market, Instrument) ->
    index_v1_historical_messages_hour(Ctx, Market, Instrument, #{}).

-spec index_v1_historical_messages_hour(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_messages_hour(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/historical/messages/hour">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['hour_ts', 'mapping_priority', 'response_format', 'return_404_on_empty_response'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_historical_minutes(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_minutes(Ctx, Market, Instrument) ->
    index_v1_historical_minutes(Ctx, Market, Instrument, #{}).

-spec index_v1_historical_minutes(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_historical_minutes(Ctx, Market, Instrument, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/historical/minutes">>],
    QS = lists:flatten([{<<"market">>, Market}, {<<"instrument">>, Instrument}])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'mapping_priority', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_latest_instrument_metadata(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_latest_instrument_metadata(Ctx, Market, Instruments) ->
    index_v1_latest_instrument_metadata(Ctx, Market, Instruments, #{}).

-spec index_v1_latest_instrument_metadata(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_latest_instrument_metadata(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/latest/instrument/metadata">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_latest_tick(ctx:ctx(), binary(), list()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_latest_tick(Ctx, Market, Instruments) ->
    index_v1_latest_tick(Ctx, Market, Instruments, #{}).

-spec index_v1_latest_tick(ctx:ctx(), binary(), list(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_latest_tick(Ctx, Market, Instruments, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/latest/tick">>],
    QS = lists:flatten([{<<"market">>, Market}, [{<<"instruments">>, X} || X <- Instruments]])++openapi_utils:optional_params(['groups', 'mapping_priority'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_markets(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets(Ctx) ->
    index_v1_markets(Ctx, #{}).

-spec index_v1_markets(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/markets">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_markets_instruments(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets_instruments(Ctx) ->
    index_v1_markets_instruments(Ctx, #{}).

-spec index_v1_markets_instruments(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets_instruments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/markets/instruments">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec index_v1_markets_instruments_unmapped(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets_instruments_unmapped(Ctx) ->
    index_v1_markets_instruments_unmapped(Ctx, #{}).

-spec index_v1_markets_instruments_unmapped(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
index_v1_markets_instruments_unmapped(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/index/v1/markets/instruments/unmapped">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['market', 'instrument', 'instrument_status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


