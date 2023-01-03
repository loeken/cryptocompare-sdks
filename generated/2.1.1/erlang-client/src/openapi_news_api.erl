-module(openapi_news_api).

-export([news_v1_article_list/1, news_v1_article_list/2,
         news_v1_category_list/1, news_v1_category_list/2,
         news_v1_source_list/1, news_v1_source_list/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec news_v1_article_list(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_article_list(Ctx) ->
    news_v1_article_list(Ctx, #{}).

-spec news_v1_article_list(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_article_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/news/v1/article/list">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['source_ids', 'lang', 'categories', 'exclude_categories', 'to_ts'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec news_v1_category_list(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_category_list(Ctx) ->
    news_v1_category_list(Ctx, #{}).

-spec news_v1_category_list(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_category_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/news/v1/category/list">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec news_v1_source_list(ctx:ctx()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_source_list(Ctx) ->
    news_v1_source_list(Ctx, #{}).

-spec news_v1_source_list(ctx:ctx(), maps:map()) -> {ok, openapi_g_eneric_response:openapi_g_eneric_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
news_v1_source_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/news/v1/source/list">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['lang', 'type', 'status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


