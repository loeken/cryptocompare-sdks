#' Create a new GENERICRESPONSE
#'
#' @description
#' GENERICRESPONSE Class
#'
#' @docType class
#' @title GENERICRESPONSE
#' @description GENERICRESPONSE Class
#' @format An \code{R6Class} generator object
#' @field Data  \link{GENERICRESPONSEData} [optional]
#' @field Err  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GENERICRESPONSE <- R6::R6Class(
  "GENERICRESPONSE",
  public = list(
    `Data` = NULL,
    `Err` = NULL,
    #' Initialize a new GENERICRESPONSE class.
    #'
    #' @description
    #' Initialize a new GENERICRESPONSE class.
    #'
    #' @param Data Data
    #' @param Err Err
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`Data` = NULL, `Err` = NULL, ...) {
      if (!is.null(`Data`)) {
        stopifnot(R6::is.R6(`Data`))
        self$`Data` <- `Data`
      }
      if (!is.null(`Err`)) {
        self$`Err` <- `Err`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GENERICRESPONSE in JSON format
    #' @export
    toJSON = function() {
      GENERICRESPONSEObject <- list()
      if (!is.null(self$`Data`)) {
        GENERICRESPONSEObject[["Data"]] <-
          self$`Data`$toJSON()
      }
      if (!is.null(self$`Err`)) {
        GENERICRESPONSEObject[["Err"]] <-
          self$`Err`
      }
      GENERICRESPONSEObject
    },
    #' Deserialize JSON string into an instance of GENERICRESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of GENERICRESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of GENERICRESPONSE
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Data`)) {
        data_object <- GENERICRESPONSEData$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$Data, auto_unbox = TRUE, digits = NA))
        self$`Data` <- data_object
      }
      if (!is.null(this_object$`Err`)) {
        self$`Err` <- this_object$`Err`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GENERICRESPONSE in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Data`)) {
          sprintf(
          '"Data":
          %s
          ',
          jsonlite::toJSON(self$`Data`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`Err`)) {
          sprintf(
          '"Err":
            "%s"
                    ',
          self$`Err`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GENERICRESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of GENERICRESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of GENERICRESPONSE
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Data` <- GENERICRESPONSEData$new()$fromJSON(jsonlite::toJSON(this_object$Data, auto_unbox = TRUE, digits = NA))
      self$`Err` <- this_object$`Err`
      self
    },
    #' Validate JSON input with respect to GENERICRESPONSE
    #'
    #' @description
    #' Validate JSON input with respect to GENERICRESPONSE and throw an exception if invalid
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
    #' @return String representation of GENERICRESPONSE
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
# GENERICRESPONSE$unlock()
#
## Below is an example to define the print function
# GENERICRESPONSE$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GENERICRESPONSE$lock()

