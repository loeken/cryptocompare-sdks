(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    data: Generic_response_data.t option [@default None];
    err: Yojson.Safe.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    data = None;
    err = None;
}

