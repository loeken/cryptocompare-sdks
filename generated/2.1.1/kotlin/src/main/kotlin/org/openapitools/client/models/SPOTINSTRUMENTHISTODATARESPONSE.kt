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

import org.openapitools.client.models.SPOTINSTRUMENTHISTODATA

import com.squareup.moshi.Json

/**
 * 
 *
 * @param `data` 
 * @param err 
 */


data class SPOTINSTRUMENTHISTODATARESPONSE (

    @Json(name = "Data")
    val `data`: kotlin.collections.List<SPOTINSTRUMENTHISTODATA>? = null,

    @Json(name = "Err")
    val err: kotlin.Any? = null

)

