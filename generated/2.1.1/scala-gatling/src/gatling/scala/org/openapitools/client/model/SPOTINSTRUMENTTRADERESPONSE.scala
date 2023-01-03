
package org.openapitools.client.model


case class SPOTINSTRUMENTTRADERESPONSE (
    _data: Option[List[SPOTINSTRUMENTTRADE]],
    _err: Option[Any]
)
object SPOTINSTRUMENTTRADERESPONSE {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
