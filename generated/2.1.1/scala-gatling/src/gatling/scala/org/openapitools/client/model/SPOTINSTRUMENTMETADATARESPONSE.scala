
package org.openapitools.client.model


case class SPOTINSTRUMENTMETADATARESPONSE (
    _data: Option[Map[String, SPOTINSTRUMENTMETADATA]],
    _err: Option[SPOTINSTRUMENTMARKETDATARESPONSEErr]
)
object SPOTINSTRUMENTMETADATARESPONSE {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
