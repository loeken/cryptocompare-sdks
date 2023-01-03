package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTTRADE  {
  
  @ApiModelProperty(value = "The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).")
 /**
   * The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
  **/
  private String BASE;

  @ApiModelProperty(value = "Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.")
 /**
   * Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
  **/
  private Integer CCSEQ;

  @ApiModelProperty(value = "The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.")
 /**
   * The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
  **/
  private String ID;

  @ApiModelProperty(value = "The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).")
 /**
   * The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
  **/
  private String INSTRUMENT;

  @ApiModelProperty(value = "The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).")
 /**
   * The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
  **/
  private String MAPPED_INSTRUMENT;

  @ApiModelProperty(value = "The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).")
 /**
   * The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
  **/
  private String MARKET;

  @ApiModelProperty(value = "The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.")
 /**
   * The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
  **/
  private Integer PRICE;

  @ApiModelProperty(value = "The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.")
 /**
   * The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
  **/
  private Integer QUANTITY;

  @ApiModelProperty(value = "The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).")
 /**
   * The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
  **/
  private String QUOTE;

  @ApiModelProperty(value = "The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.")
 /**
   * The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
  **/
  private Integer QUOTE_QUANTITY;

  @ApiModelProperty(value = "The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.")
 /**
   * The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
  **/
  private Integer RECEIVED_TIMESTAMP;

  @ApiModelProperty(value = "The nanosecond part of the received timestamp.")
 /**
   * The nanosecond part of the received timestamp.
  **/
  private Integer RECEIVED_TIMESTAMP_NS;

  @ApiModelProperty(value = "The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.")
 /**
   * The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
  **/
  private String SIDE;

  @ApiModelProperty(value = "The source of the trade update: POLLING, STREAMING, GO, BLOB etc.")
 /**
   * The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
  **/
  private String SOURCE;

  @ApiModelProperty(value = "The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.")
 /**
   * The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
  **/
  private Integer TIMESTAMP;

  @ApiModelProperty(value = "The nanosecond part of the reported timestamp.")
 /**
   * The nanosecond part of the reported timestamp.
  **/
  private Integer TIMESTAMP_NS;

  @ApiModelProperty(value = "The type of the message.")
 /**
   * The type of the message.
  **/
  private String TYPE;
 /**
   * The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
   * @return BASE
  **/
  @JsonProperty("BASE")
  public String getBASE() {
    return BASE;
  }

  public void setBASE(String BASE) {
    this.BASE = BASE;
  }

  public SPOTINSTRUMENTTRADE BASE(String BASE) {
    this.BASE = BASE;
    return this;
  }

 /**
   * Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
   * @return CCSEQ
  **/
  @JsonProperty("CCSEQ")
  public Integer getCCSEQ() {
    return CCSEQ;
  }

  public void setCCSEQ(Integer CCSEQ) {
    this.CCSEQ = CCSEQ;
  }

  public SPOTINSTRUMENTTRADE CCSEQ(Integer CCSEQ) {
    this.CCSEQ = CCSEQ;
    return this;
  }

 /**
   * The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
   * @return ID
  **/
  @JsonProperty("ID")
  public String getID() {
    return ID;
  }

  public void setID(String ID) {
    this.ID = ID;
  }

  public SPOTINSTRUMENTTRADE ID(String ID) {
    this.ID = ID;
    return this;
  }

 /**
   * The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
   * @return INSTRUMENT
  **/
  @JsonProperty("INSTRUMENT")
  public String getINSTRUMENT() {
    return INSTRUMENT;
  }

  public void setINSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
  }

  public SPOTINSTRUMENTTRADE INSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
    return this;
  }

 /**
   * The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD).
   * @return MAPPED_INSTRUMENT
  **/
  @JsonProperty("MAPPED_INSTRUMENT")
  public String getMAPPEDINSTRUMENT() {
    return MAPPED_INSTRUMENT;
  }

  public void setMAPPEDINSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
  }

  public SPOTINSTRUMENTTRADE MAPPED_INSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
    return this;
  }

 /**
   * The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
   * @return MARKET
  **/
  @JsonProperty("MARKET")
  public String getMARKET() {
    return MARKET;
  }

  public void setMARKET(String MARKET) {
    this.MARKET = MARKET;
  }

  public SPOTINSTRUMENTTRADE MARKET(String MARKET) {
    this.MARKET = MARKET;
    return this;
  }

 /**
   * The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
   * @return PRICE
  **/
  @JsonProperty("PRICE")
  public Integer getPRICE() {
    return PRICE;
  }

  public void setPRICE(Integer PRICE) {
    this.PRICE = PRICE;
  }

  public SPOTINSTRUMENTTRADE PRICE(Integer PRICE) {
    this.PRICE = PRICE;
    return this;
  }

 /**
   * The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
   * @return QUANTITY
  **/
  @JsonProperty("QUANTITY")
  public Integer getQUANTITY() {
    return QUANTITY;
  }

  public void setQUANTITY(Integer QUANTITY) {
    this.QUANTITY = QUANTITY;
  }

  public SPOTINSTRUMENTTRADE QUANTITY(Integer QUANTITY) {
    this.QUANTITY = QUANTITY;
    return this;
  }

 /**
   * The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
   * @return QUOTE
  **/
  @JsonProperty("QUOTE")
  public String getQUOTE() {
    return QUOTE;
  }

  public void setQUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
  }

  public SPOTINSTRUMENTTRADE QUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
    return this;
  }

 /**
   * The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
   * @return QUOTE_QUANTITY
  **/
  @JsonProperty("QUOTE_QUANTITY")
  public Integer getQUOTEQUANTITY() {
    return QUOTE_QUANTITY;
  }

  public void setQUOTEQUANTITY(Integer QUOTE_QUANTITY) {
    this.QUOTE_QUANTITY = QUOTE_QUANTITY;
  }

  public SPOTINSTRUMENTTRADE QUOTE_QUANTITY(Integer QUOTE_QUANTITY) {
    this.QUOTE_QUANTITY = QUOTE_QUANTITY;
    return this;
  }

 /**
   * The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
   * @return RECEIVED_TIMESTAMP
  **/
  @JsonProperty("RECEIVED_TIMESTAMP")
  public Integer getRECEIVEDTIMESTAMP() {
    return RECEIVED_TIMESTAMP;
  }

  public void setRECEIVEDTIMESTAMP(Integer RECEIVED_TIMESTAMP) {
    this.RECEIVED_TIMESTAMP = RECEIVED_TIMESTAMP;
  }

  public SPOTINSTRUMENTTRADE RECEIVED_TIMESTAMP(Integer RECEIVED_TIMESTAMP) {
    this.RECEIVED_TIMESTAMP = RECEIVED_TIMESTAMP;
    return this;
  }

 /**
   * The nanosecond part of the received timestamp.
   * @return RECEIVED_TIMESTAMP_NS
  **/
  @JsonProperty("RECEIVED_TIMESTAMP_NS")
  public Integer getRECEIVEDTIMESTAMPNS() {
    return RECEIVED_TIMESTAMP_NS;
  }

  public void setRECEIVEDTIMESTAMPNS(Integer RECEIVED_TIMESTAMP_NS) {
    this.RECEIVED_TIMESTAMP_NS = RECEIVED_TIMESTAMP_NS;
  }

  public SPOTINSTRUMENTTRADE RECEIVED_TIMESTAMP_NS(Integer RECEIVED_TIMESTAMP_NS) {
    this.RECEIVED_TIMESTAMP_NS = RECEIVED_TIMESTAMP_NS;
    return this;
  }

 /**
   * The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned.
   * @return SIDE
  **/
  @JsonProperty("SIDE")
  public String getSIDE() {
    return SIDE;
  }

  public void setSIDE(String SIDE) {
    this.SIDE = SIDE;
  }

  public SPOTINSTRUMENTTRADE SIDE(String SIDE) {
    this.SIDE = SIDE;
    return this;
  }

 /**
   * The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
   * @return SOURCE
  **/
  @JsonProperty("SOURCE")
  public String getSOURCE() {
    return SOURCE;
  }

  public void setSOURCE(String SOURCE) {
    this.SOURCE = SOURCE;
  }

  public SPOTINSTRUMENTTRADE SOURCE(String SOURCE) {
    this.SOURCE = SOURCE;
    return this;
  }

 /**
   * The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
   * @return TIMESTAMP
  **/
  @JsonProperty("TIMESTAMP")
  public Integer getTIMESTAMP() {
    return TIMESTAMP;
  }

  public void setTIMESTAMP(Integer TIMESTAMP) {
    this.TIMESTAMP = TIMESTAMP;
  }

  public SPOTINSTRUMENTTRADE TIMESTAMP(Integer TIMESTAMP) {
    this.TIMESTAMP = TIMESTAMP;
    return this;
  }

 /**
   * The nanosecond part of the reported timestamp.
   * @return TIMESTAMP_NS
  **/
  @JsonProperty("TIMESTAMP_NS")
  public Integer getTIMESTAMPNS() {
    return TIMESTAMP_NS;
  }

  public void setTIMESTAMPNS(Integer TIMESTAMP_NS) {
    this.TIMESTAMP_NS = TIMESTAMP_NS;
  }

  public SPOTINSTRUMENTTRADE TIMESTAMP_NS(Integer TIMESTAMP_NS) {
    this.TIMESTAMP_NS = TIMESTAMP_NS;
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

  public SPOTINSTRUMENTTRADE TYPE(String TYPE) {
    this.TYPE = TYPE;
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
    SPOTINSTRUMENTTRADE SPOT_INSTRUMENT_TRADE = (SPOTINSTRUMENTTRADE) o;
    return Objects.equals(BASE, SPOT_INSTRUMENT_TRADE.BASE) &&
        Objects.equals(CCSEQ, SPOT_INSTRUMENT_TRADE.CCSEQ) &&
        Objects.equals(ID, SPOT_INSTRUMENT_TRADE.ID) &&
        Objects.equals(INSTRUMENT, SPOT_INSTRUMENT_TRADE.INSTRUMENT) &&
        Objects.equals(MAPPED_INSTRUMENT, SPOT_INSTRUMENT_TRADE.MAPPED_INSTRUMENT) &&
        Objects.equals(MARKET, SPOT_INSTRUMENT_TRADE.MARKET) &&
        Objects.equals(PRICE, SPOT_INSTRUMENT_TRADE.PRICE) &&
        Objects.equals(QUANTITY, SPOT_INSTRUMENT_TRADE.QUANTITY) &&
        Objects.equals(QUOTE, SPOT_INSTRUMENT_TRADE.QUOTE) &&
        Objects.equals(QUOTE_QUANTITY, SPOT_INSTRUMENT_TRADE.QUOTE_QUANTITY) &&
        Objects.equals(RECEIVED_TIMESTAMP, SPOT_INSTRUMENT_TRADE.RECEIVED_TIMESTAMP) &&
        Objects.equals(RECEIVED_TIMESTAMP_NS, SPOT_INSTRUMENT_TRADE.RECEIVED_TIMESTAMP_NS) &&
        Objects.equals(SIDE, SPOT_INSTRUMENT_TRADE.SIDE) &&
        Objects.equals(SOURCE, SPOT_INSTRUMENT_TRADE.SOURCE) &&
        Objects.equals(TIMESTAMP, SPOT_INSTRUMENT_TRADE.TIMESTAMP) &&
        Objects.equals(TIMESTAMP_NS, SPOT_INSTRUMENT_TRADE.TIMESTAMP_NS) &&
        Objects.equals(TYPE, SPOT_INSTRUMENT_TRADE.TYPE);
  }

  @Override
  public int hashCode() {
    return Objects.hash(BASE, CCSEQ, ID, INSTRUMENT, MAPPED_INSTRUMENT, MARKET, PRICE, QUANTITY, QUOTE, QUOTE_QUANTITY, RECEIVED_TIMESTAMP, RECEIVED_TIMESTAMP_NS, SIDE, SOURCE, TIMESTAMP, TIMESTAMP_NS, TYPE);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTTRADE {\n");
    
    sb.append("    BASE: ").append(toIndentedString(BASE)).append("\n");
    sb.append("    CCSEQ: ").append(toIndentedString(CCSEQ)).append("\n");
    sb.append("    ID: ").append(toIndentedString(ID)).append("\n");
    sb.append("    INSTRUMENT: ").append(toIndentedString(INSTRUMENT)).append("\n");
    sb.append("    MAPPED_INSTRUMENT: ").append(toIndentedString(MAPPED_INSTRUMENT)).append("\n");
    sb.append("    MARKET: ").append(toIndentedString(MARKET)).append("\n");
    sb.append("    PRICE: ").append(toIndentedString(PRICE)).append("\n");
    sb.append("    QUANTITY: ").append(toIndentedString(QUANTITY)).append("\n");
    sb.append("    QUOTE: ").append(toIndentedString(QUOTE)).append("\n");
    sb.append("    QUOTE_QUANTITY: ").append(toIndentedString(QUOTE_QUANTITY)).append("\n");
    sb.append("    RECEIVED_TIMESTAMP: ").append(toIndentedString(RECEIVED_TIMESTAMP)).append("\n");
    sb.append("    RECEIVED_TIMESTAMP_NS: ").append(toIndentedString(RECEIVED_TIMESTAMP_NS)).append("\n");
    sb.append("    SIDE: ").append(toIndentedString(SIDE)).append("\n");
    sb.append("    SOURCE: ").append(toIndentedString(SOURCE)).append("\n");
    sb.append("    TIMESTAMP: ").append(toIndentedString(TIMESTAMP)).append("\n");
    sb.append("    TIMESTAMP_NS: ").append(toIndentedString(TIMESTAMP_NS)).append("\n");
    sb.append("    TYPE: ").append(toIndentedString(TYPE)).append("\n");
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

