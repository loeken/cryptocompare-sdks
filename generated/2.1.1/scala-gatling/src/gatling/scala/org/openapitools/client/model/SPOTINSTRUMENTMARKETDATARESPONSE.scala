
package org.openapitools.client.model


case class SPOTINSTRUMENTMARKETDATARESPONSE (
    _data: Option[Map[String, SPOTINSTRUMENTMARKETDATA]],
    _err: Option[SPOTINSTRUMENTMARKETDATARESPONSEErr]
)
object SPOTINSTRUMENTMARKETDATARESPONSE {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
