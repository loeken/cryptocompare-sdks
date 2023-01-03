package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSEErr;
import org.openapitools.model.SPOTINSTRUMENTMETADATA;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTMETADATARESPONSE  {
  
  @ApiModelProperty(value = "")
  private Map<String, SPOTINSTRUMENTMETADATA> data = null;

  @ApiModelProperty(value = "")
  private SPOTINSTRUMENTMARKETDATARESPONSEErr err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public Map<String, SPOTINSTRUMENTMETADATA> getData() {
    return data;
  }

  public void setData(Map<String, SPOTINSTRUMENTMETADATA> data) {
    this.data = data;
  }

  public SPOTINSTRUMENTMETADATARESPONSE data(Map<String, SPOTINSTRUMENTMETADATA> data) {
    this.data = data;
    return this;
  }

  public SPOTINSTRUMENTMETADATARESPONSE putDataItem(String key, SPOTINSTRUMENTMETADATA dataItem) {
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

  public SPOTINSTRUMENTMETADATARESPONSE err(SPOTINSTRUMENTMARKETDATARESPONSEErr err) {
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
    SPOTINSTRUMENTMETADATARESPONSE SPOT_INSTRUMENT_METADATA_RESPONSE = (SPOTINSTRUMENTMETADATARESPONSE) o;
    return Objects.equals(data, SPOT_INSTRUMENT_METADATA_RESPONSE.data) &&
        Objects.equals(err, SPOT_INSTRUMENT_METADATA_RESPONSE.err);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, err);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTMETADATARESPONSE {\n");
    
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

