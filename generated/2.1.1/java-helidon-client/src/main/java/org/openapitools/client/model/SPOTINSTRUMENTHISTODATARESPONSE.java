/**
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

package org.openapitools.client.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.SPOTINSTRUMENTHISTODATA;




public class SPOTINSTRUMENTHISTODATARESPONSE  {
  
  private List<SPOTINSTRUMENTHISTODATA> data = null;

  private Object err;

 /**
   * Get data
   * @return data
  **/
  public List<SPOTINSTRUMENTHISTODATA> getData() {
    return data;
  }

  /**
    * Set data
  **/
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
  public Object getErr() {
    return err;
  }

  /**
    * Set err
  **/
  public void setErr(Object err) {
    this.err = err;
  }

  public SPOTINSTRUMENTHISTODATARESPONSE err(Object err) {
    this.err = err;
    return this;
  }


  /**
    * Create a string representation of this pojo.
  **/
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

