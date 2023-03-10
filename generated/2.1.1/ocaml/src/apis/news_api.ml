(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let news_v1_article_list ?(source_ids = ) ?(lang = `EN) ?(categories = [[""]]) ?(exclude_categories = [[""]]) ?(to_ts = -1l) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/news/v1/article/list" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "source_ids" (List.map (fun x -> x)) source_ids in
    let uri = Request.add_query_param uri "lang" Enums.show_lang lang in
    let uri = Request.add_query_param_list uri "categories" (List.map Enums.show_categories) categories in
    let uri = Request.add_query_param_list uri "exclude_categories" (List.map Enums.show_categories) exclude_categories in
    let uri = Request.add_query_param uri "to_ts" Int32.to_string to_ts in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let news_v1_category_list () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/news/v1/category/list" in
    let headers = Request.default_headers in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

let news_v1_source_list ?(lang = `EN) ?(_type = `RSS) ?(status = `ACTIVE) () =
    let open Lwt.Infix in
    let uri = Request.build_uri "/news/v1/source/list" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param uri "lang" Enums.show_lang lang in
    let uri = Request.add_query_param uri "type" Enums.show_type_0 _type in
    let uri = Request.add_query_param uri "status" Enums.show_status status in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generic_response.of_yojson) resp body

