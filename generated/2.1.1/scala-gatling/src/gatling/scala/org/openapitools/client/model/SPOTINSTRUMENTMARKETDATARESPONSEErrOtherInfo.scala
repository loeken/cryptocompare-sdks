
package org.openapitools.client.model


case class SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo (
    /* The parameter that is resposible for the error */
    _param: Option[String],
    /* The values resposible for the error */
    _values: Option[List[String]]
)
object SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo {
    def toStringBody(var_param: Object, var_values: Object) =
        s"""
        | {
        | "param":$var_param,"values":$var_values
        | }
        """.stripMargin
}
