(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val news_v1_article_list : ?source_ids:string list -> ?lang:Enums.lang -> ?categories:Enums.categories list -> ?exclude_categories:Enums.categories list -> ?to_ts:int32 -> unit -> Generic_response.t Lwt.t
val news_v1_category_list : unit -> Generic_response.t Lwt.t
val news_v1_source_list : ?lang:Enums.lang -> ?_type:Enums.type_0 -> ?status:Enums.status -> unit -> Generic_response.t Lwt.t
