(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The endpoint does not have a reponse defined *)
    no_data: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    no_data = None;
}
