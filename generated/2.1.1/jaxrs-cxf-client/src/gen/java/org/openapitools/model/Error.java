package org.openapitools.model;

import org.openapitools.model.ErrorErr;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Error  {
  
  @ApiModelProperty(value = "")
  private Object data;

  @ApiModelProperty(value = "")
  private ErrorErr err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public Object getData() {
    return data;
  }

  public void setData(Object data) {
    this.data = data;
  }

  public Error data(Object data) {
    this.data = data;
    return this;
  }

 /**
   * Get err
   * @return err
  **/
  @JsonProperty("Err")
  public ErrorErr getErr() {
    return err;
  }

  public void setErr(ErrorErr err) {
    this.err = err;
  }

  public Error err(ErrorErr err) {
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
    Error error = (Error) o;
    return Objects.equals(data, error.data) &&
        Objects.equals(err, error.err);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, err);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Error {\n");
    
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

