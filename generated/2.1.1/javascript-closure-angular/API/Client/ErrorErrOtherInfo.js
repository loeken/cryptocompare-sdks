goog.provide('API.Client.Error_Err_other_info');

/**
 * @record
 */
API.Client.ErrorErrOtherInfo = function() {}

/**
 * The parameter that is resposible for the error
 * @type {!string}
 * @export
 */
API.Client.ErrorErrOtherInfo.prototype.param;

/**
 * The values resposible for the error
 * @type {!Array<!string>}
 * @export
 */
API.Client.ErrorErrOtherInfo.prototype.values;

