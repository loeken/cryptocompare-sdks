(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    data: (string * Spot_instrument_metadata.t) list;
    err: Spot_instrument_market_data_response_err.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    data = [];
    err = None;
}
