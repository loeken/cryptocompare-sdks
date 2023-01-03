(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let index_cc_v1_historical_days ~market ~instrument ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(mapping_priority = `CHECK_MAPPED_FIRST) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/historical/days" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_historical_hours ~market ~instrument ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(mapping_priority = `CHECK_MAPPED_FIRST) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/historical/hours" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_historical_messages ~market ~instrument ?after_ts ?(last_ccseq = 0l) ?(mapping_priority = `CHECK_MAPPED_FIRST) ?(limit = 100l) ?(response_format = `JSON) ?(return_404_on_empty_response = false) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/historical/messages" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "authorization" Request.api_key in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.maybe_add_query_param uri "after_ts" Int32.to_string after_ts in
    let uri = Request.add_query_param uri "last_ccseq" Int32.to_string last_ccseq in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    let uri = Request.add_query_param uri "return_404_on_empty_response" string_of_bool return_404_on_empty_response in
    let uri = Uri.add_query_param' uri ("api_key", Request.api_key) in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_historical_messages_hour ~market ~instrument ?hour_ts ?(mapping_priority = `CHECK_MAPPED_FIRST) ?(response_format = `JSON) ?(return_404_on_empty_response = false) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/historical/messages/hour" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "authorization" Request.api_key in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.maybe_add_query_param uri "hour_ts" Int32.to_string hour_ts in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    let uri = Request.add_query_param uri "return_404_on_empty_response" string_of_bool return_404_on_empty_response in
    let uri = Uri.add_query_param' uri ("api_key", Request.api_key) in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_historical_minutes ~market ~instrument ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(mapping_priority = `CHECK_MAPPED_FIRST) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/historical/minutes" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_latest_instrument_metadata ~market ~instruments ?(groups = ) ?(mapping_priority = `CHECK_MAPPED_FIRST) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/latest/instrument/metadata" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param_list uri "instruments" (List.map (fun x -> x)) instruments in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_latest_tick ~market ~instruments ?(groups = ) ?(mapping_priority = `CHECK_MAPPED_FIRST) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/latest/tick" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param_list uri "instruments" (List.map (fun x -> x)) instruments in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "mapping_priority" Enums.show_mapping_priority mapping_priority in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_markets ?(market = "") () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/markets" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_markets_instruments ?(market = "") ?(instrument = "") ?(instrument_status = [[]]) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/markets/instruments" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.add_query_param_list uri "instrument_status" (List.map Enums.show_instrument_status) instrument_status in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let index_cc_v1_markets_instruments_unmapped ?(market = "") ?(instrument = "") ?(instrument_status = [[]]) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/index/cc/v1/markets/instruments/unmapped" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "market" (fun x -> x) market in
    let uri = Request.add_query_param uri "instrument" (fun x -> x) instrument in
    let uri = Request.add_query_param_list uri "instrument_status" (List.map Enums.show_instrument_status) instrument_status in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

