#' Create a new SPOTINSTRUMENTTRADE
#'
#' @description
#' SPOTINSTRUMENTTRADE Class
#'
#' @docType class
#' @title SPOTINSTRUMENTTRADE
#' @description SPOTINSTRUMENTTRADE Class
#' @format An \code{R6Class} generator object
#' @field BASE The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). character [optional]
#' @field CCSEQ Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. integer [optional]
#' @field ID The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. character [optional]
#' @field INSTRUMENT The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). character [optional]
#' @field MAPPED_INSTRUMENT The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD). character [optional]
#' @field MARKET The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). character [optional]
#' @field PRICE The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. integer [optional]
#' @field QUANTITY The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. integer [optional]
#' @field QUOTE The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). character [optional]
#' @field QUOTE_QUANTITY The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. integer [optional]
#' @field RECEIVED_TIMESTAMP The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. integer [optional]
#' @field RECEIVED_TIMESTAMP_NS The nanosecond part of the received timestamp. integer [optional]
#' @field SIDE The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned. character [optional]
#' @field SOURCE The source of the trade update: POLLING, STREAMING, GO, BLOB etc. character [optional]
#' @field TIMESTAMP The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. integer [optional]
#' @field TIMESTAMP_NS The nanosecond part of the reported timestamp. integer [optional]
#' @field TYPE The type of the message. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTTRADE <- R6::R6Class(
  "SPOTINSTRUMENTTRADE",
  public = list(
    `BASE` = NULL,
    `CCSEQ` = NULL,
    `ID` = NULL,
    `INSTRUMENT` = NULL,
    `MAPPED_INSTRUMENT` = NULL,
    `MARKET` = NULL,
    `PRICE` = NULL,
    `QUANTITY` = NULL,
    `QUOTE` = NULL,
    `QUOTE_QUANTITY` = NULL,
    `RECEIVED_TIMESTAMP` = NULL,
    `RECEIVED_TIMESTAMP_NS` = NULL,
    `SIDE` = NULL,
    `SOURCE` = NULL,
    `TIMESTAMP` = NULL,
    `TIMESTAMP_NS` = NULL,
    `TYPE` = NULL,
    #' Initialize a new SPOTINSTRUMENTTRADE class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTTRADE class.
    #'
    #' @param BASE The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
    #' @param CCSEQ Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
    #' @param ID The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
    #' @param INSTRUMENT The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
    #' @param MAPPED_INSTRUMENT The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
    #' @param MARKET The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
    #' @param PRICE The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
    #' @param QUANTITY The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
    #' @param QUOTE The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
    #' @param QUOTE_QUANTITY The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
    #' @param RECEIVED_TIMESTAMP The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
    #' @param RECEIVED_TIMESTAMP_NS The nanosecond part of the received timestamp.
    #' @param SIDE The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
    #' @param SOURCE The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
    #' @param TIMESTAMP The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
    #' @param TIMESTAMP_NS The nanosecond part of the reported timestamp.
    #' @param TYPE The type of the message.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`BASE` = NULL, `CCSEQ` = NULL, `ID` = NULL, `INSTRUMENT` = NULL, `MAPPED_INSTRUMENT` = NULL, `MARKET` = NULL, `PRICE` = NULL, `QUANTITY` = NULL, `QUOTE` = NULL, `QUOTE_QUANTITY` = NULL, `RECEIVED_TIMESTAMP` = NULL, `RECEIVED_TIMESTAMP_NS` = NULL, `SIDE` = NULL, `SOURCE` = NULL, `TIMESTAMP` = NULL, `TIMESTAMP_NS` = NULL, `TYPE` = NULL, ...) {
      if (!is.null(`BASE`)) {
        if (!(is.character(`BASE`) && length(`BASE`) == 1)) {
          stop(paste("Error! Invalid data for `BASE`. Must be a string:", `BASE`))
        }
        self$`BASE` <- `BASE`
      }
      if (!is.null(`CCSEQ`)) {
        if (!(is.numeric(`CCSEQ`) && length(`CCSEQ`) == 1)) {
          stop(paste("Error! Invalid data for `CCSEQ`. Must be an integer:", `CCSEQ`))
        }
        self$`CCSEQ` <- `CCSEQ`
      }
      if (!is.null(`ID`)) {
        if (!(is.character(`ID`) && length(`ID`) == 1)) {
          stop(paste("Error! Invalid data for `ID`. Must be a string:", `ID`))
        }
        self$`ID` <- `ID`
      }
      if (!is.null(`INSTRUMENT`)) {
        if (!(is.character(`INSTRUMENT`) && length(`INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT`. Must be a string:", `INSTRUMENT`))
        }
        self$`INSTRUMENT` <- `INSTRUMENT`
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
      if (!is.null(`PRICE`)) {
        if (!(is.numeric(`PRICE`) && length(`PRICE`) == 1)) {
          stop(paste("Error! Invalid data for `PRICE`. Must be an integer:", `PRICE`))
        }
        self$`PRICE` <- `PRICE`
      }
      if (!is.null(`QUANTITY`)) {
        if (!(is.numeric(`QUANTITY`) && length(`QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `QUANTITY`. Must be an integer:", `QUANTITY`))
        }
        self$`QUANTITY` <- `QUANTITY`
      }
      if (!is.null(`QUOTE`)) {
        if (!(is.character(`QUOTE`) && length(`QUOTE`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE`. Must be a string:", `QUOTE`))
        }
        self$`QUOTE` <- `QUOTE`
      }
      if (!is.null(`QUOTE_QUANTITY`)) {
        if (!(is.numeric(`QUOTE_QUANTITY`) && length(`QUOTE_QUANTITY`) == 1)) {
          stop(paste("Error! Invalid data for `QUOTE_QUANTITY`. Must be an integer:", `QUOTE_QUANTITY`))
        }
        self$`QUOTE_QUANTITY` <- `QUOTE_QUANTITY`
      }
      if (!is.null(`RECEIVED_TIMESTAMP`)) {
        if (!(is.numeric(`RECEIVED_TIMESTAMP`) && length(`RECEIVED_TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `RECEIVED_TIMESTAMP`. Must be an integer:", `RECEIVED_TIMESTAMP`))
        }
        self$`RECEIVED_TIMESTAMP` <- `RECEIVED_TIMESTAMP`
      }
      if (!is.null(`RECEIVED_TIMESTAMP_NS`)) {
        if (!(is.numeric(`RECEIVED_TIMESTAMP_NS`) && length(`RECEIVED_TIMESTAMP_NS`) == 1)) {
          stop(paste("Error! Invalid data for `RECEIVED_TIMESTAMP_NS`. Must be an integer:", `RECEIVED_TIMESTAMP_NS`))
        }
        self$`RECEIVED_TIMESTAMP_NS` <- `RECEIVED_TIMESTAMP_NS`
      }
      if (!is.null(`SIDE`)) {
        if (!(is.character(`SIDE`) && length(`SIDE`) == 1)) {
          stop(paste("Error! Invalid data for `SIDE`. Must be a string:", `SIDE`))
        }
        self$`SIDE` <- `SIDE`
      }
      if (!is.null(`SOURCE`)) {
        if (!(is.character(`SOURCE`) && length(`SOURCE`) == 1)) {
          stop(paste("Error! Invalid data for `SOURCE`. Must be a string:", `SOURCE`))
        }
        self$`SOURCE` <- `SOURCE`
      }
      if (!is.null(`TIMESTAMP`)) {
        if (!(is.numeric(`TIMESTAMP`) && length(`TIMESTAMP`) == 1)) {
          stop(paste("Error! Invalid data for `TIMESTAMP`. Must be an integer:", `TIMESTAMP`))
        }
        self$`TIMESTAMP` <- `TIMESTAMP`
      }
      if (!is.null(`TIMESTAMP_NS`)) {
        if (!(is.numeric(`TIMESTAMP_NS`) && length(`TIMESTAMP_NS`) == 1)) {
          stop(paste("Error! Invalid data for `TIMESTAMP_NS`. Must be an integer:", `TIMESTAMP_NS`))
        }
        self$`TIMESTAMP_NS` <- `TIMESTAMP_NS`
      }
      if (!is.null(`TYPE`)) {
        if (!(is.character(`TYPE`) && length(`TYPE`) == 1)) {
          stop(paste("Error! Invalid data for `TYPE`. Must be a string:", `TYPE`))
        }
        self$`TYPE` <- `TYPE`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTTRADE in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTTRADEObject <- list()
      if (!is.null(self$`BASE`)) {
        SPOTINSTRUMENTTRADEObject[["BASE"]] <-
          self$`BASE`
      }
      if (!is.null(self$`CCSEQ`)) {
        SPOTINSTRUMENTTRADEObject[["CCSEQ"]] <-
          self$`CCSEQ`
      }
      if (!is.null(self$`ID`)) {
        SPOTINSTRUMENTTRADEObject[["ID"]] <-
          self$`ID`
      }
      if (!is.null(self$`INSTRUMENT`)) {
        SPOTINSTRUMENTTRADEObject[["INSTRUMENT"]] <-
          self$`INSTRUMENT`
      }
      if (!is.null(self$`MAPPED_INSTRUMENT`)) {
        SPOTINSTRUMENTTRADEObject[["MAPPED_INSTRUMENT"]] <-
          self$`MAPPED_INSTRUMENT`
      }
      if (!is.null(self$`MARKET`)) {
        SPOTINSTRUMENTTRADEObject[["MARKET"]] <-
          self$`MARKET`
      }
      if (!is.null(self$`PRICE`)) {
        SPOTINSTRUMENTTRADEObject[["PRICE"]] <-
          self$`PRICE`
      }
      if (!is.null(self$`QUANTITY`)) {
        SPOTINSTRUMENTTRADEObject[["QUANTITY"]] <-
          self$`QUANTITY`
      }
      if (!is.null(self$`QUOTE`)) {
        SPOTINSTRUMENTTRADEObject[["QUOTE"]] <-
          self$`QUOTE`
      }
      if (!is.null(self$`QUOTE_QUANTITY`)) {
        SPOTINSTRUMENTTRADEObject[["QUOTE_QUANTITY"]] <-
          self$`QUOTE_QUANTITY`
      }
      if (!is.null(self$`RECEIVED_TIMESTAMP`)) {
        SPOTINSTRUMENTTRADEObject[["RECEIVED_TIMESTAMP"]] <-
          self$`RECEIVED_TIMESTAMP`
      }
      if (!is.null(self$`RECEIVED_TIMESTAMP_NS`)) {
        SPOTINSTRUMENTTRADEObject[["RECEIVED_TIMESTAMP_NS"]] <-
          self$`RECEIVED_TIMESTAMP_NS`
      }
      if (!is.null(self$`SIDE`)) {
        SPOTINSTRUMENTTRADEObject[["SIDE"]] <-
          self$`SIDE`
      }
      if (!is.null(self$`SOURCE`)) {
        SPOTINSTRUMENTTRADEObject[["SOURCE"]] <-
          self$`SOURCE`
      }
      if (!is.null(self$`TIMESTAMP`)) {
        SPOTINSTRUMENTTRADEObject[["TIMESTAMP"]] <-
          self$`TIMESTAMP`
      }
      if (!is.null(self$`TIMESTAMP_NS`)) {
        SPOTINSTRUMENTTRADEObject[["TIMESTAMP_NS"]] <-
          self$`TIMESTAMP_NS`
      }
      if (!is.null(self$`TYPE`)) {
        SPOTINSTRUMENTTRADEObject[["TYPE"]] <-
          self$`TYPE`
      }
      SPOTINSTRUMENTTRADEObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTTRADE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTTRADE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTTRADE
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`BASE`)) {
        self$`BASE` <- this_object$`BASE`
      }
      if (!is.null(this_object$`CCSEQ`)) {
        self$`CCSEQ` <- this_object$`CCSEQ`
      }
      if (!is.null(this_object$`ID`)) {
        self$`ID` <- this_object$`ID`
      }
      if (!is.null(this_object$`INSTRUMENT`)) {
        self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      }
      if (!is.null(this_object$`MAPPED_INSTRUMENT`)) {
        self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      }
      if (!is.null(this_object$`MARKET`)) {
        self$`MARKET` <- this_object$`MARKET`
      }
      if (!is.null(this_object$`PRICE`)) {
        self$`PRICE` <- this_object$`PRICE`
      }
      if (!is.null(this_object$`QUANTITY`)) {
        self$`QUANTITY` <- this_object$`QUANTITY`
      }
      if (!is.null(this_object$`QUOTE`)) {
        self$`QUOTE` <- this_object$`QUOTE`
      }
      if (!is.null(this_object$`QUOTE_QUANTITY`)) {
        self$`QUOTE_QUANTITY` <- this_object$`QUOTE_QUANTITY`
      }
      if (!is.null(this_object$`RECEIVED_TIMESTAMP`)) {
        self$`RECEIVED_TIMESTAMP` <- this_object$`RECEIVED_TIMESTAMP`
      }
      if (!is.null(this_object$`RECEIVED_TIMESTAMP_NS`)) {
        self$`RECEIVED_TIMESTAMP_NS` <- this_object$`RECEIVED_TIMESTAMP_NS`
      }
      if (!is.null(this_object$`SIDE`)) {
        self$`SIDE` <- this_object$`SIDE`
      }
      if (!is.null(this_object$`SOURCE`)) {
        self$`SOURCE` <- this_object$`SOURCE`
      }
      if (!is.null(this_object$`TIMESTAMP`)) {
        self$`TIMESTAMP` <- this_object$`TIMESTAMP`
      }
      if (!is.null(this_object$`TIMESTAMP_NS`)) {
        self$`TIMESTAMP_NS` <- this_object$`TIMESTAMP_NS`
      }
      if (!is.null(this_object$`TYPE`)) {
        self$`TYPE` <- this_object$`TYPE`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTTRADE in JSON format
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
        if (!is.null(self$`CCSEQ`)) {
          sprintf(
          '"CCSEQ":
            %d
                    ',
          self$`CCSEQ`
          )
        },
        if (!is.null(self$`ID`)) {
          sprintf(
          '"ID":
            "%s"
                    ',
          self$`ID`
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
        if (!is.null(self$`PRICE`)) {
          sprintf(
          '"PRICE":
            %d
                    ',
          self$`PRICE`
          )
        },
        if (!is.null(self$`QUANTITY`)) {
          sprintf(
          '"QUANTITY":
            %d
                    ',
          self$`QUANTITY`
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
        if (!is.null(self$`QUOTE_QUANTITY`)) {
          sprintf(
          '"QUOTE_QUANTITY":
            %d
                    ',
          self$`QUOTE_QUANTITY`
          )
        },
        if (!is.null(self$`RECEIVED_TIMESTAMP`)) {
          sprintf(
          '"RECEIVED_TIMESTAMP":
            %d
                    ',
          self$`RECEIVED_TIMESTAMP`
          )
        },
        if (!is.null(self$`RECEIVED_TIMESTAMP_NS`)) {
          sprintf(
          '"RECEIVED_TIMESTAMP_NS":
            %d
                    ',
          self$`RECEIVED_TIMESTAMP_NS`
          )
        },
        if (!is.null(self$`SIDE`)) {
          sprintf(
          '"SIDE":
            "%s"
                    ',
          self$`SIDE`
          )
        },
        if (!is.null(self$`SOURCE`)) {
          sprintf(
          '"SOURCE":
            "%s"
                    ',
          self$`SOURCE`
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
        if (!is.null(self$`TIMESTAMP_NS`)) {
          sprintf(
          '"TIMESTAMP_NS":
            %d
                    ',
          self$`TIMESTAMP_NS`
          )
        },
        if (!is.null(self$`TYPE`)) {
          sprintf(
          '"TYPE":
            "%s"
                    ',
          self$`TYPE`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTTRADE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTTRADE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTTRADE
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`BASE` <- this_object$`BASE`
      self$`CCSEQ` <- this_object$`CCSEQ`
      self$`ID` <- this_object$`ID`
      self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      self$`MAPPED_INSTRUMENT` <- this_object$`MAPPED_INSTRUMENT`
      self$`MARKET` <- this_object$`MARKET`
      self$`PRICE` <- this_object$`PRICE`
      self$`QUANTITY` <- this_object$`QUANTITY`
      self$`QUOTE` <- this_object$`QUOTE`
      self$`QUOTE_QUANTITY` <- this_object$`QUOTE_QUANTITY`
      self$`RECEIVED_TIMESTAMP` <- this_object$`RECEIVED_TIMESTAMP`
      self$`RECEIVED_TIMESTAMP_NS` <- this_object$`RECEIVED_TIMESTAMP_NS`
      self$`SIDE` <- this_object$`SIDE`
      self$`SOURCE` <- this_object$`SOURCE`
      self$`TIMESTAMP` <- this_object$`TIMESTAMP`
      self$`TIMESTAMP_NS` <- this_object$`TIMESTAMP_NS`
      self$`TYPE` <- this_object$`TYPE`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTTRADE
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTTRADE and throw an exception if invalid
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
    #' @return String representation of SPOTINSTRUMENTTRADE
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
# SPOTINSTRUMENTTRADE$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTTRADE$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTTRADE$lock()

