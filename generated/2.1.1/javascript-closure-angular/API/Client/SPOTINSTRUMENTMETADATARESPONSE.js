goog.provide('API.Client.SPOT_INSTRUMENT_METADATA_RESPONSE');

/**
 * @record
 */
API.Client.SPOTINSTRUMENTMETADATARESPONSE = function() {}

/**
 * @type {!Object<!string, API.Client.SPOT_INSTRUMENT_METADATA>}
 * @export
 */
API.Client.SPOTINSTRUMENTMETADATARESPONSE.prototype.data;

/**
 * @type {!API.Client.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err}
 * @export
 */
API.Client.SPOTINSTRUMENTMETADATARESPONSE.prototype.err;

