
package org.openapitools.client.model


case class Error (
    _data: Option[Any],
    _err: Option[ErrorErr]
)
object Error {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
