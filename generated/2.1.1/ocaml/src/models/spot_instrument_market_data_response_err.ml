(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A message describing the error *)
    message: string option [@default None];
    other_info: Spot_instrument_market_data_response_err_other_info.t option [@default None];
    (* A public facing error type. If you want to treat a specific error use the type. *)
    _type: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    message = None;
    other_info = None;
    _type = None;
}
