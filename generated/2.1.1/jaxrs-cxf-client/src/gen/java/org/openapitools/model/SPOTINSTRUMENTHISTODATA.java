package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTHISTODATA  {
  
  @ApiModelProperty(value = "The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.")
 /**
   * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
  **/
  private String BASE;

  @ApiModelProperty(value = "The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.")
 /**
   * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer CLOSE;

  @ApiModelProperty(value = "The price of the first trade in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer FIRST_TRADE_PRICE;

  @ApiModelProperty(value = "The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.")
 /**
   * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
  **/
  private Integer FIRST_TRADE_TIMESTAMP;

  @ApiModelProperty(value = "The highest trade price in the time period. If there were no trades in the time period, the open price will be given.")
 /**
   * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer HIGH;

  @ApiModelProperty(value = "The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer HIGH_TRADE_PRICE;

  @ApiModelProperty(value = "The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer HIGH_TRADE_TIMESTAMP;

  @ApiModelProperty(value = "The unmapped instrument ID")
 /**
   * The unmapped instrument ID
  **/
  private String INSTRUMENT;

  @ApiModelProperty(value = "The last trade price in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The last trade price in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LAST_TRADE_PRICE;

  @ApiModelProperty(value = "The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.")
 /**
   * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LAST_TRADE_TIMESTAMP;

  @ApiModelProperty(value = "The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.")
 /**
   * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
  **/
  private Integer LOW;

  @ApiModelProperty(value = "The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LOW_TRADE_PRICE;

  @ApiModelProperty(value = "The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.")
 /**
   * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
  **/
  private Integer LOW_TRADE_TIMESTAMP;

  @ApiModelProperty(value = "The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.")
 /**
   * The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  **/
  private String MAPPED_INSTRUMENT;

  @ApiModelProperty(value = "The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).")
 /**
   * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
  **/
  private String MARKET;

  @ApiModelProperty(value = "The open price for the historical period, this is based on the closest trade before the period start.")
 /**
   * The open price for the historical period, this is based on the closest trade before the period start.
  **/
  private Integer OPEN;

  @ApiModelProperty(value = "The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.")
 /**
   * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
  **/
  private String QUOTE;

  @ApiModelProperty(value = "The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.")
 /**
   * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.")
 /**
   * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.")
 /**
   * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
  **/
  private Integer QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.")
 /**
   * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
  **/
  private Integer TIMESTAMP;

  @ApiModelProperty(value = "The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The type of the message.")
 /**
   * The type of the message.
  **/
  private String TYPE;

  @ApiModelProperty(value = "The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.")
 /**
   * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
  **/
  private String UNIT;

  @ApiModelProperty(value = "The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.")
 /**
   * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
  **/
  private Integer VOLUME;

  @ApiModelProperty(value = "The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.")
 /**
   * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.")
 /**
   * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.")
 /**
   * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
  **/
  private Integer VOLUME_UNKNOWN;
 /**
   * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
   * @return BASE
  **/
  @JsonProperty("BASE")
  public String getBASE() {
    return BASE;
  }

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
  @JsonProperty("CLOSE")
  public Integer getCLOSE() {
    return CLOSE;
  }

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
  @JsonProperty("FIRST_TRADE_PRICE")
  public Integer getFIRSTTRADEPRICE() {
    return FIRST_TRADE_PRICE;
  }

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
  @JsonProperty("FIRST_TRADE_TIMESTAMP")
  public Integer getFIRSTTRADETIMESTAMP() {
    return FIRST_TRADE_TIMESTAMP;
  }

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
  @JsonProperty("HIGH")
  public Integer getHIGH() {
    return HIGH;
  }

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
  @JsonProperty("HIGH_TRADE_PRICE")
  public Integer getHIGHTRADEPRICE() {
    return HIGH_TRADE_PRICE;
  }

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
  @JsonProperty("HIGH_TRADE_TIMESTAMP")
  public Integer getHIGHTRADETIMESTAMP() {
    return HIGH_TRADE_TIMESTAMP;
  }

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
  @JsonProperty("INSTRUMENT")
  public String getINSTRUMENT() {
    return INSTRUMENT;
  }

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
  @JsonProperty("LAST_TRADE_PRICE")
  public Integer getLASTTRADEPRICE() {
    return LAST_TRADE_PRICE;
  }

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
  @JsonProperty("LAST_TRADE_TIMESTAMP")
  public Integer getLASTTRADETIMESTAMP() {
    return LAST_TRADE_TIMESTAMP;
  }

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
  @JsonProperty("LOW")
  public Integer getLOW() {
    return LOW;
  }

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
  @JsonProperty("LOW_TRADE_PRICE")
  public Integer getLOWTRADEPRICE() {
    return LOW_TRADE_PRICE;
  }

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
  @JsonProperty("LOW_TRADE_TIMESTAMP")
  public Integer getLOWTRADETIMESTAMP() {
    return LOW_TRADE_TIMESTAMP;
  }

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
  @JsonProperty("MAPPED_INSTRUMENT")
  public String getMAPPEDINSTRUMENT() {
    return MAPPED_INSTRUMENT;
  }

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
  @JsonProperty("MARKET")
  public String getMARKET() {
    return MARKET;
  }

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
  @JsonProperty("OPEN")
  public Integer getOPEN() {
    return OPEN;
  }

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
  @JsonProperty("QUOTE")
  public String getQUOTE() {
    return QUOTE;
  }

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
  @JsonProperty("QUOTE_VOLUME")
  public Integer getQUOTEVOLUME() {
    return QUOTE_VOLUME;
  }

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
  @JsonProperty("QUOTE_VOLUME_BUY")
  public Integer getQUOTEVOLUMEBUY() {
    return QUOTE_VOLUME_BUY;
  }

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
  @JsonProperty("QUOTE_VOLUME_SELL")
  public Integer getQUOTEVOLUMESELL() {
    return QUOTE_VOLUME_SELL;
  }

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
  @JsonProperty("QUOTE_VOLUME_UNKNOWN")
  public Integer getQUOTEVOLUMEUNKNOWN() {
    return QUOTE_VOLUME_UNKNOWN;
  }

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
  @JsonProperty("TIMESTAMP")
  public Integer getTIMESTAMP() {
    return TIMESTAMP;
  }

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
  @JsonProperty("TOTAL_TRADES")
  public Integer getTOTALTRADES() {
    return TOTAL_TRADES;
  }

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
  @JsonProperty("TOTAL_TRADES_BUY")
  public Integer getTOTALTRADESBUY() {
    return TOTAL_TRADES_BUY;
  }

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
  @JsonProperty("TOTAL_TRADES_SELL")
  public Integer getTOTALTRADESSELL() {
    return TOTAL_TRADES_SELL;
  }

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
  @JsonProperty("TOTAL_TRADES_UNKNOWN")
  public Integer getTOTALTRADESUNKNOWN() {
    return TOTAL_TRADES_UNKNOWN;
  }

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
  @JsonProperty("TYPE")
  public String getTYPE() {
    return TYPE;
  }

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
  @JsonProperty("UNIT")
  public String getUNIT() {
    return UNIT;
  }

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
  @JsonProperty("VOLUME")
  public Integer getVOLUME() {
    return VOLUME;
  }

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
  @JsonProperty("VOLUME_BUY")
  public Integer getVOLUMEBUY() {
    return VOLUME_BUY;
  }

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
  @JsonProperty("VOLUME_SELL")
  public Integer getVOLUMESELL() {
    return VOLUME_SELL;
  }

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
  @JsonProperty("VOLUME_UNKNOWN")
  public Integer getVOLUMEUNKNOWN() {
    return VOLUME_UNKNOWN;
  }

  public void setVOLUMEUNKNOWN(Integer VOLUME_UNKNOWN) {
    this.VOLUME_UNKNOWN = VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTHISTODATA VOLUME_UNKNOWN(Integer VOLUME_UNKNOWN) {
    this.VOLUME_UNKNOWN = VOLUME_UNKNOWN;
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
    SPOTINSTRUMENTHISTODATA SPOT_INSTRUMENT_HISTO_DATA = (SPOTINSTRUMENTHISTODATA) o;
    return Objects.equals(BASE, SPOT_INSTRUMENT_HISTO_DATA.BASE) &&
        Objects.equals(CLOSE, SPOT_INSTRUMENT_HISTO_DATA.CLOSE) &&
        Objects.equals(FIRST_TRADE_PRICE, SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_PRICE) &&
        Objects.equals(FIRST_TRADE_TIMESTAMP, SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_TIMESTAMP) &&
        Objects.equals(HIGH, SPOT_INSTRUMENT_HISTO_DATA.HIGH) &&
        Objects.equals(HIGH_TRADE_PRICE, SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_PRICE) &&
        Objects.equals(HIGH_TRADE_TIMESTAMP, SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_TIMESTAMP) &&
        Objects.equals(INSTRUMENT, SPOT_INSTRUMENT_HISTO_DATA.INSTRUMENT) &&
        Objects.equals(LAST_TRADE_PRICE, SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_PRICE) &&
        Objects.equals(LAST_TRADE_TIMESTAMP, SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_TIMESTAMP) &&
        Objects.equals(LOW, SPOT_INSTRUMENT_HISTO_DATA.LOW) &&
        Objects.equals(LOW_TRADE_PRICE, SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_PRICE) &&
        Objects.equals(LOW_TRADE_TIMESTAMP, SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_TIMESTAMP) &&
        Objects.equals(MAPPED_INSTRUMENT, SPOT_INSTRUMENT_HISTO_DATA.MAPPED_INSTRUMENT) &&
        Objects.equals(MARKET, SPOT_INSTRUMENT_HISTO_DATA.MARKET) &&
        Objects.equals(OPEN, SPOT_INSTRUMENT_HISTO_DATA.OPEN) &&
        Objects.equals(QUOTE, SPOT_INSTRUMENT_HISTO_DATA.QUOTE) &&
        Objects.equals(QUOTE_VOLUME, SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME) &&
        Objects.equals(QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_BUY) &&
        Objects.equals(QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_SELL) &&
        Objects.equals(QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(TIMESTAMP, SPOT_INSTRUMENT_HISTO_DATA.TIMESTAMP) &&
        Objects.equals(TOTAL_TRADES, SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES) &&
        Objects.equals(TOTAL_TRADES_BUY, SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_BUY) &&
        Objects.equals(TOTAL_TRADES_SELL, SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_SELL) &&
        Objects.equals(TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(TYPE, SPOT_INSTRUMENT_HISTO_DATA.TYPE) &&
        Objects.equals(UNIT, SPOT_INSTRUMENT_HISTO_DATA.UNIT) &&
        Objects.equals(VOLUME, SPOT_INSTRUMENT_HISTO_DATA.VOLUME) &&
        Objects.equals(VOLUME_BUY, SPOT_INSTRUMENT_HISTO_DATA.VOLUME_BUY) &&
        Objects.equals(VOLUME_SELL, SPOT_INSTRUMENT_HISTO_DATA.VOLUME_SELL) &&
        Objects.equals(VOLUME_UNKNOWN, SPOT_INSTRUMENT_HISTO_DATA.VOLUME_UNKNOWN);
  }

  @Override
  public int hashCode() {
    return Objects.hash(BASE, CLOSE, FIRST_TRADE_PRICE, FIRST_TRADE_TIMESTAMP, HIGH, HIGH_TRADE_PRICE, HIGH_TRADE_TIMESTAMP, INSTRUMENT, LAST_TRADE_PRICE, LAST_TRADE_TIMESTAMP, LOW, LOW_TRADE_PRICE, LOW_TRADE_TIMESTAMP, MAPPED_INSTRUMENT, MARKET, OPEN, QUOTE, QUOTE_VOLUME, QUOTE_VOLUME_BUY, QUOTE_VOLUME_SELL, QUOTE_VOLUME_UNKNOWN, TIMESTAMP, TOTAL_TRADES, TOTAL_TRADES_BUY, TOTAL_TRADES_SELL, TOTAL_TRADES_UNKNOWN, TYPE, UNIT, VOLUME, VOLUME_BUY, VOLUME_SELL, VOLUME_UNKNOWN);
  }

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

