#' Create a new ErrorErrOtherInfo
#'
#' @description
#' ErrorErrOtherInfo Class
#'
#' @docType class
#' @title ErrorErrOtherInfo
#' @description ErrorErrOtherInfo Class
#' @format An \code{R6Class} generator object
#' @field param The parameter that is resposible for the error character [optional]
#' @field values The values resposible for the error list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ErrorErrOtherInfo <- R6::R6Class(
  "ErrorErrOtherInfo",
  public = list(
    `param` = NULL,
    `values` = NULL,
    #' Initialize a new ErrorErrOtherInfo class.
    #'
    #' @description
    #' Initialize a new ErrorErrOtherInfo class.
    #'
    #' @param param The parameter that is resposible for the error
    #' @param values The values resposible for the error
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`param` = NULL, `values` = NULL, ...) {
      if (!is.null(`param`)) {
        if (!(is.character(`param`) && length(`param`) == 1)) {
          stop(paste("Error! Invalid data for `param`. Must be a string:", `param`))
        }
        self$`param` <- `param`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(is.character(x)))
        self$`values` <- `values`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorErrOtherInfo in JSON format
    #' @export
    toJSON = function() {
      ErrorErrOtherInfoObject <- list()
      if (!is.null(self$`param`)) {
        ErrorErrOtherInfoObject[["param"]] <-
          self$`param`
      }
      if (!is.null(self$`values`)) {
        ErrorErrOtherInfoObject[["values"]] <-
          self$`values`
      }
      ErrorErrOtherInfoObject
    },
    #' Deserialize JSON string into an instance of ErrorErrOtherInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorErrOtherInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorErrOtherInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`param`)) {
        self$`param` <- this_object$`param`
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorErrOtherInfo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`param`)) {
          sprintf(
          '"param":
            "%s"
                    ',
          self$`param`
          )
        },
        if (!is.null(self$`values`)) {
          sprintf(
          '"values":
             [%s]
          ',
          paste(unlist(lapply(self$`values`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ErrorErrOtherInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorErrOtherInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorErrOtherInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`param` <- this_object$`param`
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to ErrorErrOtherInfo
    #'
    #' @description
    #' Validate JSON input with respect to ErrorErrOtherInfo and throw an exception if invalid
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
    #' @return String representation of ErrorErrOtherInfo
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
# ErrorErrOtherInfo$unlock()
#
## Below is an example to define the print function
# ErrorErrOtherInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ErrorErrOtherInfo$lock()

