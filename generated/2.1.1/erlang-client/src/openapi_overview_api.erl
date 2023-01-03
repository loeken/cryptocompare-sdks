-module(openapi_overview_api).

-export([overview_v1_historical_marketcap_all_assets_days/1, overview_v1_historical_marketcap_all_assets_days/2,
         overview_v1_historical_marketcap_all_assets_hours/1, overview_v1_historical_marketcap_all_assets_hours/2,
         overview_v1_historical_marketcap_ftw_assets_days/1, overview_v1_historical_marketcap_ftw_assets_days/2,
         overview_v1_historical_marketcap_ftw_assets_hours/1, overview_v1_historical_marketcap_ftw_assets_hours/2,
         overview_v1_latest_marketcap_all_tick/1, overview_v1_latest_marketcap_all_tick/2,
         overview_v1_latest_marketcap_ftw_tick/1, overview_v1_latest_marketcap_ftw_tick/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec overview_v1_historical_marketcap_all_assets_days(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_all_assets_days(Ctx) ->
    overview_v1_historical_marketcap_all_assets_days(Ctx, #{}).

-spec overview_v1_historical_marketcap_all_assets_days(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_all_assets_days(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/historical/marketcap/all/assets/days">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec overview_v1_historical_marketcap_all_assets_hours(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_all_assets_hours(Ctx) ->
    overview_v1_historical_marketcap_all_assets_hours(Ctx, #{}).

-spec overview_v1_historical_marketcap_all_assets_hours(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_all_assets_hours(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/historical/marketcap/all/assets/hours">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec overview_v1_historical_marketcap_ftw_assets_days(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_ftw_assets_days(Ctx) ->
    overview_v1_historical_marketcap_ftw_assets_days(Ctx, #{}).

-spec overview_v1_historical_marketcap_ftw_assets_days(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_ftw_assets_days(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/historical/marketcap/ftw/assets/days">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec overview_v1_historical_marketcap_ftw_assets_hours(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_ftw_assets_hours(Ctx) ->
    overview_v1_historical_marketcap_ftw_assets_hours(Ctx, #{}).

-spec overview_v1_historical_marketcap_ftw_assets_hours(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_historical_marketcap_ftw_assets_hours(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/historical/marketcap/ftw/assets/hours">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups', 'limit', 'to_ts', 'aggregate', 'fill', 'response_format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec overview_v1_latest_marketcap_all_tick(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_latest_marketcap_all_tick(Ctx) ->
    overview_v1_latest_marketcap_all_tick(Ctx, #{}).

-spec overview_v1_latest_marketcap_all_tick(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_latest_marketcap_all_tick(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/latest/marketcap/all/tick">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec overview_v1_latest_marketcap_ftw_tick(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_latest_marketcap_ftw_tick(Ctx) ->
    overview_v1_latest_marketcap_ftw_tick(Ctx, #{}).

-spec overview_v1_latest_marketcap_ftw_tick(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
overview_v1_latest_marketcap_ftw_tick(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/overview/v1/latest/marketcap/ftw/tick">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


