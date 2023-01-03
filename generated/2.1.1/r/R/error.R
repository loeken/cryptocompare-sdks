#' Create a new Error
#'
#' @description
#' Error Class
#'
#' @docType class
#' @title Error
#' @description Error Class
#' @format An \code{R6Class} generator object
#' @field Data  object [optional]
#' @field Err  \link{ErrorErr} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Error <- R6::R6Class(
  "Error",
  public = list(
    `Data` = NULL,
    `Err` = NULL,
    #' Initialize a new Error class.
    #'
    #' @description
    #' Initialize a new Error class.
    #'
    #' @param Data Data
    #' @param Err Err
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`Data` = NULL, `Err` = NULL, ...) {
      if (!is.null(`Data`)) {
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
    #' @return Error in JSON format
    #' @export
    toJSON = function() {
      ErrorObject <- list()
      if (!is.null(self$`Data`)) {
        ErrorObject[["Data"]] <-
          self$`Data`
      }
      if (!is.null(self$`Err`)) {
        ErrorObject[["Err"]] <-
          self$`Err`$toJSON()
      }
      ErrorObject
    },
    #' Deserialize JSON string into an instance of Error
    #'
    #' @description
    #' Deserialize JSON string into an instance of Error
    #'
    #' @param input_json the JSON input
    #' @return the instance of Error
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Data`)) {
        self$`Data` <- this_object$`Data`
      }
      if (!is.null(this_object$`Err`)) {
        err_object <- ErrorErr$new()
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
    #' @return Error in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Data`)) {
          sprintf(
          '"Data":
            "%s"
                    ',
          self$`Data`
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
    #' Deserialize JSON string into an instance of Error
    #'
    #' @description
    #' Deserialize JSON string into an instance of Error
    #'
    #' @param input_json the JSON input
    #' @return the instance of Error
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Data` <- this_object$`Data`
      self$`Err` <- ErrorErr$new()$fromJSON(jsonlite::toJSON(this_object$Err, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Error
    #'
    #' @description
    #' Validate JSON input with respect to Error and throw an exception if invalid
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
    #' @return String representation of Error
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
# Error$unlock()
#
## Below is an example to define the print function
# Error$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Error$lock()

