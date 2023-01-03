package org.openapitools.model;

import org.openapitools.model.GENERICRESPONSEData;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GENERICRESPONSE  {
  
  @ApiModelProperty(value = "")
  private GENERICRESPONSEData data;

  @ApiModelProperty(value = "")
  private Object err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public GENERICRESPONSEData getData() {
    return data;
  }

  public void setData(GENERICRESPONSEData data) {
    this.data = data;
  }

  public GENERICRESPONSE data(GENERICRESPONSEData data) {
    this.data = data;
    return this;
  }

 /**
   * Get err
   * @return err
  **/
  @JsonProperty("Err")
  public Object getErr() {
    return err;
  }

  public void setErr(Object err) {
    this.err = err;
  }

  public GENERICRESPONSE err(Object err) {
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
    GENERICRESPONSE GENERIC_RESPONSE = (GENERICRESPONSE) o;
    return Objects.equals(data, GENERIC_RESPONSE.data) &&
        Objects.equals(err, GENERIC_RESPONSE.err);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, err);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GENERICRESPONSE {\n");
    
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

