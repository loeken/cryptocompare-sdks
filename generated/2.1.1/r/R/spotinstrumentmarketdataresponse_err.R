#' Create a new SPOTINSTRUMENTMARKETDATARESPONSEErr
#'
#' @description
#' SPOTINSTRUMENTMARKETDATARESPONSEErr Class
#'
#' @docType class
#' @title SPOTINSTRUMENTMARKETDATARESPONSEErr
#' @description SPOTINSTRUMENTMARKETDATARESPONSEErr Class
#' @format An \code{R6Class} generator object
#' @field message A message describing the error character [optional]
#' @field other_info  \link{SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo} [optional]
#' @field type A public facing error type. If you want to treat a specific error use the type. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTMARKETDATARESPONSEErr <- R6::R6Class(
  "SPOTINSTRUMENTMARKETDATARESPONSEErr",
  public = list(
    `message` = NULL,
    `other_info` = NULL,
    `type` = NULL,
    #' Initialize a new SPOTINSTRUMENTMARKETDATARESPONSEErr class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTMARKETDATARESPONSEErr class.
    #'
    #' @param message A message describing the error
    #' @param other_info other_info
    #' @param type A public facing error type. If you want to treat a specific error use the type.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`message` = NULL, `other_info` = NULL, `type` = NULL, ...) {
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`other_info`)) {
        stopifnot(R6::is.R6(`other_info`))
        self$`other_info` <- `other_info`
      }
      if (!is.null(`type`)) {
        if (!(is.numeric(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be an integer:", `type`))
        }
        self$`type` <- `type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMARKETDATARESPONSEErr in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTMARKETDATARESPONSEErrObject <- list()
      if (!is.null(self$`message`)) {
        SPOTINSTRUMENTMARKETDATARESPONSEErrObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`other_info`)) {
        SPOTINSTRUMENTMARKETDATARESPONSEErrObject[["other_info"]] <-
          self$`other_info`$toJSON()
      }
      if (!is.null(self$`type`)) {
        SPOTINSTRUMENTMARKETDATARESPONSEErrObject[["type"]] <-
          self$`type`
      }
      SPOTINSTRUMENTMARKETDATARESPONSEErrObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`other_info`)) {
        other_info_object <- SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo$new()
        other_info_object$fromJSON(jsonlite::toJSON(this_object$other_info, auto_unbox = TRUE, digits = NA))
        self$`other_info` <- other_info_object
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMARKETDATARESPONSEErr in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`other_info`)) {
          sprintf(
          '"other_info":
          %s
          ',
          jsonlite::toJSON(self$`other_info`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            %d
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMARKETDATARESPONSEErr
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`other_info` <- SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo$new()$fromJSON(jsonlite::toJSON(this_object$other_info, auto_unbox = TRUE, digits = NA))
      self$`type` <- this_object$`type`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTMARKETDATARESPONSEErr
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTMARKETDATARESPONSEErr and throw an exception if invalid
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
    #' @return String representation of SPOTINSTRUMENTMARKETDATARESPONSEErr
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
# SPOTINSTRUMENTMARKETDATARESPONSEErr$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTMARKETDATARESPONSEErr$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTMARKETDATARESPONSEErr$lock()

