package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATA;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSEErr;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTMARKETDATARESPONSE  {
  
  @ApiModelProperty(value = "")
  private Map<String, SPOTINSTRUMENTMARKETDATA> data = null;

  @ApiModelProperty(value = "")
  private SPOTINSTRUMENTMARKETDATARESPONSEErr err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public Map<String, SPOTINSTRUMENTMARKETDATA> getData() {
    return data;
  }

  public void setData(Map<String, SPOTINSTRUMENTMARKETDATA> data) {
    this.data = data;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSE data(Map<String, SPOTINSTRUMENTMARKETDATA> data) {
    this.data = data;
    return this;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSE putDataItem(String key, SPOTINSTRUMENTMARKETDATA dataItem) {
    this.data.put(key, dataItem);
    return this;
  }

 /**
   * Get err
   * @return err
  **/
  @JsonProperty("Err")
  public SPOTINSTRUMENTMARKETDATARESPONSEErr getErr() {
    return err;
  }

  public void setErr(SPOTINSTRUMENTMARKETDATARESPONSEErr err) {
    this.err = err;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSE err(SPOTINSTRUMENTMARKETDATARESPONSEErr err) {
    this.err = err;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SPOTINSTRUMENTMARKETDATARESPONSE SPOT_INSTRUMENT_MARKET_DATA_RESPONSE = (SPOTINSTRUMENTMARKETDATARESPONSE) o;
    return Objects.equals(data, SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.data) &&
        Objects.equals(err, SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.err);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, err);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTMARKETDATARESPONSE {\n");
    
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    err: ").append(toIndentedString(err)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

