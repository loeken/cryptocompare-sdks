/*
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

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import org.openapitools.client.model.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * SPOTINSTRUMENTMARKETDATARESPONSEErr
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-01-03T11:55:58.153362Z[Etc/UTC]")
public class SPOTINSTRUMENTMARKETDATARESPONSEErr {
  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_OTHER_INFO = "other_info";
  @SerializedName(SERIALIZED_NAME_OTHER_INFO)
  private SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private Integer type;

  public SPOTINSTRUMENTMARKETDATARESPONSEErr() {
  }

  public SPOTINSTRUMENTMARKETDATARESPONSEErr message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * A message describing the error
   * @return message
  **/
  @javax.annotation.Nullable

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public SPOTINSTRUMENTMARKETDATARESPONSEErr otherInfo(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo) {
    
    this.otherInfo = otherInfo;
    return this;
  }

   /**
   * Get otherInfo
   * @return otherInfo
  **/
  @javax.annotation.Nullable

  public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo getOtherInfo() {
    return otherInfo;
  }


  public void setOtherInfo(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo) {
    this.otherInfo = otherInfo;
  }


  public SPOTINSTRUMENTMARKETDATARESPONSEErr type(Integer type) {
    
    this.type = type;
    return this;
  }

   /**
   * A public facing error type. If you want to treat a specific error use the type.
   * @return type
  **/
  @javax.annotation.Nullable

  public Integer getType() {
    return type;
  }


  public void setType(Integer type) {
    this.type = type;
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
    return Objects.equals(this.message, spOTINSTRUMENTMARKETDATARESPONSEErr.message) &&
        Objects.equals(this.otherInfo, spOTINSTRUMENTMARKETDATARESPONSEErr.otherInfo) &&
        Objects.equals(this.type, spOTINSTRUMENTMARKETDATARESPONSEErr.type);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("message");
    openapiFields.add("other_info");
    openapiFields.add("type");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SPOTINSTRUMENTMARKETDATARESPONSEErr
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SPOTINSTRUMENTMARKETDATARESPONSEErr.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SPOTINSTRUMENTMARKETDATARESPONSEErr is not found in the empty JSON string", SPOTINSTRUMENTMARKETDATARESPONSEErr.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!SPOTINSTRUMENTMARKETDATARESPONSEErr.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SPOTINSTRUMENTMARKETDATARESPONSEErr` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("message") != null && !jsonObj.get("message").isJsonNull()) && !jsonObj.get("message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("message").toString()));
      }
      // validate the optional field `other_info`
      if (jsonObj.get("other_info") != null && !jsonObj.get("other_info").isJsonNull()) {
        SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.validateJsonObject(jsonObj.getAsJsonObject("other_info"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SPOTINSTRUMENTMARKETDATARESPONSEErr.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SPOTINSTRUMENTMARKETDATARESPONSEErr' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SPOTINSTRUMENTMARKETDATARESPONSEErr> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SPOTINSTRUMENTMARKETDATARESPONSEErr.class));

       return (TypeAdapter<T>) new TypeAdapter<SPOTINSTRUMENTMARKETDATARESPONSEErr>() {
           @Override
           public void write(JsonWriter out, SPOTINSTRUMENTMARKETDATARESPONSEErr value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SPOTINSTRUMENTMARKETDATARESPONSEErr read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
  * @throws IOException if the JSON string is invalid with respect to SPOTINSTRUMENTMARKETDATARESPONSEErr
  */
  public static SPOTINSTRUMENTMARKETDATARESPONSEErr fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SPOTINSTRUMENTMARKETDATARESPONSEErr.class);
  }

 /**
  * Convert an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

