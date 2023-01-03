goog.provide('API.Client.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err');

/**
 * @record
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSEErr = function() {}

/**
 * A message describing the error
 * @type {!string}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSEErr.prototype.message;

/**
 * @type {!API.Client.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSEErr.prototype.otherInfo;

/**
 * A public facing error type. If you want to treat a specific error use the type.
 * @type {!number}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSEErr.prototype.type;

