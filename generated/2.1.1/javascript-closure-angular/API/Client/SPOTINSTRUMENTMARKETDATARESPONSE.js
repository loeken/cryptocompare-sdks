goog.provide('API.Client.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE');

/**
 * @record
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSE = function() {}

/**
 * @type {!Object<!string, API.Client.SPOT_INSTRUMENT_MARKET_DATA>}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSE.prototype.data;

/**
 * @type {!API.Client.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err}
 * @export
 */
API.Client.SPOTINSTRUMENTMARKETDATARESPONSE.prototype.err;

