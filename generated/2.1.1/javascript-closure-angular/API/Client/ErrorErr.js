goog.provide('API.Client.Error_Err');

/**
 * @record
 */
API.Client.ErrorErr = function() {}

/**
 * A message describing the error
 * @type {!string}
 * @export
 */
API.Client.ErrorErr.prototype.message;

/**
 * @type {!API.Client.Error_Err_other_info}
 * @export
 */
API.Client.ErrorErr.prototype.otherInfo;

/**
 * A public facing error type. If you want to treat a specific error use the type.
 * @type {!number}
 * @export
 */
API.Client.ErrorErr.prototype.type;

