
package org.openapitools.client.model


case class SPOTINSTRUMENTMARKETDATARESPONSEErr (
    /* A message describing the error */
    _message: Option[String],
    _otherInfo: Option[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo],
    /* A public facing error type. If you want to treat a specific error use the type. */
    _type: Option[Integer]
)
object SPOTINSTRUMENTMARKETDATARESPONSEErr {
    def toStringBody(var_message: Object, var_otherInfo: Object, var_type: Object) =
        s"""
        | {
        | "message":$var_message,"otherInfo":$var_otherInfo,"type":$var_type
        | }
        """.stripMargin
}
