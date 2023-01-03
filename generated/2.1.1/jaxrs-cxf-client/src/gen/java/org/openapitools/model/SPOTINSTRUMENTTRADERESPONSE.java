package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.SPOTINSTRUMENTTRADE;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTTRADERESPONSE  {
  
  @ApiModelProperty(value = "")
  private List<SPOTINSTRUMENTTRADE> data = null;

  @ApiModelProperty(value = "")
  private Object err;
 /**
   * Get data
   * @return data
  **/
  @JsonProperty("Data")
  public List<SPOTINSTRUMENTTRADE> getData() {
    return data;
  }

  public void setData(List<SPOTINSTRUMENTTRADE> data) {
    this.data = data;
  }

  public SPOTINSTRUMENTTRADERESPONSE data(List<SPOTINSTRUMENTTRADE> data) {
    this.data = data;
    return this;
  }

  public SPOTINSTRUMENTTRADERESPONSE addDataItem(SPOTINSTRUMENTTRADE dataItem) {
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

  public SPOTINSTRUMENTTRADERESPONSE err(Object err) {
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
    SPOTINSTRUMENTTRADERESPONSE SPOT_INSTRUMENT_TRADE_RESPONSE = (SPOTINSTRUMENTTRADERESPONSE) o;
    return Objects.equals(data, SPOT_INSTRUMENT_TRADE_RESPONSE.data) &&
        Objects.equals(err, SPOT_INSTRUMENT_TRADE_RESPONSE.err);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, err);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTTRADERESPONSE {\n");
    
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

