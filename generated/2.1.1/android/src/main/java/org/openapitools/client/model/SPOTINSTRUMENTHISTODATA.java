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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SPOTINSTRUMENTHISTODATA {
  
  @SerializedName("BASE")
  private String BASE = null;
  @SerializedName("CLOSE")
  private Integer CLOSE = null;
  @SerializedName("FIRST_TRADE_PRICE")
  private Integer FIRST_TRADE_PRICE = null;
  @SerializedName("FIRST_TRADE_TIMESTAMP")
  private Integer FIRST_TRADE_TIMESTAMP = null;
  @SerializedName("HIGH")
  private Integer HIGH = null;
  @SerializedName("HIGH_TRADE_PRICE")
  private Integer HIGH_TRADE_PRICE = null;
  @SerializedName("HIGH_TRADE_TIMESTAMP")
  private Integer HIGH_TRADE_TIMESTAMP = null;
  @SerializedName("INSTRUMENT")
  private String INSTRUMENT = null;
  @SerializedName("LAST_TRADE_PRICE")
  private Integer LAST_TRADE_PRICE = null;
  @SerializedName("LAST_TRADE_TIMESTAMP")
  private Integer LAST_TRADE_TIMESTAMP = null;
  @SerializedName("LOW")
  private Integer LOW = null;
  @SerializedName("LOW_TRADE_PRICE")
  private Integer LOW_TRADE_PRICE = null;
  @SerializedName("LOW_TRADE_TIMESTAMP")
  private Integer LOW_TRADE_TIMESTAMP = null;
  @SerializedName("MAPPED_INSTRUMENT")
  private String MAPPED_INSTRUMENT = null;
  @SerializedName("MARKET")
  private String MARKET = null;
  @SerializedName("OPEN")
  private Integer OPEN = null;
  @SerializedName("QUOTE")
  private String QUOTE = null;
  @SerializedName("QUOTE_VOLUME")
  private Integer QUOTE_VOLUME = null;
  @SerializedName("QUOTE_VOLUME_BUY")
  private Integer QUOTE_VOLUME_BUY = null;
  @SerializedName("QUOTE_VOLUME_SELL")
  private Integer QUOTE_VOLUME_SELL = null;
  @SerializedName("QUOTE_VOLUME_UNKNOWN")
  private Integer QUOTE_VOLUME_UNKNOWN = null;
  @SerializedName("TIMESTAMP")
  private Integer TIMESTAMP = null;
  @SerializedName("TOTAL_TRADES")
  private Integer TOTAL_TRADES = null;
  @SerializedName("TOTAL_TRADES_BUY")
  private Integer TOTAL_TRADES_BUY = null;
  @SerializedName("TOTAL_TRADES_SELL")
  private Integer TOTAL_TRADES_SELL = null;
  @SerializedName("TOTAL_TRADES_UNKNOWN")
  private Integer TOTAL_TRADES_UNKNOWN = null;
  @SerializedName("TYPE")
  private String TYPE = null;
  @SerializedName("UNIT")
  private String UNIT = null;
  @SerializedName("VOLUME")
  private Integer VOLUME = null;
  @SerializedName("VOLUME_BUY")
  private Integer VOLUME_BUY = null;
  @SerializedName("VOLUME_SELL")
  private Integer VOLUME_SELL = null;
  @SerializedName("VOLUME_UNKNOWN")
  private Integer VOLUME_UNKNOWN = null;

  /**
   * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
   **/
  @ApiModelProperty(value = "The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.")
  public String getBASE() {
    return BASE;
  }
  public void setBASE(String BASE) {
    this.BASE = BASE;
  }

  /**
   * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
   **/
  @ApiModelProperty(value = "The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.")
  public Integer getCLOSE() {
    return CLOSE;
  }
  public void setCLOSE(Integer CLOSE) {
    this.CLOSE = CLOSE;
  }

  /**
   * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The price of the first trade in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getFIRSTTRADEPRICE() {
    return FIRST_TRADE_PRICE;
  }
  public void setFIRSTTRADEPRICE(Integer FIRST_TRADE_PRICE) {
    this.FIRST_TRADE_PRICE = FIRST_TRADE_PRICE;
  }

  /**
   * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.")
  public Integer getFIRSTTRADETIMESTAMP() {
    return FIRST_TRADE_TIMESTAMP;
  }
  public void setFIRSTTRADETIMESTAMP(Integer FIRST_TRADE_TIMESTAMP) {
    this.FIRST_TRADE_TIMESTAMP = FIRST_TRADE_TIMESTAMP;
  }

  /**
   * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
   **/
  @ApiModelProperty(value = "The highest trade price in the time period. If there were no trades in the time period, the open price will be given.")
  public Integer getHIGH() {
    return HIGH;
  }
  public void setHIGH(Integer HIGH) {
    this.HIGH = HIGH;
  }

  /**
   * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getHIGHTRADEPRICE() {
    return HIGH_TRADE_PRICE;
  }
  public void setHIGHTRADEPRICE(Integer HIGH_TRADE_PRICE) {
    this.HIGH_TRADE_PRICE = HIGH_TRADE_PRICE;
  }

  /**
   * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getHIGHTRADETIMESTAMP() {
    return HIGH_TRADE_TIMESTAMP;
  }
  public void setHIGHTRADETIMESTAMP(Integer HIGH_TRADE_TIMESTAMP) {
    this.HIGH_TRADE_TIMESTAMP = HIGH_TRADE_TIMESTAMP;
  }

  /**
   * The unmapped instrument ID
   **/
  @ApiModelProperty(value = "The unmapped instrument ID")
  public String getINSTRUMENT() {
    return INSTRUMENT;
  }
  public void setINSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
  }

  /**
   * The last trade price in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The last trade price in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getLASTTRADEPRICE() {
    return LAST_TRADE_PRICE;
  }
  public void setLASTTRADEPRICE(Integer LAST_TRADE_PRICE) {
    this.LAST_TRADE_PRICE = LAST_TRADE_PRICE;
  }

  /**
   * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.")
  public Integer getLASTTRADETIMESTAMP() {
    return LAST_TRADE_TIMESTAMP;
  }
  public void setLASTTRADETIMESTAMP(Integer LAST_TRADE_TIMESTAMP) {
    this.LAST_TRADE_TIMESTAMP = LAST_TRADE_TIMESTAMP;
  }

  /**
   * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
   **/
  @ApiModelProperty(value = "The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.")
  public Integer getLOW() {
    return LOW;
  }
  public void setLOW(Integer LOW) {
    this.LOW = LOW;
  }

  /**
   * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getLOWTRADEPRICE() {
    return LOW_TRADE_PRICE;
  }
  public void setLOWTRADEPRICE(Integer LOW_TRADE_PRICE) {
    this.LOW_TRADE_PRICE = LOW_TRADE_PRICE;
  }

  /**
   * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
   **/
  @ApiModelProperty(value = "The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.")
  public Integer getLOWTRADETIMESTAMP() {
    return LOW_TRADE_TIMESTAMP;
  }
  public void setLOWTRADETIMESTAMP(Integer LOW_TRADE_TIMESTAMP) {
    this.LOW_TRADE_TIMESTAMP = LOW_TRADE_TIMESTAMP;
  }

  /**
   * The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
   **/
  @ApiModelProperty(value = "The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.")
  public String getMAPPEDINSTRUMENT() {
    return MAPPED_INSTRUMENT;
  }
  public void setMAPPEDINSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
  }

  /**
   * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
   **/
  @ApiModelProperty(value = "The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).")
  public String getMARKET() {
    return MARKET;
  }
  public void setMARKET(String MARKET) {
    this.MARKET = MARKET;
  }

  /**
   * The open price for the historical period, this is based on the closest trade before the period start.
   **/
  @ApiModelProperty(value = "The open price for the historical period, this is based on the closest trade before the period start.")
  public Integer getOPEN() {
    return OPEN;
  }
  public void setOPEN(Integer OPEN) {
    this.OPEN = OPEN;
  }

  /**
   * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
   **/
  @ApiModelProperty(value = "The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.")
  public String getQUOTE() {
    return QUOTE;
  }
  public void setQUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
  }

  /**
   * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getQUOTEVOLUME() {
    return QUOTE_VOLUME;
  }
  public void setQUOTEVOLUME(Integer QUOTE_VOLUME) {
    this.QUOTE_VOLUME = QUOTE_VOLUME;
  }

  /**
   * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.")
  public Integer getQUOTEVOLUMEBUY() {
    return QUOTE_VOLUME_BUY;
  }
  public void setQUOTEVOLUMEBUY(Integer QUOTE_VOLUME_BUY) {
    this.QUOTE_VOLUME_BUY = QUOTE_VOLUME_BUY;
  }

  /**
   * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.")
  public Integer getQUOTEVOLUMESELL() {
    return QUOTE_VOLUME_SELL;
  }
  public void setQUOTEVOLUMESELL(Integer QUOTE_VOLUME_SELL) {
    this.QUOTE_VOLUME_SELL = QUOTE_VOLUME_SELL;
  }

  /**
   * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.")
  public Integer getQUOTEVOLUMEUNKNOWN() {
    return QUOTE_VOLUME_UNKNOWN;
  }
  public void setQUOTEVOLUMEUNKNOWN(Integer QUOTE_VOLUME_UNKNOWN) {
    this.QUOTE_VOLUME_UNKNOWN = QUOTE_VOLUME_UNKNOWN;
  }

  /**
   * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
   **/
  @ApiModelProperty(value = "The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.")
  public Integer getTIMESTAMP() {
    return TIMESTAMP;
  }
  public void setTIMESTAMP(Integer TIMESTAMP) {
    this.TIMESTAMP = TIMESTAMP;
  }

  /**
   * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getTOTALTRADES() {
    return TOTAL_TRADES;
  }
  public void setTOTALTRADES(Integer TOTAL_TRADES) {
    this.TOTAL_TRADES = TOTAL_TRADES;
  }

  /**
   * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getTOTALTRADESBUY() {
    return TOTAL_TRADES_BUY;
  }
  public void setTOTALTRADESBUY(Integer TOTAL_TRADES_BUY) {
    this.TOTAL_TRADES_BUY = TOTAL_TRADES_BUY;
  }

  /**
   * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getTOTALTRADESSELL() {
    return TOTAL_TRADES_SELL;
  }
  public void setTOTALTRADESSELL(Integer TOTAL_TRADES_SELL) {
    this.TOTAL_TRADES_SELL = TOTAL_TRADES_SELL;
  }

  /**
   * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getTOTALTRADESUNKNOWN() {
    return TOTAL_TRADES_UNKNOWN;
  }
  public void setTOTALTRADESUNKNOWN(Integer TOTAL_TRADES_UNKNOWN) {
    this.TOTAL_TRADES_UNKNOWN = TOTAL_TRADES_UNKNOWN;
  }

  /**
   * The type of the message.
   **/
  @ApiModelProperty(value = "The type of the message.")
  public String getTYPE() {
    return TYPE;
  }
  public void setTYPE(String TYPE) {
    this.TYPE = TYPE;
  }

  /**
   * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
   **/
  @ApiModelProperty(value = "The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.")
  public String getUNIT() {
    return UNIT;
  }
  public void setUNIT(String UNIT) {
    this.UNIT = UNIT;
  }

  /**
   * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
   **/
  @ApiModelProperty(value = "The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.")
  public Integer getVOLUME() {
    return VOLUME;
  }
  public void setVOLUME(Integer VOLUME) {
    this.VOLUME = VOLUME;
  }

  /**
   * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.")
  public Integer getVOLUMEBUY() {
    return VOLUME_BUY;
  }
  public void setVOLUMEBUY(Integer VOLUME_BUY) {
    this.VOLUME_BUY = VOLUME_BUY;
  }

  /**
   * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.")
  public Integer getVOLUMESELL() {
    return VOLUME_SELL;
  }
  public void setVOLUMESELL(Integer VOLUME_SELL) {
    this.VOLUME_SELL = VOLUME_SELL;
  }

  /**
   * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
   **/
  @ApiModelProperty(value = "The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.")
  public Integer getVOLUMEUNKNOWN() {
    return VOLUME_UNKNOWN;
  }
  public void setVOLUMEUNKNOWN(Integer VOLUME_UNKNOWN) {
    this.VOLUME_UNKNOWN = VOLUME_UNKNOWN;
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
    return (this.BASE == null ? SPOT_INSTRUMENT_HISTO_DATA.BASE == null : this.BASE.equals(SPOT_INSTRUMENT_HISTO_DATA.BASE)) &&
        (this.CLOSE == null ? SPOT_INSTRUMENT_HISTO_DATA.CLOSE == null : this.CLOSE.equals(SPOT_INSTRUMENT_HISTO_DATA.CLOSE)) &&
        (this.FIRST_TRADE_PRICE == null ? SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_PRICE == null : this.FIRST_TRADE_PRICE.equals(SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_PRICE)) &&
        (this.FIRST_TRADE_TIMESTAMP == null ? SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_TIMESTAMP == null : this.FIRST_TRADE_TIMESTAMP.equals(SPOT_INSTRUMENT_HISTO_DATA.FIRST_TRADE_TIMESTAMP)) &&
        (this.HIGH == null ? SPOT_INSTRUMENT_HISTO_DATA.HIGH == null : this.HIGH.equals(SPOT_INSTRUMENT_HISTO_DATA.HIGH)) &&
        (this.HIGH_TRADE_PRICE == null ? SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_PRICE == null : this.HIGH_TRADE_PRICE.equals(SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_PRICE)) &&
        (this.HIGH_TRADE_TIMESTAMP == null ? SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_TIMESTAMP == null : this.HIGH_TRADE_TIMESTAMP.equals(SPOT_INSTRUMENT_HISTO_DATA.HIGH_TRADE_TIMESTAMP)) &&
        (this.INSTRUMENT == null ? SPOT_INSTRUMENT_HISTO_DATA.INSTRUMENT == null : this.INSTRUMENT.equals(SPOT_INSTRUMENT_HISTO_DATA.INSTRUMENT)) &&
        (this.LAST_TRADE_PRICE == null ? SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_PRICE == null : this.LAST_TRADE_PRICE.equals(SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_PRICE)) &&
        (this.LAST_TRADE_TIMESTAMP == null ? SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_TIMESTAMP == null : this.LAST_TRADE_TIMESTAMP.equals(SPOT_INSTRUMENT_HISTO_DATA.LAST_TRADE_TIMESTAMP)) &&
        (this.LOW == null ? SPOT_INSTRUMENT_HISTO_DATA.LOW == null : this.LOW.equals(SPOT_INSTRUMENT_HISTO_DATA.LOW)) &&
        (this.LOW_TRADE_PRICE == null ? SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_PRICE == null : this.LOW_TRADE_PRICE.equals(SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_PRICE)) &&
        (this.LOW_TRADE_TIMESTAMP == null ? SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_TIMESTAMP == null : this.LOW_TRADE_TIMESTAMP.equals(SPOT_INSTRUMENT_HISTO_DATA.LOW_TRADE_TIMESTAMP)) &&
        (this.MAPPED_INSTRUMENT == null ? SPOT_INSTRUMENT_HISTO_DATA.MAPPED_INSTRUMENT == null : this.MAPPED_INSTRUMENT.equals(SPOT_INSTRUMENT_HISTO_DATA.MAPPED_INSTRUMENT)) &&
        (this.MARKET == null ? SPOT_INSTRUMENT_HISTO_DATA.MARKET == null : this.MARKET.equals(SPOT_INSTRUMENT_HISTO_DATA.MARKET)) &&
        (this.OPEN == null ? SPOT_INSTRUMENT_HISTO_DATA.OPEN == null : this.OPEN.equals(SPOT_INSTRUMENT_HISTO_DATA.OPEN)) &&
        (this.QUOTE == null ? SPOT_INSTRUMENT_HISTO_DATA.QUOTE == null : this.QUOTE.equals(SPOT_INSTRUMENT_HISTO_DATA.QUOTE)) &&
        (this.QUOTE_VOLUME == null ? SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME == null : this.QUOTE_VOLUME.equals(SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME)) &&
        (this.QUOTE_VOLUME_BUY == null ? SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_BUY == null : this.QUOTE_VOLUME_BUY.equals(SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_BUY)) &&
        (this.QUOTE_VOLUME_SELL == null ? SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_SELL == null : this.QUOTE_VOLUME_SELL.equals(SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_SELL)) &&
        (this.QUOTE_VOLUME_UNKNOWN == null ? SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_UNKNOWN == null : this.QUOTE_VOLUME_UNKNOWN.equals(SPOT_INSTRUMENT_HISTO_DATA.QUOTE_VOLUME_UNKNOWN)) &&
        (this.TIMESTAMP == null ? SPOT_INSTRUMENT_HISTO_DATA.TIMESTAMP == null : this.TIMESTAMP.equals(SPOT_INSTRUMENT_HISTO_DATA.TIMESTAMP)) &&
        (this.TOTAL_TRADES == null ? SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES == null : this.TOTAL_TRADES.equals(SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES)) &&
        (this.TOTAL_TRADES_BUY == null ? SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_BUY == null : this.TOTAL_TRADES_BUY.equals(SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_BUY)) &&
        (this.TOTAL_TRADES_SELL == null ? SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_SELL == null : this.TOTAL_TRADES_SELL.equals(SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_SELL)) &&
        (this.TOTAL_TRADES_UNKNOWN == null ? SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_UNKNOWN == null : this.TOTAL_TRADES_UNKNOWN.equals(SPOT_INSTRUMENT_HISTO_DATA.TOTAL_TRADES_UNKNOWN)) &&
        (this.TYPE == null ? SPOT_INSTRUMENT_HISTO_DATA.TYPE == null : this.TYPE.equals(SPOT_INSTRUMENT_HISTO_DATA.TYPE)) &&
        (this.UNIT == null ? SPOT_INSTRUMENT_HISTO_DATA.UNIT == null : this.UNIT.equals(SPOT_INSTRUMENT_HISTO_DATA.UNIT)) &&
        (this.VOLUME == null ? SPOT_INSTRUMENT_HISTO_DATA.VOLUME == null : this.VOLUME.equals(SPOT_INSTRUMENT_HISTO_DATA.VOLUME)) &&
        (this.VOLUME_BUY == null ? SPOT_INSTRUMENT_HISTO_DATA.VOLUME_BUY == null : this.VOLUME_BUY.equals(SPOT_INSTRUMENT_HISTO_DATA.VOLUME_BUY)) &&
        (this.VOLUME_SELL == null ? SPOT_INSTRUMENT_HISTO_DATA.VOLUME_SELL == null : this.VOLUME_SELL.equals(SPOT_INSTRUMENT_HISTO_DATA.VOLUME_SELL)) &&
        (this.VOLUME_UNKNOWN == null ? SPOT_INSTRUMENT_HISTO_DATA.VOLUME_UNKNOWN == null : this.VOLUME_UNKNOWN.equals(SPOT_INSTRUMENT_HISTO_DATA.VOLUME_UNKNOWN));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.BASE == null ? 0: this.BASE.hashCode());
    result = 31 * result + (this.CLOSE == null ? 0: this.CLOSE.hashCode());
    result = 31 * result + (this.FIRST_TRADE_PRICE == null ? 0: this.FIRST_TRADE_PRICE.hashCode());
    result = 31 * result + (this.FIRST_TRADE_TIMESTAMP == null ? 0: this.FIRST_TRADE_TIMESTAMP.hashCode());
    result = 31 * result + (this.HIGH == null ? 0: this.HIGH.hashCode());
    result = 31 * result + (this.HIGH_TRADE_PRICE == null ? 0: this.HIGH_TRADE_PRICE.hashCode());
    result = 31 * result + (this.HIGH_TRADE_TIMESTAMP == null ? 0: this.HIGH_TRADE_TIMESTAMP.hashCode());
    result = 31 * result + (this.INSTRUMENT == null ? 0: this.INSTRUMENT.hashCode());
    result = 31 * result + (this.LAST_TRADE_PRICE == null ? 0: this.LAST_TRADE_PRICE.hashCode());
    result = 31 * result + (this.LAST_TRADE_TIMESTAMP == null ? 0: this.LAST_TRADE_TIMESTAMP.hashCode());
    result = 31 * result + (this.LOW == null ? 0: this.LOW.hashCode());
    result = 31 * result + (this.LOW_TRADE_PRICE == null ? 0: this.LOW_TRADE_PRICE.hashCode());
    result = 31 * result + (this.LOW_TRADE_TIMESTAMP == null ? 0: this.LOW_TRADE_TIMESTAMP.hashCode());
    result = 31 * result + (this.MAPPED_INSTRUMENT == null ? 0: this.MAPPED_INSTRUMENT.hashCode());
    result = 31 * result + (this.MARKET == null ? 0: this.MARKET.hashCode());
    result = 31 * result + (this.OPEN == null ? 0: this.OPEN.hashCode());
    result = 31 * result + (this.QUOTE == null ? 0: this.QUOTE.hashCode());
    result = 31 * result + (this.QUOTE_VOLUME == null ? 0: this.QUOTE_VOLUME.hashCode());
    result = 31 * result + (this.QUOTE_VOLUME_BUY == null ? 0: this.QUOTE_VOLUME_BUY.hashCode());
    result = 31 * result + (this.QUOTE_VOLUME_SELL == null ? 0: this.QUOTE_VOLUME_SELL.hashCode());
    result = 31 * result + (this.QUOTE_VOLUME_UNKNOWN == null ? 0: this.QUOTE_VOLUME_UNKNOWN.hashCode());
    result = 31 * result + (this.TIMESTAMP == null ? 0: this.TIMESTAMP.hashCode());
    result = 31 * result + (this.TOTAL_TRADES == null ? 0: this.TOTAL_TRADES.hashCode());
    result = 31 * result + (this.TOTAL_TRADES_BUY == null ? 0: this.TOTAL_TRADES_BUY.hashCode());
    result = 31 * result + (this.TOTAL_TRADES_SELL == null ? 0: this.TOTAL_TRADES_SELL.hashCode());
    result = 31 * result + (this.TOTAL_TRADES_UNKNOWN == null ? 0: this.TOTAL_TRADES_UNKNOWN.hashCode());
    result = 31 * result + (this.TYPE == null ? 0: this.TYPE.hashCode());
    result = 31 * result + (this.UNIT == null ? 0: this.UNIT.hashCode());
    result = 31 * result + (this.VOLUME == null ? 0: this.VOLUME.hashCode());
    result = 31 * result + (this.VOLUME_BUY == null ? 0: this.VOLUME_BUY.hashCode());
    result = 31 * result + (this.VOLUME_SELL == null ? 0: this.VOLUME_SELL.hashCode());
    result = 31 * result + (this.VOLUME_UNKNOWN == null ? 0: this.VOLUME_UNKNOWN.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTHISTODATA {\n");
    
    sb.append("  BASE: ").append(BASE).append("\n");
    sb.append("  CLOSE: ").append(CLOSE).append("\n");
    sb.append("  FIRST_TRADE_PRICE: ").append(FIRST_TRADE_PRICE).append("\n");
    sb.append("  FIRST_TRADE_TIMESTAMP: ").append(FIRST_TRADE_TIMESTAMP).append("\n");
    sb.append("  HIGH: ").append(HIGH).append("\n");
    sb.append("  HIGH_TRADE_PRICE: ").append(HIGH_TRADE_PRICE).append("\n");
    sb.append("  HIGH_TRADE_TIMESTAMP: ").append(HIGH_TRADE_TIMESTAMP).append("\n");
    sb.append("  INSTRUMENT: ").append(INSTRUMENT).append("\n");
    sb.append("  LAST_TRADE_PRICE: ").append(LAST_TRADE_PRICE).append("\n");
    sb.append("  LAST_TRADE_TIMESTAMP: ").append(LAST_TRADE_TIMESTAMP).append("\n");
    sb.append("  LOW: ").append(LOW).append("\n");
    sb.append("  LOW_TRADE_PRICE: ").append(LOW_TRADE_PRICE).append("\n");
    sb.append("  LOW_TRADE_TIMESTAMP: ").append(LOW_TRADE_TIMESTAMP).append("\n");
    sb.append("  MAPPED_INSTRUMENT: ").append(MAPPED_INSTRUMENT).append("\n");
    sb.append("  MARKET: ").append(MARKET).append("\n");
    sb.append("  OPEN: ").append(OPEN).append("\n");
    sb.append("  QUOTE: ").append(QUOTE).append("\n");
    sb.append("  QUOTE_VOLUME: ").append(QUOTE_VOLUME).append("\n");
    sb.append("  QUOTE_VOLUME_BUY: ").append(QUOTE_VOLUME_BUY).append("\n");
    sb.append("  QUOTE_VOLUME_SELL: ").append(QUOTE_VOLUME_SELL).append("\n");
    sb.append("  QUOTE_VOLUME_UNKNOWN: ").append(QUOTE_VOLUME_UNKNOWN).append("\n");
    sb.append("  TIMESTAMP: ").append(TIMESTAMP).append("\n");
    sb.append("  TOTAL_TRADES: ").append(TOTAL_TRADES).append("\n");
    sb.append("  TOTAL_TRADES_BUY: ").append(TOTAL_TRADES_BUY).append("\n");
    sb.append("  TOTAL_TRADES_SELL: ").append(TOTAL_TRADES_SELL).append("\n");
    sb.append("  TOTAL_TRADES_UNKNOWN: ").append(TOTAL_TRADES_UNKNOWN).append("\n");
    sb.append("  TYPE: ").append(TYPE).append("\n");
    sb.append("  UNIT: ").append(UNIT).append("\n");
    sb.append("  VOLUME: ").append(VOLUME).append("\n");
    sb.append("  VOLUME_BUY: ").append(VOLUME_BUY).append("\n");
    sb.append("  VOLUME_SELL: ").append(VOLUME_SELL).append("\n");
    sb.append("  VOLUME_UNKNOWN: ").append(VOLUME_UNKNOWN).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
