(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val spot_v1_historical_days : market:string -> instrument:string -> ?groups:string list -> ?limit:int32 -> ?to_ts:int32 -> ?aggregate:int32 -> ?fill:bool -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> unit -> Spot_instrument_histo_data_response.t Lwt.t
val spot_v1_historical_hours : market:string -> instrument:string -> ?groups:string list -> ?limit:int32 -> ?to_ts:int32 -> ?aggregate:int32 -> ?fill:bool -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> unit -> Spot_instrument_histo_data_response.t Lwt.t
val spot_v1_historical_minutes : market:string -> instrument:string -> ?groups:string list -> ?limit:int32 -> ?to_ts:int32 -> ?aggregate:int32 -> ?fill:bool -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> unit -> Spot_instrument_histo_data_response.t Lwt.t
val spot_v1_historical_orderbook_l2_snapshot_minute : market:string -> instrument:string -> minute_ts:int32 -> ?depth:int32 -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> unit -> Generic_response.t Lwt.t
val spot_v1_historical_trades : market:string -> instrument:string -> ?after_ts:int32 -> ?last_ccseq:int32 -> ?limit:int32 -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> ?return_404_on_empty_response:bool -> unit -> Spot_instrument_trade_response.t Lwt.t
val spot_v1_historical_trades_hour : market:string -> instrument:string -> ?hour_ts:int32 -> ?mapping_priority:Enums.mapping_priority -> ?response_format:Enums.response_format -> ?return_404_on_empty_response:bool -> unit -> Spot_instrument_trade_response.t Lwt.t
val spot_v1_latest_instrument_metadata : market:string -> instruments:string list -> ?groups:string list -> ?mapping_priority:Enums.mapping_priority -> unit -> Spot_instrument_metadata_response.t Lwt.t
val spot_v1_latest_tick : market:string -> instruments:string list -> ?groups:string list -> ?mapping_priority:Enums.mapping_priority -> unit -> Spot_instrument_market_data_response.t Lwt.t
val spot_v1_markets : ?market:string -> unit -> Generic_response.t Lwt.t
val spot_v1_markets_instruments : ?market:string -> ?instrument:string -> ?instrument_status:Enums.instrument_status list -> unit -> Generic_response.t Lwt.t
val spot_v1_markets_instruments_unmapped : ?market:string -> ?instrument:string -> ?instrument_status:Enums.instrument_status list -> unit -> Generic_response.t Lwt.t
