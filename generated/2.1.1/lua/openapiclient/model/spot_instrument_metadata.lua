--[[
  CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

  CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

  The version of the OpenAPI document: 2.1.1
  Contact: data@cryptocompare.com
  Generated by: https://openapi-generator.tech
]]

-- spot_instrument_metadata class
local spot_instrument_metadata = {}
local spot_instrument_metadata_mt = {
	__name = "spot_instrument_metadata";
	__index = spot_instrument_metadata;
}

local function cast_spot_instrument_metadata(t)
	return setmetatable(t, spot_instrument_metadata_mt)
end

local function new_spot_instrument_metadata(FIRST_SEEN_ON_BLOB_TS, FIRST_SEEN_ON_FIX_TS, FIRST_SEEN_ON_HARDCODED_TS, FIRST_SEEN_ON_INDEX_COMPOSITION_TS, FIRST_SEEN_ON_NSQ_TS, FIRST_SEEN_ON_POLLING_TS, FIRST_SEEN_ON_STREAMING_TS, FIRST_TRADE_SPOT_FROM_BACKFILL, FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, FIRST_TRADE_SPOT_FROM_BLOB, FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL, FIRST_TRADE_SPOT_FROM_CALCULATED, FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, FIRST_TRADE_SPOT_FROM_FIX, FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL, FIRST_TRADE_SPOT_FROM_GO, FIRST_TRADE_SPOT_FROM_GO_EXTERNAL, FIRST_TRADE_SPOT_FROM_POLLING, FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL, FIRST_TRADE_SPOT_FROM_STREAMING, FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, HOST_MIGRATION_DESTINATION, HOST_MIGRATION_SOURCE, HOST_MIGRATION_STATUS, INSTRUMENT, INSTRUMENT_EXTERNAL_DATA, INSTRUMENT_MAPPING, INSTRUMENT_MAPPING_HISTORY, INSTRUMENT_SOURCE_BACKFILL, INSTRUMENT_SOURCE_BLOB, INSTRUMENT_SOURCE_CALCULATED, INSTRUMENT_SOURCE_FIX, INSTRUMENT_SOURCE_GO, INSTRUMENT_SOURCE_POLLING, INSTRUMENT_SOURCE_STREAMING, INSTRUMENT_STATUS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, INSTRUMENT_TRADE_SPOT_REST_URI, INSTRUMENT_TRADE_SPOT_REST_URL, INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, LAST_SEEN_ON_BLOB_TS, LAST_SEEN_ON_FIX_TS, LAST_SEEN_ON_HARDCODED_TS, LAST_SEEN_ON_INDEX_COMPOSITION_TS, LAST_SEEN_ON_NSQ_TS, LAST_SEEN_ON_POLLING_TS, LAST_SEEN_ON_STREAMING_TS, LAST_TRADE_SPOT_FROM_BACKFILL, LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, LAST_TRADE_SPOT_FROM_BLOB, LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL, LAST_TRADE_SPOT_FROM_CALCULATED, LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, LAST_TRADE_SPOT_FROM_FIX, LAST_TRADE_SPOT_FROM_FIX_EXTERNAL, LAST_TRADE_SPOT_FROM_GO, LAST_TRADE_SPOT_FROM_GO_EXTERNAL, LAST_TRADE_SPOT_FROM_POLLING, LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL, LAST_TRADE_SPOT_FROM_STREAMING, LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, METADATA_VERSION, PROCESSING_TRADES_FROM_BLOB_STATUS, TOTAL_TRADES_SPOT, UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA)
	return cast_spot_instrument_metadata({
		["FIRST_SEEN_ON_BLOB_TS"] = FIRST_SEEN_ON_BLOB_TS;
		["FIRST_SEEN_ON_FIX_TS"] = FIRST_SEEN_ON_FIX_TS;
		["FIRST_SEEN_ON_HARDCODED_TS"] = FIRST_SEEN_ON_HARDCODED_TS;
		["FIRST_SEEN_ON_INDEX_COMPOSITION_TS"] = FIRST_SEEN_ON_INDEX_COMPOSITION_TS;
		["FIRST_SEEN_ON_NSQ_TS"] = FIRST_SEEN_ON_NSQ_TS;
		["FIRST_SEEN_ON_POLLING_TS"] = FIRST_SEEN_ON_POLLING_TS;
		["FIRST_SEEN_ON_STREAMING_TS"] = FIRST_SEEN_ON_STREAMING_TS;
		["FIRST_TRADE_SPOT_FROM_BACKFILL"] = FIRST_TRADE_SPOT_FROM_BACKFILL;
		["FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_BLOB"] = FIRST_TRADE_SPOT_FROM_BLOB;
		["FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_CALCULATED"] = FIRST_TRADE_SPOT_FROM_CALCULATED;
		["FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_FIX"] = FIRST_TRADE_SPOT_FROM_FIX;
		["FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_GO"] = FIRST_TRADE_SPOT_FROM_GO;
		["FIRST_TRADE_SPOT_FROM_GO_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_POLLING"] = FIRST_TRADE_SPOT_FROM_POLLING;
		["FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
		["FIRST_TRADE_SPOT_FROM_STREAMING"] = FIRST_TRADE_SPOT_FROM_STREAMING;
		["FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"] = FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
		["HOST_MIGRATION_DESTINATION"] = HOST_MIGRATION_DESTINATION;
		["HOST_MIGRATION_SOURCE"] = HOST_MIGRATION_SOURCE;
		["HOST_MIGRATION_STATUS"] = HOST_MIGRATION_STATUS;
		["INSTRUMENT"] = INSTRUMENT;
		["INSTRUMENT_EXTERNAL_DATA"] = INSTRUMENT_EXTERNAL_DATA;
		["INSTRUMENT_MAPPING"] = INSTRUMENT_MAPPING;
		["INSTRUMENT_MAPPING_HISTORY"] = INSTRUMENT_MAPPING_HISTORY;
		["INSTRUMENT_SOURCE_BACKFILL"] = INSTRUMENT_SOURCE_BACKFILL;
		["INSTRUMENT_SOURCE_BLOB"] = INSTRUMENT_SOURCE_BLOB;
		["INSTRUMENT_SOURCE_CALCULATED"] = INSTRUMENT_SOURCE_CALCULATED;
		["INSTRUMENT_SOURCE_FIX"] = INSTRUMENT_SOURCE_FIX;
		["INSTRUMENT_SOURCE_GO"] = INSTRUMENT_SOURCE_GO;
		["INSTRUMENT_SOURCE_POLLING"] = INSTRUMENT_SOURCE_POLLING;
		["INSTRUMENT_SOURCE_STREAMING"] = INSTRUMENT_SOURCE_STREAMING;
		["INSTRUMENT_STATUS"] = INSTRUMENT_STATUS;
		["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST"] = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
		["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS"] = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
		["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS"] = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
		["INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION"] = INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
		["INSTRUMENT_TRADE_SPOT_REST_URI"] = INSTRUMENT_TRADE_SPOT_REST_URI;
		["INSTRUMENT_TRADE_SPOT_REST_URL"] = INSTRUMENT_TRADE_SPOT_REST_URL;
		["INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION"] = INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
		["LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS"] = LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
		["LAST_SEEN_ON_BLOB_TS"] = LAST_SEEN_ON_BLOB_TS;
		["LAST_SEEN_ON_FIX_TS"] = LAST_SEEN_ON_FIX_TS;
		["LAST_SEEN_ON_HARDCODED_TS"] = LAST_SEEN_ON_HARDCODED_TS;
		["LAST_SEEN_ON_INDEX_COMPOSITION_TS"] = LAST_SEEN_ON_INDEX_COMPOSITION_TS;
		["LAST_SEEN_ON_NSQ_TS"] = LAST_SEEN_ON_NSQ_TS;
		["LAST_SEEN_ON_POLLING_TS"] = LAST_SEEN_ON_POLLING_TS;
		["LAST_SEEN_ON_STREAMING_TS"] = LAST_SEEN_ON_STREAMING_TS;
		["LAST_TRADE_SPOT_FROM_BACKFILL"] = LAST_TRADE_SPOT_FROM_BACKFILL;
		["LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"] = LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_BLOB"] = LAST_TRADE_SPOT_FROM_BLOB;
		["LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL"] = LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_CALCULATED"] = LAST_TRADE_SPOT_FROM_CALCULATED;
		["LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"] = LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_FIX"] = LAST_TRADE_SPOT_FROM_FIX;
		["LAST_TRADE_SPOT_FROM_FIX_EXTERNAL"] = LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_GO"] = LAST_TRADE_SPOT_FROM_GO;
		["LAST_TRADE_SPOT_FROM_GO_EXTERNAL"] = LAST_TRADE_SPOT_FROM_GO_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_POLLING"] = LAST_TRADE_SPOT_FROM_POLLING;
		["LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL"] = LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
		["LAST_TRADE_SPOT_FROM_STREAMING"] = LAST_TRADE_SPOT_FROM_STREAMING;
		["LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"] = LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
		["METADATA_VERSION"] = METADATA_VERSION;
		["PROCESSING_TRADES_FROM_BLOB_STATUS"] = PROCESSING_TRADES_FROM_BLOB_STATUS;
		["TOTAL_TRADES_SPOT"] = TOTAL_TRADES_SPOT;
		["UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
		["UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA"] = UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
	})
end

return {
	cast = cast_spot_instrument_metadata;
	new = new_spot_instrument_metadata;
}