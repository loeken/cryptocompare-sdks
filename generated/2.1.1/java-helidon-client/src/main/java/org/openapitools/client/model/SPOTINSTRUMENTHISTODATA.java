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




public class SPOTINSTRUMENTHISTODATA  {
  
 /**
   * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
  **/
  private String BASE;

 /**
   * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer CLOSE;

 /**
   * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer FIRST_TRADE_PRICE;

 /**
   * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
  **/
  private Integer FIRST_TRADE_TIMESTAMP;

 /**
   * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer HIGH;

 /**
   * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer HIGH_TRADE_PRICE;

 /**
   * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer HIGH_TRADE_TIMESTAMP;

 /**
   * The unmapped instrument ID
  **/
  private String INSTRUMENT;

 /**
   * The last trade price in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LAST_TRADE_PRICE;

 /**
   * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LAST_TRADE_TIMESTAMP;

 /**
   * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer LOW;

 /**
   * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LOW_TRADE_PRICE;

 /**
   * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LOW_TRADE_TIMESTAMP;

 /**
   * The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  **/
  private String MAPPED_INSTRUMENT;

 /**
   * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
  **/
  private String MARKET;

 /**
   * The open price for the historical period, this is based on the closest trade before the period start.
  **/
  private Integer OPEN;

 /**
   * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
  **/
  private String QUOTE;

 /**
   * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer QUOTE_VOLUME;

 /**
   * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_BUY;

 /**
   * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_SELL;

 /**
   * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_UNKNOWN;

 /**
   * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
  **/
  private Integer TIMESTAMP;

 /**
   * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES;

 /**
   * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_BUY;

 /**
   * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_SELL;

 /**
   * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_UNKNOWN;

 /**
   * The type of the message.
  **/
  private String TYPE;

 /**
   * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
  **/
  private String UNIT;

 /**
   * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer VOLUME;

 /**
   * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_BUY;

 /**
   * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_SELL;

 /**
   * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_UNKNOWN;

 /**
   * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
   * @return BASE
  **/
  public String getBASE() {
    return BASE;
  }

  /**
    * Set BASE
  **/
  public void setBASE(String BASE) {
    this.BASE = BASE;
  }

  public SPOTINSTRUMENTHISTODATA BASE(String BASE) {
    this.BASE = BASE;
    return this;
  }

 /**
   * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
   * @return CLOSE
  **/
  public Integer getCLOSE() {
    return CLOSE;
  }

  /**
    * Set CLOSE
  **/
  public void setCLOSE(Integer CLOSE) {
    this.CLOSE = CLOSE;
  }

  public SPOTINSTRUMENTHISTODATA CLOSE(Integer CLOSE) {
    this.CLOSE = CLOSE;
    return this;
  }

 /**
   * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
   * @return FIRST_TRADE_PRICE
  **/
  public Integer getFIRSTTRADEPRICE() {
    return FIRST_TRADE_PRICE;
  }

  /**
    * Set FIRST_TRADE_PRICE
  **/
  public void setFIRSTTRADEPRICE(Integer FIRST_TRADE_PRICE) {
    this.FIRST_TRADE_PRICE = FIRST_TRADE_PRICE;
  }

  public SPOTINSTRUMENTHISTODATA FIRST_TRADE_PRICE(Integer FIRST_TRADE_PRICE) {
    this.FIRST_TRADE_PRICE = FIRST_TRADE_PRICE;
    return this;
  }

 /**
   * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
   * @return FIRST_TRADE_TIMESTAMP
  **/
  public Integer getFIRSTTRADETIMESTAMP() {
    return FIRST_TRADE_TIMESTAMP;
  }

  /**
    * Set FIRST_TRADE_TIMESTAMP
  **/
  public void setFIRSTTRADETIMESTAMP(Integer FIRST_TRADE_TIMESTAMP) {
    this.FIRST_TRADE_TIMESTAMP = FIRST_TRADE_TIMESTAMP;
  }

  public SPOTINSTRUMENTHISTODATA FIRST_TRADE_TIMESTAMP(Integer FIRST_TRADE_TIMESTAMP) {
    this.FIRST_TRADE_TIMESTAMP = FIRST_TRADE_TIMESTAMP;
    return this;
  }

 /**
   * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
   * @return HIGH
  **/
  public Integer getHIGH() {
    return HIGH;
  }

  /**
    * Set HIGH
  **/
  public void setHIGH(Integer HIGH) {
    this.HIGH = HIGH;
  }

