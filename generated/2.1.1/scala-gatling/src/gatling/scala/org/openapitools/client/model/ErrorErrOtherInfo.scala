
package org.openapitools.client.model


case class ErrorErrOtherInfo (
    /* The parameter that is resposible for the error */
    _param: Option[String],
    /* The values resposible for the error */
    _values: Option[List[String]]
)
object ErrorErrOtherInfo {
    def toStringBody(var_param: Object, var_values: Object) =
        s"""
        | {
        | "param":$var_param,"values":$var_values
        | }
        """.stripMargin
}
