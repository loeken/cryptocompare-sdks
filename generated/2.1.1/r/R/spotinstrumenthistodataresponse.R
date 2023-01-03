#' Create a new SPOTINSTRUMENTHISTODATARESPONSE
#'
#' @description
#' SPOTINSTRUMENTHISTODATARESPONSE Class
#'
#' @docType class
#' @title SPOTINSTRUMENTHISTODATARESPONSE
#' @description SPOTINSTRUMENTHISTODATARESPONSE Class
#' @format An \code{R6Class} generator object
#' @field Data  list(\link{SPOTINSTRUMENTHISTODATA}) [optional]
#' @field Err  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTHISTODATARESPONSE <- R6::R6Class(
  "SPOTINSTRUMENTHISTODATARESPONSE",
  public = list(
    `Data` = NULL,
    `Err` = NULL,
    #' Initialize a new SPOTINSTRUMENTHISTODATARESPONSE class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTHISTODATARESPONSE class.
    #'
    #' @param Data Data
    #' @param Err Err
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`Data` = NULL, `Err` = NULL, ...) {
      if (!is.null(`Data`)) {
        stopifnot(is.vector(`Data`), length(`Data`) != 0)
        sapply(`Data`, function(x) stopifnot(R6::is.R6(x)))
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
    #' @return SPOTINSTRUMENTHISTODATARESPONSE in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTHISTODATARESPONSEObject <- list()
      if (!is.null(self$`Data`)) {
        SPOTINSTRUMENTHISTODATARESPONSEObject[["Data"]] <-
          lapply(self$`Data`, function(x) x$toJSON())
      }
      if (!is.null(self$`Err`)) {
        SPOTINSTRUMENTHISTODATARESPONSEObject[["Err"]] <-
          self$`Err`
      }
      SPOTINSTRUMENTHISTODATARESPONSEObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATARESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATARESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTHISTODATARESPONSE
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Data`)) {
        self$`Data` <- ApiClient$new()$deserializeObj(this_object$`Data`, "array[SPOTINSTRUMENTHISTODATA]", loadNamespace("openapi"))
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
    #' @return SPOTINSTRUMENTHISTODATARESPONSE in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Data`)) {
          sprintf(
          '"Data":
          [%s]
',
          paste(sapply(self$`Data`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATARESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTHISTODATARESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTHISTODATARESPONSE
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Data` <- ApiClient$new()$deserializeObj(this_object$`Data`, "array[SPOTINSTRUMENTHISTODATA]", loadNamespace("openapi"))
      self$`Err` <- this_object$`Err`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTHISTODATARESPONSE
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTHISTODATARESPONSE and throw an exception if invalid
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
    #' @return String representation of SPOTINSTRUMENTHISTODATARESPONSE
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
# SPOTINSTRUMENTHISTODATARESPONSE$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTHISTODATARESPONSE$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTHISTODATARESPONSE$lock()

