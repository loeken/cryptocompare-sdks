package org.openapitools.model;

import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTMARKETDATARESPONSEErr  {
  
  @ApiModelProperty(example = "Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST", value = "A message describing the error")
 /**
   * A message describing the error
  **/
  private String message;

  @ApiModelProperty(value = "")
  private SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo;

  @ApiModelProperty(example = "1", value = "A public facing error type. If you want to treat a specific error use the type.")
 /**
   * A public facing error type. If you want to treat a specific error use the type.
  **/
  private Integer type;
 /**
   * A message describing the error
   * @return message
  **/
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSEErr message(String message) {
    this.message = message;
    return this;
  }

 /**
   * Get otherInfo
   * @return otherInfo
  **/
  @JsonProperty("other_info")
  public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo getOtherInfo() {
    return otherInfo;
  }

  public void setOtherInfo(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo) {
    this.otherInfo = otherInfo;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSEErr otherInfo(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo) {
    this.otherInfo = otherInfo;
    return this;
  }

 /**
   * A public facing error type. If you want to treat a specific error use the type.
   * @return type
  **/
  @JsonProperty("type")
  public Integer getType() {
    return type;
  }

  public void setType(Integer type) {
    this.type = type;
  }

  public SPOTINSTRUMENTMARKETDATARESPONSEErr type(Integer type) {
    this.type = type;
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
    SPOTINSTRUMENTMARKETDATARESPONSEErr spOTINSTRUMENTMARKETDATARESPONSEErr = (SPOTINSTRUMENTMARKETDATARESPONSEErr) o;
    return Objects.equals(message, spOTINSTRUMENTMARKETDATARESPONSEErr.message) &&
        Objects.equals(otherInfo, spOTINSTRUMENTMARKETDATARESPONSEErr.otherInfo) &&
        Objects.equals(type, spOTINSTRUMENTMARKETDATARESPONSEErr.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(message, otherInfo, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTMARKETDATARESPONSEErr {\n");
    
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    otherInfo: ").append(toIndentedString(otherInfo)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

