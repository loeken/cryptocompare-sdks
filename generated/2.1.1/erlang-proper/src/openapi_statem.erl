-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% spot_v1_historical_days
%%==============================================================================

spot_v1_historical_days(Market, Instrument) ->
  openapi_api:spot_v1_historical_days(Market, Instrument).

spot_v1_historical_days_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% spot_v1_historical_hours
%%==============================================================================

spot_v1_historical_hours(Market, Instrument) ->
  openapi_api:spot_v1_historical_hours(Market, Instrument).

spot_v1_historical_hours_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% spot_v1_historical_minutes
%%==============================================================================

spot_v1_historical_minutes(Market, Instrument) ->
  openapi_api:spot_v1_historical_minutes(Market, Instrument).

spot_v1_historical_minutes_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% spot_v1_historical_orderbook_l2_snapshot_minute
%%==============================================================================

spot_v1_historical_orderbook_l2_snapshot_minute(Market, Instrument, MinuteTs) ->
  openapi_api:spot_v1_historical_orderbook_l2_snapshot_minute(Market, Instrument, MinuteTs).

spot_v1_historical_orderbook_l2_snapshot_minute_args(_S) ->
  [binary(), binary(), integer()].

%%==============================================================================
%% spot_v1_historical_trades
%%==============================================================================

spot_v1_historical_trades(Market, Instrument) ->
  openapi_api:spot_v1_historical_trades(Market, Instrument).

spot_v1_historical_trades_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% spot_v1_historical_trades_hour
%%==============================================================================

spot_v1_historical_trades_hour(Market, Instrument) ->
  openapi_api:spot_v1_historical_trades_hour(Market, Instrument).

spot_v1_historical_trades_hour_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% spot_v1_latest_instrument_metadata
%%==============================================================================

spot_v1_latest_instrument_metadata(Market, Instruments) ->
  openapi_api:spot_v1_latest_instrument_metadata(Market, Instruments).

spot_v1_latest_instrument_metadata_args(_S) ->
  [binary(), list(binary())].

%%==============================================================================
%% spot_v1_latest_tick
%%==============================================================================

spot_v1_latest_tick(Market, Instruments) ->
  openapi_api:spot_v1_latest_tick(Market, Instruments).

spot_v1_latest_tick_args(_S) ->
  [binary(), list(binary())].

%%==============================================================================
%% spot_v1_markets
%%==============================================================================

spot_v1_markets() ->
  openapi_api:spot_v1_markets().

spot_v1_markets_args(_S) ->
  [].

%%==============================================================================
%% spot_v1_markets_instruments
%%==============================================================================

spot_v1_markets_instruments() ->
  openapi_api:spot_v1_markets_instruments().

spot_v1_markets_instruments_args(_S) ->
  [].

%%==============================================================================
%% spot_v1_markets_instruments_unmapped
%%==============================================================================

spot_v1_markets_instruments_unmapped() ->
  openapi_api:spot_v1_markets_instruments_unmapped().

spot_v1_markets_instruments_unmapped_args(_S) ->
  [].

