(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let overview_v1_historical_marketcap_all_assets_days ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/historical/marketcap/all/assets/days" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let overview_v1_historical_marketcap_all_assets_hours ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/historical/marketcap/all/assets/hours" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let overview_v1_historical_marketcap_ftw_assets_days ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/historical/marketcap/ftw/assets/days" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let overview_v1_historical_marketcap_ftw_assets_hours ?(groups = ) ?(limit = 30l) ?to_ts ?(aggregate = 1l) ?(fill = true) ?(response_format = `JSON) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/historical/marketcap/ftw/assets/hours" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    let uri = Request.add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "to_ts" Int32.to_string to_ts in
    let uri = Request.add_query_param uri "aggregate" Int32.to_string aggregate in
    let uri = Request.add_query_param uri "fill" string_of_bool fill in
    let uri = Request.add_query_param uri "response_format" Enums.show_response_format response_format in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let overview_v1_latest_marketcap_all_tick ?(groups = ) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/latest/marketcap/all/tick" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let overview_v1_latest_marketcap_ftw_tick ?(groups = ) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/overview/v1/latest/marketcap/ftw/tick" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "groups" (List.map (fun x -> x)) groups in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

