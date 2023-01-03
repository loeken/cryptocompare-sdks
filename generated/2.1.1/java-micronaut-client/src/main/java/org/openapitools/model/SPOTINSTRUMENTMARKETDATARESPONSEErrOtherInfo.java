/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import com.fasterxml.jackson.annotation.JsonTypeName;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
 */
@JsonPropertyOrder({
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.JSON_PROPERTY_PARAM,
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.JSON_PROPERTY_VALUES
})
@JsonTypeName("SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2023-01-03T11:56:05.409869Z[Etc/UTC]")
@Introspected
public class SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo {
    public static final String JSON_PROPERTY_PARAM = "param";
    private String param;

    public static final String JSON_PROPERTY_VALUES = "values";
    private List<String> values = null;

    public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo() {
    }

    public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo param(String param) {
        this.param = param;
        return this;
    }

    /**
     * The parameter that is resposible for the error
     * @return param
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PARAM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getParam() {
        return param;
    }

    @JsonProperty(JSON_PROPERTY_PARAM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setParam(String param) {
        this.param = param;
    }

    public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo values(List<String> values) {
        this.values = values;
        return this;
    }

    public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo addValuesItem(String valuesItem) {
        if (this.values == null) {
            this.values = new ArrayList<>();
        }
        this.values.add(valuesItem);
        return this;
    }

    /**
     * The values resposible for the error
     * @return values
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_VALUES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<String> getValues() {
        return values;
    }

    @JsonProperty(JSON_PROPERTY_VALUES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setValues(List<String> values) {
        this.values = values;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo spOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo = (SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo) o;
        return Objects.equals(this.param, spOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.param) &&
            Objects.equals(this.values, spOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.values);
    }

    @Override
    public int hashCode() {
        return Objects.hash(param, values);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo {\n");
        sb.append("    param: ").append(toIndentedString(param)).append("\n");
        sb.append("    values: ").append(toIndentedString(values)).append("\n");
        sb.append("}");
        return sb.toString();
    }

    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
     */
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}
