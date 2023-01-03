-module(openapi_asset_api).

-export([asset_v1_data_by_address/3, asset_v1_data_by_address/4,
         asset_v1_data_by_id/2, asset_v1_data_by_id/3,
         asset_v1_data_by_symbol/2, asset_v1_data_by_symbol/3,
         asset_v1_top_list/1, asset_v1_top_list/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec asset_v1_data_by_address(ctx:ctx(), binary(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_address(Ctx, Address, ChainSymbol) ->
    asset_v1_data_by_address(Ctx, Address, ChainSymbol, #{}).

-spec asset_v1_data_by_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_address(Ctx, Address, ChainSymbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/asset/v1/data/by/address">>],
    QS = lists:flatten([{<<"address">>, Address}, {<<"chain_symbol">>, ChainSymbol}])++openapi_utils:optional_params(['groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec asset_v1_data_by_id(ctx:ctx(), integer()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_id(Ctx, AssetId) ->
    asset_v1_data_by_id(Ctx, AssetId, #{}).

-spec asset_v1_data_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_id(Ctx, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/asset/v1/data/by/id">>],
    QS = lists:flatten([{<<"asset_id">>, AssetId}])++openapi_utils:optional_params(['groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec asset_v1_data_by_symbol(ctx:ctx(), binary()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_symbol(Ctx, AssetSymbol) ->
    asset_v1_data_by_symbol(Ctx, AssetSymbol, #{}).

-spec asset_v1_data_by_symbol(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_data_by_symbol(Ctx, AssetSymbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/asset/v1/data/by/symbol">>],
    QS = lists:flatten([{<<"asset_symbol">>, AssetSymbol}])++openapi_utils:optional_params(['groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec asset_v1_top_list(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_top_list(Ctx) ->
    asset_v1_top_list(Ctx, #{}).

-spec asset_v1_top_list(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
asset_v1_top_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/asset/v1/top/list">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'asset_type', 'sort_by', 'sort_direction', 'groups'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


