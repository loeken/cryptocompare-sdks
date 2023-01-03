package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.SPOTINSTRUMENTHISTODATA;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTHISTODATARESPONSE  {
  
  @ApiModelProperty(value = "")
  private List<SPOTINSTRUMENTHISTODATA> data = null;

  @ApiModelProperty(value = "")
  private Object err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public List<SPOTINSTRUMENTHISTODATA> getData() {
    return data;
  }

  public void setData(List<SPOTINSTRUMENTHISTODATA> data) {
    this.data = data;
  }

  public SPOTINSTRUMENTHISTODATARESPONSE data(List<SPOTINSTRUMENTHISTODATA> data) {
    this.data = data;
    return this;
  }

  public SPOTINSTRUMENTHISTODATARESPONSE addDataItem(SPOTINSTRUMENTHISTODATA dataItem) {
    this.data.add(dataItem);
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

  public SPOTINSTRUMENTHISTODATARESPONSE err(Object err) {
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
    SPOTINSTRUMENTHISTODATARESPONSE SPOT_INSTRUMENT_HISTO_DATA_RESPONSE = (SPOTINSTRUMENTHISTODATARESPONSE) o;
    return Objects.equals(data, SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.data) &&
        Objects.equals(err, SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.err);
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

