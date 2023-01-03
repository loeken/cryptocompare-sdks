
package org.openapitools.client.model


case class GENERICRESPONSE (
    _data: Option[GENERICRESPONSEData],
    _err: Option[Any]
)
object GENERICRESPONSE {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
