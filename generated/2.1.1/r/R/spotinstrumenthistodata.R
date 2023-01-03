#' Create a new SPOTINSTRUMENTHISTODATA
#'
#' @description
#' SPOTINSTRUMENTHISTODATA Class
#'
#' @docType class
#' @title SPOTINSTRUMENTHISTODATA
#' @description SPOTINSTRUMENTHISTODATA Class
#' @format An \code{R6Class} generator object
#' @field BASE The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. character [optional]
#' @field CLOSE The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. integer [optional]
#' @field FIRST_TRADE_PRICE The price of the first trade in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field FIRST_TRADE_TIMESTAMP The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. integer [optional]
#' @field HIGH The highest trade price in the time period. If there were no trades in the time period, the open price will be given. integer [optional]
#' @field HIGH_TRADE_PRICE The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field HIGH_TRADE_TIMESTAMP The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field INSTRUMENT The unmapped instrument ID character [optional]
#' @field LAST_TRADE_PRICE The last trade price in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field LAST_TRADE_TIMESTAMP The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field LOW The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. integer [optional]
#' @field LOW_TRADE_PRICE The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field LOW_TRADE_TIMESTAMP The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. integer [optional]
#' @field MAPPED_INSTRUMENT The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. character [optional]
#' @field MARKET The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). character [optional]
#' @field OPEN The open price for the historical period, this is based on the closest trade before the period start. integer [optional]
#' @field QUOTE The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. character [optional]
#' @field QUOTE_VOLUME The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field QUOTE_VOLUME_BUY The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. integer [optional]
#' @field QUOTE_VOLUME_SELL The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. integer [optional]
#' @field QUOTE_VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. integer [optional]
#' @field TIMESTAMP The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. integer [optional]
#' @field TOTAL_TRADES The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field TOTAL_TRADES_BUY The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field TOTAL_TRADES_SELL The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field TOTAL_TRADES_UNKNOWN The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field TYPE The type of the message. character [optional]
#' @field UNIT The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. character [optional]
#' @field VOLUME The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. integer [optional]
#' @field VOLUME_BUY The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. integer [optional]
#' @field VOLUME_SELL The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. integer [optional]
#' @field VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTHISTODATA <- R6::R6Class(
  "SPOTINSTRUMENTHISTODATA",
  public = list(
    `BASE` = NULL,
    `CLOSE` = NULL,
    `FIRST_TRADE_PRICE` = NULL,
    `FIRST_TRADE_TIMESTAMP` = NULL,
    `HIGH` = NULL,
    `HIGH_TRADE_PRICE` = NULL,
    `HIGH_TRADE_TIMESTAMP` = NULL,
    `INSTRUMENT` = NULL,
    `LAST_TRADE_PRICE` = NULL,
    `LAST_TRADE_TIMESTAMP` = NULL,
    `LOW` = NULL,
    `LOW_TRADE_PRICE` = NULL,
    `LOW_TRADE_TIMESTAMP` = NULL,
    `MAPPED_INSTRUMENT` = NULL,
    `MARKET` = NULL,
    `OPEN` = NULL,
    `QUOTE` = NULL,
    `QUOTE_VOLUME` = NULL,
    `QUOTE_VOLUME_BUY` = NULL,
    `QUOTE_VOLUME_SELL` = NULL,
    `QUOTE_VOLUME_UNKNOWN` = NULL,
    `TIMESTAMP` = NULL,
    `TOTAL_TRADES` = NULL,
    `TOTAL_TRADES_BUY` = NULL,
    `TOTAL_TRADES_SELL` = NULL,
    `TOTAL_TRADES_UNKNOWN` = NULL,
    `TYPE` = NULL,
    `UNIT` = NULL,
    `VOLUME` = NULL,
    `VOLUME_BUY` = NULL,
    `VOLUME_SELL` = NULL,
    `VOLUME_UNKNOWN` = NULL,
    #' Initialize a new SPOTINSTRUMENTHISTODATA class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTHISTODATA class.
    #'
    #' @param BASE The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
    #' @param CLOSE The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
    #' @param FIRST_TRADE_PRICE The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
    #' @param FIRST_TRADE_TIMESTAMP The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
    #' @param HIGH The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
    #' @param HIGH_TRADE_PRICE The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    #' @param HIGH_TRADE_TIMESTAMP The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
    #' @param INSTRUMENT The unmapped instrument ID
    #' @param LAST_TRADE_PRICE The last trade price in the time period. This is only available when there is at least one trade in the time period.
    #' @param LAST_TRADE_TIMESTAMP The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
    #' @param LOW The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
    #' @param LOW_TRADE_PRICE The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    #' @param LOW_TRADE_TIMESTAMP The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
    #' @param MAPPED_INSTRUMENT The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
    #' @param MARKET The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
    #' @param OPEN The open price for the historical period, this is based on the closest trade before the period start.
    #' @param QUOTE The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
    #' @param QUOTE_VOLUME The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
    #' @param QUOTE_VOLUME_BUY The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
    #' @param QUOTE_VOLUME_SELL The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    #' @param QUOTE_VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    #' @param TIMESTAMP The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
    #' @param TOTAL_TRADES The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    #' @param TOTAL_TRADES_BUY The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    #' @param TOTAL_TRADES_SELL The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    #' @param TOTAL_TRADES_UNKNOWN The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    #' @param TYPE The type of the message.
    #' @param UNIT The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
    #' @param VOLUME The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
    #' @param VOLUME_BUY The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
    #' @param VOLUME_SELL The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
    #' @param VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`BASE` = NULL, `CLOSE` = NULL, `FIRST_TRADE_PRICE` = NULL, `FIRST_TRADE_TIMESTAMP` = NULL, `HIGH` = NULL, `HIGH_TRADE_PRICE` = NULL, `HIGH_TRADE_TIMESTAMP` = NULL, `INSTRUMENT` = NULL, `LAST_TRADE_PRICE` = NULL, `LAST_TRADE_TIMESTAMP` = NULL, `LOW` = NULL, `LOW_TRADE_PRICE` = NULL, `LOW_TRADE_TIMESTAMP` = NULL, `MAPPED_INSTRUMENT` = NULL, `MARKET` = NULL, `OPEN` = NULL, `QUOTE` = NULL, `QUOTE_VOLUME` = NULL, `QUOTE_VOLUME_BUY` = NULL, `QUOTE_VOLUME_SELL` = NULL, `QUOTE_VOLUME_UNKNOWN` = NULL, `TIMESTAMP` = NULL, `TOTAL_TRADES` = NULL, `TOTAL_TRADES_BUY` = NULL, `TOTAL_TRADES_SELL` = NULL, `TOTAL_TRADES_UNKNOWN` = NULL, `TYPE` = NULL, `UNIT` = NULL, `VOLUME` = NULL, `VOLUME_BUY` = NULL, `VOLUME_SELL` = NULL, `VOLUME_UNKNOWN` = NULL, ...) {
      if (!is.null(`BASE`)) {
        if (!(is.character(`BASE`) && length(`BASE`) == 1)) {
          stop(paste("Error! Invalid data for `BASE`. Must be a string:", `BASE`))
        }
        self$`BASE` <- `BASE`
      }
      if (!is.null(`CLOSE`)) {
        if (!(is.numeric(`CLOSE`) && length(`CLOSE`) == 1)) {
          stop(paste("Error! Invalid data for `CLOSE`. Must be an integer:", `CLOSE`))
        }
        self$`CLOSE` <- `CLOSE`
      }
      if (!is.null(`FIRST_TRADE_PRICE`)) {
        if (!(is.numeric(`FIRST_TRADE_PRICE`) && length(`FIRST_TRADE_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_TRADE_PRICE`. Must be an integer:", `FIRST_TRADE_PRICE`))
        }
        self$`FIRST_TRADE_PRICE` <- `FIRST_TRADE_PRICE`
      }
      if (!is.null(`FIRST_TRADE_TIMESTAMP`)) {
        if (!(is.numeric(`FIRST_TRADE_TIMESTAMP`) && length(`FIRST_TRADE_TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_TRADE_TIMESTAMP`. Must be an integer:", `FIRST_TRADE_TIMESTAMP`))
        }
        self$`FIRST_TRADE_TIMESTAMP` <- `FIRST_TRADE_TIMESTAMP`
      }
      if (!is.null(`HIGH`)) {
        if (!(is.numeric(`HIGH`) && length(`HIGH`) == 1)) {
          stop(paste("Error! Invalid data for `HIGH`. Must be an integer:", `HIGH`))
        }
        self$`HIGH` <- `HIGH`
      }
      if (!is.null(`HIGH_TRADE_PRICE`)) {
        if (!(is.numeric(`HIGH_TRADE_PRICE`) && length(`HIGH_TRADE_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `HIGH_TRADE_PRICE`. Must be an integer:", `HIGH_TRADE_PRICE`))
        }
        self$`HIGH_TRADE_PRICE` <- `HIGH_TRADE_PRICE`
      }
      if (!is.null(`HIGH_TRADE_TIMESTAMP`)) {
        if (!(is.numeric(`HIGH_TRADE_TIMESTAMP`) && length(`HIGH_TRADE_TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `HIGH_TRADE_TIMESTAMP`. Must be an integer:", `HIGH_TRADE_TIMESTAMP`))
        }
        self$`HIGH_TRADE_TIMESTAMP` <- `HIGH_TRADE_TIMESTAMP`
      }
      if (!is.null(`INSTRUMENT`)) {
        if (!(is.character(`INSTRUMENT`) && length(`INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT`. Must be a string:", `INSTRUMENT`))
        }
        self$`INSTRUMENT` <- `INSTRUMENT`
      }
      if (!is.null(`LAST_TRADE_PRICE`)) {
        if (!(is.numeric(`LAST_TRADE_PRICE`) && length(`LAST_TRADE_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_PRICE`. Must be an integer:", `LAST_TRADE_PRICE`))
        }
        self$`LAST_TRADE_PRICE` <- `LAST_TRADE_PRICE`
      }
      if (!is.null(`LAST_TRADE_TIMESTAMP`)) {
        if (!(is.numeric(`LAST_TRADE_TIMESTAMP`) && length(`LAST_TRADE_TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_TRADE_TIMESTAMP`. Must be an integer:", `LAST_TRADE_TIMESTAMP`))
        }
        self$`LAST_TRADE_TIMESTAMP` <- `LAST_TRADE_TIMESTAMP`
      }
      if (!is.null(`LOW`)) {
        if (!(is.numeric(`LOW`) && length(`LOW`) == 1)) {
          stop(paste("Error! Invalid data for `LOW`. Must be an integer:", `LOW`))
        }
        self$`LOW` <- `LOW`
      }
      if (!is.null(`LOW_TRADE_PRICE`)) {
        if (!(is.numeric(`LOW_TRADE_PRICE`) && length(`LOW_TRADE_PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `LOW_TRADE_PRICE`. Must be an integer:", `LOW_TRADE_PRICE`))
        }
        self$`LOW_TRADE_PRICE` <- `LOW_TRADE_PRICE`
      }
      if (!is.null(`LOW_TRADE_TIMESTAMP`)) {
        if (!(is.numeric(`LOW_TRADE_TIMESTAMP`) && length(`LOW_TRADE_TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `LOW_TRADE_TIMESTAMP`. Must be an integer:", `LOW_TRADE_TIMESTAMP`))
        }
        self$`LOW_TRADE_TIMESTAMP` <- `LOW_TRADE_TIMESTAMP`
      }
      if (!is.null(`MAPPED_INSTRUMENT`)) {
        if (!(is.character(`MAPPED_INSTRUMENT`) && length(`MAPPED_INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `MAPPED_INSTRUMENT`. Must be a string:", `MAPPED_INSTRUMENT`))
        }
        self$`MAPPED_INSTRUMENT` <- `MAPPED_INSTRUMENT`
      }
      if (!is.null(`MARKET`)) {
        if (!(is.character(`MARKET`) && length(`MARKET`) == 1)) {
          stop(paste("Error! Invalid data for `MARKET`. Must be a string:", `MARKET`))
        }
        self$`MARKET` <- `MARKET`
      }
      if (!is.null(`OPEN`)) {
        if (!(is.numeric(`OPEN`) && length(`OPEN`) == 1)) {
          stop(paste("Error! Invalid data for `OPEN`. Must be an integer:", `OPEN`))
        }
        self$`OPEN` <- `OPEN`
      }
      if (!is.null(`QUOTE`)) {
        if (!(is.character(`QUOTE`) && length(`QUOTE`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE`. Must be a string:", `QUOTE`))
        }
        self$`QUOTE` <- `QUOTE`
      }
      if (!is.null(`QUOTE_VOLUME`)) {
        if (!(is.numeric(`QUOTE_VOLUME`) && length(`QUOTE_VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE_VOLUME`. Must be an integer:", `QUOTE_VOLUME`))
        }
        self$`QUOTE_VOLUME` <- `QUOTE_VOLUME`
      }
      if (!is.null(`QUOTE_VOLUME_BUY`)) {
        if (!(is.numeric(`QUOTE_VOLUME_BUY`) && length(`QUOTE_VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE_VOLUME_BUY`. Must be an integer:", `QUOTE_VOLUME_BUY`))
        }
        self$`QUOTE_VOLUME_BUY` <- `QUOTE_VOLUME_BUY`
      }
      if (!is.null(`QUOTE_VOLUME_SELL`)) {
        if (!(is.numeric(`QUOTE_VOLUME_SELL`) && length(`QUOTE_VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE_VOLUME_SELL`. Must be an integer:", `QUOTE_VOLUME_SELL`))
        }
        self$`QUOTE_VOLUME_SELL` <- `QUOTE_VOLUME_SELL`
      }
      if (!is.null(`QUOTE_VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`QUOTE_VOLUME_UNKNOWN`) && length(`QUOTE_VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE_VOLUME_UNKNOWN`. Must be an integer:", `QUOTE_VOLUME_UNKNOWN`))
        }
        self$`QUOTE_VOLUME_UNKNOWN` <- `QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(`TIMESTAMP`)) {
        if (!(is.numeric(`TIMESTAMP`) && length(`TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `TIMESTAMP`. Must be an integer:", `TIMESTAMP`))
        }
        self$`TIMESTAMP` <- `TIMESTAMP`
      }
      if (!is.null(`TOTAL_TRADES`)) {
        if (!(is.numeric(`TOTAL_TRADES`) && length(`TOTAL_TRADES`) == 1)) {
          stop(paste("Error! Invalid data for `TOTAL_TRADES`. Must be an integer:", `TOTAL_TRADES`))
        }
        self$`TOTAL_TRADES` <- `TOTAL_TRADES`
      }
      if (!is.null(`TOTAL_TRADES_BUY`)) {
        if (!(is.numeric(`TOTAL_TRADES_BUY`) && length(`TOTAL_TRADES_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `TOTAL_TRADES_BUY`. Must be an integer:", `TOTAL_TRADES_BUY`))
        }
        self$`TOTAL_TRADES_BUY` <- `TOTAL_TRADES_BUY`
      }
      if (!is.null(`TOTAL_TRADES_SELL`)) {
        if (!(is.numeric(`TOTAL_TRADES_SELL`) && length(`TOTAL_TRADES_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `TOTAL_TRADES_SELL`. Must be an integer:", `TOTAL_TRADES_SELL`))
        }
        self$`TOTAL_TRADES_SELL` <- `TOTAL_TRADES_SELL`
      }
      if (!is.null(`TOTAL_TRADES_UNKNOWN`)) {
        if (!(is.numeric(`TOTAL_TRADES_UNKNOWN`) && length(`TOTAL_TRADES_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `TOTAL_TRADES_UNKNOWN`. Must be an integer:", `TOTAL_TRADES_UNKNOWN`))
        }
        self$`TOTAL_TRADES_UNKNOWN` <- `TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(`TYPE`)) {
        if (!(is.character(`TYPE`) && length(`TYPE`) == 1)) {
          stop(paste("Error! Invalid data for `TYPE`. Must be a string:", `TYPE`))
        }
        self$`TYPE` <- `TYPE`
      }
      if (!is.null(`UNIT`)) {
        if (!(is.character(`UNIT`) && length(`UNIT`) == 1)) {
          stop(paste("Error! Invalid data for `UNIT`. Must be a string:", `UNIT`))
        }
        self$`UNIT` <- `UNIT`
      }
      if (!is.null(`VOLUME`)) {
        if (!(is.numeric(`VOLUME`) && length(`VOLUME`) == 1)) {
          stop(paste("Error! Invalid data for `VOLUME`. Must be an integer:", `VOLUME`))
        }
        self$`VOLUME` <- `VOLUME`
      }
      if (!is.null(`VOLUME_BUY`)) {
        if (!(is.numeric(`VOLUME_BUY`) && length(`VOLUME_BUY`) == 1)) {
          stop(paste("Error! Invalid data for `VOLUME_BUY`. Must be an integer:", `VOLUME_BUY`))
        }
        self$`VOLUME_BUY` <- `VOLUME_BUY`
      }
      if (!is.null(`VOLUME_SELL`)) {
        if (!(is.numeric(`VOLUME_SELL`) && length(`VOLUME_SELL`) == 1)) {
          stop(paste("Error! Invalid data for `VOLUME_SELL`. Must be an integer:", `VOLUME_SELL`))
        }
        self$`VOLUME_SELL` <- `VOLUME_SELL`
      }
      if (!is.null(`VOLUME_UNKNOWN`)) {
        if (!(is.numeric(`VOLUME_UNKNOWN`) && length(`VOLUME_UNKNOWN`) == 1)) {
          stop(paste("Error! Invalid data for `VOLUME_UNKNOWN`. Must be an integer:", `VOLUME_UNKNOWN`))
        }
        self$`VOLUME_UNKNOWN` <- `VOLUME_UNKNOWN`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTHISTODATA in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTHISTODATAObject <- list()
      if (!is.null(self$`BASE`)) {
        SPOTINSTRUMENTHISTODATAObject[["BASE"]] <-
          self$`BASE`
      }
      if (!is.null(self$`CLOSE`)) {
        SPOTINSTRUMENTHISTODATAObject[["CLOSE"]] <-
          self$`CLOSE`
      }
      if (!is.null(self$`FIRST_TRADE_PRICE`)) {
        SPOTINSTRUMENTHISTODATAObject[["FIRST_TRADE_PRICE"]] <-
          self$`FIRST_TRADE_PRICE`
      }
      if (!is.null(self$`FIRST_TRADE_TIMESTAMP`)) {
        SPOTINSTRUMENTHISTODATAObject[["FIRST_TRADE_TIMESTAMP"]] <-
          self$`FIRST_TRADE_TIMESTAMP`
      }
      if (!is.null(self$`HIGH`)) {
        SPOTINSTRUMENTHISTODATAObject[["HIGH"]] <-
          self$`HIGH`
      }
      if (!is.null(self$`HIGH_TRADE_PRICE`)) {
        SPOTINSTRUMENTHISTODATAObject[["HIGH_TRADE_PRICE"]] <-
          self$`HIGH_TRADE_PRICE`
      }
      if (!is.null(self$`HIGH_TRADE_TIMESTAMP`)) {
        SPOTINSTRUMENTHISTODATAObject[["HIGH_TRADE_TIMESTAMP"]] <-
          self$`HIGH_TRADE_TIMESTAMP`
      }
      if (!is.null(self$`INSTRUMENT`)) {
        SPOTINSTRUMENTHISTODATAObject[["INSTRUMENT"]] <-
          self$`INSTRUMENT`
      }
      if (!is.null(self$`LAST_TRADE_PRICE`)) {
        SPOTINSTRUMENTHISTODATAObject[["LAST_TRADE_PRICE"]] <-
          self$`LAST_TRADE_PRICE`
      }
      if (!is.null(self$`LAST_TRADE_TIMESTAMP`)) {
        SPOTINSTRUMENTHISTODATAObject[["LAST_TRADE_TIMESTAMP"]] <-
          self$`LAST_TRADE_TIMESTAMP`
      }
      if (!is.null(self$`LOW`)) {
        SPOTINSTRUMENTHISTODATAObject[["LOW"]] <-
          self$`LOW`
      }
      if (!is.null(self$`LOW_TRADE_PRICE`)) {
        SPOTINSTRUMENTHISTODATAObject[["LOW_TRADE_PRICE"]] <-
          self$`LOW_TRADE_PRICE`
      }
      if (!is.null(self$`LOW_TRADE_TIMESTAMP`)) {
        SPOTINSTRUMENTHISTODATAObject[["LOW_TRADE_TIMESTAMP"]] <-
          self$`LOW_TRADE_TIMESTAMP`
      }
      if (!is.null(self$`MAPPED_INSTRUMENT`)) {
        SPOTINSTRUMENTHISTODATAObject[["MAPPED_INSTRUMENT"]] <-
          self$`MAPPED_INSTRUMENT`
      }
      if (!is.null(self$`MARKET`)) {
        SPOTINSTRUMENTHISTODATAObject[["MARKET"]] <-
          self$`MARKET`
      }
      if (!is.null(self$`OPEN`)) {
        SPOTINSTRUMENTHISTODATAObject[["OPEN"]] <-
          self$`OPEN`
      }
      if (!is.null(self$`QUOTE`)) {
        SPOTINSTRUMENTHISTODATAObject[["QUOTE"]] <-
          self$`QUOTE`
      }
      if (!is.null(self$`QUOTE_VOLUME`)) {
        SPOTINSTRUMENTHISTODATAObject[["QUOTE_VOLUME"]] <-
          self$`QUOTE_VOLUME`
      }
      if (!is.null(self$`QUOTE_VOLUME_BUY`)) {
        SPOTINSTRUMENTHISTODATAObject[["QUOTE_VOLUME_BUY"]] <-
          self$`QUOTE_VOLUME_BUY`
      }
      if (!is.null(self$`QUOTE_VOLUME_SELL`)) {
        SPOTINSTRUMENTHISTODATAObject[["QUOTE_VOLUME_SELL"]] <-
          self$`QUOTE_VOLUME_SELL`
      }
      if (!is.null(self$`QUOTE_VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTHISTODATAObject[["QUOTE_VOLUME_UNKNOWN"]] <-
          self$`QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(self$`TIMESTAMP`)) {
        SPOTINSTRUMENTHISTODATAObject[["TIMESTAMP"]] <-
          self$`TIMESTAMP`
      }
      if (!is.null(self$`TOTAL_TRADES`)) {
        SPOTINSTRUMENTHISTODATAObject[["TOTAL_TRADES"]] <-
          self$`TOTAL_TRADES`
      }
      if (!is.null(self$`TOTAL_TRADES_BUY`)) {
        SPOTINSTRUMENTHISTODATAObject[["TOTAL_TRADES_BUY"]] <-
          self$`TOTAL_TRADES_BUY`
      }
      if (!is.null(self$`TOTAL_TRADES_SELL`)) {
        SPOTINSTRUMENTHISTODATAObject[["TOTAL_TRADES_SELL"]] <-
          self$`TOTAL_TRADES_SELL`
      }
      if (!is.null(self$`TOTAL_TRADES_UNKNOWN`)) {
        SPOTINSTRUMENTHISTODATAObject[["TOTAL_TRADES_UNKNOWN"]] <-
          self$`TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(self$`TYPE`)) {
        SPOTINSTRUMENTHISTODATAObject[["TYPE"]] <-
          self$`TYPE`
      }
      if (!is.null(self$`UNIT`)) {
        SPOTINSTRUMENTHISTODATAObject[["UNIT"]] <-
          self$`UNIT`
      }
      if (!is.null(self$`VOLUME`)) {
        SPOTINSTRUMENTHISTODATAObject[["VOLUME"]] <-
          self$`VOLUME`
      }
      if (!is.null(self$`VOLUME_BUY`)) {
        SPOTINSTRUMENTHISTODATAObject[["VOLUME_BUY"]] <-
          self$`VOLUME_BUY`
      }
      if (!is.null(self$`VOLUME_SELL`)) {
        SPOTINSTRUMENTHISTODATAObject[["VOLUME_SELL"]] <-
          self$`VOLUME_SELL`
      }
      if (!is.null(self$`VOLUME_UNKNOWN`)) {
        SPOTINSTRUMENTHISTODATAObject[["VOLUME_UNKNOWN"]] <-
          self$`VOLUME_UNKNOWN`
      }
      SPOTINSTRUMENTHISTODATAObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTHISTODATA
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`BASE`)) {
        self$`BASE` <- this_object$`BASE`
      }
      if (!is.null(this_object$`CLOSE`)) {
        self$`CLOSE` <- this_object$`CLOSE`
      }
      if (!is.null(this_object$`FIRST_TRADE_PRICE`)) {
        self$`FIRST_TRADE_PRICE` <- this_object$`FIRST_TRADE_PRICE`
      }
      if (!is.null(this_object$`FIRST_TRADE_TIMESTAMP`)) {
        self$`FIRST_TRADE_TIMESTAMP` <- this_object$`FIRST_TRADE_TIMESTAMP`
      }
      if (!is.null(this_object$`HIGH`)) {
        self$`HIGH` <- this_object$`HIGH`
      }
      if (!is.null(this_object$`HIGH_TRADE_PRICE`)) {
        self$`HIGH_TRADE_PRICE` <- this_object$`HIGH_TRADE_PRICE`
      }
      if (!is.null(this_object$`HIGH_TRADE_TIMESTAMP`)) {
        self$`HIGH_TRADE_TIMESTAMP` <- this_object$`HIGH_TRADE_TIMESTAMP`
      }
      if (!is.null(this_object$`INSTRUMENT`)) {
        self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      }
      if (!is.null(this_object$`LAST_TRADE_PRICE`)) {
        self$`LAST_TRADE_PRICE` <- this_object$`LAST_TRADE_PRICE`
      }
      if (!is.null(this_object$`LAST_TRADE_TIMESTAMP`)) {
        self$`LAST_TRADE_TIMESTAMP` <- this_object$`LAST_TRADE_TIMESTAMP`
      }
      if (!is.null(this_object$`LOW`)) {
        self$`LOW` <- this_object$`LOW`
      }
      if (!is.null(this_object$`LOW_TRADE_PRICE`)) {
        self$`LOW_TRADE_PRICE` <- this_object$`LOW_TRADE_PRICE`
      }
      if (!is.null(this_object$`LOW_TRADE_TIMESTAMP`)) {
        self$`LOW_TRADE_TIMESTAMP` <- this_object$`LOW_TRADE_TIMESTAMP`
      }
      if (!is.null(this_object$`MAPPED_INSTRUMENT`)) {
        self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      }
      if (!is.null(this_object$`MARKET`)) {
        self$`MARKET` <- this_object$`MARKET`
      }
      if (!is.null(this_object$`OPEN`)) {
        self$`OPEN` <- this_object$`OPEN`
      }
      if (!is.null(this_object$`QUOTE`)) {
        self$`QUOTE` <- this_object$`QUOTE`
      }
      if (!is.null(this_object$`QUOTE_VOLUME`)) {
        self$`QUOTE_VOLUME` <- this_object$`QUOTE_VOLUME`
      }
      if (!is.null(this_object$`QUOTE_VOLUME_BUY`)) {
        self$`QUOTE_VOLUME_BUY` <- this_object$`QUOTE_VOLUME_BUY`
      }
      if (!is.null(this_object$`QUOTE_VOLUME_SELL`)) {
        self$`QUOTE_VOLUME_SELL` <- this_object$`QUOTE_VOLUME_SELL`
      }
      if (!is.null(this_object$`QUOTE_VOLUME_UNKNOWN`)) {
        self$`QUOTE_VOLUME_UNKNOWN` <- this_object$`QUOTE_VOLUME_UNKNOWN`
      }
      if (!is.null(this_object$`TIMESTAMP`)) {
        self$`TIMESTAMP` <- this_object$`TIMESTAMP`
      }
      if (!is.null(this_object$`TOTAL_TRADES`)) {
        self$`TOTAL_TRADES` <- this_object$`TOTAL_TRADES`
      }
      if (!is.null(this_object$`TOTAL_TRADES_BUY`)) {
        self$`TOTAL_TRADES_BUY` <- this_object$`TOTAL_TRADES_BUY`
      }
      if (!is.null(this_object$`TOTAL_TRADES_SELL`)) {
        self$`TOTAL_TRADES_SELL` <- this_object$`TOTAL_TRADES_SELL`
      }
      if (!is.null(this_object$`TOTAL_TRADES_UNKNOWN`)) {
        self$`TOTAL_TRADES_UNKNOWN` <- this_object$`TOTAL_TRADES_UNKNOWN`
      }
      if (!is.null(this_object$`TYPE`)) {
        self$`TYPE` <- this_object$`TYPE`
      }
      if (!is.null(this_object$`UNIT`)) {
        self$`UNIT` <- this_object$`UNIT`
      }
      if (!is.null(this_object$`VOLUME`)) {
        self$`VOLUME` <- this_object$`VOLUME`
      }
      if (!is.null(this_object$`VOLUME_BUY`)) {
        self$`VOLUME_BUY` <- this_object$`VOLUME_BUY`
      }
      if (!is.null(this_object$`VOLUME_SELL`)) {
        self$`VOLUME_SELL` <- this_object$`VOLUME_SELL`
      }
      if (!is.null(this_object$`VOLUME_UNKNOWN`)) {
        self$`VOLUME_UNKNOWN` <- this_object$`VOLUME_UNKNOWN`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTHISTODATA in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`BASE`)) {
          sprintf(
          '"BASE":
            "%s"
                    ',
          self$`BASE`
          )
        },
        if (!is.null(self$`CLOSE`)) {
          sprintf(
          '"CLOSE":
            %d
                    ',
          self$`CLOSE`
          )
        },
        if (!is.null(self$`FIRST_TRADE_PRICE`)) {
          sprintf(
          '"FIRST_TRADE_PRICE":
            %d
                    ',
          self$`FIRST_TRADE_PRICE`
          )
        },
        if (!is.null(self$`FIRST_TRADE_TIMESTAMP`)) {
          sprintf(
          '"FIRST_TRADE_TIMESTAMP":
            %d
                    ',
          self$`FIRST_TRADE_TIMESTAMP`
          )
        },
        if (!is.null(self$`HIGH`)) {
          sprintf(
          '"HIGH":
            %d
                    ',
          self$`HIGH`
          )
        },
        if (!is.null(self$`HIGH_TRADE_PRICE`)) {
          sprintf(
          '"HIGH_TRADE_PRICE":
            %d
                    ',
          self$`HIGH_TRADE_PRICE`
          )
        },
        if (!is.null(self$`HIGH_TRADE_TIMESTAMP`)) {
          sprintf(
          '"HIGH_TRADE_TIMESTAMP":
            %d
                    ',
          self$`HIGH_TRADE_TIMESTAMP`
          )
        },
        if (!is.null(self$`INSTRUMENT`)) {
          sprintf(
          '"INSTRUMENT":
            "%s"
                    ',
          self$`INSTRUMENT`
          )
        },
        if (!is.null(self$`LAST_TRADE_PRICE`)) {
          sprintf(
          '"LAST_TRADE_PRICE":
            %d
                    ',
          self$`LAST_TRADE_PRICE`
          )
        },
        if (!is.null(self$`LAST_TRADE_TIMESTAMP`)) {
          sprintf(
          '"LAST_TRADE_TIMESTAMP":
            %d
                    ',
          self$`LAST_TRADE_TIMESTAMP`
          )
        },
        if (!is.null(self$`LOW`)) {
          sprintf(
          '"LOW":
            %d
                    ',
          self$`LOW`
          )
        },
        if (!is.null(self$`LOW_TRADE_PRICE`)) {
          sprintf(
          '"LOW_TRADE_PRICE":
            %d
                    ',
          self$`LOW_TRADE_PRICE`
          )
        },
        if (!is.null(self$`LOW_TRADE_TIMESTAMP`)) {
          sprintf(
          '"LOW_TRADE_TIMESTAMP":
            %d
                    ',
          self$`LOW_TRADE_TIMESTAMP`
          )
        },
        if (!is.null(self$`MAPPED_INSTRUMENT`)) {
          sprintf(
          '"MAPPED_INSTRUMENT":
            "%s"
                    ',
          self$`MAPPED_INSTRUMENT`
          )
        },
        if (!is.null(self$`MARKET`)) {
          sprintf(
          '"MARKET":
            "%s"
                    ',
          self$`MARKET`
          )
        },
        if (!is.null(self$`OPEN`)) {
          sprintf(
          '"OPEN":
            %d
                    ',
          self$`OPEN`
          )
        },
        if (!is.null(self$`QUOTE`)) {
          sprintf(
          '"QUOTE":
            "%s"
                    ',
          self$`QUOTE`
          )
        },
        if (!is.null(self$`QUOTE_VOLUME`)) {
          sprintf(
          '"QUOTE_VOLUME":
            %d
                    ',
          self$`QUOTE_VOLUME`
          )
        },
        if (!is.null(self$`QUOTE_VOLUME_BUY`)) {
          sprintf(
          '"QUOTE_VOLUME_BUY":
            %d
                    ',
          self$`QUOTE_VOLUME_BUY`
          )
        },
        if (!is.null(self$`QUOTE_VOLUME_SELL`)) {
          sprintf(
          '"QUOTE_VOLUME_SELL":
            %d
                    ',
          self$`QUOTE_VOLUME_SELL`
          )
        },
        if (!is.null(self$`QUOTE_VOLUME_UNKNOWN`)) {
          sprintf(
          '"QUOTE_VOLUME_UNKNOWN":
            %d
                    ',
          self$`QUOTE_VOLUME_UNKNOWN`
          )
        },
        if (!is.null(self$`TIMESTAMP`)) {
          sprintf(
          '"TIMESTAMP":
            %d
                    ',
          self$`TIMESTAMP`
          )
        },
        if (!is.null(self$`TOTAL_TRADES`)) {
          sprintf(
          '"TOTAL_TRADES":
            %d
                    ',
          self$`TOTAL_TRADES`
          )
        },
        if (!is.null(self$`TOTAL_TRADES_BUY`)) {
          sprintf(
          '"TOTAL_TRADES_BUY":
            %d
                    ',
          self$`TOTAL_TRADES_BUY`
          )
        },
        if (!is.null(self$`TOTAL_TRADES_SELL`)) {
          sprintf(
          '"TOTAL_TRADES_SELL":
            %d
                    ',
          self$`TOTAL_TRADES_SELL`
          )
        },
        if (!is.null(self$`TOTAL_TRADES_UNKNOWN`)) {
          sprintf(
          '"TOTAL_TRADES_UNKNOWN":
            %d
                    ',
          self$`TOTAL_TRADES_UNKNOWN`
          )
        },
        if (!is.null(self$`TYPE`)) {
          sprintf(
          '"TYPE":
            "%s"
                    ',
          self$`TYPE`
          )
        },
        if (!is.null(self$`UNIT`)) {
          sprintf(
          '"UNIT":
            "%s"
                    ',
          self$`UNIT`
          )
        },
        if (!is.null(self$`VOLUME`)) {
          sprintf(
          '"VOLUME":
            %d
                    ',
          self$`VOLUME`
          )
        },
        if (!is.null(self$`VOLUME_BUY`)) {
          sprintf(
          '"VOLUME_BUY":
            %d
                    ',
          self$`VOLUME_BUY`
          )
        },
        if (!is.null(self$`VOLUME_SELL`)) {
          sprintf(
          '"VOLUME_SELL":
            %d
                    ',
          self$`VOLUME_SELL`
          )
        },
        if (!is.null(self$`VOLUME_UNKNOWN`)) {
          sprintf(
          '"VOLUME_UNKNOWN":
            %d
                    ',
          self$`VOLUME_UNKNOWN`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTHISTODATA
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`BASE` <- this_object$`BASE`
      self$`CLOSE` <- this_object$`CLOSE`
      self$`FIRST_TRADE_PRICE` <- this_object$`FIRST_TRADE_PRICE`
      self$`FIRST_TRADE_TIMESTAMP` <- this_object$`FIRST_TRADE_TIMESTAMP`
      self$`HIGH` <- this_object$`HIGH`
      self$`HIGH_TRADE_PRICE` <- this_object$`HIGH_TRADE_PRICE`
      self$`HIGH_TRADE_TIMESTAMP` <- this_object$`HIGH_TRADE_TIMESTAMP`
      self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      self$`LAST_TRADE_PRICE` <- this_object$`LAST_TRADE_PRICE`
      self$`LAST_TRADE_TIMESTAMP` <- this_object$`LAST_TRADE_TIMESTAMP`
      self$`LOW` <- this_object$`LOW`
      self$`LOW_TRADE_PRICE` <- this_object$`LOW_TRADE_PRICE`
      self$`LOW_TRADE_TIMESTAMP` <- this_object$`LOW_TRADE_TIMESTAMP`
      self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      self$`MARKET` <- this_object$`MARKET`
      self$`OPEN` <- this_object$`OPEN`
      self$`QUOTE` <- this_object$`QUOTE`
      self$`QUOTE_VOLUME` <- this_object$`QUOTE_VOLUME`
      self$`QUOTE_VOLUME_BUY` <- this_object$`QUOTE_VOLUME_BUY`
      self$`QUOTE_VOLUME_SELL` <- this_object$`QUOTE_VOLUME_SELL`
      self$`QUOTE_VOLUME_UNKNOWN` <- this_object$`QUOTE_VOLUME_UNKNOWN`
      self$`TIMESTAMP` <- this_object$`TIMESTAMP`
      self$`TOTAL_TRADES` <- this_object$`TOTAL_TRADES`
      self$`TOTAL_TRADES_BUY` <- this_object$`TOTAL_TRADES_BUY`
      self$`TOTAL_TRADES_SELL` <- this_object$`TOTAL_TRADES_SELL`
      self$`TOTAL_TRADES_UNKNOWN` <- this_object$`TOTAL_TRADES_UNKNOWN`
      self$`TYPE` <- this_object$`TYPE`
      self$`UNIT` <- this_object$`UNIT`
      self$`VOLUME` <- this_object$`VOLUME`
      self$`VOLUME_BUY` <- this_object$`VOLUME_BUY`
      self$`VOLUME_SELL` <- this_object$`VOLUME_SELL`
      self$`VOLUME_UNKNOWN` <- this_object$`VOLUME_UNKNOWN`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTHISTODATA
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTHISTODATA and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SPOTINSTRUMENTHISTODATA
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# SPOTINSTRUMENTHISTODATA$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTHISTODATA$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTHISTODATA$lock()

