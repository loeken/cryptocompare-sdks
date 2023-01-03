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
import org.openapitools.model.SPOTINSTRUMENTHISTODATA;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * SPOTINSTRUMENTHISTODATARESPONSE
 */
@JsonPropertyOrder({
  SPOTINSTRUMENTHISTODATARESPONSE.JSON_PROPERTY_DATA,
  SPOTINSTRUMENTHISTODATARESPONSE.JSON_PROPERTY_ERR
})
@JsonTypeName("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2023-01-03T11:56:05.409869Z[Etc/UTC]")
@Introspected
public class SPOTINSTRUMENTHISTODATARESPONSE {
    public static final String JSON_PROPERTY_DATA = "Data";
    private List<SPOTINSTRUMENTHISTODATA> data = null;

    public static final String JSON_PROPERTY_ERR = "Err";
    private Object err;

    public SPOTINSTRUMENTHISTODATARESPONSE() {
    }

    public SPOTINSTRUMENTHISTODATARESPONSE data(List<SPOTINSTRUMENTHISTODATA> data) {
        this.data = data;
        return this;
    }

    public SPOTINSTRUMENTHISTODATARESPONSE addDataItem(SPOTINSTRUMENTHISTODATA dataItem) {
        if (this.data == null) {
            this.data = new ArrayList<>();
        }
        this.data.add(dataItem);
        return this;
    }

    /**
     * Get data
     * @return data
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_DATA)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<SPOTINSTRUMENTHISTODATA> getData() {
        return data;
    }

    @JsonProperty(JSON_PROPERTY_DATA)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setData(List<SPOTINSTRUMENTHISTODATA> data) {
        this.data = data;
    }

    public SPOTINSTRUMENTHISTODATARESPONSE err(Object err) {
        this.err = err;
        return this;
    }

    /**
     * Get err
     * @return err
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ERR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Object getErr() {
        return err;
    }

    @JsonProperty(JSON_PROPERTY_ERR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setErr(Object err) {
        this.err = err;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SPOTINSTRUMENTHISTODATARESPONSE SPOT_INSTRUMENT_HISTO_DATA_RESPONSE = (SPOTINSTRUMENTHISTODATARESPONSE) o;
        return Objects.equals(this.data, SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.data) &&
            Objects.equals(this.err, SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.err);
    }

    @Override
    public int hashCode() {
        return Objects.hash(data, err);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class SPOTINSTRUMENTHISTODATARESPONSE {\n");
        sb.append("    data: ").append(toIndentedString(data)).append("\n");
        sb.append("    err: ").append(toIndentedString(err)).append("\n");
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