  public SPOTINSTRUMENTHISTODATA HIGH(Integer HIGH) {
    this.HIGH = HIGH;
    return this;
  }

 /**
   * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
   * @return HIGH_TRADE_PRICE
  **/
  public Integer getHIGHTRADEPRICE() {
    return HIGH_TRADE_PRICE;
  }

  /**
    * Set HIGH_TRADE_PRICE
  **/
  public void setHIGHTRADEPRICE(Integer HIGH_TRADE_PRICE) {
    this.HIGH_TRADE_PRICE = HIGH_TRADE_PRICE;
  }

  public SPOTINSTRUMENTHISTODATA HIGH_TRADE_PRICE(Integer HIGH_TRADE_PRICE) {
    this.HIGH_TRADE_PRICE = HIGH_TRADE_PRICE;
    return this;
  }

 /**
   * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
   * @return HIGH_TRADE_TIMESTAMP
  **/
  public Integer getHIGHTRADETIMESTAMP() {
    return HIGH_TRADE_TIMESTAMP;
  }

  /**
    * Set HIGH_TRADE_TIMESTAMP
  **/
  public void setHIGHTRADETIMESTAMP(Integer HIGH_TRADE_TIMESTAMP) {
    this.HIGH_TRADE_TIMESTAMP = HIGH_TRADE_TIMESTAMP;
  }

  public SPOTINSTRUMENTHISTODATA HIGH_TRADE_TIMESTAMP(Integer HIGH_TRADE_TIMESTAMP) {
    this.HIGH_TRADE_TIMESTAMP = HIGH_TRADE_TIMESTAMP;
    return this;
  }

 /**
   * The unmapped instrument ID
   * @return INSTRUMENT
  **/
  public String getINSTRUMENT() {
    return INSTRUMENT;
  }

