/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json

/**
 * 
 *
 * @param `param` The parameter that is resposible for the error
 * @param propertyValues The values resposible for the error
 */


data class ErrorErrOtherInfo (

    /* The parameter that is resposible for the error */
    @Json(name = "param")
    val `param`: kotlin.String? = null,

    /* The values resposible for the error */
    @Json(name = "values")
    val propertyValues: kotlin.collections.List<kotlin.String>? = null

)
