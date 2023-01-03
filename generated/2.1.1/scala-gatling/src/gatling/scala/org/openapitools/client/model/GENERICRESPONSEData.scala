
package org.openapitools.client.model


case class GENERICRESPONSEData (
    /* The endpoint does not have a reponse defined */
    _NO_DATA: Option[String]
)
object GENERICRESPONSEData {
    def toStringBody(var_NO_DATA: Object) =
        s"""
        | {
        | "NO_DATA":$var_NO_DATA
        | }
        """.stripMargin
}