  /**
    * Set INSTRUMENT
  **/
  public void setINSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
  }

  public SPOTINSTRUMENTHISTODATA INSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
    return this;
  }

 /**
   * The last trade price in the time period. This is only available when there is at least one trade in the time period.
   * @return LAST_TRADE_PRICE
  **/
  public Integer getLASTTRADEPRICE() {
    return LAST_TRADE_PRICE;
  }

  /**
    * Set LAST_TRADE_PRICE
  **/
  public void setLASTTRADEPRICE(Integer LAST_TRADE_PRICE) {
    this.LAST_TRADE_PRICE = LAST_TRADE_PRICE;
  }

  public SPOTINSTRUMENTHISTODATA LAST_TRADE_PRICE(Integer LAST_TRADE_PRICE) {
    this.LAST_TRADE_PRICE = LAST_TRADE_PRICE;
    return this;
  }

 /**
   * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
   * @return LAST_TRADE_TIMESTAMP
  **/
  public Integer getLASTTRADETIMESTAMP() {
    return LAST_TRADE_TIMESTAMP;
  }

  /**
    * Set LAST_TRADE_TIMESTAMP
  **/
  public void setLASTTRADETIMESTAMP(Integer LAST_TRADE_TIMESTAMP) {
    this.LAST_TRADE_TIMESTAMP = LAST_TRADE_TIMESTAMP;
  }

  public SPOTINSTRUMENTHISTODATA LAST_TRADE_TIMESTAMP(Integer LAST_TRADE_TIMESTAMP) {
    this.LAST_TRADE_TIMESTAMP = LAST_TRADE_TIMESTAMP;
    return this;
  }

 /**
   * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
   * @return LOW
  **/
  public Integer getLOW() {
    return LOW;
  }

  /**
    * Set LOW
  **/
  public void setLOW(Integer LOW) {
    this.LOW = LOW;
  }

  public SPOTINSTRUMENTHISTODATA LOW(Integer LOW) {
    this.LOW = LOW;
    return this;
  }

 /**
   * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
   * @return LOW_TRADE_PRICE
  **/
  public Integer getLOWTRADEPRICE() {
    return LOW_TRADE_PRICE;
  }

  /**
    * Set LOW_TRADE_PRICE
  **/
  public void setLOWTRADEPRICE(Integer LOW_TRADE_PRICE) {
    this.LOW_TRADE_PRICE = LOW_TRADE_PRICE;
  }

  public SPOTINSTRUMENTHISTODATA LOW_TRADE_PRICE(Integer LOW_TRADE_PRICE) {
    this.LOW_TRADE_PRICE = LOW_TRADE_PRICE;
    return this;
  }

 /**
   * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
   * @return LOW_TRADE_TIMESTAMP
  **/
  public Integer getLOWTRADETIMESTAMP() {
    return LOW_TRADE_TIMESTAMP;
  }

  /**
    * Set LOW_TRADE_TIMESTAMP
  **/
  public void setLOWTRADETIMESTAMP(Integer LOW_TRADE_TIMESTAMP) {
    this.LOW_TRADE_TIMESTAMP = LOW_TRADE_TIMESTAMP;
  }

  public SPOTINSTRUMENTHISTODATA LOW_TRADE_TIMESTAMP(Integer LOW_TRADE_TIMESTAMP) {
    this.LOW_TRADE_TIMESTAMP = LOW_TRADE_TIMESTAMP;
    return this;
  }

 /**
   * The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped.
   * @return MAPPED_INSTRUMENT
  **/
  public String getMAPPEDINSTRUMENT() {
    return MAPPED_INSTRUMENT;
  }

  /**
    * Set MAPPED_INSTRUMENT
  **/
  public void setMAPPEDINSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
  }

  public SPOTINSTRUMENTHISTODATA MAPPED_INSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
    return this;
  }

 /**
   * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
   * @return MARKET
  **/
  public String getMARKET() {
    return MARKET;
  }

  /**
    * Set MARKET
  **/
  public void setMARKET(String MARKET) {
    this.MARKET = MARKET;
  }

  public SPOTINSTRUMENTHISTODATA MARKET(String MARKET) {
    this.MARKET = MARKET;
    return this;
  }

 /**
   * The open price for the historical period, this is based on the closest trade before the period start.
   * @return OPEN
  **/
  public Integer getOPEN() {
    return OPEN;
  }

  /**
    * Set OPEN
  **/
  public void setOPEN(Integer OPEN) {
    this.OPEN = OPEN;
  }

  public SPOTINSTRUMENTHISTODATA OPEN(Integer OPEN) {
    this.OPEN = OPEN;
    return this;
  }

 /**
   * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
   * @return QUOTE
  **/
  public String getQUOTE() {
    return QUOTE;
  }

  /**
    * Set QUOTE
  **/
  public void setQUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
  }

  public SPOTINSTRUMENTHISTODATA QUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
    return this;
  }

 /**
   * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
   * @return QUOTE_VOLUME
  **/
  public Integer getQUOTEVOLUME() {
    return QUOTE_VOLUME;
  }

  /**
    * Set QUOTE_VOLUME
  **/
  public void setQUOTEVOLUME(Integer QUOTE_VOLUME) {
    this.QUOTE_VOLUME = QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTHISTODATA QUOTE_VOLUME(Integer QUOTE_VOLUME) {
    this.QUOTE_VOLUME = QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
   * @return QUOTE_VOLUME_BUY
  **/
  public Integer getQUOTEVOLUMEBUY() {
    return QUOTE_VOLUME_BUY;
  }

  /**
    * Set QUOTE_VOLUME_BUY
  **/
  public void setQUOTEVOLUMEBUY(Integer QUOTE_VOLUME_BUY) {
    this.QUOTE_VOLUME_BUY = QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTHISTODATA QUOTE_VOLUME_BUY(Integer QUOTE_VOLUME_BUY) {
    this.QUOTE_VOLUME_BUY = QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
   * @return QUOTE_VOLUME_SELL
  **/
  public Integer getQUOTEVOLUMESELL() {
    return QUOTE_VOLUME_SELL;
  }

  /**
    * Set QUOTE_VOLUME_SELL
  **/
  public void setQUOTEVOLUMESELL(Integer QUOTE_VOLUME_SELL) {
    this.QUOTE_VOLUME_SELL = QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTHISTODATA QUOTE_VOLUME_SELL(Integer QUOTE_VOLUME_SELL) {
    this.QUOTE_VOLUME_SELL = QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
   * @return QUOTE_VOLUME_UNKNOWN
  **/
  public Integer getQUOTEVOLUMEUNKNOWN() {
    return QUOTE_VOLUME_UNKNOWN;
  }

  /**
    * Set QUOTE_VOLUME_UNKNOWN
  **/
  public void setQUOTEVOLUMEUNKNOWN(Integer QUOTE_VOLUME_UNKNOWN) {
    this.QUOTE_VOLUME_UNKNOWN = QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTHISTODATA QUOTE_VOLUME_UNKNOWN(Integer QUOTE_VOLUME_UNKNOWN) {
    this.QUOTE_VOLUME_UNKNOWN = QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
   * @return TIMESTAMP
  **/
  public Integer getTIMESTAMP() {
    return TIMESTAMP;
  }

  /**
    * Set TIMESTAMP
  **/
  public void setTIMESTAMP(Integer TIMESTAMP) {
    this.TIMESTAMP = TIMESTAMP;
  }

  public SPOTINSTRUMENTHISTODATA TIMESTAMP(Integer TIMESTAMP) {
    this.TIMESTAMP = TIMESTAMP;
    return this;
  }

 /**
   * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   * @return TOTAL_TRADES
  **/
  public Integer getTOTALTRADES() {
    return TOTAL_TRADES;
  }

  /**
    * Set TOTAL_TRADES
  **/
  public void setTOTALTRADES(Integer TOTAL_TRADES) {
    this.TOTAL_TRADES = TOTAL_TRADES;
  }

  public SPOTINSTRUMENTHISTODATA TOTAL_TRADES(Integer TOTAL_TRADES) {
    this.TOTAL_TRADES = TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   * @return TOTAL_TRADES_BUY
  **/
  public Integer getTOTALTRADESBUY() {
    return TOTAL_TRADES_BUY;
  }

  /**
    * Set TOTAL_TRADES_BUY
  **/
  public void setTOTALTRADESBUY(Integer TOTAL_TRADES_BUY) {
    this.TOTAL_TRADES_BUY = TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTHISTODATA TOTAL_TRADES_BUY(Integer TOTAL_TRADES_BUY) {
    this.TOTAL_TRADES_BUY = TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   * @return TOTAL_TRADES_SELL
  **/
  public Integer getTOTALTRADESSELL() {
    return TOTAL_TRADES_SELL;
  }

  /**
    * Set TOTAL_TRADES_SELL
  **/
  public void setTOTALTRADESSELL(Integer TOTAL_TRADES_SELL) {
    this.TOTAL_TRADES_SELL = TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTHISTODATA TOTAL_TRADES_SELL(Integer TOTAL_TRADES_SELL) {
    this.TOTAL_TRADES_SELL = TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   * @return TOTAL_TRADES_UNKNOWN
  **/
  public Integer getTOTALTRADESUNKNOWN() {
    return TOTAL_TRADES_UNKNOWN;
  }

  /**
    * Set TOTAL_TRADES_UNKNOWN
  **/
  public void setTOTALTRADESUNKNOWN(Integer TOTAL_TRADES_UNKNOWN) {
    this.TOTAL_TRADES_UNKNOWN = TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTHISTODATA TOTAL_TRADES_UNKNOWN(Integer TOTAL_TRADES_UNKNOWN) {
    this.TOTAL_TRADES_UNKNOWN = TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The type of the message.
   * @return TYPE
  **/
  public String getTYPE() {
    return TYPE;
  }

  /**
    * Set TYPE
  **/
  public void setTYPE(String TYPE) {
    this.TYPE = TYPE;
  }

  public SPOTINSTRUMENTHISTODATA TYPE(String TYPE) {
    this.TYPE = TYPE;
    return this;
  }

 /**
   * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
   * @return UNIT
  **/
  public String getUNIT() {
    return UNIT;
  }

  /**
    * Set UNIT
  **/
  public void setUNIT(String UNIT) {
    this.UNIT = UNIT;
  }

  public SPOTINSTRUMENTHISTODATA UNIT(String UNIT) {
    this.UNIT = UNIT;
    return this;
  }

 /**
   * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
   * @return VOLUME
  **/
  public Integer getVOLUME() {
    return VOLUME;
  }

  /**
    * Set VOLUME
  **/
  public void setVOLUME(Integer VOLUME) {
    this.VOLUME = VOLUME;
  }

  public SPOTINSTRUMENTHISTODATA VOLUME(Integer VOLUME) {
    this.VOLUME = VOLUME;
    return this;
  }

 /**
   * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
   * @return VOLUME_BUY
  **/
  public Integer getVOLUMEBUY() {
    return VOLUME_BUY;
  }

  /**
    * Set VOLUME_BUY
  **/
  public void setVOLUMEBUY(Integer VOLUME_BUY) {
    this.VOLUME_BUY = VOLUME_BUY;
  }

  public SPOTINSTRUMENTHISTODATA VOLUME_BUY(Integer VOLUME_BUY) {
    this.VOLUME_BUY = VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
   * @return VOLUME_SELL
  **/
  public Integer getVOLUMESELL() {
    return VOLUME_SELL;
  }

  /**
    * Set VOLUME_SELL
  **/
  public void setVOLUMESELL(Integer VOLUME_SELL) {
    this.VOLUME_SELL = VOLUME_SELL;
  }

  public SPOTINSTRUMENTHISTODATA VOLUME_SELL(Integer VOLUME_SELL) {
    this.VOLUME_SELL = VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
   * @return VOLUME_UNKNOWN
  **/
  public Integer getVOLUMEUNKNOWN() {
    return VOLUME_UNKNOWN;
  }

  /**
    * Set VOLUME_UNKNOWN
  **/
  public void setVOLUMEUNKNOWN(Integer VOLUME_UNKNOWN) {
    this.VOLUME_UNKNOWN = VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTHISTODATA VOLUME_UNKNOWN(Integer VOLUME_UNKNOWN) {
    this.VOLUME_UNKNOWN = VOLUME_UNKNOWN;
    return this;
  }


  /**
    * Create a string representation of this pojo.
  **/
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTHISTODATA {\n");
    
    sb.append("    BASE: ").append(toIndentedString(BASE)).append("\n");
    sb.append("    CLOSE: ").append(toIndentedString(CLOSE)).append("\n");
    sb.append("    FIRST_TRADE_PRICE: ").append(toIndentedString(FIRST_TRADE_PRICE)).append("\n");
    sb.append("    FIRST_TRADE_TIMESTAMP: ").append(toIndentedString(FIRST_TRADE_TIMESTAMP)).append("\n");
    sb.append("    HIGH: ").append(toIndentedString(HIGH)).append("\n");
    sb.append("    HIGH_TRADE_PRICE: ").append(toIndentedString(HIGH_TRADE_PRICE)).append("\n");
    sb.append("    HIGH_TRADE_TIMESTAMP: ").append(toIndentedString(HIGH_TRADE_TIMESTAMP)).append("\n");
    sb.append("    INSTRUMENT: ").append(toIndentedString(INSTRUMENT)).append("\n");
    sb.append("    LAST_TRADE_PRICE: ").append(toIndentedString(LAST_TRADE_PRICE)).append("\n");
    sb.append("    LAST_TRADE_TIMESTAMP: ").append(toIndentedString(LAST_TRADE_TIMESTAMP)).append("\n");
    sb.append("    LOW: ").append(toIndentedString(LOW)).append("\n");
    sb.append("    LOW_TRADE_PRICE: ").append(toIndentedString(LOW_TRADE_PRICE)).append("\n");
    sb.append("    LOW_TRADE_TIMESTAMP: ").append(toIndentedString(LOW_TRADE_TIMESTAMP)).append("\n");
    sb.append("    MAPPED_INSTRUMENT: ").append(toIndentedString(MAPPED_INSTRUMENT)).append("\n");
    sb.append("    MARKET: ").append(toIndentedString(MARKET)).append("\n");
    sb.append("    OPEN: ").append(toIndentedString(OPEN)).append("\n");
    sb.append("    QUOTE: ").append(toIndentedString(QUOTE)).append("\n");
    sb.append("    QUOTE_VOLUME: ").append(toIndentedString(QUOTE_VOLUME)).append("\n");
    sb.append("    QUOTE_VOLUME_BUY: ").append(toIndentedString(QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    QUOTE_VOLUME_SELL: ").append(toIndentedString(QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    TIMESTAMP: ").append(toIndentedString(TIMESTAMP)).append("\n");
    sb.append("    TOTAL_TRADES: ").append(toIndentedString(TOTAL_TRADES)).append("\n");
    sb.append("    TOTAL_TRADES_BUY: ").append(toIndentedString(TOTAL_TRADES_BUY)).append("\n");
    sb.append("    TOTAL_TRADES_SELL: ").append(toIndentedString(TOTAL_TRADES_SELL)).append("\n");
    sb.append("    TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    TYPE: ").append(toIndentedString(TYPE)).append("\n");
    sb.append("    UNIT: ").append(toIndentedString(UNIT)).append("\n");
    sb.append("    VOLUME: ").append(toIndentedString(VOLUME)).append("\n");
    sb.append("    VOLUME_BUY: ").append(toIndentedString(VOLUME_BUY)).append("\n");
    sb.append("    VOLUME_SELL: ").append(toIndentedString(VOLUME_SELL)).append("\n");
    sb.append("    VOLUME_UNKNOWN: ").append(toIndentedString(VOLUME_UNKNOWN)).append("\n");
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

