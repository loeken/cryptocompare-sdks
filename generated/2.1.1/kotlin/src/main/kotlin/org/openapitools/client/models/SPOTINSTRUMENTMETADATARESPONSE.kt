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

import org.openapitools.client.models.SPOTINSTRUMENTMARKETDATARESPONSEErr
import org.openapitools.client.models.SPOTINSTRUMENTMETADATA

import com.squareup.moshi.Json

/**
 * 
 *
 * @param `data` 
 * @param err 
 */


data class SPOTINSTRUMENTMETADATARESPONSE (

    @Json(name = "Data")
    val `data`: kotlin.collections.Map<kotlin.String, SPOTINSTRUMENTMETADATA>? = null,

    @Json(name = "Err")
    val err: SPOTINSTRUMENTMARKETDATARESPONSEErr? = null

)

