#' Create a new SPOTINSTRUMENTMETADATARESPONSE
#'
#' @description
#' SPOTINSTRUMENTMETADATARESPONSE Class
#'
#' @docType class
#' @title SPOTINSTRUMENTMETADATARESPONSE
#' @description SPOTINSTRUMENTMETADATARESPONSE Class
#' @format An \code{R6Class} generator object
#' @field Data  named list(\link{SPOTINSTRUMENTMETADATA}) [optional]
#' @field Err  \link{SPOTINSTRUMENTMARKETDATARESPONSEErr} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTMETADATARESPONSE <- R6::R6Class(
  "SPOTINSTRUMENTMETADATARESPONSE",
  public = list(
    `Data` = NULL,
    `Err` = NULL,
    #' Initialize a new SPOTINSTRUMENTMETADATARESPONSE class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTMETADATARESPONSE class.
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
        stopifnot(R6::is.R6(`Err`))
        self$`Err` <- `Err`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMETADATARESPONSE in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTMETADATARESPONSEObject <- list()
      if (!is.null(self$`Data`)) {
        SPOTINSTRUMENTMETADATARESPONSEObject[["Data"]] <-
          lapply(self$`Data`, function(x) x$toJSON())
      }
      if (!is.null(self$`Err`)) {
        SPOTINSTRUMENTMETADATARESPONSEObject[["Err"]] <-
          self$`Err`$toJSON()
      }
      SPOTINSTRUMENTMETADATARESPONSEObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATARESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATARESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMETADATARESPONSE
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Data`)) {
        self$`Data` <- ApiClient$new()$deserializeObj(this_object$`Data`, "map(SPOTINSTRUMENTMETADATA)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`Err`)) {
        err_object <- SPOTINSTRUMENTMARKETDATARESPONSEErr$new()
        err_object$fromJSON(jsonlite::toJSON(this_object$Err, auto_unbox = TRUE, digits = NA))
        self$`Err` <- err_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMETADATARESPONSE in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Data`)) {
          sprintf(
          '"Data":
          %s
',
          jsonlite::toJSON(lapply(self$`Data`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`Err`)) {
          sprintf(
          '"Err":
          %s
          ',
          jsonlite::toJSON(self$`Err`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATARESPONSE
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATARESPONSE
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMETADATARESPONSE
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Data` <- ApiClient$new()$deserializeObj(this_object$`Data`, "map(SPOTINSTRUMENTMETADATA)", loadNamespace("openapi"))
      self$`Err` <- SPOTINSTRUMENTMARKETDATARESPONSEErr$new()$fromJSON(jsonlite::toJSON(this_object$Err, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTMETADATARESPONSE
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTMETADATARESPONSE and throw an exception if invalid
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
    #' @return String representation of SPOTINSTRUMENTMETADATARESPONSE
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
# SPOTINSTRUMENTMETADATARESPONSE$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTMETADATARESPONSE$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTMETADATARESPONSE$lock()

