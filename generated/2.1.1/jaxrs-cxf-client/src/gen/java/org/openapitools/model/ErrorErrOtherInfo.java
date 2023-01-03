package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ErrorErrOtherInfo  {
  
  @ApiModelProperty(example = "market", value = "The parameter that is resposible for the error")
 /**
   * The parameter that is resposible for the error
  **/
  private String param;

  @ApiModelProperty(example = "[\"test_market_does_not_exist\"]", value = "The values resposible for the error")
 /**
   * The values resposible for the error
  **/
  private List<String> values = null;
 /**
   * The parameter that is resposible for the error
   * @return param
  **/
  @JsonProperty("param")
  public String getParam() {
    return param;
  }

  public void setParam(String param) {
    this.param = param;
  }

  public ErrorErrOtherInfo param(String param) {
    this.param = param;
    return this;
  }

 /**
   * The values resposible for the error
   * @return values
  **/
  @JsonProperty("values")
  public List<String> getValues() {
    return values;
  }

  public void setValues(List<String> values) {
    this.values = values;
  }

  public ErrorErrOtherInfo values(List<String> values) {
    this.values = values;
    return this;
  }

  public ErrorErrOtherInfo addValuesItem(String valuesItem) {
    this.values.add(valuesItem);
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
    ErrorErrOtherInfo errorErrOtherInfo = (ErrorErrOtherInfo) o;
    return Objects.equals(param, errorErrOtherInfo.param) &&
        Objects.equals(values, errorErrOtherInfo.values);
  }

  @Override
  public int hashCode() {
    return Objects.hash(param, values);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ErrorErrOtherInfo {\n");
    
    sb.append("    param: ").append(toIndentedString(param)).append("\n");
    sb.append("    values: ").append(toIndentedString(values)).append("\n");
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

