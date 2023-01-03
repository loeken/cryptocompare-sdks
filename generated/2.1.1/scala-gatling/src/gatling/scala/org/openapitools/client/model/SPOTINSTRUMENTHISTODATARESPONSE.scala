
package org.openapitools.client.model


case class SPOTINSTRUMENTHISTODATARESPONSE (
    _data: Option[List[SPOTINSTRUMENTHISTODATA]],
    _err: Option[Any]
)
object SPOTINSTRUMENTHISTODATARESPONSE {
    def toStringBody(var_data: Object, var_err: Object) =
        s"""
        | {
        | "data":$var_data,"err":$var_err
        | }
        """.stripMargin
}
