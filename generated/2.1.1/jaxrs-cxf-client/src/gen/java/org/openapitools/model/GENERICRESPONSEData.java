package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GENERICRESPONSEData  {
  
  @ApiModelProperty(example = "Please add a ResponseObject on the endpoint!", value = "The endpoint does not have a reponse defined")
 /**
   * The endpoint does not have a reponse defined
  **/
  private String NO_DATA;
 /**
   * The endpoint does not have a reponse defined
   * @return NO_DATA
  **/
  @JsonProperty("NO_DATA")
  public String getNODATA() {
    return NO_DATA;
  }

  public void setNODATA(String NO_DATA) {
    this.NO_DATA = NO_DATA;
  }

  public GENERICRESPONSEData NO_DATA(String NO_DATA) {
    this.NO_DATA = NO_DATA;
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
    GENERICRESPONSEData geNERICRESPONSEData = (GENERICRESPONSEData) o;
    return Objects.equals(NO_DATA, geNERICRESPONSEData.NO_DATA);
  }

  @Override
  public int hashCode() {
    return Objects.hash(NO_DATA);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GENERICRESPONSEData {\n");
    
    sb.append("    NO_DATA: ").append(toIndentedString(NO_DATA)).append("\n");
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

