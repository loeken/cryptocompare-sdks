package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTMARKETDATA  {
  
  @ApiModelProperty(value = "The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.")
 /**
   * The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
  **/
  private String BASE;

  @ApiModelProperty(value = "Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.")
 /**
   * Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
  **/
  private Integer CCSEQ;

  @ApiModelProperty(value = "The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.")
 /**
   * The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_HIGH;

  @ApiModelProperty(value = "The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.")
 /**
   * The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_LOW;

  @ApiModelProperty(value = "The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.")
 /**
   * The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
  **/
  private Integer CURRENT_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
  **/
  private Integer CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).")
 /**
   * The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
  **/
  private Integer CURRENT_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).")
 /**
   * The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
  **/
  private Integer CURRENT_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).")
 /**
   * The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
  **/
  private Integer CURRENT_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).")
 /**
   * The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
  **/
  private Integer CURRENT_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.")
 /**
   * The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  **/
  private Integer CURRENT_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.")
 /**
   * The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  **/
  private Integer CURRENT_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.")
 /**
   * The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  **/
  private Integer CURRENT_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
  **/
  private Integer CURRENT_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.")
 /**
   * The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_HIGH;

  @ApiModelProperty(value = "The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.")
 /**
   * The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_LOW;

  @ApiModelProperty(value = "The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.")
 /**
   * The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
  **/
  private Integer CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred since the start of the current hour.")
 /**
   * The total number of trades that have occurred since the start of the current hour.
  **/
  private Integer CURRENT_HOUR_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades since the start of the current hour.")
 /**
   * The total number of buy trades since the start of the current hour.
  **/
  private Integer CURRENT_HOUR_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades since the start of the current hour.")
 /**
   * The total number of sell trades since the start of the current hour.
  **/
  private Integer CURRENT_HOUR_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades since the start of the current hour.")
 /**
   * The total number of unknown trades since the start of the current hour.
  **/
  private Integer CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from the start of the current hour until now. Given in the base asset.")
 /**
   * The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
  **/
  private Integer CURRENT_HOUR_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.")
 /**
   * The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
  **/
  private Integer CURRENT_HOUR_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.")
 /**
   * The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
  **/
  private Integer CURRENT_HOUR_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.")
 /**
   * The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
  **/
  private Integer CURRENT_HOUR_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.")
 /**
   * The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.")
 /**
   * The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.")
 /**
   * The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.")
 /**
   * The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  **/
  private Integer CURRENT_MONTH_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.")
 /**
   * The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  **/
  private Integer CURRENT_MONTH_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.")
 /**
   * The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  **/
  private Integer CURRENT_MONTH_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.")
 /**
   * The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
  **/
  private Integer CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.")
 /**
   * The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_MONTH_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.")
 /**
   * The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_MONTH_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.")
 /**
   * The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_MONTH_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_MONTH_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.")
 /**
   * The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.")
 /**
   * The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_LOW;

  @ApiModelProperty(value = "The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.")
 /**
   * The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.")
 /**
   * The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  **/
  private Integer CURRENT_WEEK_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.")
 /**
   * The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  **/
  private Integer CURRENT_WEEK_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.")
 /**
   * The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  **/
  private Integer CURRENT_WEEK_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.")
 /**
   * The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
  **/
  private Integer CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.")
 /**
   * The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_WEEK_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.")
 /**
   * The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_WEEK_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.")
 /**
   * The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_WEEK_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_WEEK_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.")
 /**
   * The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.")
 /**
   * The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.")
 /**
   * The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
  **/
  private Integer CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.")
 /**
   * The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  **/
  private Integer CURRENT_YEAR_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.")
 /**
   * The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  **/
  private Integer CURRENT_YEAR_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.")
 /**
   * The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  **/
  private Integer CURRENT_YEAR_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.")
 /**
   * The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
  **/
  private Integer CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.")
 /**
   * The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_YEAR_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.")
 /**
   * The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_YEAR_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.")
 /**
   * The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_YEAR_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
  **/
  private Integer CURRENT_YEAR_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The unmapped instrument ID")
 /**
   * The unmapped instrument ID
  **/
  private String INSTRUMENT;

  @ApiModelProperty(value = "The CCSEQ of the latest trade.")
 /**
   * The CCSEQ of the latest trade.
  **/
  private String LAST_PROCESSED_TRADE_CCSEQ;

  @ApiModelProperty(value = "The price in the quote asset of the last trade processed, as reported by the market / exchange.")
 /**
   * The price in the quote asset of the last trade processed, as reported by the market / exchange.
  **/
  private Integer LAST_PROCESSED_TRADE_PRICE;

  @ApiModelProperty(value = "The quantity of the last processed trade in the from symbol (base / coin).")
 /**
   * The quantity of the last processed trade in the from symbol (base / coin).
  **/
  private Integer LAST_PROCESSED_TRADE_QUANTITY;

  @ApiModelProperty(value = "The  volume of the last processed trade in the to asset / quote.")
 /**
   * The  volume of the last processed trade in the to asset / quote.
  **/
  private Integer LAST_PROCESSED_TRADE_QUOTE_QUANTITY;

  @ApiModelProperty(value = "The side of the last processed trade.")
 /**
   * The side of the last processed trade.
  **/
  private String LAST_PROCESSED_TRADE_SIDE;

  @ApiModelProperty(value = "The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.")
 /**
   * The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
  **/
  private Integer LAST_PROCESSED_TRADE_TS;

  @ApiModelProperty(value = "The CCSEQ of the latest trade.")
 /**
   * The CCSEQ of the latest trade.
  **/
  private String LAST_TRADE_CCSEQ;

  @ApiModelProperty(value = "The ID of the latest trade.")
 /**
   * The ID of the latest trade.
  **/
  private String LAST_TRADE_ID;

  @ApiModelProperty(value = "The quantity of the latest trade in the from symbol (base / coin).")
 /**
   * The quantity of the latest trade in the from symbol (base / coin).
  **/
  private Integer LAST_TRADE_QUANTITY;

  @ApiModelProperty(value = "The volume of the latest trade in the to asset / quote.")
 /**
   * The volume of the latest trade in the to asset / quote.
  **/
  private Integer LAST_TRADE_QUOTE_QUANTITY;

  @ApiModelProperty(value = "The side of the latest trade.")
 /**
   * The side of the latest trade.
  **/
  private String LAST_TRADE_SIDE;

  @ApiModelProperty(value = "The timestamp of the first trade ever recorded for the instrument")
 /**
   * The timestamp of the first trade ever recorded for the instrument
  **/
  private Integer LIFETIME_FIRST_TRADE_TS;

  @ApiModelProperty(value = "The price of the highest trade ever executed for this instrument. Given in the quote asset.")
 /**
   * The price of the highest trade ever executed for this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_HIGH;

  @ApiModelProperty(value = "The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.")
 /**
   * The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_HIGH_TS;

  @ApiModelProperty(value = "The price of the lowest trade ever executed for this instrument. Given in the quote asset.")
 /**
   * The price of the lowest trade ever executed for this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_LOW;

  @ApiModelProperty(value = "The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.")
 /**
   * The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_LOW_TS;

  @ApiModelProperty(value = "The price of the first trade of the instrument. Given in the quote asset.")
 /**
   * The price of the first trade of the instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.")
 /**
   * The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
  **/
  private Integer LIFETIME_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of all trades that have ever been executed for this instrument.")
 /**
   * The total number of all trades that have ever been executed for this instrument.
  **/
  private Integer LIFETIME_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of all buy trades that have ever been executed for this instrument.")
 /**
   * The total number of all buy trades that have ever been executed for this instrument.
  **/
  private Integer LIFETIME_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of all sell trades that have ever been executed for this instrument.")
 /**
   * The total number of all sell trades that have ever been executed for this instrument.
  **/
  private Integer LIFETIME_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of all unknown trades that have ever been executed for this instrument.")
 /**
   * The total number of all unknown trades that have ever been executed for this instrument.
  **/
  private Integer LIFETIME_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities of all the trades of this instrument. Given in the base asset.")
 /**
   * The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
  **/
  private Integer LIFETIME_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.")
 /**
   * The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
  **/
  private Integer LIFETIME_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.")
 /**
   * The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
  **/
  private Integer LIFETIME_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.")
 /**
   * The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
  **/
  private Integer LIFETIME_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.")
 /**
   * The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
  **/
  private String MAPPED_INSTRUMENT;

  @ApiModelProperty(value = "The market / exchange under consideration (e.g. coinbase, kraken, etc).")
 /**
   * The market / exchange under consideration (e.g. coinbase, kraken, etc).
  **/
  private String MARKET;

  @ApiModelProperty(value = "The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
  **/
  private Integer MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).")
 /**
   * The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  **/
  private Integer MOVING_180_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).")
 /**
   * The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  **/
  private Integer MOVING_180_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).")
 /**
   * The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  **/
  private Integer MOVING_180_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).")
 /**
   * The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
  **/
  private Integer MOVING_180_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  **/
  private Integer MOVING_180_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  **/
  private Integer MOVING_180_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  **/
  private Integer MOVING_180_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
  **/
  private Integer MOVING_180_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
  **/
  private Integer MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).")
 /**
   * The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  **/
  private Integer MOVING_24_HOUR_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).")
 /**
   * The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  **/
  private Integer MOVING_24_HOUR_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).")
 /**
   * The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  **/
  private Integer MOVING_24_HOUR_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).")
 /**
   * The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
  **/
  private Integer MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  **/
  private Integer MOVING_24_HOUR_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.")
 /**
   * The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  **/
  private Integer MOVING_24_HOUR_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  **/
  private Integer MOVING_24_HOUR_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
  **/
  private Integer MOVING_24_HOUR_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
  **/
  private Integer MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).")
 /**
   * The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  **/
  private Integer MOVING_30_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).")
 /**
   * The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  **/
  private Integer MOVING_30_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).")
 /**
   * The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  **/
  private Integer MOVING_30_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).")
 /**
   * The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
  **/
  private Integer MOVING_30_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  **/
  private Integer MOVING_30_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.")
 /**
   * The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  **/
  private Integer MOVING_30_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  **/
  private Integer MOVING_30_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
  **/
  private Integer MOVING_30_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
  **/
  private Integer MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).")
 /**
   * The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  **/
  private Integer MOVING_365_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).")
 /**
   * The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  **/
  private Integer MOVING_365_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).")
 /**
   * The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  **/
  private Integer MOVING_365_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).")
 /**
   * The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
  **/
  private Integer MOVING_365_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  **/
  private Integer MOVING_365_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  **/
  private Integer MOVING_365_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  **/
  private Integer MOVING_365_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
  **/
  private Integer MOVING_365_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
  **/
  private Integer MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).")
 /**
   * The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  **/
  private Integer MOVING_7_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).")
 /**
   * The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  **/
  private Integer MOVING_7_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).")
 /**
   * The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  **/
  private Integer MOVING_7_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).")
 /**
   * The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
  **/
  private Integer MOVING_7_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  **/
  private Integer MOVING_7_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.")
 /**
   * The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  **/
  private Integer MOVING_7_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  **/
  private Integer MOVING_7_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
  **/
  private Integer MOVING_7_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_HIGH;

  @ApiModelProperty(value = "The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_LOW;

  @ApiModelProperty(value = "The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.")
 /**
   * The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_OPEN;

  @ApiModelProperty(value = "The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_QUOTE_VOLUME;

  @ApiModelProperty(value = "The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_QUOTE_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_QUOTE_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.")
 /**
   * The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
  **/
  private Integer MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).")
 /**
   * The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  **/
  private Integer MOVING_90_DAY_TOTAL_TRADES;

  @ApiModelProperty(value = "The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).")
 /**
   * The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  **/
  private Integer MOVING_90_DAY_TOTAL_TRADES_BUY;

  @ApiModelProperty(value = "The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).")
 /**
   * The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  **/
  private Integer MOVING_90_DAY_TOTAL_TRADES_SELL;

  @ApiModelProperty(value = "The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).")
 /**
   * The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
  **/
  private Integer MOVING_90_DAY_TOTAL_TRADES_UNKNOWN;

  @ApiModelProperty(value = "The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  **/
  private Integer MOVING_90_DAY_VOLUME;

  @ApiModelProperty(value = "The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.")
 /**
   * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  **/
  private Integer MOVING_90_DAY_VOLUME_BUY;

  @ApiModelProperty(value = "The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.")
 /**
   * The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  **/
  private Integer MOVING_90_DAY_VOLUME_SELL;

  @ApiModelProperty(value = "The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.")
 /**
   * The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
  **/
  private Integer MOVING_90_DAY_VOLUME_UNKNOWN;

  @ApiModelProperty(value = "The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).")
 /**
   * The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
  **/
  private Integer PRICE;

  @ApiModelProperty(value = "The flag indicating whether the price has increased, decreased, or not changed")
 /**
   * The flag indicating whether the price has increased, decreased, or not changed
  **/
  private String PRICE_FLAG;

  @ApiModelProperty(value = "The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.")
 /**
   * The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
  **/
  private Integer PRICE_LAST_UPDATE_TS;

  @ApiModelProperty(value = "The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.")
 /**
   * The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
  **/
  private String QUOTE;

  @ApiModelProperty(value = "The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.")
 /**
   * The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  **/
  private Integer TOP_ASK_LAST_UPDATE_TS;

  @ApiModelProperty(value = "The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.")
 /**
   * The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
  **/
  private Integer TOP_ASK_PRICE;

  @ApiModelProperty(value = "The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.")
 /**
   * The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
  **/
  private Integer TOP_ASK_QUANTITY;

  @ApiModelProperty(value = "The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.")
 /**
   * The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
  **/
  private Integer TOP_BID_LAST_UPDATE_TS;

  @ApiModelProperty(value = "The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.")
 /**
   * The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
  **/
  private Integer TOP_BID_PRICE;

  @ApiModelProperty(value = "The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.")
 /**
   * The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
  **/
  private Integer TOP_BID_QUANTITY;

  @ApiModelProperty(value = "The type of the message.")
 /**
   * The type of the message.
  **/
  private String TYPE;
 /**
   * The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
   * @return BASE
  **/
  @JsonProperty("BASE")
  public String getBASE() {
    return BASE;
  }

  public void setBASE(String BASE) {
    this.BASE = BASE;
  }

  public SPOTINSTRUMENTMARKETDATA BASE(String BASE) {
    this.BASE = BASE;
    return this;
  }

 /**
   * Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
   * @return CCSEQ
  **/
  @JsonProperty("CCSEQ")
  public Integer getCCSEQ() {
    return CCSEQ;
  }

  public void setCCSEQ(Integer CCSEQ) {
    this.CCSEQ = CCSEQ;
  }

  public SPOTINSTRUMENTMARKETDATA CCSEQ(Integer CCSEQ) {
    this.CCSEQ = CCSEQ;
    return this;
  }

 /**
   * The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
   * @return CURRENT_DAY_HIGH
  **/
  @JsonProperty("CURRENT_DAY_HIGH")
  public Integer getCURRENTDAYHIGH() {
    return CURRENT_DAY_HIGH;
  }

  public void setCURRENTDAYHIGH(Integer CURRENT_DAY_HIGH) {
    this.CURRENT_DAY_HIGH = CURRENT_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_HIGH(Integer CURRENT_DAY_HIGH) {
    this.CURRENT_DAY_HIGH = CURRENT_DAY_HIGH;
    return this;
  }

 /**
   * The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
   * @return CURRENT_DAY_LOW
  **/
  @JsonProperty("CURRENT_DAY_LOW")
  public Integer getCURRENTDAYLOW() {
    return CURRENT_DAY_LOW;
  }

  public void setCURRENTDAYLOW(Integer CURRENT_DAY_LOW) {
    this.CURRENT_DAY_LOW = CURRENT_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_LOW(Integer CURRENT_DAY_LOW) {
    this.CURRENT_DAY_LOW = CURRENT_DAY_LOW;
    return this;
  }

 /**
   * The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
   * @return CURRENT_DAY_OPEN
  **/
  @JsonProperty("CURRENT_DAY_OPEN")
  public Integer getCURRENTDAYOPEN() {
    return CURRENT_DAY_OPEN;
  }

  public void setCURRENTDAYOPEN(Integer CURRENT_DAY_OPEN) {
    this.CURRENT_DAY_OPEN = CURRENT_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_OPEN(Integer CURRENT_DAY_OPEN) {
    this.CURRENT_DAY_OPEN = CURRENT_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
   * @return CURRENT_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("CURRENT_DAY_QUOTE_VOLUME")
  public Integer getCURRENTDAYQUOTEVOLUME() {
    return CURRENT_DAY_QUOTE_VOLUME;
  }

  public void setCURRENTDAYQUOTEVOLUME(Integer CURRENT_DAY_QUOTE_VOLUME) {
    this.CURRENT_DAY_QUOTE_VOLUME = CURRENT_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_QUOTE_VOLUME(Integer CURRENT_DAY_QUOTE_VOLUME) {
    this.CURRENT_DAY_QUOTE_VOLUME = CURRENT_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
   * @return CURRENT_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_DAY_QUOTE_VOLUME_BUY")
  public Integer getCURRENTDAYQUOTEVOLUMEBUY() {
    return CURRENT_DAY_QUOTE_VOLUME_BUY;
  }

  public void setCURRENTDAYQUOTEVOLUMEBUY(Integer CURRENT_DAY_QUOTE_VOLUME_BUY) {
    this.CURRENT_DAY_QUOTE_VOLUME_BUY = CURRENT_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_QUOTE_VOLUME_BUY(Integer CURRENT_DAY_QUOTE_VOLUME_BUY) {
    this.CURRENT_DAY_QUOTE_VOLUME_BUY = CURRENT_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
   * @return CURRENT_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_DAY_QUOTE_VOLUME_SELL")
  public Integer getCURRENTDAYQUOTEVOLUMESELL() {
    return CURRENT_DAY_QUOTE_VOLUME_SELL;
  }

  public void setCURRENTDAYQUOTEVOLUMESELL(Integer CURRENT_DAY_QUOTE_VOLUME_SELL) {
    this.CURRENT_DAY_QUOTE_VOLUME_SELL = CURRENT_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_QUOTE_VOLUME_SELL(Integer CURRENT_DAY_QUOTE_VOLUME_SELL) {
    this.CURRENT_DAY_QUOTE_VOLUME_SELL = CURRENT_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
   * @return CURRENT_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getCURRENTDAYQUOTEVOLUMEUNKNOWN() {
    return CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setCURRENTDAYQUOTEVOLUMEUNKNOWN(Integer CURRENT_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN = CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_QUOTE_VOLUME_UNKNOWN(Integer CURRENT_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN = CURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
   * @return CURRENT_DAY_TOTAL_TRADES
  **/
  @JsonProperty("CURRENT_DAY_TOTAL_TRADES")
  public Integer getCURRENTDAYTOTALTRADES() {
    return CURRENT_DAY_TOTAL_TRADES;
  }

  public void setCURRENTDAYTOTALTRADES(Integer CURRENT_DAY_TOTAL_TRADES) {
    this.CURRENT_DAY_TOTAL_TRADES = CURRENT_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_TOTAL_TRADES(Integer CURRENT_DAY_TOTAL_TRADES) {
    this.CURRENT_DAY_TOTAL_TRADES = CURRENT_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
   * @return CURRENT_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("CURRENT_DAY_TOTAL_TRADES_BUY")
  public Integer getCURRENTDAYTOTALTRADESBUY() {
    return CURRENT_DAY_TOTAL_TRADES_BUY;
  }

  public void setCURRENTDAYTOTALTRADESBUY(Integer CURRENT_DAY_TOTAL_TRADES_BUY) {
    this.CURRENT_DAY_TOTAL_TRADES_BUY = CURRENT_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_TOTAL_TRADES_BUY(Integer CURRENT_DAY_TOTAL_TRADES_BUY) {
    this.CURRENT_DAY_TOTAL_TRADES_BUY = CURRENT_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
   * @return CURRENT_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("CURRENT_DAY_TOTAL_TRADES_SELL")
  public Integer getCURRENTDAYTOTALTRADESSELL() {
    return CURRENT_DAY_TOTAL_TRADES_SELL;
  }

  public void setCURRENTDAYTOTALTRADESSELL(Integer CURRENT_DAY_TOTAL_TRADES_SELL) {
    this.CURRENT_DAY_TOTAL_TRADES_SELL = CURRENT_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_TOTAL_TRADES_SELL(Integer CURRENT_DAY_TOTAL_TRADES_SELL) {
    this.CURRENT_DAY_TOTAL_TRADES_SELL = CURRENT_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
   * @return CURRENT_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("CURRENT_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getCURRENTDAYTOTALTRADESUNKNOWN() {
    return CURRENT_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setCURRENTDAYTOTALTRADESUNKNOWN(Integer CURRENT_DAY_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_DAY_TOTAL_TRADES_UNKNOWN = CURRENT_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_TOTAL_TRADES_UNKNOWN(Integer CURRENT_DAY_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_DAY_TOTAL_TRADES_UNKNOWN = CURRENT_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
   * @return CURRENT_DAY_VOLUME
  **/
  @JsonProperty("CURRENT_DAY_VOLUME")
  public Integer getCURRENTDAYVOLUME() {
    return CURRENT_DAY_VOLUME;
  }

  public void setCURRENTDAYVOLUME(Integer CURRENT_DAY_VOLUME) {
    this.CURRENT_DAY_VOLUME = CURRENT_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_VOLUME(Integer CURRENT_DAY_VOLUME) {
    this.CURRENT_DAY_VOLUME = CURRENT_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
   * @return CURRENT_DAY_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_DAY_VOLUME_BUY")
  public Integer getCURRENTDAYVOLUMEBUY() {
    return CURRENT_DAY_VOLUME_BUY;
  }

  public void setCURRENTDAYVOLUMEBUY(Integer CURRENT_DAY_VOLUME_BUY) {
    this.CURRENT_DAY_VOLUME_BUY = CURRENT_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_VOLUME_BUY(Integer CURRENT_DAY_VOLUME_BUY) {
    this.CURRENT_DAY_VOLUME_BUY = CURRENT_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
   * @return CURRENT_DAY_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_DAY_VOLUME_SELL")
  public Integer getCURRENTDAYVOLUMESELL() {
    return CURRENT_DAY_VOLUME_SELL;
  }

  public void setCURRENTDAYVOLUMESELL(Integer CURRENT_DAY_VOLUME_SELL) {
    this.CURRENT_DAY_VOLUME_SELL = CURRENT_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_VOLUME_SELL(Integer CURRENT_DAY_VOLUME_SELL) {
    this.CURRENT_DAY_VOLUME_SELL = CURRENT_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
   * @return CURRENT_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_DAY_VOLUME_UNKNOWN")
  public Integer getCURRENTDAYVOLUMEUNKNOWN() {
    return CURRENT_DAY_VOLUME_UNKNOWN;
  }

  public void setCURRENTDAYVOLUMEUNKNOWN(Integer CURRENT_DAY_VOLUME_UNKNOWN) {
    this.CURRENT_DAY_VOLUME_UNKNOWN = CURRENT_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_DAY_VOLUME_UNKNOWN(Integer CURRENT_DAY_VOLUME_UNKNOWN) {
    this.CURRENT_DAY_VOLUME_UNKNOWN = CURRENT_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
   * @return CURRENT_HOUR_HIGH
  **/
  @JsonProperty("CURRENT_HOUR_HIGH")
  public Integer getCURRENTHOURHIGH() {
    return CURRENT_HOUR_HIGH;
  }

  public void setCURRENTHOURHIGH(Integer CURRENT_HOUR_HIGH) {
    this.CURRENT_HOUR_HIGH = CURRENT_HOUR_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_HIGH(Integer CURRENT_HOUR_HIGH) {
    this.CURRENT_HOUR_HIGH = CURRENT_HOUR_HIGH;
    return this;
  }

 /**
   * The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
   * @return CURRENT_HOUR_LOW
  **/
  @JsonProperty("CURRENT_HOUR_LOW")
  public Integer getCURRENTHOURLOW() {
    return CURRENT_HOUR_LOW;
  }

  public void setCURRENTHOURLOW(Integer CURRENT_HOUR_LOW) {
    this.CURRENT_HOUR_LOW = CURRENT_HOUR_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_LOW(Integer CURRENT_HOUR_LOW) {
    this.CURRENT_HOUR_LOW = CURRENT_HOUR_LOW;
    return this;
  }

 /**
   * The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
   * @return CURRENT_HOUR_OPEN
  **/
  @JsonProperty("CURRENT_HOUR_OPEN")
  public Integer getCURRENTHOUROPEN() {
    return CURRENT_HOUR_OPEN;
  }

  public void setCURRENTHOUROPEN(Integer CURRENT_HOUR_OPEN) {
    this.CURRENT_HOUR_OPEN = CURRENT_HOUR_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_OPEN(Integer CURRENT_HOUR_OPEN) {
    this.CURRENT_HOUR_OPEN = CURRENT_HOUR_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
   * @return CURRENT_HOUR_QUOTE_VOLUME
  **/
  @JsonProperty("CURRENT_HOUR_QUOTE_VOLUME")
  public Integer getCURRENTHOURQUOTEVOLUME() {
    return CURRENT_HOUR_QUOTE_VOLUME;
  }

  public void setCURRENTHOURQUOTEVOLUME(Integer CURRENT_HOUR_QUOTE_VOLUME) {
    this.CURRENT_HOUR_QUOTE_VOLUME = CURRENT_HOUR_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_QUOTE_VOLUME(Integer CURRENT_HOUR_QUOTE_VOLUME) {
    this.CURRENT_HOUR_QUOTE_VOLUME = CURRENT_HOUR_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
   * @return CURRENT_HOUR_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_HOUR_QUOTE_VOLUME_BUY")
  public Integer getCURRENTHOURQUOTEVOLUMEBUY() {
    return CURRENT_HOUR_QUOTE_VOLUME_BUY;
  }

  public void setCURRENTHOURQUOTEVOLUMEBUY(Integer CURRENT_HOUR_QUOTE_VOLUME_BUY) {
    this.CURRENT_HOUR_QUOTE_VOLUME_BUY = CURRENT_HOUR_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_QUOTE_VOLUME_BUY(Integer CURRENT_HOUR_QUOTE_VOLUME_BUY) {
    this.CURRENT_HOUR_QUOTE_VOLUME_BUY = CURRENT_HOUR_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
   * @return CURRENT_HOUR_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_HOUR_QUOTE_VOLUME_SELL")
  public Integer getCURRENTHOURQUOTEVOLUMESELL() {
    return CURRENT_HOUR_QUOTE_VOLUME_SELL;
  }

  public void setCURRENTHOURQUOTEVOLUMESELL(Integer CURRENT_HOUR_QUOTE_VOLUME_SELL) {
    this.CURRENT_HOUR_QUOTE_VOLUME_SELL = CURRENT_HOUR_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_QUOTE_VOLUME_SELL(Integer CURRENT_HOUR_QUOTE_VOLUME_SELL) {
    this.CURRENT_HOUR_QUOTE_VOLUME_SELL = CURRENT_HOUR_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
   * @return CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN")
  public Integer getCURRENTHOURQUOTEVOLUMEUNKNOWN() {
    return CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
  }

  public void setCURRENTHOURQUOTEVOLUMEUNKNOWN(Integer CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN = CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN(Integer CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN = CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred since the start of the current hour.
   * @return CURRENT_HOUR_TOTAL_TRADES
  **/
  @JsonProperty("CURRENT_HOUR_TOTAL_TRADES")
  public Integer getCURRENTHOURTOTALTRADES() {
    return CURRENT_HOUR_TOTAL_TRADES;
  }

  public void setCURRENTHOURTOTALTRADES(Integer CURRENT_HOUR_TOTAL_TRADES) {
    this.CURRENT_HOUR_TOTAL_TRADES = CURRENT_HOUR_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_TOTAL_TRADES(Integer CURRENT_HOUR_TOTAL_TRADES) {
    this.CURRENT_HOUR_TOTAL_TRADES = CURRENT_HOUR_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades since the start of the current hour.
   * @return CURRENT_HOUR_TOTAL_TRADES_BUY
  **/
  @JsonProperty("CURRENT_HOUR_TOTAL_TRADES_BUY")
  public Integer getCURRENTHOURTOTALTRADESBUY() {
    return CURRENT_HOUR_TOTAL_TRADES_BUY;
  }

  public void setCURRENTHOURTOTALTRADESBUY(Integer CURRENT_HOUR_TOTAL_TRADES_BUY) {
    this.CURRENT_HOUR_TOTAL_TRADES_BUY = CURRENT_HOUR_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_TOTAL_TRADES_BUY(Integer CURRENT_HOUR_TOTAL_TRADES_BUY) {
    this.CURRENT_HOUR_TOTAL_TRADES_BUY = CURRENT_HOUR_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades since the start of the current hour.
   * @return CURRENT_HOUR_TOTAL_TRADES_SELL
  **/
  @JsonProperty("CURRENT_HOUR_TOTAL_TRADES_SELL")
  public Integer getCURRENTHOURTOTALTRADESSELL() {
    return CURRENT_HOUR_TOTAL_TRADES_SELL;
  }

  public void setCURRENTHOURTOTALTRADESSELL(Integer CURRENT_HOUR_TOTAL_TRADES_SELL) {
    this.CURRENT_HOUR_TOTAL_TRADES_SELL = CURRENT_HOUR_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_TOTAL_TRADES_SELL(Integer CURRENT_HOUR_TOTAL_TRADES_SELL) {
    this.CURRENT_HOUR_TOTAL_TRADES_SELL = CURRENT_HOUR_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades since the start of the current hour.
   * @return CURRENT_HOUR_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("CURRENT_HOUR_TOTAL_TRADES_UNKNOWN")
  public Integer getCURRENTHOURTOTALTRADESUNKNOWN() {
    return CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
  }

  public void setCURRENTHOURTOTALTRADESUNKNOWN(Integer CURRENT_HOUR_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN = CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_TOTAL_TRADES_UNKNOWN(Integer CURRENT_HOUR_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN = CURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
   * @return CURRENT_HOUR_VOLUME
  **/
  @JsonProperty("CURRENT_HOUR_VOLUME")
  public Integer getCURRENTHOURVOLUME() {
    return CURRENT_HOUR_VOLUME;
  }

  public void setCURRENTHOURVOLUME(Integer CURRENT_HOUR_VOLUME) {
    this.CURRENT_HOUR_VOLUME = CURRENT_HOUR_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_VOLUME(Integer CURRENT_HOUR_VOLUME) {
    this.CURRENT_HOUR_VOLUME = CURRENT_HOUR_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
   * @return CURRENT_HOUR_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_HOUR_VOLUME_BUY")
  public Integer getCURRENTHOURVOLUMEBUY() {
    return CURRENT_HOUR_VOLUME_BUY;
  }

  public void setCURRENTHOURVOLUMEBUY(Integer CURRENT_HOUR_VOLUME_BUY) {
    this.CURRENT_HOUR_VOLUME_BUY = CURRENT_HOUR_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_VOLUME_BUY(Integer CURRENT_HOUR_VOLUME_BUY) {
    this.CURRENT_HOUR_VOLUME_BUY = CURRENT_HOUR_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
   * @return CURRENT_HOUR_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_HOUR_VOLUME_SELL")
  public Integer getCURRENTHOURVOLUMESELL() {
    return CURRENT_HOUR_VOLUME_SELL;
  }

  public void setCURRENTHOURVOLUMESELL(Integer CURRENT_HOUR_VOLUME_SELL) {
    this.CURRENT_HOUR_VOLUME_SELL = CURRENT_HOUR_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_VOLUME_SELL(Integer CURRENT_HOUR_VOLUME_SELL) {
    this.CURRENT_HOUR_VOLUME_SELL = CURRENT_HOUR_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
   * @return CURRENT_HOUR_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_HOUR_VOLUME_UNKNOWN")
  public Integer getCURRENTHOURVOLUMEUNKNOWN() {
    return CURRENT_HOUR_VOLUME_UNKNOWN;
  }

  public void setCURRENTHOURVOLUMEUNKNOWN(Integer CURRENT_HOUR_VOLUME_UNKNOWN) {
    this.CURRENT_HOUR_VOLUME_UNKNOWN = CURRENT_HOUR_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_HOUR_VOLUME_UNKNOWN(Integer CURRENT_HOUR_VOLUME_UNKNOWN) {
    this.CURRENT_HOUR_VOLUME_UNKNOWN = CURRENT_HOUR_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
   * @return CURRENT_MONTH_HIGH
  **/
  @JsonProperty("CURRENT_MONTH_HIGH")
  public Integer getCURRENTMONTHHIGH() {
    return CURRENT_MONTH_HIGH;
  }

  public void setCURRENTMONTHHIGH(Integer CURRENT_MONTH_HIGH) {
    this.CURRENT_MONTH_HIGH = CURRENT_MONTH_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_HIGH(Integer CURRENT_MONTH_HIGH) {
    this.CURRENT_MONTH_HIGH = CURRENT_MONTH_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
   * @return CURRENT_MONTH_LOW
  **/
  @JsonProperty("CURRENT_MONTH_LOW")
  public Integer getCURRENTMONTHLOW() {
    return CURRENT_MONTH_LOW;
  }

  public void setCURRENTMONTHLOW(Integer CURRENT_MONTH_LOW) {
    this.CURRENT_MONTH_LOW = CURRENT_MONTH_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_LOW(Integer CURRENT_MONTH_LOW) {
    this.CURRENT_MONTH_LOW = CURRENT_MONTH_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
   * @return CURRENT_MONTH_OPEN
  **/
  @JsonProperty("CURRENT_MONTH_OPEN")
  public Integer getCURRENTMONTHOPEN() {
    return CURRENT_MONTH_OPEN;
  }

  public void setCURRENTMONTHOPEN(Integer CURRENT_MONTH_OPEN) {
    this.CURRENT_MONTH_OPEN = CURRENT_MONTH_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_OPEN(Integer CURRENT_MONTH_OPEN) {
    this.CURRENT_MONTH_OPEN = CURRENT_MONTH_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
   * @return CURRENT_MONTH_QUOTE_VOLUME
  **/
  @JsonProperty("CURRENT_MONTH_QUOTE_VOLUME")
  public Integer getCURRENTMONTHQUOTEVOLUME() {
    return CURRENT_MONTH_QUOTE_VOLUME;
  }

  public void setCURRENTMONTHQUOTEVOLUME(Integer CURRENT_MONTH_QUOTE_VOLUME) {
    this.CURRENT_MONTH_QUOTE_VOLUME = CURRENT_MONTH_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_QUOTE_VOLUME(Integer CURRENT_MONTH_QUOTE_VOLUME) {
    this.CURRENT_MONTH_QUOTE_VOLUME = CURRENT_MONTH_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
   * @return CURRENT_MONTH_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_MONTH_QUOTE_VOLUME_BUY")
  public Integer getCURRENTMONTHQUOTEVOLUMEBUY() {
    return CURRENT_MONTH_QUOTE_VOLUME_BUY;
  }

  public void setCURRENTMONTHQUOTEVOLUMEBUY(Integer CURRENT_MONTH_QUOTE_VOLUME_BUY) {
    this.CURRENT_MONTH_QUOTE_VOLUME_BUY = CURRENT_MONTH_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_QUOTE_VOLUME_BUY(Integer CURRENT_MONTH_QUOTE_VOLUME_BUY) {
    this.CURRENT_MONTH_QUOTE_VOLUME_BUY = CURRENT_MONTH_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
   * @return CURRENT_MONTH_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_MONTH_QUOTE_VOLUME_SELL")
  public Integer getCURRENTMONTHQUOTEVOLUMESELL() {
    return CURRENT_MONTH_QUOTE_VOLUME_SELL;
  }

  public void setCURRENTMONTHQUOTEVOLUMESELL(Integer CURRENT_MONTH_QUOTE_VOLUME_SELL) {
    this.CURRENT_MONTH_QUOTE_VOLUME_SELL = CURRENT_MONTH_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_QUOTE_VOLUME_SELL(Integer CURRENT_MONTH_QUOTE_VOLUME_SELL) {
    this.CURRENT_MONTH_QUOTE_VOLUME_SELL = CURRENT_MONTH_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
   * @return CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN")
  public Integer getCURRENTMONTHQUOTEVOLUMEUNKNOWN() {
    return CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
  }

  public void setCURRENTMONTHQUOTEVOLUMEUNKNOWN(Integer CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN = CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN(Integer CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN = CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
   * @return CURRENT_MONTH_TOTAL_TRADES
  **/
  @JsonProperty("CURRENT_MONTH_TOTAL_TRADES")
  public Integer getCURRENTMONTHTOTALTRADES() {
    return CURRENT_MONTH_TOTAL_TRADES;
  }

  public void setCURRENTMONTHTOTALTRADES(Integer CURRENT_MONTH_TOTAL_TRADES) {
    this.CURRENT_MONTH_TOTAL_TRADES = CURRENT_MONTH_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_TOTAL_TRADES(Integer CURRENT_MONTH_TOTAL_TRADES) {
    this.CURRENT_MONTH_TOTAL_TRADES = CURRENT_MONTH_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
   * @return CURRENT_MONTH_TOTAL_TRADES_BUY
  **/
  @JsonProperty("CURRENT_MONTH_TOTAL_TRADES_BUY")
  public Integer getCURRENTMONTHTOTALTRADESBUY() {
    return CURRENT_MONTH_TOTAL_TRADES_BUY;
  }

  public void setCURRENTMONTHTOTALTRADESBUY(Integer CURRENT_MONTH_TOTAL_TRADES_BUY) {
    this.CURRENT_MONTH_TOTAL_TRADES_BUY = CURRENT_MONTH_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_TOTAL_TRADES_BUY(Integer CURRENT_MONTH_TOTAL_TRADES_BUY) {
    this.CURRENT_MONTH_TOTAL_TRADES_BUY = CURRENT_MONTH_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
   * @return CURRENT_MONTH_TOTAL_TRADES_SELL
  **/
  @JsonProperty("CURRENT_MONTH_TOTAL_TRADES_SELL")
  public Integer getCURRENTMONTHTOTALTRADESSELL() {
    return CURRENT_MONTH_TOTAL_TRADES_SELL;
  }

  public void setCURRENTMONTHTOTALTRADESSELL(Integer CURRENT_MONTH_TOTAL_TRADES_SELL) {
    this.CURRENT_MONTH_TOTAL_TRADES_SELL = CURRENT_MONTH_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_TOTAL_TRADES_SELL(Integer CURRENT_MONTH_TOTAL_TRADES_SELL) {
    this.CURRENT_MONTH_TOTAL_TRADES_SELL = CURRENT_MONTH_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
   * @return CURRENT_MONTH_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("CURRENT_MONTH_TOTAL_TRADES_UNKNOWN")
  public Integer getCURRENTMONTHTOTALTRADESUNKNOWN() {
    return CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
  }

  public void setCURRENTMONTHTOTALTRADESUNKNOWN(Integer CURRENT_MONTH_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN = CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_TOTAL_TRADES_UNKNOWN(Integer CURRENT_MONTH_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN = CURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
   * @return CURRENT_MONTH_VOLUME
  **/
  @JsonProperty("CURRENT_MONTH_VOLUME")
  public Integer getCURRENTMONTHVOLUME() {
    return CURRENT_MONTH_VOLUME;
  }

  public void setCURRENTMONTHVOLUME(Integer CURRENT_MONTH_VOLUME) {
    this.CURRENT_MONTH_VOLUME = CURRENT_MONTH_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_VOLUME(Integer CURRENT_MONTH_VOLUME) {
    this.CURRENT_MONTH_VOLUME = CURRENT_MONTH_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
   * @return CURRENT_MONTH_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_MONTH_VOLUME_BUY")
  public Integer getCURRENTMONTHVOLUMEBUY() {
    return CURRENT_MONTH_VOLUME_BUY;
  }

  public void setCURRENTMONTHVOLUMEBUY(Integer CURRENT_MONTH_VOLUME_BUY) {
    this.CURRENT_MONTH_VOLUME_BUY = CURRENT_MONTH_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_VOLUME_BUY(Integer CURRENT_MONTH_VOLUME_BUY) {
    this.CURRENT_MONTH_VOLUME_BUY = CURRENT_MONTH_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
   * @return CURRENT_MONTH_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_MONTH_VOLUME_SELL")
  public Integer getCURRENTMONTHVOLUMESELL() {
    return CURRENT_MONTH_VOLUME_SELL;
  }

  public void setCURRENTMONTHVOLUMESELL(Integer CURRENT_MONTH_VOLUME_SELL) {
    this.CURRENT_MONTH_VOLUME_SELL = CURRENT_MONTH_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_VOLUME_SELL(Integer CURRENT_MONTH_VOLUME_SELL) {
    this.CURRENT_MONTH_VOLUME_SELL = CURRENT_MONTH_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
   * @return CURRENT_MONTH_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_MONTH_VOLUME_UNKNOWN")
  public Integer getCURRENTMONTHVOLUMEUNKNOWN() {
    return CURRENT_MONTH_VOLUME_UNKNOWN;
  }

  public void setCURRENTMONTHVOLUMEUNKNOWN(Integer CURRENT_MONTH_VOLUME_UNKNOWN) {
    this.CURRENT_MONTH_VOLUME_UNKNOWN = CURRENT_MONTH_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_MONTH_VOLUME_UNKNOWN(Integer CURRENT_MONTH_VOLUME_UNKNOWN) {
    this.CURRENT_MONTH_VOLUME_UNKNOWN = CURRENT_MONTH_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
   * @return CURRENT_WEEK_HIGH
  **/
  @JsonProperty("CURRENT_WEEK_HIGH")
  public Integer getCURRENTWEEKHIGH() {
    return CURRENT_WEEK_HIGH;
  }

  public void setCURRENTWEEKHIGH(Integer CURRENT_WEEK_HIGH) {
    this.CURRENT_WEEK_HIGH = CURRENT_WEEK_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_HIGH(Integer CURRENT_WEEK_HIGH) {
    this.CURRENT_WEEK_HIGH = CURRENT_WEEK_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
   * @return CURRENT_WEEK_LOW
  **/
  @JsonProperty("CURRENT_WEEK_LOW")
  public Integer getCURRENTWEEKLOW() {
    return CURRENT_WEEK_LOW;
  }

  public void setCURRENTWEEKLOW(Integer CURRENT_WEEK_LOW) {
    this.CURRENT_WEEK_LOW = CURRENT_WEEK_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_LOW(Integer CURRENT_WEEK_LOW) {
    this.CURRENT_WEEK_LOW = CURRENT_WEEK_LOW;
    return this;
  }

 /**
   * The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
   * @return CURRENT_WEEK_OPEN
  **/
  @JsonProperty("CURRENT_WEEK_OPEN")
  public Integer getCURRENTWEEKOPEN() {
    return CURRENT_WEEK_OPEN;
  }

  public void setCURRENTWEEKOPEN(Integer CURRENT_WEEK_OPEN) {
    this.CURRENT_WEEK_OPEN = CURRENT_WEEK_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_OPEN(Integer CURRENT_WEEK_OPEN) {
    this.CURRENT_WEEK_OPEN = CURRENT_WEEK_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
   * @return CURRENT_WEEK_QUOTE_VOLUME
  **/
  @JsonProperty("CURRENT_WEEK_QUOTE_VOLUME")
  public Integer getCURRENTWEEKQUOTEVOLUME() {
    return CURRENT_WEEK_QUOTE_VOLUME;
  }

  public void setCURRENTWEEKQUOTEVOLUME(Integer CURRENT_WEEK_QUOTE_VOLUME) {
    this.CURRENT_WEEK_QUOTE_VOLUME = CURRENT_WEEK_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_QUOTE_VOLUME(Integer CURRENT_WEEK_QUOTE_VOLUME) {
    this.CURRENT_WEEK_QUOTE_VOLUME = CURRENT_WEEK_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
   * @return CURRENT_WEEK_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_WEEK_QUOTE_VOLUME_BUY")
  public Integer getCURRENTWEEKQUOTEVOLUMEBUY() {
    return CURRENT_WEEK_QUOTE_VOLUME_BUY;
  }

  public void setCURRENTWEEKQUOTEVOLUMEBUY(Integer CURRENT_WEEK_QUOTE_VOLUME_BUY) {
    this.CURRENT_WEEK_QUOTE_VOLUME_BUY = CURRENT_WEEK_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_QUOTE_VOLUME_BUY(Integer CURRENT_WEEK_QUOTE_VOLUME_BUY) {
    this.CURRENT_WEEK_QUOTE_VOLUME_BUY = CURRENT_WEEK_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
   * @return CURRENT_WEEK_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_WEEK_QUOTE_VOLUME_SELL")
  public Integer getCURRENTWEEKQUOTEVOLUMESELL() {
    return CURRENT_WEEK_QUOTE_VOLUME_SELL;
  }

  public void setCURRENTWEEKQUOTEVOLUMESELL(Integer CURRENT_WEEK_QUOTE_VOLUME_SELL) {
    this.CURRENT_WEEK_QUOTE_VOLUME_SELL = CURRENT_WEEK_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_QUOTE_VOLUME_SELL(Integer CURRENT_WEEK_QUOTE_VOLUME_SELL) {
    this.CURRENT_WEEK_QUOTE_VOLUME_SELL = CURRENT_WEEK_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
   * @return CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN")
  public Integer getCURRENTWEEKQUOTEVOLUMEUNKNOWN() {
    return CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
  }

  public void setCURRENTWEEKQUOTEVOLUMEUNKNOWN(Integer CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN = CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN(Integer CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN = CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
   * @return CURRENT_WEEK_TOTAL_TRADES
  **/
  @JsonProperty("CURRENT_WEEK_TOTAL_TRADES")
  public Integer getCURRENTWEEKTOTALTRADES() {
    return CURRENT_WEEK_TOTAL_TRADES;
  }

  public void setCURRENTWEEKTOTALTRADES(Integer CURRENT_WEEK_TOTAL_TRADES) {
    this.CURRENT_WEEK_TOTAL_TRADES = CURRENT_WEEK_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_TOTAL_TRADES(Integer CURRENT_WEEK_TOTAL_TRADES) {
    this.CURRENT_WEEK_TOTAL_TRADES = CURRENT_WEEK_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
   * @return CURRENT_WEEK_TOTAL_TRADES_BUY
  **/
  @JsonProperty("CURRENT_WEEK_TOTAL_TRADES_BUY")
  public Integer getCURRENTWEEKTOTALTRADESBUY() {
    return CURRENT_WEEK_TOTAL_TRADES_BUY;
  }

  public void setCURRENTWEEKTOTALTRADESBUY(Integer CURRENT_WEEK_TOTAL_TRADES_BUY) {
    this.CURRENT_WEEK_TOTAL_TRADES_BUY = CURRENT_WEEK_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_TOTAL_TRADES_BUY(Integer CURRENT_WEEK_TOTAL_TRADES_BUY) {
    this.CURRENT_WEEK_TOTAL_TRADES_BUY = CURRENT_WEEK_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
   * @return CURRENT_WEEK_TOTAL_TRADES_SELL
  **/
  @JsonProperty("CURRENT_WEEK_TOTAL_TRADES_SELL")
  public Integer getCURRENTWEEKTOTALTRADESSELL() {
    return CURRENT_WEEK_TOTAL_TRADES_SELL;
  }

  public void setCURRENTWEEKTOTALTRADESSELL(Integer CURRENT_WEEK_TOTAL_TRADES_SELL) {
    this.CURRENT_WEEK_TOTAL_TRADES_SELL = CURRENT_WEEK_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_TOTAL_TRADES_SELL(Integer CURRENT_WEEK_TOTAL_TRADES_SELL) {
    this.CURRENT_WEEK_TOTAL_TRADES_SELL = CURRENT_WEEK_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
   * @return CURRENT_WEEK_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("CURRENT_WEEK_TOTAL_TRADES_UNKNOWN")
  public Integer getCURRENTWEEKTOTALTRADESUNKNOWN() {
    return CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
  }

  public void setCURRENTWEEKTOTALTRADESUNKNOWN(Integer CURRENT_WEEK_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN = CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_TOTAL_TRADES_UNKNOWN(Integer CURRENT_WEEK_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN = CURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
   * @return CURRENT_WEEK_VOLUME
  **/
  @JsonProperty("CURRENT_WEEK_VOLUME")
  public Integer getCURRENTWEEKVOLUME() {
    return CURRENT_WEEK_VOLUME;
  }

  public void setCURRENTWEEKVOLUME(Integer CURRENT_WEEK_VOLUME) {
    this.CURRENT_WEEK_VOLUME = CURRENT_WEEK_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_VOLUME(Integer CURRENT_WEEK_VOLUME) {
    this.CURRENT_WEEK_VOLUME = CURRENT_WEEK_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
   * @return CURRENT_WEEK_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_WEEK_VOLUME_BUY")
  public Integer getCURRENTWEEKVOLUMEBUY() {
    return CURRENT_WEEK_VOLUME_BUY;
  }

  public void setCURRENTWEEKVOLUMEBUY(Integer CURRENT_WEEK_VOLUME_BUY) {
    this.CURRENT_WEEK_VOLUME_BUY = CURRENT_WEEK_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_VOLUME_BUY(Integer CURRENT_WEEK_VOLUME_BUY) {
    this.CURRENT_WEEK_VOLUME_BUY = CURRENT_WEEK_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
   * @return CURRENT_WEEK_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_WEEK_VOLUME_SELL")
  public Integer getCURRENTWEEKVOLUMESELL() {
    return CURRENT_WEEK_VOLUME_SELL;
  }

  public void setCURRENTWEEKVOLUMESELL(Integer CURRENT_WEEK_VOLUME_SELL) {
    this.CURRENT_WEEK_VOLUME_SELL = CURRENT_WEEK_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_VOLUME_SELL(Integer CURRENT_WEEK_VOLUME_SELL) {
    this.CURRENT_WEEK_VOLUME_SELL = CURRENT_WEEK_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
   * @return CURRENT_WEEK_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_WEEK_VOLUME_UNKNOWN")
  public Integer getCURRENTWEEKVOLUMEUNKNOWN() {
    return CURRENT_WEEK_VOLUME_UNKNOWN;
  }

  public void setCURRENTWEEKVOLUMEUNKNOWN(Integer CURRENT_WEEK_VOLUME_UNKNOWN) {
    this.CURRENT_WEEK_VOLUME_UNKNOWN = CURRENT_WEEK_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_WEEK_VOLUME_UNKNOWN(Integer CURRENT_WEEK_VOLUME_UNKNOWN) {
    this.CURRENT_WEEK_VOLUME_UNKNOWN = CURRENT_WEEK_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
   * @return CURRENT_YEAR_HIGH
  **/
  @JsonProperty("CURRENT_YEAR_HIGH")
  public Integer getCURRENTYEARHIGH() {
    return CURRENT_YEAR_HIGH;
  }

  public void setCURRENTYEARHIGH(Integer CURRENT_YEAR_HIGH) {
    this.CURRENT_YEAR_HIGH = CURRENT_YEAR_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_HIGH(Integer CURRENT_YEAR_HIGH) {
    this.CURRENT_YEAR_HIGH = CURRENT_YEAR_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
   * @return CURRENT_YEAR_LOW
  **/
  @JsonProperty("CURRENT_YEAR_LOW")
  public Integer getCURRENTYEARLOW() {
    return CURRENT_YEAR_LOW;
  }

  public void setCURRENTYEARLOW(Integer CURRENT_YEAR_LOW) {
    this.CURRENT_YEAR_LOW = CURRENT_YEAR_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_LOW(Integer CURRENT_YEAR_LOW) {
    this.CURRENT_YEAR_LOW = CURRENT_YEAR_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
   * @return CURRENT_YEAR_OPEN
  **/
  @JsonProperty("CURRENT_YEAR_OPEN")
  public Integer getCURRENTYEAROPEN() {
    return CURRENT_YEAR_OPEN;
  }

  public void setCURRENTYEAROPEN(Integer CURRENT_YEAR_OPEN) {
    this.CURRENT_YEAR_OPEN = CURRENT_YEAR_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_OPEN(Integer CURRENT_YEAR_OPEN) {
    this.CURRENT_YEAR_OPEN = CURRENT_YEAR_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
   * @return CURRENT_YEAR_QUOTE_VOLUME
  **/
  @JsonProperty("CURRENT_YEAR_QUOTE_VOLUME")
  public Integer getCURRENTYEARQUOTEVOLUME() {
    return CURRENT_YEAR_QUOTE_VOLUME;
  }

  public void setCURRENTYEARQUOTEVOLUME(Integer CURRENT_YEAR_QUOTE_VOLUME) {
    this.CURRENT_YEAR_QUOTE_VOLUME = CURRENT_YEAR_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_QUOTE_VOLUME(Integer CURRENT_YEAR_QUOTE_VOLUME) {
    this.CURRENT_YEAR_QUOTE_VOLUME = CURRENT_YEAR_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
   * @return CURRENT_YEAR_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_YEAR_QUOTE_VOLUME_BUY")
  public Integer getCURRENTYEARQUOTEVOLUMEBUY() {
    return CURRENT_YEAR_QUOTE_VOLUME_BUY;
  }

  public void setCURRENTYEARQUOTEVOLUMEBUY(Integer CURRENT_YEAR_QUOTE_VOLUME_BUY) {
    this.CURRENT_YEAR_QUOTE_VOLUME_BUY = CURRENT_YEAR_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_QUOTE_VOLUME_BUY(Integer CURRENT_YEAR_QUOTE_VOLUME_BUY) {
    this.CURRENT_YEAR_QUOTE_VOLUME_BUY = CURRENT_YEAR_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
   * @return CURRENT_YEAR_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_YEAR_QUOTE_VOLUME_SELL")
  public Integer getCURRENTYEARQUOTEVOLUMESELL() {
    return CURRENT_YEAR_QUOTE_VOLUME_SELL;
  }

  public void setCURRENTYEARQUOTEVOLUMESELL(Integer CURRENT_YEAR_QUOTE_VOLUME_SELL) {
    this.CURRENT_YEAR_QUOTE_VOLUME_SELL = CURRENT_YEAR_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_QUOTE_VOLUME_SELL(Integer CURRENT_YEAR_QUOTE_VOLUME_SELL) {
    this.CURRENT_YEAR_QUOTE_VOLUME_SELL = CURRENT_YEAR_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
   * @return CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN")
  public Integer getCURRENTYEARQUOTEVOLUMEUNKNOWN() {
    return CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
  }

  public void setCURRENTYEARQUOTEVOLUMEUNKNOWN(Integer CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN = CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN(Integer CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN) {
    this.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN = CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
   * @return CURRENT_YEAR_TOTAL_TRADES
  **/
  @JsonProperty("CURRENT_YEAR_TOTAL_TRADES")
  public Integer getCURRENTYEARTOTALTRADES() {
    return CURRENT_YEAR_TOTAL_TRADES;
  }

  public void setCURRENTYEARTOTALTRADES(Integer CURRENT_YEAR_TOTAL_TRADES) {
    this.CURRENT_YEAR_TOTAL_TRADES = CURRENT_YEAR_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_TOTAL_TRADES(Integer CURRENT_YEAR_TOTAL_TRADES) {
    this.CURRENT_YEAR_TOTAL_TRADES = CURRENT_YEAR_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
   * @return CURRENT_YEAR_TOTAL_TRADES_BUY
  **/
  @JsonProperty("CURRENT_YEAR_TOTAL_TRADES_BUY")
  public Integer getCURRENTYEARTOTALTRADESBUY() {
    return CURRENT_YEAR_TOTAL_TRADES_BUY;
  }

  public void setCURRENTYEARTOTALTRADESBUY(Integer CURRENT_YEAR_TOTAL_TRADES_BUY) {
    this.CURRENT_YEAR_TOTAL_TRADES_BUY = CURRENT_YEAR_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_TOTAL_TRADES_BUY(Integer CURRENT_YEAR_TOTAL_TRADES_BUY) {
    this.CURRENT_YEAR_TOTAL_TRADES_BUY = CURRENT_YEAR_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
   * @return CURRENT_YEAR_TOTAL_TRADES_SELL
  **/
  @JsonProperty("CURRENT_YEAR_TOTAL_TRADES_SELL")
  public Integer getCURRENTYEARTOTALTRADESSELL() {
    return CURRENT_YEAR_TOTAL_TRADES_SELL;
  }

  public void setCURRENTYEARTOTALTRADESSELL(Integer CURRENT_YEAR_TOTAL_TRADES_SELL) {
    this.CURRENT_YEAR_TOTAL_TRADES_SELL = CURRENT_YEAR_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_TOTAL_TRADES_SELL(Integer CURRENT_YEAR_TOTAL_TRADES_SELL) {
    this.CURRENT_YEAR_TOTAL_TRADES_SELL = CURRENT_YEAR_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
   * @return CURRENT_YEAR_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("CURRENT_YEAR_TOTAL_TRADES_UNKNOWN")
  public Integer getCURRENTYEARTOTALTRADESUNKNOWN() {
    return CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
  }

  public void setCURRENTYEARTOTALTRADESUNKNOWN(Integer CURRENT_YEAR_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN = CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_TOTAL_TRADES_UNKNOWN(Integer CURRENT_YEAR_TOTAL_TRADES_UNKNOWN) {
    this.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN = CURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
   * @return CURRENT_YEAR_VOLUME
  **/
  @JsonProperty("CURRENT_YEAR_VOLUME")
  public Integer getCURRENTYEARVOLUME() {
    return CURRENT_YEAR_VOLUME;
  }

  public void setCURRENTYEARVOLUME(Integer CURRENT_YEAR_VOLUME) {
    this.CURRENT_YEAR_VOLUME = CURRENT_YEAR_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_VOLUME(Integer CURRENT_YEAR_VOLUME) {
    this.CURRENT_YEAR_VOLUME = CURRENT_YEAR_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
   * @return CURRENT_YEAR_VOLUME_BUY
  **/
  @JsonProperty("CURRENT_YEAR_VOLUME_BUY")
  public Integer getCURRENTYEARVOLUMEBUY() {
    return CURRENT_YEAR_VOLUME_BUY;
  }

  public void setCURRENTYEARVOLUMEBUY(Integer CURRENT_YEAR_VOLUME_BUY) {
    this.CURRENT_YEAR_VOLUME_BUY = CURRENT_YEAR_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_VOLUME_BUY(Integer CURRENT_YEAR_VOLUME_BUY) {
    this.CURRENT_YEAR_VOLUME_BUY = CURRENT_YEAR_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
   * @return CURRENT_YEAR_VOLUME_SELL
  **/
  @JsonProperty("CURRENT_YEAR_VOLUME_SELL")
  public Integer getCURRENTYEARVOLUMESELL() {
    return CURRENT_YEAR_VOLUME_SELL;
  }

  public void setCURRENTYEARVOLUMESELL(Integer CURRENT_YEAR_VOLUME_SELL) {
    this.CURRENT_YEAR_VOLUME_SELL = CURRENT_YEAR_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_VOLUME_SELL(Integer CURRENT_YEAR_VOLUME_SELL) {
    this.CURRENT_YEAR_VOLUME_SELL = CURRENT_YEAR_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
   * @return CURRENT_YEAR_VOLUME_UNKNOWN
  **/
  @JsonProperty("CURRENT_YEAR_VOLUME_UNKNOWN")
  public Integer getCURRENTYEARVOLUMEUNKNOWN() {
    return CURRENT_YEAR_VOLUME_UNKNOWN;
  }

  public void setCURRENTYEARVOLUMEUNKNOWN(Integer CURRENT_YEAR_VOLUME_UNKNOWN) {
    this.CURRENT_YEAR_VOLUME_UNKNOWN = CURRENT_YEAR_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA CURRENT_YEAR_VOLUME_UNKNOWN(Integer CURRENT_YEAR_VOLUME_UNKNOWN) {
    this.CURRENT_YEAR_VOLUME_UNKNOWN = CURRENT_YEAR_VOLUME_UNKNOWN;
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

  public SPOTINSTRUMENTMARKETDATA INSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
    return this;
  }

 /**
   * The CCSEQ of the latest trade.
   * @return LAST_PROCESSED_TRADE_CCSEQ
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_CCSEQ")
  public String getLASTPROCESSEDTRADECCSEQ() {
    return LAST_PROCESSED_TRADE_CCSEQ;
  }

  public void setLASTPROCESSEDTRADECCSEQ(String LAST_PROCESSED_TRADE_CCSEQ) {
    this.LAST_PROCESSED_TRADE_CCSEQ = LAST_PROCESSED_TRADE_CCSEQ;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_CCSEQ(String LAST_PROCESSED_TRADE_CCSEQ) {
    this.LAST_PROCESSED_TRADE_CCSEQ = LAST_PROCESSED_TRADE_CCSEQ;
    return this;
  }

 /**
   * The price in the quote asset of the last trade processed, as reported by the market / exchange.
   * @return LAST_PROCESSED_TRADE_PRICE
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_PRICE")
  public Integer getLASTPROCESSEDTRADEPRICE() {
    return LAST_PROCESSED_TRADE_PRICE;
  }

  public void setLASTPROCESSEDTRADEPRICE(Integer LAST_PROCESSED_TRADE_PRICE) {
    this.LAST_PROCESSED_TRADE_PRICE = LAST_PROCESSED_TRADE_PRICE;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_PRICE(Integer LAST_PROCESSED_TRADE_PRICE) {
    this.LAST_PROCESSED_TRADE_PRICE = LAST_PROCESSED_TRADE_PRICE;
    return this;
  }

 /**
   * The quantity of the last processed trade in the from symbol (base / coin).
   * @return LAST_PROCESSED_TRADE_QUANTITY
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_QUANTITY")
  public Integer getLASTPROCESSEDTRADEQUANTITY() {
    return LAST_PROCESSED_TRADE_QUANTITY;
  }

  public void setLASTPROCESSEDTRADEQUANTITY(Integer LAST_PROCESSED_TRADE_QUANTITY) {
    this.LAST_PROCESSED_TRADE_QUANTITY = LAST_PROCESSED_TRADE_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_QUANTITY(Integer LAST_PROCESSED_TRADE_QUANTITY) {
    this.LAST_PROCESSED_TRADE_QUANTITY = LAST_PROCESSED_TRADE_QUANTITY;
    return this;
  }

 /**
   * The  volume of the last processed trade in the to asset / quote.
   * @return LAST_PROCESSED_TRADE_QUOTE_QUANTITY
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_QUOTE_QUANTITY")
  public Integer getLASTPROCESSEDTRADEQUOTEQUANTITY() {
    return LAST_PROCESSED_TRADE_QUOTE_QUANTITY;
  }

  public void setLASTPROCESSEDTRADEQUOTEQUANTITY(Integer LAST_PROCESSED_TRADE_QUOTE_QUANTITY) {
    this.LAST_PROCESSED_TRADE_QUOTE_QUANTITY = LAST_PROCESSED_TRADE_QUOTE_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_QUOTE_QUANTITY(Integer LAST_PROCESSED_TRADE_QUOTE_QUANTITY) {
    this.LAST_PROCESSED_TRADE_QUOTE_QUANTITY = LAST_PROCESSED_TRADE_QUOTE_QUANTITY;
    return this;
  }

 /**
   * The side of the last processed trade.
   * @return LAST_PROCESSED_TRADE_SIDE
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_SIDE")
  public String getLASTPROCESSEDTRADESIDE() {
    return LAST_PROCESSED_TRADE_SIDE;
  }

  public void setLASTPROCESSEDTRADESIDE(String LAST_PROCESSED_TRADE_SIDE) {
    this.LAST_PROCESSED_TRADE_SIDE = LAST_PROCESSED_TRADE_SIDE;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_SIDE(String LAST_PROCESSED_TRADE_SIDE) {
    this.LAST_PROCESSED_TRADE_SIDE = LAST_PROCESSED_TRADE_SIDE;
    return this;
  }

 /**
   * The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
   * @return LAST_PROCESSED_TRADE_TS
  **/
  @JsonProperty("LAST_PROCESSED_TRADE_TS")
  public Integer getLASTPROCESSEDTRADETS() {
    return LAST_PROCESSED_TRADE_TS;
  }

  public void setLASTPROCESSEDTRADETS(Integer LAST_PROCESSED_TRADE_TS) {
    this.LAST_PROCESSED_TRADE_TS = LAST_PROCESSED_TRADE_TS;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_PROCESSED_TRADE_TS(Integer LAST_PROCESSED_TRADE_TS) {
    this.LAST_PROCESSED_TRADE_TS = LAST_PROCESSED_TRADE_TS;
    return this;
  }

 /**
   * The CCSEQ of the latest trade.
   * @return LAST_TRADE_CCSEQ
  **/
  @JsonProperty("LAST_TRADE_CCSEQ")
  public String getLASTTRADECCSEQ() {
    return LAST_TRADE_CCSEQ;
  }

  public void setLASTTRADECCSEQ(String LAST_TRADE_CCSEQ) {
    this.LAST_TRADE_CCSEQ = LAST_TRADE_CCSEQ;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_TRADE_CCSEQ(String LAST_TRADE_CCSEQ) {
    this.LAST_TRADE_CCSEQ = LAST_TRADE_CCSEQ;
    return this;
  }

 /**
   * The ID of the latest trade.
   * @return LAST_TRADE_ID
  **/
  @JsonProperty("LAST_TRADE_ID")
  public String getLASTTRADEID() {
    return LAST_TRADE_ID;
  }

  public void setLASTTRADEID(String LAST_TRADE_ID) {
    this.LAST_TRADE_ID = LAST_TRADE_ID;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_TRADE_ID(String LAST_TRADE_ID) {
    this.LAST_TRADE_ID = LAST_TRADE_ID;
    return this;
  }

 /**
   * The quantity of the latest trade in the from symbol (base / coin).
   * @return LAST_TRADE_QUANTITY
  **/
  @JsonProperty("LAST_TRADE_QUANTITY")
  public Integer getLASTTRADEQUANTITY() {
    return LAST_TRADE_QUANTITY;
  }

  public void setLASTTRADEQUANTITY(Integer LAST_TRADE_QUANTITY) {
    this.LAST_TRADE_QUANTITY = LAST_TRADE_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_TRADE_QUANTITY(Integer LAST_TRADE_QUANTITY) {
    this.LAST_TRADE_QUANTITY = LAST_TRADE_QUANTITY;
    return this;
  }

 /**
   * The volume of the latest trade in the to asset / quote.
   * @return LAST_TRADE_QUOTE_QUANTITY
  **/
  @JsonProperty("LAST_TRADE_QUOTE_QUANTITY")
  public Integer getLASTTRADEQUOTEQUANTITY() {
    return LAST_TRADE_QUOTE_QUANTITY;
  }

  public void setLASTTRADEQUOTEQUANTITY(Integer LAST_TRADE_QUOTE_QUANTITY) {
    this.LAST_TRADE_QUOTE_QUANTITY = LAST_TRADE_QUOTE_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_TRADE_QUOTE_QUANTITY(Integer LAST_TRADE_QUOTE_QUANTITY) {
    this.LAST_TRADE_QUOTE_QUANTITY = LAST_TRADE_QUOTE_QUANTITY;
    return this;
  }

 /**
   * The side of the latest trade.
   * @return LAST_TRADE_SIDE
  **/
  @JsonProperty("LAST_TRADE_SIDE")
  public String getLASTTRADESIDE() {
    return LAST_TRADE_SIDE;
  }

  public void setLASTTRADESIDE(String LAST_TRADE_SIDE) {
    this.LAST_TRADE_SIDE = LAST_TRADE_SIDE;
  }

  public SPOTINSTRUMENTMARKETDATA LAST_TRADE_SIDE(String LAST_TRADE_SIDE) {
    this.LAST_TRADE_SIDE = LAST_TRADE_SIDE;
    return this;
  }

 /**
   * The timestamp of the first trade ever recorded for the instrument
   * @return LIFETIME_FIRST_TRADE_TS
  **/
  @JsonProperty("LIFETIME_FIRST_TRADE_TS")
  public Integer getLIFETIMEFIRSTTRADETS() {
    return LIFETIME_FIRST_TRADE_TS;
  }

  public void setLIFETIMEFIRSTTRADETS(Integer LIFETIME_FIRST_TRADE_TS) {
    this.LIFETIME_FIRST_TRADE_TS = LIFETIME_FIRST_TRADE_TS;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_FIRST_TRADE_TS(Integer LIFETIME_FIRST_TRADE_TS) {
    this.LIFETIME_FIRST_TRADE_TS = LIFETIME_FIRST_TRADE_TS;
    return this;
  }

 /**
   * The price of the highest trade ever executed for this instrument. Given in the quote asset.
   * @return LIFETIME_HIGH
  **/
  @JsonProperty("LIFETIME_HIGH")
  public Integer getLIFETIMEHIGH() {
    return LIFETIME_HIGH;
  }

  public void setLIFETIMEHIGH(Integer LIFETIME_HIGH) {
    this.LIFETIME_HIGH = LIFETIME_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_HIGH(Integer LIFETIME_HIGH) {
    this.LIFETIME_HIGH = LIFETIME_HIGH;
    return this;
  }

 /**
   * The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
   * @return LIFETIME_HIGH_TS
  **/
  @JsonProperty("LIFETIME_HIGH_TS")
  public Integer getLIFETIMEHIGHTS() {
    return LIFETIME_HIGH_TS;
  }

  public void setLIFETIMEHIGHTS(Integer LIFETIME_HIGH_TS) {
    this.LIFETIME_HIGH_TS = LIFETIME_HIGH_TS;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_HIGH_TS(Integer LIFETIME_HIGH_TS) {
    this.LIFETIME_HIGH_TS = LIFETIME_HIGH_TS;
    return this;
  }

 /**
   * The price of the lowest trade ever executed for this instrument. Given in the quote asset.
   * @return LIFETIME_LOW
  **/
  @JsonProperty("LIFETIME_LOW")
  public Integer getLIFETIMELOW() {
    return LIFETIME_LOW;
  }

  public void setLIFETIMELOW(Integer LIFETIME_LOW) {
    this.LIFETIME_LOW = LIFETIME_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_LOW(Integer LIFETIME_LOW) {
    this.LIFETIME_LOW = LIFETIME_LOW;
    return this;
  }

 /**
   * The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
   * @return LIFETIME_LOW_TS
  **/
  @JsonProperty("LIFETIME_LOW_TS")
  public Integer getLIFETIMELOWTS() {
    return LIFETIME_LOW_TS;
  }

  public void setLIFETIMELOWTS(Integer LIFETIME_LOW_TS) {
    this.LIFETIME_LOW_TS = LIFETIME_LOW_TS;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_LOW_TS(Integer LIFETIME_LOW_TS) {
    this.LIFETIME_LOW_TS = LIFETIME_LOW_TS;
    return this;
  }

 /**
   * The price of the first trade of the instrument. Given in the quote asset.
   * @return LIFETIME_OPEN
  **/
  @JsonProperty("LIFETIME_OPEN")
  public Integer getLIFETIMEOPEN() {
    return LIFETIME_OPEN;
  }

  public void setLIFETIMEOPEN(Integer LIFETIME_OPEN) {
    this.LIFETIME_OPEN = LIFETIME_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_OPEN(Integer LIFETIME_OPEN) {
    this.LIFETIME_OPEN = LIFETIME_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
   * @return LIFETIME_QUOTE_VOLUME
  **/
  @JsonProperty("LIFETIME_QUOTE_VOLUME")
  public Integer getLIFETIMEQUOTEVOLUME() {
    return LIFETIME_QUOTE_VOLUME;
  }

  public void setLIFETIMEQUOTEVOLUME(Integer LIFETIME_QUOTE_VOLUME) {
    this.LIFETIME_QUOTE_VOLUME = LIFETIME_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_QUOTE_VOLUME(Integer LIFETIME_QUOTE_VOLUME) {
    this.LIFETIME_QUOTE_VOLUME = LIFETIME_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
   * @return LIFETIME_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("LIFETIME_QUOTE_VOLUME_BUY")
  public Integer getLIFETIMEQUOTEVOLUMEBUY() {
    return LIFETIME_QUOTE_VOLUME_BUY;
  }

  public void setLIFETIMEQUOTEVOLUMEBUY(Integer LIFETIME_QUOTE_VOLUME_BUY) {
    this.LIFETIME_QUOTE_VOLUME_BUY = LIFETIME_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_QUOTE_VOLUME_BUY(Integer LIFETIME_QUOTE_VOLUME_BUY) {
    this.LIFETIME_QUOTE_VOLUME_BUY = LIFETIME_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
   * @return LIFETIME_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("LIFETIME_QUOTE_VOLUME_SELL")
  public Integer getLIFETIMEQUOTEVOLUMESELL() {
    return LIFETIME_QUOTE_VOLUME_SELL;
  }

  public void setLIFETIMEQUOTEVOLUMESELL(Integer LIFETIME_QUOTE_VOLUME_SELL) {
    this.LIFETIME_QUOTE_VOLUME_SELL = LIFETIME_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_QUOTE_VOLUME_SELL(Integer LIFETIME_QUOTE_VOLUME_SELL) {
    this.LIFETIME_QUOTE_VOLUME_SELL = LIFETIME_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
   * @return LIFETIME_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("LIFETIME_QUOTE_VOLUME_UNKNOWN")
  public Integer getLIFETIMEQUOTEVOLUMEUNKNOWN() {
    return LIFETIME_QUOTE_VOLUME_UNKNOWN;
  }

  public void setLIFETIMEQUOTEVOLUMEUNKNOWN(Integer LIFETIME_QUOTE_VOLUME_UNKNOWN) {
    this.LIFETIME_QUOTE_VOLUME_UNKNOWN = LIFETIME_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_QUOTE_VOLUME_UNKNOWN(Integer LIFETIME_QUOTE_VOLUME_UNKNOWN) {
    this.LIFETIME_QUOTE_VOLUME_UNKNOWN = LIFETIME_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of all trades that have ever been executed for this instrument.
   * @return LIFETIME_TOTAL_TRADES
  **/
  @JsonProperty("LIFETIME_TOTAL_TRADES")
  public Integer getLIFETIMETOTALTRADES() {
    return LIFETIME_TOTAL_TRADES;
  }

  public void setLIFETIMETOTALTRADES(Integer LIFETIME_TOTAL_TRADES) {
    this.LIFETIME_TOTAL_TRADES = LIFETIME_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_TOTAL_TRADES(Integer LIFETIME_TOTAL_TRADES) {
    this.LIFETIME_TOTAL_TRADES = LIFETIME_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of all buy trades that have ever been executed for this instrument.
   * @return LIFETIME_TOTAL_TRADES_BUY
  **/
  @JsonProperty("LIFETIME_TOTAL_TRADES_BUY")
  public Integer getLIFETIMETOTALTRADESBUY() {
    return LIFETIME_TOTAL_TRADES_BUY;
  }

  public void setLIFETIMETOTALTRADESBUY(Integer LIFETIME_TOTAL_TRADES_BUY) {
    this.LIFETIME_TOTAL_TRADES_BUY = LIFETIME_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_TOTAL_TRADES_BUY(Integer LIFETIME_TOTAL_TRADES_BUY) {
    this.LIFETIME_TOTAL_TRADES_BUY = LIFETIME_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of all sell trades that have ever been executed for this instrument.
   * @return LIFETIME_TOTAL_TRADES_SELL
  **/
  @JsonProperty("LIFETIME_TOTAL_TRADES_SELL")
  public Integer getLIFETIMETOTALTRADESSELL() {
    return LIFETIME_TOTAL_TRADES_SELL;
  }

  public void setLIFETIMETOTALTRADESSELL(Integer LIFETIME_TOTAL_TRADES_SELL) {
    this.LIFETIME_TOTAL_TRADES_SELL = LIFETIME_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_TOTAL_TRADES_SELL(Integer LIFETIME_TOTAL_TRADES_SELL) {
    this.LIFETIME_TOTAL_TRADES_SELL = LIFETIME_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of all unknown trades that have ever been executed for this instrument.
   * @return LIFETIME_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("LIFETIME_TOTAL_TRADES_UNKNOWN")
  public Integer getLIFETIMETOTALTRADESUNKNOWN() {
    return LIFETIME_TOTAL_TRADES_UNKNOWN;
  }

  public void setLIFETIMETOTALTRADESUNKNOWN(Integer LIFETIME_TOTAL_TRADES_UNKNOWN) {
    this.LIFETIME_TOTAL_TRADES_UNKNOWN = LIFETIME_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_TOTAL_TRADES_UNKNOWN(Integer LIFETIME_TOTAL_TRADES_UNKNOWN) {
    this.LIFETIME_TOTAL_TRADES_UNKNOWN = LIFETIME_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
   * @return LIFETIME_VOLUME
  **/
  @JsonProperty("LIFETIME_VOLUME")
  public Integer getLIFETIMEVOLUME() {
    return LIFETIME_VOLUME;
  }

  public void setLIFETIMEVOLUME(Integer LIFETIME_VOLUME) {
    this.LIFETIME_VOLUME = LIFETIME_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_VOLUME(Integer LIFETIME_VOLUME) {
    this.LIFETIME_VOLUME = LIFETIME_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
   * @return LIFETIME_VOLUME_BUY
  **/
  @JsonProperty("LIFETIME_VOLUME_BUY")
  public Integer getLIFETIMEVOLUMEBUY() {
    return LIFETIME_VOLUME_BUY;
  }

  public void setLIFETIMEVOLUMEBUY(Integer LIFETIME_VOLUME_BUY) {
    this.LIFETIME_VOLUME_BUY = LIFETIME_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_VOLUME_BUY(Integer LIFETIME_VOLUME_BUY) {
    this.LIFETIME_VOLUME_BUY = LIFETIME_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
   * @return LIFETIME_VOLUME_SELL
  **/
  @JsonProperty("LIFETIME_VOLUME_SELL")
  public Integer getLIFETIMEVOLUMESELL() {
    return LIFETIME_VOLUME_SELL;
  }

  public void setLIFETIMEVOLUMESELL(Integer LIFETIME_VOLUME_SELL) {
    this.LIFETIME_VOLUME_SELL = LIFETIME_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_VOLUME_SELL(Integer LIFETIME_VOLUME_SELL) {
    this.LIFETIME_VOLUME_SELL = LIFETIME_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
   * @return LIFETIME_VOLUME_UNKNOWN
  **/
  @JsonProperty("LIFETIME_VOLUME_UNKNOWN")
  public Integer getLIFETIMEVOLUMEUNKNOWN() {
    return LIFETIME_VOLUME_UNKNOWN;
  }

  public void setLIFETIMEVOLUMEUNKNOWN(Integer LIFETIME_VOLUME_UNKNOWN) {
    this.LIFETIME_VOLUME_UNKNOWN = LIFETIME_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA LIFETIME_VOLUME_UNKNOWN(Integer LIFETIME_VOLUME_UNKNOWN) {
    this.LIFETIME_VOLUME_UNKNOWN = LIFETIME_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The mapped instrument ID, derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped.
   * @return MAPPED_INSTRUMENT
  **/
  @JsonProperty("MAPPED_INSTRUMENT")
  public String getMAPPEDINSTRUMENT() {
    return MAPPED_INSTRUMENT;
  }

  public void setMAPPEDINSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
  }

  public SPOTINSTRUMENTMARKETDATA MAPPED_INSTRUMENT(String MAPPED_INSTRUMENT) {
    this.MAPPED_INSTRUMENT = MAPPED_INSTRUMENT;
    return this;
  }

 /**
   * The market / exchange under consideration (e.g. coinbase, kraken, etc).
   * @return MARKET
  **/
  @JsonProperty("MARKET")
  public String getMARKET() {
    return MARKET;
  }

  public void setMARKET(String MARKET) {
    this.MARKET = MARKET;
  }

  public SPOTINSTRUMENTMARKETDATA MARKET(String MARKET) {
    this.MARKET = MARKET;
    return this;
  }

 /**
   * The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_HIGH
  **/
  @JsonProperty("MOVING_180_DAY_HIGH")
  public Integer getMOVING180DAYHIGH() {
    return MOVING_180_DAY_HIGH;
  }

  public void setMOVING180DAYHIGH(Integer MOVING_180_DAY_HIGH) {
    this.MOVING_180_DAY_HIGH = MOVING_180_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_HIGH(Integer MOVING_180_DAY_HIGH) {
    this.MOVING_180_DAY_HIGH = MOVING_180_DAY_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_LOW
  **/
  @JsonProperty("MOVING_180_DAY_LOW")
  public Integer getMOVING180DAYLOW() {
    return MOVING_180_DAY_LOW;
  }

  public void setMOVING180DAYLOW(Integer MOVING_180_DAY_LOW) {
    this.MOVING_180_DAY_LOW = MOVING_180_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_LOW(Integer MOVING_180_DAY_LOW) {
    this.MOVING_180_DAY_LOW = MOVING_180_DAY_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
   * @return MOVING_180_DAY_OPEN
  **/
  @JsonProperty("MOVING_180_DAY_OPEN")
  public Integer getMOVING180DAYOPEN() {
    return MOVING_180_DAY_OPEN;
  }

  public void setMOVING180DAYOPEN(Integer MOVING_180_DAY_OPEN) {
    this.MOVING_180_DAY_OPEN = MOVING_180_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_OPEN(Integer MOVING_180_DAY_OPEN) {
    this.MOVING_180_DAY_OPEN = MOVING_180_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_180_DAY_QUOTE_VOLUME")
  public Integer getMOVING180DAYQUOTEVOLUME() {
    return MOVING_180_DAY_QUOTE_VOLUME;
  }

  public void setMOVING180DAYQUOTEVOLUME(Integer MOVING_180_DAY_QUOTE_VOLUME) {
    this.MOVING_180_DAY_QUOTE_VOLUME = MOVING_180_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_QUOTE_VOLUME(Integer MOVING_180_DAY_QUOTE_VOLUME) {
    this.MOVING_180_DAY_QUOTE_VOLUME = MOVING_180_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_180_DAY_QUOTE_VOLUME_BUY")
  public Integer getMOVING180DAYQUOTEVOLUMEBUY() {
    return MOVING_180_DAY_QUOTE_VOLUME_BUY;
  }

  public void setMOVING180DAYQUOTEVOLUMEBUY(Integer MOVING_180_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_180_DAY_QUOTE_VOLUME_BUY = MOVING_180_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_QUOTE_VOLUME_BUY(Integer MOVING_180_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_180_DAY_QUOTE_VOLUME_BUY = MOVING_180_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_180_DAY_QUOTE_VOLUME_SELL")
  public Integer getMOVING180DAYQUOTEVOLUMESELL() {
    return MOVING_180_DAY_QUOTE_VOLUME_SELL;
  }

  public void setMOVING180DAYQUOTEVOLUMESELL(Integer MOVING_180_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_180_DAY_QUOTE_VOLUME_SELL = MOVING_180_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_QUOTE_VOLUME_SELL(Integer MOVING_180_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_180_DAY_QUOTE_VOLUME_SELL = MOVING_180_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
   * @return MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING180DAYQUOTEVOLUMEUNKNOWN() {
    return MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING180DAYQUOTEVOLUMEUNKNOWN(Integer MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN(Integer MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
   * @return MOVING_180_DAY_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_180_DAY_TOTAL_TRADES")
  public Integer getMOVING180DAYTOTALTRADES() {
    return MOVING_180_DAY_TOTAL_TRADES;
  }

  public void setMOVING180DAYTOTALTRADES(Integer MOVING_180_DAY_TOTAL_TRADES) {
    this.MOVING_180_DAY_TOTAL_TRADES = MOVING_180_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_TOTAL_TRADES(Integer MOVING_180_DAY_TOTAL_TRADES) {
    this.MOVING_180_DAY_TOTAL_TRADES = MOVING_180_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
   * @return MOVING_180_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_180_DAY_TOTAL_TRADES_BUY")
  public Integer getMOVING180DAYTOTALTRADESBUY() {
    return MOVING_180_DAY_TOTAL_TRADES_BUY;
  }

  public void setMOVING180DAYTOTALTRADESBUY(Integer MOVING_180_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_180_DAY_TOTAL_TRADES_BUY = MOVING_180_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_TOTAL_TRADES_BUY(Integer MOVING_180_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_180_DAY_TOTAL_TRADES_BUY = MOVING_180_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
   * @return MOVING_180_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_180_DAY_TOTAL_TRADES_SELL")
  public Integer getMOVING180DAYTOTALTRADESSELL() {
    return MOVING_180_DAY_TOTAL_TRADES_SELL;
  }

  public void setMOVING180DAYTOTALTRADESSELL(Integer MOVING_180_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_180_DAY_TOTAL_TRADES_SELL = MOVING_180_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_TOTAL_TRADES_SELL(Integer MOVING_180_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_180_DAY_TOTAL_TRADES_SELL = MOVING_180_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
   * @return MOVING_180_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_180_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING180DAYTOTALTRADESUNKNOWN() {
    return MOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING180DAYTOTALTRADESUNKNOWN(Integer MOVING_180_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_180_DAY_TOTAL_TRADES_UNKNOWN = MOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_TOTAL_TRADES_UNKNOWN(Integer MOVING_180_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_180_DAY_TOTAL_TRADES_UNKNOWN = MOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
   * @return MOVING_180_DAY_VOLUME
  **/
  @JsonProperty("MOVING_180_DAY_VOLUME")
  public Integer getMOVING180DAYVOLUME() {
    return MOVING_180_DAY_VOLUME;
  }

  public void setMOVING180DAYVOLUME(Integer MOVING_180_DAY_VOLUME) {
    this.MOVING_180_DAY_VOLUME = MOVING_180_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_VOLUME(Integer MOVING_180_DAY_VOLUME) {
    this.MOVING_180_DAY_VOLUME = MOVING_180_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
   * @return MOVING_180_DAY_VOLUME_BUY
  **/
  @JsonProperty("MOVING_180_DAY_VOLUME_BUY")
  public Integer getMOVING180DAYVOLUMEBUY() {
    return MOVING_180_DAY_VOLUME_BUY;
  }

  public void setMOVING180DAYVOLUMEBUY(Integer MOVING_180_DAY_VOLUME_BUY) {
    this.MOVING_180_DAY_VOLUME_BUY = MOVING_180_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_VOLUME_BUY(Integer MOVING_180_DAY_VOLUME_BUY) {
    this.MOVING_180_DAY_VOLUME_BUY = MOVING_180_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
   * @return MOVING_180_DAY_VOLUME_SELL
  **/
  @JsonProperty("MOVING_180_DAY_VOLUME_SELL")
  public Integer getMOVING180DAYVOLUMESELL() {
    return MOVING_180_DAY_VOLUME_SELL;
  }

  public void setMOVING180DAYVOLUMESELL(Integer MOVING_180_DAY_VOLUME_SELL) {
    this.MOVING_180_DAY_VOLUME_SELL = MOVING_180_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_VOLUME_SELL(Integer MOVING_180_DAY_VOLUME_SELL) {
    this.MOVING_180_DAY_VOLUME_SELL = MOVING_180_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
   * @return MOVING_180_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_180_DAY_VOLUME_UNKNOWN")
  public Integer getMOVING180DAYVOLUMEUNKNOWN() {
    return MOVING_180_DAY_VOLUME_UNKNOWN;
  }

  public void setMOVING180DAYVOLUMEUNKNOWN(Integer MOVING_180_DAY_VOLUME_UNKNOWN) {
    this.MOVING_180_DAY_VOLUME_UNKNOWN = MOVING_180_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_180_DAY_VOLUME_UNKNOWN(Integer MOVING_180_DAY_VOLUME_UNKNOWN) {
    this.MOVING_180_DAY_VOLUME_UNKNOWN = MOVING_180_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_HIGH
  **/
  @JsonProperty("MOVING_24_HOUR_HIGH")
  public Integer getMOVING24HOURHIGH() {
    return MOVING_24_HOUR_HIGH;
  }

  public void setMOVING24HOURHIGH(Integer MOVING_24_HOUR_HIGH) {
    this.MOVING_24_HOUR_HIGH = MOVING_24_HOUR_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_HIGH(Integer MOVING_24_HOUR_HIGH) {
    this.MOVING_24_HOUR_HIGH = MOVING_24_HOUR_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_LOW
  **/
  @JsonProperty("MOVING_24_HOUR_LOW")
  public Integer getMOVING24HOURLOW() {
    return MOVING_24_HOUR_LOW;
  }

  public void setMOVING24HOURLOW(Integer MOVING_24_HOUR_LOW) {
    this.MOVING_24_HOUR_LOW = MOVING_24_HOUR_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_LOW(Integer MOVING_24_HOUR_LOW) {
    this.MOVING_24_HOUR_LOW = MOVING_24_HOUR_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
   * @return MOVING_24_HOUR_OPEN
  **/
  @JsonProperty("MOVING_24_HOUR_OPEN")
  public Integer getMOVING24HOUROPEN() {
    return MOVING_24_HOUR_OPEN;
  }

  public void setMOVING24HOUROPEN(Integer MOVING_24_HOUR_OPEN) {
    this.MOVING_24_HOUR_OPEN = MOVING_24_HOUR_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_OPEN(Integer MOVING_24_HOUR_OPEN) {
    this.MOVING_24_HOUR_OPEN = MOVING_24_HOUR_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_24_HOUR_QUOTE_VOLUME")
  public Integer getMOVING24HOURQUOTEVOLUME() {
    return MOVING_24_HOUR_QUOTE_VOLUME;
  }

  public void setMOVING24HOURQUOTEVOLUME(Integer MOVING_24_HOUR_QUOTE_VOLUME) {
    this.MOVING_24_HOUR_QUOTE_VOLUME = MOVING_24_HOUR_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_QUOTE_VOLUME(Integer MOVING_24_HOUR_QUOTE_VOLUME) {
    this.MOVING_24_HOUR_QUOTE_VOLUME = MOVING_24_HOUR_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_24_HOUR_QUOTE_VOLUME_BUY")
  public Integer getMOVING24HOURQUOTEVOLUMEBUY() {
    return MOVING_24_HOUR_QUOTE_VOLUME_BUY;
  }

  public void setMOVING24HOURQUOTEVOLUMEBUY(Integer MOVING_24_HOUR_QUOTE_VOLUME_BUY) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_BUY = MOVING_24_HOUR_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_QUOTE_VOLUME_BUY(Integer MOVING_24_HOUR_QUOTE_VOLUME_BUY) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_BUY = MOVING_24_HOUR_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_24_HOUR_QUOTE_VOLUME_SELL")
  public Integer getMOVING24HOURQUOTEVOLUMESELL() {
    return MOVING_24_HOUR_QUOTE_VOLUME_SELL;
  }

  public void setMOVING24HOURQUOTEVOLUMESELL(Integer MOVING_24_HOUR_QUOTE_VOLUME_SELL) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_SELL = MOVING_24_HOUR_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_QUOTE_VOLUME_SELL(Integer MOVING_24_HOUR_QUOTE_VOLUME_SELL) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_SELL = MOVING_24_HOUR_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
   * @return MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING24HOURQUOTEVOLUMEUNKNOWN() {
    return MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING24HOURQUOTEVOLUMEUNKNOWN(Integer MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN = MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN(Integer MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN = MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
   * @return MOVING_24_HOUR_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_24_HOUR_TOTAL_TRADES")
  public Integer getMOVING24HOURTOTALTRADES() {
    return MOVING_24_HOUR_TOTAL_TRADES;
  }

  public void setMOVING24HOURTOTALTRADES(Integer MOVING_24_HOUR_TOTAL_TRADES) {
    this.MOVING_24_HOUR_TOTAL_TRADES = MOVING_24_HOUR_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_TOTAL_TRADES(Integer MOVING_24_HOUR_TOTAL_TRADES) {
    this.MOVING_24_HOUR_TOTAL_TRADES = MOVING_24_HOUR_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
   * @return MOVING_24_HOUR_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_24_HOUR_TOTAL_TRADES_BUY")
  public Integer getMOVING24HOURTOTALTRADESBUY() {
    return MOVING_24_HOUR_TOTAL_TRADES_BUY;
  }

  public void setMOVING24HOURTOTALTRADESBUY(Integer MOVING_24_HOUR_TOTAL_TRADES_BUY) {
    this.MOVING_24_HOUR_TOTAL_TRADES_BUY = MOVING_24_HOUR_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_TOTAL_TRADES_BUY(Integer MOVING_24_HOUR_TOTAL_TRADES_BUY) {
    this.MOVING_24_HOUR_TOTAL_TRADES_BUY = MOVING_24_HOUR_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
   * @return MOVING_24_HOUR_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_24_HOUR_TOTAL_TRADES_SELL")
  public Integer getMOVING24HOURTOTALTRADESSELL() {
    return MOVING_24_HOUR_TOTAL_TRADES_SELL;
  }

  public void setMOVING24HOURTOTALTRADESSELL(Integer MOVING_24_HOUR_TOTAL_TRADES_SELL) {
    this.MOVING_24_HOUR_TOTAL_TRADES_SELL = MOVING_24_HOUR_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_TOTAL_TRADES_SELL(Integer MOVING_24_HOUR_TOTAL_TRADES_SELL) {
    this.MOVING_24_HOUR_TOTAL_TRADES_SELL = MOVING_24_HOUR_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
   * @return MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING24HOURTOTALTRADESUNKNOWN() {
    return MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING24HOURTOTALTRADESUNKNOWN(Integer MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN = MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN(Integer MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN = MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
   * @return MOVING_24_HOUR_VOLUME
  **/
  @JsonProperty("MOVING_24_HOUR_VOLUME")
  public Integer getMOVING24HOURVOLUME() {
    return MOVING_24_HOUR_VOLUME;
  }

  public void setMOVING24HOURVOLUME(Integer MOVING_24_HOUR_VOLUME) {
    this.MOVING_24_HOUR_VOLUME = MOVING_24_HOUR_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_VOLUME(Integer MOVING_24_HOUR_VOLUME) {
    this.MOVING_24_HOUR_VOLUME = MOVING_24_HOUR_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
   * @return MOVING_24_HOUR_VOLUME_BUY
  **/
  @JsonProperty("MOVING_24_HOUR_VOLUME_BUY")
  public Integer getMOVING24HOURVOLUMEBUY() {
    return MOVING_24_HOUR_VOLUME_BUY;
  }

  public void setMOVING24HOURVOLUMEBUY(Integer MOVING_24_HOUR_VOLUME_BUY) {
    this.MOVING_24_HOUR_VOLUME_BUY = MOVING_24_HOUR_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_VOLUME_BUY(Integer MOVING_24_HOUR_VOLUME_BUY) {
    this.MOVING_24_HOUR_VOLUME_BUY = MOVING_24_HOUR_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
   * @return MOVING_24_HOUR_VOLUME_SELL
  **/
  @JsonProperty("MOVING_24_HOUR_VOLUME_SELL")
  public Integer getMOVING24HOURVOLUMESELL() {
    return MOVING_24_HOUR_VOLUME_SELL;
  }

  public void setMOVING24HOURVOLUMESELL(Integer MOVING_24_HOUR_VOLUME_SELL) {
    this.MOVING_24_HOUR_VOLUME_SELL = MOVING_24_HOUR_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_VOLUME_SELL(Integer MOVING_24_HOUR_VOLUME_SELL) {
    this.MOVING_24_HOUR_VOLUME_SELL = MOVING_24_HOUR_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
   * @return MOVING_24_HOUR_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_24_HOUR_VOLUME_UNKNOWN")
  public Integer getMOVING24HOURVOLUMEUNKNOWN() {
    return MOVING_24_HOUR_VOLUME_UNKNOWN;
  }

  public void setMOVING24HOURVOLUMEUNKNOWN(Integer MOVING_24_HOUR_VOLUME_UNKNOWN) {
    this.MOVING_24_HOUR_VOLUME_UNKNOWN = MOVING_24_HOUR_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_24_HOUR_VOLUME_UNKNOWN(Integer MOVING_24_HOUR_VOLUME_UNKNOWN) {
    this.MOVING_24_HOUR_VOLUME_UNKNOWN = MOVING_24_HOUR_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_HIGH
  **/
  @JsonProperty("MOVING_30_DAY_HIGH")
  public Integer getMOVING30DAYHIGH() {
    return MOVING_30_DAY_HIGH;
  }

  public void setMOVING30DAYHIGH(Integer MOVING_30_DAY_HIGH) {
    this.MOVING_30_DAY_HIGH = MOVING_30_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_HIGH(Integer MOVING_30_DAY_HIGH) {
    this.MOVING_30_DAY_HIGH = MOVING_30_DAY_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_LOW
  **/
  @JsonProperty("MOVING_30_DAY_LOW")
  public Integer getMOVING30DAYLOW() {
    return MOVING_30_DAY_LOW;
  }

  public void setMOVING30DAYLOW(Integer MOVING_30_DAY_LOW) {
    this.MOVING_30_DAY_LOW = MOVING_30_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_LOW(Integer MOVING_30_DAY_LOW) {
    this.MOVING_30_DAY_LOW = MOVING_30_DAY_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
   * @return MOVING_30_DAY_OPEN
  **/
  @JsonProperty("MOVING_30_DAY_OPEN")
  public Integer getMOVING30DAYOPEN() {
    return MOVING_30_DAY_OPEN;
  }

  public void setMOVING30DAYOPEN(Integer MOVING_30_DAY_OPEN) {
    this.MOVING_30_DAY_OPEN = MOVING_30_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_OPEN(Integer MOVING_30_DAY_OPEN) {
    this.MOVING_30_DAY_OPEN = MOVING_30_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_30_DAY_QUOTE_VOLUME")
  public Integer getMOVING30DAYQUOTEVOLUME() {
    return MOVING_30_DAY_QUOTE_VOLUME;
  }

  public void setMOVING30DAYQUOTEVOLUME(Integer MOVING_30_DAY_QUOTE_VOLUME) {
    this.MOVING_30_DAY_QUOTE_VOLUME = MOVING_30_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_QUOTE_VOLUME(Integer MOVING_30_DAY_QUOTE_VOLUME) {
    this.MOVING_30_DAY_QUOTE_VOLUME = MOVING_30_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_30_DAY_QUOTE_VOLUME_BUY")
  public Integer getMOVING30DAYQUOTEVOLUMEBUY() {
    return MOVING_30_DAY_QUOTE_VOLUME_BUY;
  }

  public void setMOVING30DAYQUOTEVOLUMEBUY(Integer MOVING_30_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_30_DAY_QUOTE_VOLUME_BUY = MOVING_30_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_QUOTE_VOLUME_BUY(Integer MOVING_30_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_30_DAY_QUOTE_VOLUME_BUY = MOVING_30_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_30_DAY_QUOTE_VOLUME_SELL")
  public Integer getMOVING30DAYQUOTEVOLUMESELL() {
    return MOVING_30_DAY_QUOTE_VOLUME_SELL;
  }

  public void setMOVING30DAYQUOTEVOLUMESELL(Integer MOVING_30_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_30_DAY_QUOTE_VOLUME_SELL = MOVING_30_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_QUOTE_VOLUME_SELL(Integer MOVING_30_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_30_DAY_QUOTE_VOLUME_SELL = MOVING_30_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
   * @return MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING30DAYQUOTEVOLUMEUNKNOWN() {
    return MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING30DAYQUOTEVOLUMEUNKNOWN(Integer MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN(Integer MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
   * @return MOVING_30_DAY_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_30_DAY_TOTAL_TRADES")
  public Integer getMOVING30DAYTOTALTRADES() {
    return MOVING_30_DAY_TOTAL_TRADES;
  }

  public void setMOVING30DAYTOTALTRADES(Integer MOVING_30_DAY_TOTAL_TRADES) {
    this.MOVING_30_DAY_TOTAL_TRADES = MOVING_30_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_TOTAL_TRADES(Integer MOVING_30_DAY_TOTAL_TRADES) {
    this.MOVING_30_DAY_TOTAL_TRADES = MOVING_30_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
   * @return MOVING_30_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_30_DAY_TOTAL_TRADES_BUY")
  public Integer getMOVING30DAYTOTALTRADESBUY() {
    return MOVING_30_DAY_TOTAL_TRADES_BUY;
  }

  public void setMOVING30DAYTOTALTRADESBUY(Integer MOVING_30_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_30_DAY_TOTAL_TRADES_BUY = MOVING_30_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_TOTAL_TRADES_BUY(Integer MOVING_30_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_30_DAY_TOTAL_TRADES_BUY = MOVING_30_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
   * @return MOVING_30_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_30_DAY_TOTAL_TRADES_SELL")
  public Integer getMOVING30DAYTOTALTRADESSELL() {
    return MOVING_30_DAY_TOTAL_TRADES_SELL;
  }

  public void setMOVING30DAYTOTALTRADESSELL(Integer MOVING_30_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_30_DAY_TOTAL_TRADES_SELL = MOVING_30_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_TOTAL_TRADES_SELL(Integer MOVING_30_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_30_DAY_TOTAL_TRADES_SELL = MOVING_30_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
   * @return MOVING_30_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_30_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING30DAYTOTALTRADESUNKNOWN() {
    return MOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING30DAYTOTALTRADESUNKNOWN(Integer MOVING_30_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_30_DAY_TOTAL_TRADES_UNKNOWN = MOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_TOTAL_TRADES_UNKNOWN(Integer MOVING_30_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_30_DAY_TOTAL_TRADES_UNKNOWN = MOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
   * @return MOVING_30_DAY_VOLUME
  **/
  @JsonProperty("MOVING_30_DAY_VOLUME")
  public Integer getMOVING30DAYVOLUME() {
    return MOVING_30_DAY_VOLUME;
  }

  public void setMOVING30DAYVOLUME(Integer MOVING_30_DAY_VOLUME) {
    this.MOVING_30_DAY_VOLUME = MOVING_30_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_VOLUME(Integer MOVING_30_DAY_VOLUME) {
    this.MOVING_30_DAY_VOLUME = MOVING_30_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
   * @return MOVING_30_DAY_VOLUME_BUY
  **/
  @JsonProperty("MOVING_30_DAY_VOLUME_BUY")
  public Integer getMOVING30DAYVOLUMEBUY() {
    return MOVING_30_DAY_VOLUME_BUY;
  }

  public void setMOVING30DAYVOLUMEBUY(Integer MOVING_30_DAY_VOLUME_BUY) {
    this.MOVING_30_DAY_VOLUME_BUY = MOVING_30_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_VOLUME_BUY(Integer MOVING_30_DAY_VOLUME_BUY) {
    this.MOVING_30_DAY_VOLUME_BUY = MOVING_30_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
   * @return MOVING_30_DAY_VOLUME_SELL
  **/
  @JsonProperty("MOVING_30_DAY_VOLUME_SELL")
  public Integer getMOVING30DAYVOLUMESELL() {
    return MOVING_30_DAY_VOLUME_SELL;
  }

  public void setMOVING30DAYVOLUMESELL(Integer MOVING_30_DAY_VOLUME_SELL) {
    this.MOVING_30_DAY_VOLUME_SELL = MOVING_30_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_VOLUME_SELL(Integer MOVING_30_DAY_VOLUME_SELL) {
    this.MOVING_30_DAY_VOLUME_SELL = MOVING_30_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
   * @return MOVING_30_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_30_DAY_VOLUME_UNKNOWN")
  public Integer getMOVING30DAYVOLUMEUNKNOWN() {
    return MOVING_30_DAY_VOLUME_UNKNOWN;
  }

  public void setMOVING30DAYVOLUMEUNKNOWN(Integer MOVING_30_DAY_VOLUME_UNKNOWN) {
    this.MOVING_30_DAY_VOLUME_UNKNOWN = MOVING_30_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_30_DAY_VOLUME_UNKNOWN(Integer MOVING_30_DAY_VOLUME_UNKNOWN) {
    this.MOVING_30_DAY_VOLUME_UNKNOWN = MOVING_30_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_HIGH
  **/
  @JsonProperty("MOVING_365_DAY_HIGH")
  public Integer getMOVING365DAYHIGH() {
    return MOVING_365_DAY_HIGH;
  }

  public void setMOVING365DAYHIGH(Integer MOVING_365_DAY_HIGH) {
    this.MOVING_365_DAY_HIGH = MOVING_365_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_HIGH(Integer MOVING_365_DAY_HIGH) {
    this.MOVING_365_DAY_HIGH = MOVING_365_DAY_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_LOW
  **/
  @JsonProperty("MOVING_365_DAY_LOW")
  public Integer getMOVING365DAYLOW() {
    return MOVING_365_DAY_LOW;
  }

  public void setMOVING365DAYLOW(Integer MOVING_365_DAY_LOW) {
    this.MOVING_365_DAY_LOW = MOVING_365_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_LOW(Integer MOVING_365_DAY_LOW) {
    this.MOVING_365_DAY_LOW = MOVING_365_DAY_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
   * @return MOVING_365_DAY_OPEN
  **/
  @JsonProperty("MOVING_365_DAY_OPEN")
  public Integer getMOVING365DAYOPEN() {
    return MOVING_365_DAY_OPEN;
  }

  public void setMOVING365DAYOPEN(Integer MOVING_365_DAY_OPEN) {
    this.MOVING_365_DAY_OPEN = MOVING_365_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_OPEN(Integer MOVING_365_DAY_OPEN) {
    this.MOVING_365_DAY_OPEN = MOVING_365_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_365_DAY_QUOTE_VOLUME")
  public Integer getMOVING365DAYQUOTEVOLUME() {
    return MOVING_365_DAY_QUOTE_VOLUME;
  }

  public void setMOVING365DAYQUOTEVOLUME(Integer MOVING_365_DAY_QUOTE_VOLUME) {
    this.MOVING_365_DAY_QUOTE_VOLUME = MOVING_365_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_QUOTE_VOLUME(Integer MOVING_365_DAY_QUOTE_VOLUME) {
    this.MOVING_365_DAY_QUOTE_VOLUME = MOVING_365_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_365_DAY_QUOTE_VOLUME_BUY")
  public Integer getMOVING365DAYQUOTEVOLUMEBUY() {
    return MOVING_365_DAY_QUOTE_VOLUME_BUY;
  }

  public void setMOVING365DAYQUOTEVOLUMEBUY(Integer MOVING_365_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_365_DAY_QUOTE_VOLUME_BUY = MOVING_365_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_QUOTE_VOLUME_BUY(Integer MOVING_365_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_365_DAY_QUOTE_VOLUME_BUY = MOVING_365_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_365_DAY_QUOTE_VOLUME_SELL")
  public Integer getMOVING365DAYQUOTEVOLUMESELL() {
    return MOVING_365_DAY_QUOTE_VOLUME_SELL;
  }

  public void setMOVING365DAYQUOTEVOLUMESELL(Integer MOVING_365_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_365_DAY_QUOTE_VOLUME_SELL = MOVING_365_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_QUOTE_VOLUME_SELL(Integer MOVING_365_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_365_DAY_QUOTE_VOLUME_SELL = MOVING_365_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
   * @return MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING365DAYQUOTEVOLUMEUNKNOWN() {
    return MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING365DAYQUOTEVOLUMEUNKNOWN(Integer MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN(Integer MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
   * @return MOVING_365_DAY_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_365_DAY_TOTAL_TRADES")
  public Integer getMOVING365DAYTOTALTRADES() {
    return MOVING_365_DAY_TOTAL_TRADES;
  }

  public void setMOVING365DAYTOTALTRADES(Integer MOVING_365_DAY_TOTAL_TRADES) {
    this.MOVING_365_DAY_TOTAL_TRADES = MOVING_365_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_TOTAL_TRADES(Integer MOVING_365_DAY_TOTAL_TRADES) {
    this.MOVING_365_DAY_TOTAL_TRADES = MOVING_365_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
   * @return MOVING_365_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_365_DAY_TOTAL_TRADES_BUY")
  public Integer getMOVING365DAYTOTALTRADESBUY() {
    return MOVING_365_DAY_TOTAL_TRADES_BUY;
  }

  public void setMOVING365DAYTOTALTRADESBUY(Integer MOVING_365_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_365_DAY_TOTAL_TRADES_BUY = MOVING_365_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_TOTAL_TRADES_BUY(Integer MOVING_365_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_365_DAY_TOTAL_TRADES_BUY = MOVING_365_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
   * @return MOVING_365_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_365_DAY_TOTAL_TRADES_SELL")
  public Integer getMOVING365DAYTOTALTRADESSELL() {
    return MOVING_365_DAY_TOTAL_TRADES_SELL;
  }

  public void setMOVING365DAYTOTALTRADESSELL(Integer MOVING_365_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_365_DAY_TOTAL_TRADES_SELL = MOVING_365_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_TOTAL_TRADES_SELL(Integer MOVING_365_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_365_DAY_TOTAL_TRADES_SELL = MOVING_365_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
   * @return MOVING_365_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_365_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING365DAYTOTALTRADESUNKNOWN() {
    return MOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING365DAYTOTALTRADESUNKNOWN(Integer MOVING_365_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_365_DAY_TOTAL_TRADES_UNKNOWN = MOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_TOTAL_TRADES_UNKNOWN(Integer MOVING_365_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_365_DAY_TOTAL_TRADES_UNKNOWN = MOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
   * @return MOVING_365_DAY_VOLUME
  **/
  @JsonProperty("MOVING_365_DAY_VOLUME")
  public Integer getMOVING365DAYVOLUME() {
    return MOVING_365_DAY_VOLUME;
  }

  public void setMOVING365DAYVOLUME(Integer MOVING_365_DAY_VOLUME) {
    this.MOVING_365_DAY_VOLUME = MOVING_365_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_VOLUME(Integer MOVING_365_DAY_VOLUME) {
    this.MOVING_365_DAY_VOLUME = MOVING_365_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
   * @return MOVING_365_DAY_VOLUME_BUY
  **/
  @JsonProperty("MOVING_365_DAY_VOLUME_BUY")
  public Integer getMOVING365DAYVOLUMEBUY() {
    return MOVING_365_DAY_VOLUME_BUY;
  }

  public void setMOVING365DAYVOLUMEBUY(Integer MOVING_365_DAY_VOLUME_BUY) {
    this.MOVING_365_DAY_VOLUME_BUY = MOVING_365_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_VOLUME_BUY(Integer MOVING_365_DAY_VOLUME_BUY) {
    this.MOVING_365_DAY_VOLUME_BUY = MOVING_365_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
   * @return MOVING_365_DAY_VOLUME_SELL
  **/
  @JsonProperty("MOVING_365_DAY_VOLUME_SELL")
  public Integer getMOVING365DAYVOLUMESELL() {
    return MOVING_365_DAY_VOLUME_SELL;
  }

  public void setMOVING365DAYVOLUMESELL(Integer MOVING_365_DAY_VOLUME_SELL) {
    this.MOVING_365_DAY_VOLUME_SELL = MOVING_365_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_VOLUME_SELL(Integer MOVING_365_DAY_VOLUME_SELL) {
    this.MOVING_365_DAY_VOLUME_SELL = MOVING_365_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
   * @return MOVING_365_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_365_DAY_VOLUME_UNKNOWN")
  public Integer getMOVING365DAYVOLUMEUNKNOWN() {
    return MOVING_365_DAY_VOLUME_UNKNOWN;
  }

  public void setMOVING365DAYVOLUMEUNKNOWN(Integer MOVING_365_DAY_VOLUME_UNKNOWN) {
    this.MOVING_365_DAY_VOLUME_UNKNOWN = MOVING_365_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_365_DAY_VOLUME_UNKNOWN(Integer MOVING_365_DAY_VOLUME_UNKNOWN) {
    this.MOVING_365_DAY_VOLUME_UNKNOWN = MOVING_365_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_HIGH
  **/
  @JsonProperty("MOVING_7_DAY_HIGH")
  public Integer getMOVING7DAYHIGH() {
    return MOVING_7_DAY_HIGH;
  }

  public void setMOVING7DAYHIGH(Integer MOVING_7_DAY_HIGH) {
    this.MOVING_7_DAY_HIGH = MOVING_7_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_HIGH(Integer MOVING_7_DAY_HIGH) {
    this.MOVING_7_DAY_HIGH = MOVING_7_DAY_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_LOW
  **/
  @JsonProperty("MOVING_7_DAY_LOW")
  public Integer getMOVING7DAYLOW() {
    return MOVING_7_DAY_LOW;
  }

  public void setMOVING7DAYLOW(Integer MOVING_7_DAY_LOW) {
    this.MOVING_7_DAY_LOW = MOVING_7_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_LOW(Integer MOVING_7_DAY_LOW) {
    this.MOVING_7_DAY_LOW = MOVING_7_DAY_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
   * @return MOVING_7_DAY_OPEN
  **/
  @JsonProperty("MOVING_7_DAY_OPEN")
  public Integer getMOVING7DAYOPEN() {
    return MOVING_7_DAY_OPEN;
  }

  public void setMOVING7DAYOPEN(Integer MOVING_7_DAY_OPEN) {
    this.MOVING_7_DAY_OPEN = MOVING_7_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_OPEN(Integer MOVING_7_DAY_OPEN) {
    this.MOVING_7_DAY_OPEN = MOVING_7_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_7_DAY_QUOTE_VOLUME")
  public Integer getMOVING7DAYQUOTEVOLUME() {
    return MOVING_7_DAY_QUOTE_VOLUME;
  }

  public void setMOVING7DAYQUOTEVOLUME(Integer MOVING_7_DAY_QUOTE_VOLUME) {
    this.MOVING_7_DAY_QUOTE_VOLUME = MOVING_7_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_QUOTE_VOLUME(Integer MOVING_7_DAY_QUOTE_VOLUME) {
    this.MOVING_7_DAY_QUOTE_VOLUME = MOVING_7_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_7_DAY_QUOTE_VOLUME_BUY")
  public Integer getMOVING7DAYQUOTEVOLUMEBUY() {
    return MOVING_7_DAY_QUOTE_VOLUME_BUY;
  }

  public void setMOVING7DAYQUOTEVOLUMEBUY(Integer MOVING_7_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_7_DAY_QUOTE_VOLUME_BUY = MOVING_7_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_QUOTE_VOLUME_BUY(Integer MOVING_7_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_7_DAY_QUOTE_VOLUME_BUY = MOVING_7_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_7_DAY_QUOTE_VOLUME_SELL")
  public Integer getMOVING7DAYQUOTEVOLUMESELL() {
    return MOVING_7_DAY_QUOTE_VOLUME_SELL;
  }

  public void setMOVING7DAYQUOTEVOLUMESELL(Integer MOVING_7_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_7_DAY_QUOTE_VOLUME_SELL = MOVING_7_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_QUOTE_VOLUME_SELL(Integer MOVING_7_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_7_DAY_QUOTE_VOLUME_SELL = MOVING_7_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
   * @return MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING7DAYQUOTEVOLUMEUNKNOWN() {
    return MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING7DAYQUOTEVOLUMEUNKNOWN(Integer MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN(Integer MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
   * @return MOVING_7_DAY_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_7_DAY_TOTAL_TRADES")
  public Integer getMOVING7DAYTOTALTRADES() {
    return MOVING_7_DAY_TOTAL_TRADES;
  }

  public void setMOVING7DAYTOTALTRADES(Integer MOVING_7_DAY_TOTAL_TRADES) {
    this.MOVING_7_DAY_TOTAL_TRADES = MOVING_7_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_TOTAL_TRADES(Integer MOVING_7_DAY_TOTAL_TRADES) {
    this.MOVING_7_DAY_TOTAL_TRADES = MOVING_7_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
   * @return MOVING_7_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_7_DAY_TOTAL_TRADES_BUY")
  public Integer getMOVING7DAYTOTALTRADESBUY() {
    return MOVING_7_DAY_TOTAL_TRADES_BUY;
  }

  public void setMOVING7DAYTOTALTRADESBUY(Integer MOVING_7_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_7_DAY_TOTAL_TRADES_BUY = MOVING_7_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_TOTAL_TRADES_BUY(Integer MOVING_7_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_7_DAY_TOTAL_TRADES_BUY = MOVING_7_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
   * @return MOVING_7_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_7_DAY_TOTAL_TRADES_SELL")
  public Integer getMOVING7DAYTOTALTRADESSELL() {
    return MOVING_7_DAY_TOTAL_TRADES_SELL;
  }

  public void setMOVING7DAYTOTALTRADESSELL(Integer MOVING_7_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_7_DAY_TOTAL_TRADES_SELL = MOVING_7_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_TOTAL_TRADES_SELL(Integer MOVING_7_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_7_DAY_TOTAL_TRADES_SELL = MOVING_7_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
   * @return MOVING_7_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_7_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING7DAYTOTALTRADESUNKNOWN() {
    return MOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING7DAYTOTALTRADESUNKNOWN(Integer MOVING_7_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_7_DAY_TOTAL_TRADES_UNKNOWN = MOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_TOTAL_TRADES_UNKNOWN(Integer MOVING_7_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_7_DAY_TOTAL_TRADES_UNKNOWN = MOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
   * @return MOVING_7_DAY_VOLUME
  **/
  @JsonProperty("MOVING_7_DAY_VOLUME")
  public Integer getMOVING7DAYVOLUME() {
    return MOVING_7_DAY_VOLUME;
  }

  public void setMOVING7DAYVOLUME(Integer MOVING_7_DAY_VOLUME) {
    this.MOVING_7_DAY_VOLUME = MOVING_7_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_VOLUME(Integer MOVING_7_DAY_VOLUME) {
    this.MOVING_7_DAY_VOLUME = MOVING_7_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
   * @return MOVING_7_DAY_VOLUME_BUY
  **/
  @JsonProperty("MOVING_7_DAY_VOLUME_BUY")
  public Integer getMOVING7DAYVOLUMEBUY() {
    return MOVING_7_DAY_VOLUME_BUY;
  }

  public void setMOVING7DAYVOLUMEBUY(Integer MOVING_7_DAY_VOLUME_BUY) {
    this.MOVING_7_DAY_VOLUME_BUY = MOVING_7_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_VOLUME_BUY(Integer MOVING_7_DAY_VOLUME_BUY) {
    this.MOVING_7_DAY_VOLUME_BUY = MOVING_7_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
   * @return MOVING_7_DAY_VOLUME_SELL
  **/
  @JsonProperty("MOVING_7_DAY_VOLUME_SELL")
  public Integer getMOVING7DAYVOLUMESELL() {
    return MOVING_7_DAY_VOLUME_SELL;
  }

  public void setMOVING7DAYVOLUMESELL(Integer MOVING_7_DAY_VOLUME_SELL) {
    this.MOVING_7_DAY_VOLUME_SELL = MOVING_7_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_VOLUME_SELL(Integer MOVING_7_DAY_VOLUME_SELL) {
    this.MOVING_7_DAY_VOLUME_SELL = MOVING_7_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
   * @return MOVING_7_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_7_DAY_VOLUME_UNKNOWN")
  public Integer getMOVING7DAYVOLUMEUNKNOWN() {
    return MOVING_7_DAY_VOLUME_UNKNOWN;
  }

  public void setMOVING7DAYVOLUMEUNKNOWN(Integer MOVING_7_DAY_VOLUME_UNKNOWN) {
    this.MOVING_7_DAY_VOLUME_UNKNOWN = MOVING_7_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_7_DAY_VOLUME_UNKNOWN(Integer MOVING_7_DAY_VOLUME_UNKNOWN) {
    this.MOVING_7_DAY_VOLUME_UNKNOWN = MOVING_7_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_HIGH
  **/
  @JsonProperty("MOVING_90_DAY_HIGH")
  public Integer getMOVING90DAYHIGH() {
    return MOVING_90_DAY_HIGH;
  }

  public void setMOVING90DAYHIGH(Integer MOVING_90_DAY_HIGH) {
    this.MOVING_90_DAY_HIGH = MOVING_90_DAY_HIGH;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_HIGH(Integer MOVING_90_DAY_HIGH) {
    this.MOVING_90_DAY_HIGH = MOVING_90_DAY_HIGH;
    return this;
  }

 /**
   * The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_LOW
  **/
  @JsonProperty("MOVING_90_DAY_LOW")
  public Integer getMOVING90DAYLOW() {
    return MOVING_90_DAY_LOW;
  }

  public void setMOVING90DAYLOW(Integer MOVING_90_DAY_LOW) {
    this.MOVING_90_DAY_LOW = MOVING_90_DAY_LOW;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_LOW(Integer MOVING_90_DAY_LOW) {
    this.MOVING_90_DAY_LOW = MOVING_90_DAY_LOW;
    return this;
  }

 /**
   * The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
   * @return MOVING_90_DAY_OPEN
  **/
  @JsonProperty("MOVING_90_DAY_OPEN")
  public Integer getMOVING90DAYOPEN() {
    return MOVING_90_DAY_OPEN;
  }

  public void setMOVING90DAYOPEN(Integer MOVING_90_DAY_OPEN) {
    this.MOVING_90_DAY_OPEN = MOVING_90_DAY_OPEN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_OPEN(Integer MOVING_90_DAY_OPEN) {
    this.MOVING_90_DAY_OPEN = MOVING_90_DAY_OPEN;
    return this;
  }

 /**
   * The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_QUOTE_VOLUME
  **/
  @JsonProperty("MOVING_90_DAY_QUOTE_VOLUME")
  public Integer getMOVING90DAYQUOTEVOLUME() {
    return MOVING_90_DAY_QUOTE_VOLUME;
  }

  public void setMOVING90DAYQUOTEVOLUME(Integer MOVING_90_DAY_QUOTE_VOLUME) {
    this.MOVING_90_DAY_QUOTE_VOLUME = MOVING_90_DAY_QUOTE_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_QUOTE_VOLUME(Integer MOVING_90_DAY_QUOTE_VOLUME) {
    this.MOVING_90_DAY_QUOTE_VOLUME = MOVING_90_DAY_QUOTE_VOLUME;
    return this;
  }

 /**
   * The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_QUOTE_VOLUME_BUY
  **/
  @JsonProperty("MOVING_90_DAY_QUOTE_VOLUME_BUY")
  public Integer getMOVING90DAYQUOTEVOLUMEBUY() {
    return MOVING_90_DAY_QUOTE_VOLUME_BUY;
  }

  public void setMOVING90DAYQUOTEVOLUMEBUY(Integer MOVING_90_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_90_DAY_QUOTE_VOLUME_BUY = MOVING_90_DAY_QUOTE_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_QUOTE_VOLUME_BUY(Integer MOVING_90_DAY_QUOTE_VOLUME_BUY) {
    this.MOVING_90_DAY_QUOTE_VOLUME_BUY = MOVING_90_DAY_QUOTE_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_QUOTE_VOLUME_SELL
  **/
  @JsonProperty("MOVING_90_DAY_QUOTE_VOLUME_SELL")
  public Integer getMOVING90DAYQUOTEVOLUMESELL() {
    return MOVING_90_DAY_QUOTE_VOLUME_SELL;
  }

  public void setMOVING90DAYQUOTEVOLUMESELL(Integer MOVING_90_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_90_DAY_QUOTE_VOLUME_SELL = MOVING_90_DAY_QUOTE_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_QUOTE_VOLUME_SELL(Integer MOVING_90_DAY_QUOTE_VOLUME_SELL) {
    this.MOVING_90_DAY_QUOTE_VOLUME_SELL = MOVING_90_DAY_QUOTE_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
   * @return MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN")
  public Integer getMOVING90DAYQUOTEVOLUMEUNKNOWN() {
    return MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public void setMOVING90DAYQUOTEVOLUMEUNKNOWN(Integer MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN(Integer MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN) {
    this.MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN = MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
   * @return MOVING_90_DAY_TOTAL_TRADES
  **/
  @JsonProperty("MOVING_90_DAY_TOTAL_TRADES")
  public Integer getMOVING90DAYTOTALTRADES() {
    return MOVING_90_DAY_TOTAL_TRADES;
  }

  public void setMOVING90DAYTOTALTRADES(Integer MOVING_90_DAY_TOTAL_TRADES) {
    this.MOVING_90_DAY_TOTAL_TRADES = MOVING_90_DAY_TOTAL_TRADES;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_TOTAL_TRADES(Integer MOVING_90_DAY_TOTAL_TRADES) {
    this.MOVING_90_DAY_TOTAL_TRADES = MOVING_90_DAY_TOTAL_TRADES;
    return this;
  }

 /**
   * The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
   * @return MOVING_90_DAY_TOTAL_TRADES_BUY
  **/
  @JsonProperty("MOVING_90_DAY_TOTAL_TRADES_BUY")
  public Integer getMOVING90DAYTOTALTRADESBUY() {
    return MOVING_90_DAY_TOTAL_TRADES_BUY;
  }

  public void setMOVING90DAYTOTALTRADESBUY(Integer MOVING_90_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_90_DAY_TOTAL_TRADES_BUY = MOVING_90_DAY_TOTAL_TRADES_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_TOTAL_TRADES_BUY(Integer MOVING_90_DAY_TOTAL_TRADES_BUY) {
    this.MOVING_90_DAY_TOTAL_TRADES_BUY = MOVING_90_DAY_TOTAL_TRADES_BUY;
    return this;
  }

 /**
   * The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
   * @return MOVING_90_DAY_TOTAL_TRADES_SELL
  **/
  @JsonProperty("MOVING_90_DAY_TOTAL_TRADES_SELL")
  public Integer getMOVING90DAYTOTALTRADESSELL() {
    return MOVING_90_DAY_TOTAL_TRADES_SELL;
  }

  public void setMOVING90DAYTOTALTRADESSELL(Integer MOVING_90_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_90_DAY_TOTAL_TRADES_SELL = MOVING_90_DAY_TOTAL_TRADES_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_TOTAL_TRADES_SELL(Integer MOVING_90_DAY_TOTAL_TRADES_SELL) {
    this.MOVING_90_DAY_TOTAL_TRADES_SELL = MOVING_90_DAY_TOTAL_TRADES_SELL;
    return this;
  }

 /**
   * The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
   * @return MOVING_90_DAY_TOTAL_TRADES_UNKNOWN
  **/
  @JsonProperty("MOVING_90_DAY_TOTAL_TRADES_UNKNOWN")
  public Integer getMOVING90DAYTOTALTRADESUNKNOWN() {
    return MOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public void setMOVING90DAYTOTALTRADESUNKNOWN(Integer MOVING_90_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_90_DAY_TOTAL_TRADES_UNKNOWN = MOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_TOTAL_TRADES_UNKNOWN(Integer MOVING_90_DAY_TOTAL_TRADES_UNKNOWN) {
    this.MOVING_90_DAY_TOTAL_TRADES_UNKNOWN = MOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
    return this;
  }

 /**
   * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
   * @return MOVING_90_DAY_VOLUME
  **/
  @JsonProperty("MOVING_90_DAY_VOLUME")
  public Integer getMOVING90DAYVOLUME() {
    return MOVING_90_DAY_VOLUME;
  }

  public void setMOVING90DAYVOLUME(Integer MOVING_90_DAY_VOLUME) {
    this.MOVING_90_DAY_VOLUME = MOVING_90_DAY_VOLUME;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_VOLUME(Integer MOVING_90_DAY_VOLUME) {
    this.MOVING_90_DAY_VOLUME = MOVING_90_DAY_VOLUME;
    return this;
  }

 /**
   * The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
   * @return MOVING_90_DAY_VOLUME_BUY
  **/
  @JsonProperty("MOVING_90_DAY_VOLUME_BUY")
  public Integer getMOVING90DAYVOLUMEBUY() {
    return MOVING_90_DAY_VOLUME_BUY;
  }

  public void setMOVING90DAYVOLUMEBUY(Integer MOVING_90_DAY_VOLUME_BUY) {
    this.MOVING_90_DAY_VOLUME_BUY = MOVING_90_DAY_VOLUME_BUY;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_VOLUME_BUY(Integer MOVING_90_DAY_VOLUME_BUY) {
    this.MOVING_90_DAY_VOLUME_BUY = MOVING_90_DAY_VOLUME_BUY;
    return this;
  }

 /**
   * The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
   * @return MOVING_90_DAY_VOLUME_SELL
  **/
  @JsonProperty("MOVING_90_DAY_VOLUME_SELL")
  public Integer getMOVING90DAYVOLUMESELL() {
    return MOVING_90_DAY_VOLUME_SELL;
  }

  public void setMOVING90DAYVOLUMESELL(Integer MOVING_90_DAY_VOLUME_SELL) {
    this.MOVING_90_DAY_VOLUME_SELL = MOVING_90_DAY_VOLUME_SELL;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_VOLUME_SELL(Integer MOVING_90_DAY_VOLUME_SELL) {
    this.MOVING_90_DAY_VOLUME_SELL = MOVING_90_DAY_VOLUME_SELL;
    return this;
  }

 /**
   * The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
   * @return MOVING_90_DAY_VOLUME_UNKNOWN
  **/
  @JsonProperty("MOVING_90_DAY_VOLUME_UNKNOWN")
  public Integer getMOVING90DAYVOLUMEUNKNOWN() {
    return MOVING_90_DAY_VOLUME_UNKNOWN;
  }

  public void setMOVING90DAYVOLUMEUNKNOWN(Integer MOVING_90_DAY_VOLUME_UNKNOWN) {
    this.MOVING_90_DAY_VOLUME_UNKNOWN = MOVING_90_DAY_VOLUME_UNKNOWN;
  }

  public SPOTINSTRUMENTMARKETDATA MOVING_90_DAY_VOLUME_UNKNOWN(Integer MOVING_90_DAY_VOLUME_UNKNOWN) {
    this.MOVING_90_DAY_VOLUME_UNKNOWN = MOVING_90_DAY_VOLUME_UNKNOWN;
    return this;
  }

 /**
   * The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
   * @return PRICE
  **/
  @JsonProperty("PRICE")
  public Integer getPRICE() {
    return PRICE;
  }

  public void setPRICE(Integer PRICE) {
    this.PRICE = PRICE;
  }

  public SPOTINSTRUMENTMARKETDATA PRICE(Integer PRICE) {
    this.PRICE = PRICE;
    return this;
  }

 /**
   * The flag indicating whether the price has increased, decreased, or not changed
   * @return PRICE_FLAG
  **/
  @JsonProperty("PRICE_FLAG")
  public String getPRICEFLAG() {
    return PRICE_FLAG;
  }

  public void setPRICEFLAG(String PRICE_FLAG) {
    this.PRICE_FLAG = PRICE_FLAG;
  }

  public SPOTINSTRUMENTMARKETDATA PRICE_FLAG(String PRICE_FLAG) {
    this.PRICE_FLAG = PRICE_FLAG;
    return this;
  }

 /**
   * The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
   * @return PRICE_LAST_UPDATE_TS
  **/
  @JsonProperty("PRICE_LAST_UPDATE_TS")
  public Integer getPRICELASTUPDATETS() {
    return PRICE_LAST_UPDATE_TS;
  }

  public void setPRICELASTUPDATETS(Integer PRICE_LAST_UPDATE_TS) {
    this.PRICE_LAST_UPDATE_TS = PRICE_LAST_UPDATE_TS;
  }

  public SPOTINSTRUMENTMARKETDATA PRICE_LAST_UPDATE_TS(Integer PRICE_LAST_UPDATE_TS) {
    this.PRICE_LAST_UPDATE_TS = PRICE_LAST_UPDATE_TS;
    return this;
  }

 /**
   * The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
   * @return QUOTE
  **/
  @JsonProperty("QUOTE")
  public String getQUOTE() {
    return QUOTE;
  }

  public void setQUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
  }

  public SPOTINSTRUMENTMARKETDATA QUOTE(String QUOTE) {
    this.QUOTE = QUOTE;
    return this;
  }

 /**
   * The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
   * @return TOP_ASK_LAST_UPDATE_TS
  **/
  @JsonProperty("TOP_ASK_LAST_UPDATE_TS")
  public Integer getTOPASKLASTUPDATETS() {
    return TOP_ASK_LAST_UPDATE_TS;
  }

  public void setTOPASKLASTUPDATETS(Integer TOP_ASK_LAST_UPDATE_TS) {
    this.TOP_ASK_LAST_UPDATE_TS = TOP_ASK_LAST_UPDATE_TS;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_ASK_LAST_UPDATE_TS(Integer TOP_ASK_LAST_UPDATE_TS) {
    this.TOP_ASK_LAST_UPDATE_TS = TOP_ASK_LAST_UPDATE_TS;
    return this;
  }

 /**
   * The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
   * @return TOP_ASK_PRICE
  **/
  @JsonProperty("TOP_ASK_PRICE")
  public Integer getTOPASKPRICE() {
    return TOP_ASK_PRICE;
  }

  public void setTOPASKPRICE(Integer TOP_ASK_PRICE) {
    this.TOP_ASK_PRICE = TOP_ASK_PRICE;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_ASK_PRICE(Integer TOP_ASK_PRICE) {
    this.TOP_ASK_PRICE = TOP_ASK_PRICE;
    return this;
  }

 /**
   * The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
   * @return TOP_ASK_QUANTITY
  **/
  @JsonProperty("TOP_ASK_QUANTITY")
  public Integer getTOPASKQUANTITY() {
    return TOP_ASK_QUANTITY;
  }

  public void setTOPASKQUANTITY(Integer TOP_ASK_QUANTITY) {
    this.TOP_ASK_QUANTITY = TOP_ASK_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_ASK_QUANTITY(Integer TOP_ASK_QUANTITY) {
    this.TOP_ASK_QUANTITY = TOP_ASK_QUANTITY;
    return this;
  }

 /**
   * The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
   * @return TOP_BID_LAST_UPDATE_TS
  **/
  @JsonProperty("TOP_BID_LAST_UPDATE_TS")
  public Integer getTOPBIDLASTUPDATETS() {
    return TOP_BID_LAST_UPDATE_TS;
  }

  public void setTOPBIDLASTUPDATETS(Integer TOP_BID_LAST_UPDATE_TS) {
    this.TOP_BID_LAST_UPDATE_TS = TOP_BID_LAST_UPDATE_TS;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_BID_LAST_UPDATE_TS(Integer TOP_BID_LAST_UPDATE_TS) {
    this.TOP_BID_LAST_UPDATE_TS = TOP_BID_LAST_UPDATE_TS;
    return this;
  }

 /**
   * The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
   * @return TOP_BID_PRICE
  **/
  @JsonProperty("TOP_BID_PRICE")
  public Integer getTOPBIDPRICE() {
    return TOP_BID_PRICE;
  }

  public void setTOPBIDPRICE(Integer TOP_BID_PRICE) {
    this.TOP_BID_PRICE = TOP_BID_PRICE;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_BID_PRICE(Integer TOP_BID_PRICE) {
    this.TOP_BID_PRICE = TOP_BID_PRICE;
    return this;
  }

 /**
   * The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
   * @return TOP_BID_QUANTITY
  **/
  @JsonProperty("TOP_BID_QUANTITY")
  public Integer getTOPBIDQUANTITY() {
    return TOP_BID_QUANTITY;
  }

  public void setTOPBIDQUANTITY(Integer TOP_BID_QUANTITY) {
    this.TOP_BID_QUANTITY = TOP_BID_QUANTITY;
  }

  public SPOTINSTRUMENTMARKETDATA TOP_BID_QUANTITY(Integer TOP_BID_QUANTITY) {
    this.TOP_BID_QUANTITY = TOP_BID_QUANTITY;
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

  public SPOTINSTRUMENTMARKETDATA TYPE(String TYPE) {
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
    SPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA = (SPOTINSTRUMENTMARKETDATA) o;
    return Objects.equals(BASE, SPOT_INSTRUMENT_MARKET_DATA.BASE) &&
        Objects.equals(CCSEQ, SPOT_INSTRUMENT_MARKET_DATA.CCSEQ) &&
        Objects.equals(CURRENT_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_HIGH) &&
        Objects.equals(CURRENT_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_LOW) &&
        Objects.equals(CURRENT_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_OPEN) &&
        Objects.equals(CURRENT_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_QUOTE_VOLUME) &&
        Objects.equals(CURRENT_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(CURRENT_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(CURRENT_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_TOTAL_TRADES) &&
        Objects.equals(CURRENT_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(CURRENT_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(CURRENT_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(CURRENT_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_VOLUME) &&
        Objects.equals(CURRENT_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_VOLUME_BUY) &&
        Objects.equals(CURRENT_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_VOLUME_SELL) &&
        Objects.equals(CURRENT_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_HOUR_HIGH, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_HIGH) &&
        Objects.equals(CURRENT_HOUR_LOW, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_LOW) &&
        Objects.equals(CURRENT_HOUR_OPEN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_OPEN) &&
        Objects.equals(CURRENT_HOUR_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_QUOTE_VOLUME) &&
        Objects.equals(CURRENT_HOUR_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_QUOTE_VOLUME_BUY) &&
        Objects.equals(CURRENT_HOUR_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_QUOTE_VOLUME_SELL) &&
        Objects.equals(CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_HOUR_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_TOTAL_TRADES) &&
        Objects.equals(CURRENT_HOUR_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_TOTAL_TRADES_BUY) &&
        Objects.equals(CURRENT_HOUR_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_TOTAL_TRADES_SELL) &&
        Objects.equals(CURRENT_HOUR_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(CURRENT_HOUR_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_VOLUME) &&
        Objects.equals(CURRENT_HOUR_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_VOLUME_BUY) &&
        Objects.equals(CURRENT_HOUR_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_VOLUME_SELL) &&
        Objects.equals(CURRENT_HOUR_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_HOUR_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_MONTH_HIGH, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_HIGH) &&
        Objects.equals(CURRENT_MONTH_LOW, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_LOW) &&
        Objects.equals(CURRENT_MONTH_OPEN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_OPEN) &&
        Objects.equals(CURRENT_MONTH_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_QUOTE_VOLUME) &&
        Objects.equals(CURRENT_MONTH_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_QUOTE_VOLUME_BUY) &&
        Objects.equals(CURRENT_MONTH_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_QUOTE_VOLUME_SELL) &&
        Objects.equals(CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_MONTH_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_TOTAL_TRADES) &&
        Objects.equals(CURRENT_MONTH_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_TOTAL_TRADES_BUY) &&
        Objects.equals(CURRENT_MONTH_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_TOTAL_TRADES_SELL) &&
        Objects.equals(CURRENT_MONTH_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(CURRENT_MONTH_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_VOLUME) &&
        Objects.equals(CURRENT_MONTH_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_VOLUME_BUY) &&
        Objects.equals(CURRENT_MONTH_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_VOLUME_SELL) &&
        Objects.equals(CURRENT_MONTH_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_MONTH_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_WEEK_HIGH, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_HIGH) &&
        Objects.equals(CURRENT_WEEK_LOW, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_LOW) &&
        Objects.equals(CURRENT_WEEK_OPEN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_OPEN) &&
        Objects.equals(CURRENT_WEEK_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_QUOTE_VOLUME) &&
        Objects.equals(CURRENT_WEEK_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_QUOTE_VOLUME_BUY) &&
        Objects.equals(CURRENT_WEEK_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_QUOTE_VOLUME_SELL) &&
        Objects.equals(CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_WEEK_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_TOTAL_TRADES) &&
        Objects.equals(CURRENT_WEEK_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_TOTAL_TRADES_BUY) &&
        Objects.equals(CURRENT_WEEK_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_TOTAL_TRADES_SELL) &&
        Objects.equals(CURRENT_WEEK_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(CURRENT_WEEK_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_VOLUME) &&
        Objects.equals(CURRENT_WEEK_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_VOLUME_BUY) &&
        Objects.equals(CURRENT_WEEK_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_VOLUME_SELL) &&
        Objects.equals(CURRENT_WEEK_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_WEEK_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_YEAR_HIGH, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_HIGH) &&
        Objects.equals(CURRENT_YEAR_LOW, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_LOW) &&
        Objects.equals(CURRENT_YEAR_OPEN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_OPEN) &&
        Objects.equals(CURRENT_YEAR_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_QUOTE_VOLUME) &&
        Objects.equals(CURRENT_YEAR_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_QUOTE_VOLUME_BUY) &&
        Objects.equals(CURRENT_YEAR_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_QUOTE_VOLUME_SELL) &&
        Objects.equals(CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(CURRENT_YEAR_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_TOTAL_TRADES) &&
        Objects.equals(CURRENT_YEAR_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_TOTAL_TRADES_BUY) &&
        Objects.equals(CURRENT_YEAR_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_TOTAL_TRADES_SELL) &&
        Objects.equals(CURRENT_YEAR_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(CURRENT_YEAR_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_VOLUME) &&
        Objects.equals(CURRENT_YEAR_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_VOLUME_BUY) &&
        Objects.equals(CURRENT_YEAR_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_VOLUME_SELL) &&
        Objects.equals(CURRENT_YEAR_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.CURRENT_YEAR_VOLUME_UNKNOWN) &&
        Objects.equals(INSTRUMENT, SPOT_INSTRUMENT_MARKET_DATA.INSTRUMENT) &&
        Objects.equals(LAST_PROCESSED_TRADE_CCSEQ, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_CCSEQ) &&
        Objects.equals(LAST_PROCESSED_TRADE_PRICE, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_PRICE) &&
        Objects.equals(LAST_PROCESSED_TRADE_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_QUANTITY) &&
        Objects.equals(LAST_PROCESSED_TRADE_QUOTE_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_QUOTE_QUANTITY) &&
        Objects.equals(LAST_PROCESSED_TRADE_SIDE, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_SIDE) &&
        Objects.equals(LAST_PROCESSED_TRADE_TS, SPOT_INSTRUMENT_MARKET_DATA.LAST_PROCESSED_TRADE_TS) &&
        Objects.equals(LAST_TRADE_CCSEQ, SPOT_INSTRUMENT_MARKET_DATA.LAST_TRADE_CCSEQ) &&
        Objects.equals(LAST_TRADE_ID, SPOT_INSTRUMENT_MARKET_DATA.LAST_TRADE_ID) &&
        Objects.equals(LAST_TRADE_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.LAST_TRADE_QUANTITY) &&
        Objects.equals(LAST_TRADE_QUOTE_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.LAST_TRADE_QUOTE_QUANTITY) &&
        Objects.equals(LAST_TRADE_SIDE, SPOT_INSTRUMENT_MARKET_DATA.LAST_TRADE_SIDE) &&
        Objects.equals(LIFETIME_FIRST_TRADE_TS, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_FIRST_TRADE_TS) &&
        Objects.equals(LIFETIME_HIGH, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_HIGH) &&
        Objects.equals(LIFETIME_HIGH_TS, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_HIGH_TS) &&
        Objects.equals(LIFETIME_LOW, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_LOW) &&
        Objects.equals(LIFETIME_LOW_TS, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_LOW_TS) &&
        Objects.equals(LIFETIME_OPEN, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_OPEN) &&
        Objects.equals(LIFETIME_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_QUOTE_VOLUME) &&
        Objects.equals(LIFETIME_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_QUOTE_VOLUME_BUY) &&
        Objects.equals(LIFETIME_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_QUOTE_VOLUME_SELL) &&
        Objects.equals(LIFETIME_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(LIFETIME_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_TOTAL_TRADES) &&
        Objects.equals(LIFETIME_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_TOTAL_TRADES_BUY) &&
        Objects.equals(LIFETIME_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_TOTAL_TRADES_SELL) &&
        Objects.equals(LIFETIME_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(LIFETIME_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_VOLUME) &&
        Objects.equals(LIFETIME_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_VOLUME_BUY) &&
        Objects.equals(LIFETIME_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_VOLUME_SELL) &&
        Objects.equals(LIFETIME_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.LIFETIME_VOLUME_UNKNOWN) &&
        Objects.equals(MAPPED_INSTRUMENT, SPOT_INSTRUMENT_MARKET_DATA.MAPPED_INSTRUMENT) &&
        Objects.equals(MARKET, SPOT_INSTRUMENT_MARKET_DATA.MARKET) &&
        Objects.equals(MOVING_180_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_HIGH) &&
        Objects.equals(MOVING_180_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_LOW) &&
        Objects.equals(MOVING_180_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_OPEN) &&
        Objects.equals(MOVING_180_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_QUOTE_VOLUME) &&
        Objects.equals(MOVING_180_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_180_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_180_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_TOTAL_TRADES) &&
        Objects.equals(MOVING_180_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_180_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_180_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_180_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_VOLUME) &&
        Objects.equals(MOVING_180_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_VOLUME_BUY) &&
        Objects.equals(MOVING_180_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_VOLUME_SELL) &&
        Objects.equals(MOVING_180_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_180_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_24_HOUR_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_HIGH) &&
        Objects.equals(MOVING_24_HOUR_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_LOW) &&
        Objects.equals(MOVING_24_HOUR_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_OPEN) &&
        Objects.equals(MOVING_24_HOUR_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_QUOTE_VOLUME) &&
        Objects.equals(MOVING_24_HOUR_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_24_HOUR_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_24_HOUR_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_TOTAL_TRADES) &&
        Objects.equals(MOVING_24_HOUR_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_24_HOUR_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_24_HOUR_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_VOLUME) &&
        Objects.equals(MOVING_24_HOUR_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_VOLUME_BUY) &&
        Objects.equals(MOVING_24_HOUR_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_VOLUME_SELL) &&
        Objects.equals(MOVING_24_HOUR_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_24_HOUR_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_30_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_HIGH) &&
        Objects.equals(MOVING_30_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_LOW) &&
        Objects.equals(MOVING_30_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_OPEN) &&
        Objects.equals(MOVING_30_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_QUOTE_VOLUME) &&
        Objects.equals(MOVING_30_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_30_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_30_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_TOTAL_TRADES) &&
        Objects.equals(MOVING_30_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_30_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_30_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_30_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_VOLUME) &&
        Objects.equals(MOVING_30_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_VOLUME_BUY) &&
        Objects.equals(MOVING_30_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_VOLUME_SELL) &&
        Objects.equals(MOVING_30_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_30_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_365_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_HIGH) &&
        Objects.equals(MOVING_365_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_LOW) &&
        Objects.equals(MOVING_365_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_OPEN) &&
        Objects.equals(MOVING_365_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_QUOTE_VOLUME) &&
        Objects.equals(MOVING_365_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_365_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_365_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_TOTAL_TRADES) &&
        Objects.equals(MOVING_365_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_365_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_365_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_365_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_VOLUME) &&
        Objects.equals(MOVING_365_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_VOLUME_BUY) &&
        Objects.equals(MOVING_365_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_VOLUME_SELL) &&
        Objects.equals(MOVING_365_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_365_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_7_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_HIGH) &&
        Objects.equals(MOVING_7_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_LOW) &&
        Objects.equals(MOVING_7_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_OPEN) &&
        Objects.equals(MOVING_7_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_QUOTE_VOLUME) &&
        Objects.equals(MOVING_7_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_7_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_7_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_TOTAL_TRADES) &&
        Objects.equals(MOVING_7_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_7_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_7_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_7_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_VOLUME) &&
        Objects.equals(MOVING_7_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_VOLUME_BUY) &&
        Objects.equals(MOVING_7_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_VOLUME_SELL) &&
        Objects.equals(MOVING_7_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_7_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_90_DAY_HIGH, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_HIGH) &&
        Objects.equals(MOVING_90_DAY_LOW, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_LOW) &&
        Objects.equals(MOVING_90_DAY_OPEN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_OPEN) &&
        Objects.equals(MOVING_90_DAY_QUOTE_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_QUOTE_VOLUME) &&
        Objects.equals(MOVING_90_DAY_QUOTE_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_QUOTE_VOLUME_BUY) &&
        Objects.equals(MOVING_90_DAY_QUOTE_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_QUOTE_VOLUME_SELL) &&
        Objects.equals(MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN) &&
        Objects.equals(MOVING_90_DAY_TOTAL_TRADES, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_TOTAL_TRADES) &&
        Objects.equals(MOVING_90_DAY_TOTAL_TRADES_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_TOTAL_TRADES_BUY) &&
        Objects.equals(MOVING_90_DAY_TOTAL_TRADES_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_TOTAL_TRADES_SELL) &&
        Objects.equals(MOVING_90_DAY_TOTAL_TRADES_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_TOTAL_TRADES_UNKNOWN) &&
        Objects.equals(MOVING_90_DAY_VOLUME, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_VOLUME) &&
        Objects.equals(MOVING_90_DAY_VOLUME_BUY, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_VOLUME_BUY) &&
        Objects.equals(MOVING_90_DAY_VOLUME_SELL, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_VOLUME_SELL) &&
        Objects.equals(MOVING_90_DAY_VOLUME_UNKNOWN, SPOT_INSTRUMENT_MARKET_DATA.MOVING_90_DAY_VOLUME_UNKNOWN) &&
        Objects.equals(PRICE, SPOT_INSTRUMENT_MARKET_DATA.PRICE) &&
        Objects.equals(PRICE_FLAG, SPOT_INSTRUMENT_MARKET_DATA.PRICE_FLAG) &&
        Objects.equals(PRICE_LAST_UPDATE_TS, SPOT_INSTRUMENT_MARKET_DATA.PRICE_LAST_UPDATE_TS) &&
        Objects.equals(QUOTE, SPOT_INSTRUMENT_MARKET_DATA.QUOTE) &&
        Objects.equals(TOP_ASK_LAST_UPDATE_TS, SPOT_INSTRUMENT_MARKET_DATA.TOP_ASK_LAST_UPDATE_TS) &&
        Objects.equals(TOP_ASK_PRICE, SPOT_INSTRUMENT_MARKET_DATA.TOP_ASK_PRICE) &&
        Objects.equals(TOP_ASK_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.TOP_ASK_QUANTITY) &&
        Objects.equals(TOP_BID_LAST_UPDATE_TS, SPOT_INSTRUMENT_MARKET_DATA.TOP_BID_LAST_UPDATE_TS) &&
        Objects.equals(TOP_BID_PRICE, SPOT_INSTRUMENT_MARKET_DATA.TOP_BID_PRICE) &&
        Objects.equals(TOP_BID_QUANTITY, SPOT_INSTRUMENT_MARKET_DATA.TOP_BID_QUANTITY) &&
        Objects.equals(TYPE, SPOT_INSTRUMENT_MARKET_DATA.TYPE);
  }

  @Override
  public int hashCode() {
    return Objects.hash(BASE, CCSEQ, CURRENT_DAY_HIGH, CURRENT_DAY_LOW, CURRENT_DAY_OPEN, CURRENT_DAY_QUOTE_VOLUME, CURRENT_DAY_QUOTE_VOLUME_BUY, CURRENT_DAY_QUOTE_VOLUME_SELL, CURRENT_DAY_QUOTE_VOLUME_UNKNOWN, CURRENT_DAY_TOTAL_TRADES, CURRENT_DAY_TOTAL_TRADES_BUY, CURRENT_DAY_TOTAL_TRADES_SELL, CURRENT_DAY_TOTAL_TRADES_UNKNOWN, CURRENT_DAY_VOLUME, CURRENT_DAY_VOLUME_BUY, CURRENT_DAY_VOLUME_SELL, CURRENT_DAY_VOLUME_UNKNOWN, CURRENT_HOUR_HIGH, CURRENT_HOUR_LOW, CURRENT_HOUR_OPEN, CURRENT_HOUR_QUOTE_VOLUME, CURRENT_HOUR_QUOTE_VOLUME_BUY, CURRENT_HOUR_QUOTE_VOLUME_SELL, CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN, CURRENT_HOUR_TOTAL_TRADES, CURRENT_HOUR_TOTAL_TRADES_BUY, CURRENT_HOUR_TOTAL_TRADES_SELL, CURRENT_HOUR_TOTAL_TRADES_UNKNOWN, CURRENT_HOUR_VOLUME, CURRENT_HOUR_VOLUME_BUY, CURRENT_HOUR_VOLUME_SELL, CURRENT_HOUR_VOLUME_UNKNOWN, CURRENT_MONTH_HIGH, CURRENT_MONTH_LOW, CURRENT_MONTH_OPEN, CURRENT_MONTH_QUOTE_VOLUME, CURRENT_MONTH_QUOTE_VOLUME_BUY, CURRENT_MONTH_QUOTE_VOLUME_SELL, CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN, CURRENT_MONTH_TOTAL_TRADES, CURRENT_MONTH_TOTAL_TRADES_BUY, CURRENT_MONTH_TOTAL_TRADES_SELL, CURRENT_MONTH_TOTAL_TRADES_UNKNOWN, CURRENT_MONTH_VOLUME, CURRENT_MONTH_VOLUME_BUY, CURRENT_MONTH_VOLUME_SELL, CURRENT_MONTH_VOLUME_UNKNOWN, CURRENT_WEEK_HIGH, CURRENT_WEEK_LOW, CURRENT_WEEK_OPEN, CURRENT_WEEK_QUOTE_VOLUME, CURRENT_WEEK_QUOTE_VOLUME_BUY, CURRENT_WEEK_QUOTE_VOLUME_SELL, CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN, CURRENT_WEEK_TOTAL_TRADES, CURRENT_WEEK_TOTAL_TRADES_BUY, CURRENT_WEEK_TOTAL_TRADES_SELL, CURRENT_WEEK_TOTAL_TRADES_UNKNOWN, CURRENT_WEEK_VOLUME, CURRENT_WEEK_VOLUME_BUY, CURRENT_WEEK_VOLUME_SELL, CURRENT_WEEK_VOLUME_UNKNOWN, CURRENT_YEAR_HIGH, CURRENT_YEAR_LOW, CURRENT_YEAR_OPEN, CURRENT_YEAR_QUOTE_VOLUME, CURRENT_YEAR_QUOTE_VOLUME_BUY, CURRENT_YEAR_QUOTE_VOLUME_SELL, CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN, CURRENT_YEAR_TOTAL_TRADES, CURRENT_YEAR_TOTAL_TRADES_BUY, CURRENT_YEAR_TOTAL_TRADES_SELL, CURRENT_YEAR_TOTAL_TRADES_UNKNOWN, CURRENT_YEAR_VOLUME, CURRENT_YEAR_VOLUME_BUY, CURRENT_YEAR_VOLUME_SELL, CURRENT_YEAR_VOLUME_UNKNOWN, INSTRUMENT, LAST_PROCESSED_TRADE_CCSEQ, LAST_PROCESSED_TRADE_PRICE, LAST_PROCESSED_TRADE_QUANTITY, LAST_PROCESSED_TRADE_QUOTE_QUANTITY, LAST_PROCESSED_TRADE_SIDE, LAST_PROCESSED_TRADE_TS, LAST_TRADE_CCSEQ, LAST_TRADE_ID, LAST_TRADE_QUANTITY, LAST_TRADE_QUOTE_QUANTITY, LAST_TRADE_SIDE, LIFETIME_FIRST_TRADE_TS, LIFETIME_HIGH, LIFETIME_HIGH_TS, LIFETIME_LOW, LIFETIME_LOW_TS, LIFETIME_OPEN, LIFETIME_QUOTE_VOLUME, LIFETIME_QUOTE_VOLUME_BUY, LIFETIME_QUOTE_VOLUME_SELL, LIFETIME_QUOTE_VOLUME_UNKNOWN, LIFETIME_TOTAL_TRADES, LIFETIME_TOTAL_TRADES_BUY, LIFETIME_TOTAL_TRADES_SELL, LIFETIME_TOTAL_TRADES_UNKNOWN, LIFETIME_VOLUME, LIFETIME_VOLUME_BUY, LIFETIME_VOLUME_SELL, LIFETIME_VOLUME_UNKNOWN, MAPPED_INSTRUMENT, MARKET, MOVING_180_DAY_HIGH, MOVING_180_DAY_LOW, MOVING_180_DAY_OPEN, MOVING_180_DAY_QUOTE_VOLUME, MOVING_180_DAY_QUOTE_VOLUME_BUY, MOVING_180_DAY_QUOTE_VOLUME_SELL, MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN, MOVING_180_DAY_TOTAL_TRADES, MOVING_180_DAY_TOTAL_TRADES_BUY, MOVING_180_DAY_TOTAL_TRADES_SELL, MOVING_180_DAY_TOTAL_TRADES_UNKNOWN, MOVING_180_DAY_VOLUME, MOVING_180_DAY_VOLUME_BUY, MOVING_180_DAY_VOLUME_SELL, MOVING_180_DAY_VOLUME_UNKNOWN, MOVING_24_HOUR_HIGH, MOVING_24_HOUR_LOW, MOVING_24_HOUR_OPEN, MOVING_24_HOUR_QUOTE_VOLUME, MOVING_24_HOUR_QUOTE_VOLUME_BUY, MOVING_24_HOUR_QUOTE_VOLUME_SELL, MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN, MOVING_24_HOUR_TOTAL_TRADES, MOVING_24_HOUR_TOTAL_TRADES_BUY, MOVING_24_HOUR_TOTAL_TRADES_SELL, MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN, MOVING_24_HOUR_VOLUME, MOVING_24_HOUR_VOLUME_BUY, MOVING_24_HOUR_VOLUME_SELL, MOVING_24_HOUR_VOLUME_UNKNOWN, MOVING_30_DAY_HIGH, MOVING_30_DAY_LOW, MOVING_30_DAY_OPEN, MOVING_30_DAY_QUOTE_VOLUME, MOVING_30_DAY_QUOTE_VOLUME_BUY, MOVING_30_DAY_QUOTE_VOLUME_SELL, MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN, MOVING_30_DAY_TOTAL_TRADES, MOVING_30_DAY_TOTAL_TRADES_BUY, MOVING_30_DAY_TOTAL_TRADES_SELL, MOVING_30_DAY_TOTAL_TRADES_UNKNOWN, MOVING_30_DAY_VOLUME, MOVING_30_DAY_VOLUME_BUY, MOVING_30_DAY_VOLUME_SELL, MOVING_30_DAY_VOLUME_UNKNOWN, MOVING_365_DAY_HIGH, MOVING_365_DAY_LOW, MOVING_365_DAY_OPEN, MOVING_365_DAY_QUOTE_VOLUME, MOVING_365_DAY_QUOTE_VOLUME_BUY, MOVING_365_DAY_QUOTE_VOLUME_SELL, MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN, MOVING_365_DAY_TOTAL_TRADES, MOVING_365_DAY_TOTAL_TRADES_BUY, MOVING_365_DAY_TOTAL_TRADES_SELL, MOVING_365_DAY_TOTAL_TRADES_UNKNOWN, MOVING_365_DAY_VOLUME, MOVING_365_DAY_VOLUME_BUY, MOVING_365_DAY_VOLUME_SELL, MOVING_365_DAY_VOLUME_UNKNOWN, MOVING_7_DAY_HIGH, MOVING_7_DAY_LOW, MOVING_7_DAY_OPEN, MOVING_7_DAY_QUOTE_VOLUME, MOVING_7_DAY_QUOTE_VOLUME_BUY, MOVING_7_DAY_QUOTE_VOLUME_SELL, MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN, MOVING_7_DAY_TOTAL_TRADES, MOVING_7_DAY_TOTAL_TRADES_BUY, MOVING_7_DAY_TOTAL_TRADES_SELL, MOVING_7_DAY_TOTAL_TRADES_UNKNOWN, MOVING_7_DAY_VOLUME, MOVING_7_DAY_VOLUME_BUY, MOVING_7_DAY_VOLUME_SELL, MOVING_7_DAY_VOLUME_UNKNOWN, MOVING_90_DAY_HIGH, MOVING_90_DAY_LOW, MOVING_90_DAY_OPEN, MOVING_90_DAY_QUOTE_VOLUME, MOVING_90_DAY_QUOTE_VOLUME_BUY, MOVING_90_DAY_QUOTE_VOLUME_SELL, MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN, MOVING_90_DAY_TOTAL_TRADES, MOVING_90_DAY_TOTAL_TRADES_BUY, MOVING_90_DAY_TOTAL_TRADES_SELL, MOVING_90_DAY_TOTAL_TRADES_UNKNOWN, MOVING_90_DAY_VOLUME, MOVING_90_DAY_VOLUME_BUY, MOVING_90_DAY_VOLUME_SELL, MOVING_90_DAY_VOLUME_UNKNOWN, PRICE, PRICE_FLAG, PRICE_LAST_UPDATE_TS, QUOTE, TOP_ASK_LAST_UPDATE_TS, TOP_ASK_PRICE, TOP_ASK_QUANTITY, TOP_BID_LAST_UPDATE_TS, TOP_BID_PRICE, TOP_BID_QUANTITY, TYPE);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTMARKETDATA {\n");
    
    sb.append("    BASE: ").append(toIndentedString(BASE)).append("\n");
    sb.append("    CCSEQ: ").append(toIndentedString(CCSEQ)).append("\n");
    sb.append("    CURRENT_DAY_HIGH: ").append(toIndentedString(CURRENT_DAY_HIGH)).append("\n");
    sb.append("    CURRENT_DAY_LOW: ").append(toIndentedString(CURRENT_DAY_LOW)).append("\n");
    sb.append("    CURRENT_DAY_OPEN: ").append(toIndentedString(CURRENT_DAY_OPEN)).append("\n");
    sb.append("    CURRENT_DAY_QUOTE_VOLUME: ").append(toIndentedString(CURRENT_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    CURRENT_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(CURRENT_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(CURRENT_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_DAY_TOTAL_TRADES: ").append(toIndentedString(CURRENT_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    CURRENT_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(CURRENT_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    CURRENT_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(CURRENT_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    CURRENT_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(CURRENT_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    CURRENT_DAY_VOLUME: ").append(toIndentedString(CURRENT_DAY_VOLUME)).append("\n");
    sb.append("    CURRENT_DAY_VOLUME_BUY: ").append(toIndentedString(CURRENT_DAY_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_DAY_VOLUME_SELL: ").append(toIndentedString(CURRENT_DAY_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_HOUR_HIGH: ").append(toIndentedString(CURRENT_HOUR_HIGH)).append("\n");
    sb.append("    CURRENT_HOUR_LOW: ").append(toIndentedString(CURRENT_HOUR_LOW)).append("\n");
    sb.append("    CURRENT_HOUR_OPEN: ").append(toIndentedString(CURRENT_HOUR_OPEN)).append("\n");
    sb.append("    CURRENT_HOUR_QUOTE_VOLUME: ").append(toIndentedString(CURRENT_HOUR_QUOTE_VOLUME)).append("\n");
    sb.append("    CURRENT_HOUR_QUOTE_VOLUME_BUY: ").append(toIndentedString(CURRENT_HOUR_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_HOUR_QUOTE_VOLUME_SELL: ").append(toIndentedString(CURRENT_HOUR_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_HOUR_TOTAL_TRADES: ").append(toIndentedString(CURRENT_HOUR_TOTAL_TRADES)).append("\n");
    sb.append("    CURRENT_HOUR_TOTAL_TRADES_BUY: ").append(toIndentedString(CURRENT_HOUR_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    CURRENT_HOUR_TOTAL_TRADES_SELL: ").append(toIndentedString(CURRENT_HOUR_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    CURRENT_HOUR_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(CURRENT_HOUR_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    CURRENT_HOUR_VOLUME: ").append(toIndentedString(CURRENT_HOUR_VOLUME)).append("\n");
    sb.append("    CURRENT_HOUR_VOLUME_BUY: ").append(toIndentedString(CURRENT_HOUR_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_HOUR_VOLUME_SELL: ").append(toIndentedString(CURRENT_HOUR_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_HOUR_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_HOUR_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_MONTH_HIGH: ").append(toIndentedString(CURRENT_MONTH_HIGH)).append("\n");
    sb.append("    CURRENT_MONTH_LOW: ").append(toIndentedString(CURRENT_MONTH_LOW)).append("\n");
    sb.append("    CURRENT_MONTH_OPEN: ").append(toIndentedString(CURRENT_MONTH_OPEN)).append("\n");
    sb.append("    CURRENT_MONTH_QUOTE_VOLUME: ").append(toIndentedString(CURRENT_MONTH_QUOTE_VOLUME)).append("\n");
    sb.append("    CURRENT_MONTH_QUOTE_VOLUME_BUY: ").append(toIndentedString(CURRENT_MONTH_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_MONTH_QUOTE_VOLUME_SELL: ").append(toIndentedString(CURRENT_MONTH_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_MONTH_TOTAL_TRADES: ").append(toIndentedString(CURRENT_MONTH_TOTAL_TRADES)).append("\n");
    sb.append("    CURRENT_MONTH_TOTAL_TRADES_BUY: ").append(toIndentedString(CURRENT_MONTH_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    CURRENT_MONTH_TOTAL_TRADES_SELL: ").append(toIndentedString(CURRENT_MONTH_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    CURRENT_MONTH_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(CURRENT_MONTH_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    CURRENT_MONTH_VOLUME: ").append(toIndentedString(CURRENT_MONTH_VOLUME)).append("\n");
    sb.append("    CURRENT_MONTH_VOLUME_BUY: ").append(toIndentedString(CURRENT_MONTH_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_MONTH_VOLUME_SELL: ").append(toIndentedString(CURRENT_MONTH_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_MONTH_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_MONTH_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_WEEK_HIGH: ").append(toIndentedString(CURRENT_WEEK_HIGH)).append("\n");
    sb.append("    CURRENT_WEEK_LOW: ").append(toIndentedString(CURRENT_WEEK_LOW)).append("\n");
    sb.append("    CURRENT_WEEK_OPEN: ").append(toIndentedString(CURRENT_WEEK_OPEN)).append("\n");
    sb.append("    CURRENT_WEEK_QUOTE_VOLUME: ").append(toIndentedString(CURRENT_WEEK_QUOTE_VOLUME)).append("\n");
    sb.append("    CURRENT_WEEK_QUOTE_VOLUME_BUY: ").append(toIndentedString(CURRENT_WEEK_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_WEEK_QUOTE_VOLUME_SELL: ").append(toIndentedString(CURRENT_WEEK_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_WEEK_TOTAL_TRADES: ").append(toIndentedString(CURRENT_WEEK_TOTAL_TRADES)).append("\n");
    sb.append("    CURRENT_WEEK_TOTAL_TRADES_BUY: ").append(toIndentedString(CURRENT_WEEK_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    CURRENT_WEEK_TOTAL_TRADES_SELL: ").append(toIndentedString(CURRENT_WEEK_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    CURRENT_WEEK_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(CURRENT_WEEK_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    CURRENT_WEEK_VOLUME: ").append(toIndentedString(CURRENT_WEEK_VOLUME)).append("\n");
    sb.append("    CURRENT_WEEK_VOLUME_BUY: ").append(toIndentedString(CURRENT_WEEK_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_WEEK_VOLUME_SELL: ").append(toIndentedString(CURRENT_WEEK_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_WEEK_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_WEEK_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_YEAR_HIGH: ").append(toIndentedString(CURRENT_YEAR_HIGH)).append("\n");
    sb.append("    CURRENT_YEAR_LOW: ").append(toIndentedString(CURRENT_YEAR_LOW)).append("\n");
    sb.append("    CURRENT_YEAR_OPEN: ").append(toIndentedString(CURRENT_YEAR_OPEN)).append("\n");
    sb.append("    CURRENT_YEAR_QUOTE_VOLUME: ").append(toIndentedString(CURRENT_YEAR_QUOTE_VOLUME)).append("\n");
    sb.append("    CURRENT_YEAR_QUOTE_VOLUME_BUY: ").append(toIndentedString(CURRENT_YEAR_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_YEAR_QUOTE_VOLUME_SELL: ").append(toIndentedString(CURRENT_YEAR_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    CURRENT_YEAR_TOTAL_TRADES: ").append(toIndentedString(CURRENT_YEAR_TOTAL_TRADES)).append("\n");
    sb.append("    CURRENT_YEAR_TOTAL_TRADES_BUY: ").append(toIndentedString(CURRENT_YEAR_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    CURRENT_YEAR_TOTAL_TRADES_SELL: ").append(toIndentedString(CURRENT_YEAR_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    CURRENT_YEAR_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(CURRENT_YEAR_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    CURRENT_YEAR_VOLUME: ").append(toIndentedString(CURRENT_YEAR_VOLUME)).append("\n");
    sb.append("    CURRENT_YEAR_VOLUME_BUY: ").append(toIndentedString(CURRENT_YEAR_VOLUME_BUY)).append("\n");
    sb.append("    CURRENT_YEAR_VOLUME_SELL: ").append(toIndentedString(CURRENT_YEAR_VOLUME_SELL)).append("\n");
    sb.append("    CURRENT_YEAR_VOLUME_UNKNOWN: ").append(toIndentedString(CURRENT_YEAR_VOLUME_UNKNOWN)).append("\n");
    sb.append("    INSTRUMENT: ").append(toIndentedString(INSTRUMENT)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_CCSEQ: ").append(toIndentedString(LAST_PROCESSED_TRADE_CCSEQ)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_PRICE: ").append(toIndentedString(LAST_PROCESSED_TRADE_PRICE)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_QUANTITY: ").append(toIndentedString(LAST_PROCESSED_TRADE_QUANTITY)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_QUOTE_QUANTITY: ").append(toIndentedString(LAST_PROCESSED_TRADE_QUOTE_QUANTITY)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_SIDE: ").append(toIndentedString(LAST_PROCESSED_TRADE_SIDE)).append("\n");
    sb.append("    LAST_PROCESSED_TRADE_TS: ").append(toIndentedString(LAST_PROCESSED_TRADE_TS)).append("\n");
    sb.append("    LAST_TRADE_CCSEQ: ").append(toIndentedString(LAST_TRADE_CCSEQ)).append("\n");
    sb.append("    LAST_TRADE_ID: ").append(toIndentedString(LAST_TRADE_ID)).append("\n");
    sb.append("    LAST_TRADE_QUANTITY: ").append(toIndentedString(LAST_TRADE_QUANTITY)).append("\n");
    sb.append("    LAST_TRADE_QUOTE_QUANTITY: ").append(toIndentedString(LAST_TRADE_QUOTE_QUANTITY)).append("\n");
    sb.append("    LAST_TRADE_SIDE: ").append(toIndentedString(LAST_TRADE_SIDE)).append("\n");
    sb.append("    LIFETIME_FIRST_TRADE_TS: ").append(toIndentedString(LIFETIME_FIRST_TRADE_TS)).append("\n");
    sb.append("    LIFETIME_HIGH: ").append(toIndentedString(LIFETIME_HIGH)).append("\n");
    sb.append("    LIFETIME_HIGH_TS: ").append(toIndentedString(LIFETIME_HIGH_TS)).append("\n");
    sb.append("    LIFETIME_LOW: ").append(toIndentedString(LIFETIME_LOW)).append("\n");
    sb.append("    LIFETIME_LOW_TS: ").append(toIndentedString(LIFETIME_LOW_TS)).append("\n");
    sb.append("    LIFETIME_OPEN: ").append(toIndentedString(LIFETIME_OPEN)).append("\n");
    sb.append("    LIFETIME_QUOTE_VOLUME: ").append(toIndentedString(LIFETIME_QUOTE_VOLUME)).append("\n");
    sb.append("    LIFETIME_QUOTE_VOLUME_BUY: ").append(toIndentedString(LIFETIME_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    LIFETIME_QUOTE_VOLUME_SELL: ").append(toIndentedString(LIFETIME_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    LIFETIME_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(LIFETIME_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    LIFETIME_TOTAL_TRADES: ").append(toIndentedString(LIFETIME_TOTAL_TRADES)).append("\n");
    sb.append("    LIFETIME_TOTAL_TRADES_BUY: ").append(toIndentedString(LIFETIME_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    LIFETIME_TOTAL_TRADES_SELL: ").append(toIndentedString(LIFETIME_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    LIFETIME_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(LIFETIME_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    LIFETIME_VOLUME: ").append(toIndentedString(LIFETIME_VOLUME)).append("\n");
    sb.append("    LIFETIME_VOLUME_BUY: ").append(toIndentedString(LIFETIME_VOLUME_BUY)).append("\n");
    sb.append("    LIFETIME_VOLUME_SELL: ").append(toIndentedString(LIFETIME_VOLUME_SELL)).append("\n");
    sb.append("    LIFETIME_VOLUME_UNKNOWN: ").append(toIndentedString(LIFETIME_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MAPPED_INSTRUMENT: ").append(toIndentedString(MAPPED_INSTRUMENT)).append("\n");
    sb.append("    MARKET: ").append(toIndentedString(MARKET)).append("\n");
    sb.append("    MOVING_180_DAY_HIGH: ").append(toIndentedString(MOVING_180_DAY_HIGH)).append("\n");
    sb.append("    MOVING_180_DAY_LOW: ").append(toIndentedString(MOVING_180_DAY_LOW)).append("\n");
    sb.append("    MOVING_180_DAY_OPEN: ").append(toIndentedString(MOVING_180_DAY_OPEN)).append("\n");
    sb.append("    MOVING_180_DAY_QUOTE_VOLUME: ").append(toIndentedString(MOVING_180_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_180_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_180_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_180_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_180_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_180_DAY_TOTAL_TRADES: ").append(toIndentedString(MOVING_180_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_180_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_180_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_180_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_180_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_180_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_180_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_180_DAY_VOLUME: ").append(toIndentedString(MOVING_180_DAY_VOLUME)).append("\n");
    sb.append("    MOVING_180_DAY_VOLUME_BUY: ").append(toIndentedString(MOVING_180_DAY_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_180_DAY_VOLUME_SELL: ").append(toIndentedString(MOVING_180_DAY_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_180_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_180_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_24_HOUR_HIGH: ").append(toIndentedString(MOVING_24_HOUR_HIGH)).append("\n");
    sb.append("    MOVING_24_HOUR_LOW: ").append(toIndentedString(MOVING_24_HOUR_LOW)).append("\n");
    sb.append("    MOVING_24_HOUR_OPEN: ").append(toIndentedString(MOVING_24_HOUR_OPEN)).append("\n");
    sb.append("    MOVING_24_HOUR_QUOTE_VOLUME: ").append(toIndentedString(MOVING_24_HOUR_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_24_HOUR_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_24_HOUR_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_24_HOUR_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_24_HOUR_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_24_HOUR_TOTAL_TRADES: ").append(toIndentedString(MOVING_24_HOUR_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_24_HOUR_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_24_HOUR_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_24_HOUR_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_24_HOUR_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_24_HOUR_VOLUME: ").append(toIndentedString(MOVING_24_HOUR_VOLUME)).append("\n");
    sb.append("    MOVING_24_HOUR_VOLUME_BUY: ").append(toIndentedString(MOVING_24_HOUR_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_24_HOUR_VOLUME_SELL: ").append(toIndentedString(MOVING_24_HOUR_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_24_HOUR_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_24_HOUR_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_30_DAY_HIGH: ").append(toIndentedString(MOVING_30_DAY_HIGH)).append("\n");
    sb.append("    MOVING_30_DAY_LOW: ").append(toIndentedString(MOVING_30_DAY_LOW)).append("\n");
    sb.append("    MOVING_30_DAY_OPEN: ").append(toIndentedString(MOVING_30_DAY_OPEN)).append("\n");
    sb.append("    MOVING_30_DAY_QUOTE_VOLUME: ").append(toIndentedString(MOVING_30_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_30_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_30_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_30_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_30_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_30_DAY_TOTAL_TRADES: ").append(toIndentedString(MOVING_30_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_30_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_30_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_30_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_30_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_30_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_30_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_30_DAY_VOLUME: ").append(toIndentedString(MOVING_30_DAY_VOLUME)).append("\n");
    sb.append("    MOVING_30_DAY_VOLUME_BUY: ").append(toIndentedString(MOVING_30_DAY_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_30_DAY_VOLUME_SELL: ").append(toIndentedString(MOVING_30_DAY_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_30_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_30_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_365_DAY_HIGH: ").append(toIndentedString(MOVING_365_DAY_HIGH)).append("\n");
    sb.append("    MOVING_365_DAY_LOW: ").append(toIndentedString(MOVING_365_DAY_LOW)).append("\n");
    sb.append("    MOVING_365_DAY_OPEN: ").append(toIndentedString(MOVING_365_DAY_OPEN)).append("\n");
    sb.append("    MOVING_365_DAY_QUOTE_VOLUME: ").append(toIndentedString(MOVING_365_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_365_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_365_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_365_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_365_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_365_DAY_TOTAL_TRADES: ").append(toIndentedString(MOVING_365_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_365_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_365_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_365_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_365_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_365_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_365_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_365_DAY_VOLUME: ").append(toIndentedString(MOVING_365_DAY_VOLUME)).append("\n");
    sb.append("    MOVING_365_DAY_VOLUME_BUY: ").append(toIndentedString(MOVING_365_DAY_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_365_DAY_VOLUME_SELL: ").append(toIndentedString(MOVING_365_DAY_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_365_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_365_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_7_DAY_HIGH: ").append(toIndentedString(MOVING_7_DAY_HIGH)).append("\n");
    sb.append("    MOVING_7_DAY_LOW: ").append(toIndentedString(MOVING_7_DAY_LOW)).append("\n");
    sb.append("    MOVING_7_DAY_OPEN: ").append(toIndentedString(MOVING_7_DAY_OPEN)).append("\n");
    sb.append("    MOVING_7_DAY_QUOTE_VOLUME: ").append(toIndentedString(MOVING_7_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_7_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_7_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_7_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_7_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_7_DAY_TOTAL_TRADES: ").append(toIndentedString(MOVING_7_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_7_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_7_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_7_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_7_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_7_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_7_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_7_DAY_VOLUME: ").append(toIndentedString(MOVING_7_DAY_VOLUME)).append("\n");
    sb.append("    MOVING_7_DAY_VOLUME_BUY: ").append(toIndentedString(MOVING_7_DAY_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_7_DAY_VOLUME_SELL: ").append(toIndentedString(MOVING_7_DAY_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_7_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_7_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_90_DAY_HIGH: ").append(toIndentedString(MOVING_90_DAY_HIGH)).append("\n");
    sb.append("    MOVING_90_DAY_LOW: ").append(toIndentedString(MOVING_90_DAY_LOW)).append("\n");
    sb.append("    MOVING_90_DAY_OPEN: ").append(toIndentedString(MOVING_90_DAY_OPEN)).append("\n");
    sb.append("    MOVING_90_DAY_QUOTE_VOLUME: ").append(toIndentedString(MOVING_90_DAY_QUOTE_VOLUME)).append("\n");
    sb.append("    MOVING_90_DAY_QUOTE_VOLUME_BUY: ").append(toIndentedString(MOVING_90_DAY_QUOTE_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_90_DAY_QUOTE_VOLUME_SELL: ").append(toIndentedString(MOVING_90_DAY_QUOTE_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN)).append("\n");
    sb.append("    MOVING_90_DAY_TOTAL_TRADES: ").append(toIndentedString(MOVING_90_DAY_TOTAL_TRADES)).append("\n");
    sb.append("    MOVING_90_DAY_TOTAL_TRADES_BUY: ").append(toIndentedString(MOVING_90_DAY_TOTAL_TRADES_BUY)).append("\n");
    sb.append("    MOVING_90_DAY_TOTAL_TRADES_SELL: ").append(toIndentedString(MOVING_90_DAY_TOTAL_TRADES_SELL)).append("\n");
    sb.append("    MOVING_90_DAY_TOTAL_TRADES_UNKNOWN: ").append(toIndentedString(MOVING_90_DAY_TOTAL_TRADES_UNKNOWN)).append("\n");
    sb.append("    MOVING_90_DAY_VOLUME: ").append(toIndentedString(MOVING_90_DAY_VOLUME)).append("\n");
    sb.append("    MOVING_90_DAY_VOLUME_BUY: ").append(toIndentedString(MOVING_90_DAY_VOLUME_BUY)).append("\n");
    sb.append("    MOVING_90_DAY_VOLUME_SELL: ").append(toIndentedString(MOVING_90_DAY_VOLUME_SELL)).append("\n");
    sb.append("    MOVING_90_DAY_VOLUME_UNKNOWN: ").append(toIndentedString(MOVING_90_DAY_VOLUME_UNKNOWN)).append("\n");
    sb.append("    PRICE: ").append(toIndentedString(PRICE)).append("\n");
    sb.append("    PRICE_FLAG: ").append(toIndentedString(PRICE_FLAG)).append("\n");
    sb.append("    PRICE_LAST_UPDATE_TS: ").append(toIndentedString(PRICE_LAST_UPDATE_TS)).append("\n");
    sb.append("    QUOTE: ").append(toIndentedString(QUOTE)).append("\n");
    sb.append("    TOP_ASK_LAST_UPDATE_TS: ").append(toIndentedString(TOP_ASK_LAST_UPDATE_TS)).append("\n");
    sb.append("    TOP_ASK_PRICE: ").append(toIndentedString(TOP_ASK_PRICE)).append("\n");
    sb.append("    TOP_ASK_QUANTITY: ").append(toIndentedString(TOP_ASK_QUANTITY)).append("\n");
    sb.append("    TOP_BID_LAST_UPDATE_TS: ").append(toIndentedString(TOP_BID_LAST_UPDATE_TS)).append("\n");
    sb.append("    TOP_BID_PRICE: ").append(toIndentedString(TOP_BID_PRICE)).append("\n");
    sb.append("    TOP_BID_QUANTITY: ").append(toIndentedString(TOP_BID_QUANTITY)).append("\n");
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

