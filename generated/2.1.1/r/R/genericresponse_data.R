#' Create a new GENERICRESPONSEData
#'
#' @description
#' GENERICRESPONSEData Class
#'
#' @docType class
#' @title GENERICRESPONSEData
#' @description GENERICRESPONSEData Class
#' @format An \code{R6Class} generator object
#' @field NO_DATA The endpoint does not have a reponse defined character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GENERICRESPONSEData <- R6::R6Class(
  "GENERICRESPONSEData",
  public = list(
    `NO_DATA` = NULL,
    #' Initialize a new GENERICRESPONSEData class.
    #'
    #' @description
    #' Initialize a new GENERICRESPONSEData class.
    #'
    #' @param NO_DATA The endpoint does not have a reponse defined
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`NO_DATA` = NULL, ...) {
      if (!is.null(`NO_DATA`)) {
        if (!(is.character(`NO_DATA`) && length(`NO_DATA`) == 1)) {
          stop(paste("Error! Invalid data for `NO_DATA`. Must be a string:", `NO_DATA`))
        }
        self$`NO_DATA` <- `NO_DATA`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GENERICRESPONSEData in JSON format
    #' @export
    toJSON = function() {
      GENERICRESPONSEDataObject <- list()
      if (!is.null(self$`NO_DATA`)) {
        GENERICRESPONSEDataObject[["NO_DATA"]] <-
          self$`NO_DATA`
      }
      GENERICRESPONSEDataObject
    },
    #' Deserialize JSON string into an instance of GENERICRESPONSEData
    #'
    #' @description
    #' Deserialize JSON string into an instance of GENERICRESPONSEData
    #'
    #' @param input_json the JSON input
    #' @return the instance of GENERICRESPONSEData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`NO_DATA`)) {
        self$`NO_DATA` <- this_object$`NO_DATA`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GENERICRESPONSEData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`NO_DATA`)) {
          sprintf(
          '"NO_DATA":
            "%s"
                    ',
          self$`NO_DATA`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GENERICRESPONSEData
    #'
    #' @description
    #' Deserialize JSON string into an instance of GENERICRESPONSEData
    #'
    #' @param input_json the JSON input
    #' @return the instance of GENERICRESPONSEData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`NO_DATA` <- this_object$`NO_DATA`
      self
    },
    #' Validate JSON input with respect to GENERICRESPONSEData
    #'
    #' @description
    #' Validate JSON input with respect to GENERICRESPONSEData and throw an exception if invalid
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
    #' @return String representation of GENERICRESPONSEData
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
# GENERICRESPONSEData$unlock()
#
## Below is an example to define the print function
# GENERICRESPONSEData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GENERICRESPONSEData$lock()

