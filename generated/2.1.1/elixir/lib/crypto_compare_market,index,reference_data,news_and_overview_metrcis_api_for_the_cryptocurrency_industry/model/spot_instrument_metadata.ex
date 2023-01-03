# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadata do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :FIRST_SEEN_ON_BLOB_TS,
    :FIRST_SEEN_ON_FIX_TS,
    :FIRST_SEEN_ON_HARDCODED_TS,
    :FIRST_SEEN_ON_INDEX_COMPOSITION_TS,
    :FIRST_SEEN_ON_NSQ_TS,
    :FIRST_SEEN_ON_POLLING_TS,
    :FIRST_SEEN_ON_STREAMING_TS,
    :FIRST_TRADE_SPOT_FROM_BACKFILL,
    :FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_BLOB,
    :FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_CALCULATED,
    :FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_FIX,
    :FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_GO,
    :FIRST_TRADE_SPOT_FROM_GO_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_POLLING,
    :FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
    :FIRST_TRADE_SPOT_FROM_STREAMING,
    :FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
    :HOST_MIGRATION_DESTINATION,
    :HOST_MIGRATION_SOURCE,
    :HOST_MIGRATION_STATUS,
    :INSTRUMENT,
    :INSTRUMENT_EXTERNAL_DATA,
    :INSTRUMENT_MAPPING,
    :INSTRUMENT_MAPPING_HISTORY,
    :INSTRUMENT_SOURCE_BACKFILL,
    :INSTRUMENT_SOURCE_BLOB,
    :INSTRUMENT_SOURCE_CALCULATED,
    :INSTRUMENT_SOURCE_FIX,
    :INSTRUMENT_SOURCE_GO,
    :INSTRUMENT_SOURCE_POLLING,
    :INSTRUMENT_SOURCE_STREAMING,
    :INSTRUMENT_STATUS,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS,
    :INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION,
    :INSTRUMENT_TRADE_SPOT_REST_URI,
    :INSTRUMENT_TRADE_SPOT_REST_URL,
    :INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION,
    :LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS,
    :LAST_SEEN_ON_BLOB_TS,
    :LAST_SEEN_ON_FIX_TS,
    :LAST_SEEN_ON_HARDCODED_TS,
    :LAST_SEEN_ON_INDEX_COMPOSITION_TS,
    :LAST_SEEN_ON_NSQ_TS,
    :LAST_SEEN_ON_POLLING_TS,
    :LAST_SEEN_ON_STREAMING_TS,
    :LAST_TRADE_SPOT_FROM_BACKFILL,
    :LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_BLOB,
    :LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_CALCULATED,
    :LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_FIX,
    :LAST_TRADE_SPOT_FROM_FIX_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_GO,
    :LAST_TRADE_SPOT_FROM_GO_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_POLLING,
    :LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
    :LAST_TRADE_SPOT_FROM_STREAMING,
    :LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
    :METADATA_VERSION,
    :PROCESSING_TRADES_FROM_BLOB_STATUS,
    :TOTAL_TRADES_SPOT,
    :UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA,
    :UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA
  ]

  @type t :: %__MODULE__{
    :FIRST_SEEN_ON_BLOB_TS => integer() | nil,
    :FIRST_SEEN_ON_FIX_TS => integer() | nil,
    :FIRST_SEEN_ON_HARDCODED_TS => integer() | nil,
    :FIRST_SEEN_ON_INDEX_COMPOSITION_TS => integer() | nil,
    :FIRST_SEEN_ON_NSQ_TS => integer() | nil,
    :FIRST_SEEN_ON_POLLING_TS => integer() | nil,
    :FIRST_SEEN_ON_STREAMING_TS => integer() | nil,
    :FIRST_TRADE_SPOT_FROM_BACKFILL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_BLOB => map() | nil,
    :FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_CALCULATED => map() | nil,
    :FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_FIX => map() | nil,
    :FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_GO => map() | nil,
    :FIRST_TRADE_SPOT_FROM_GO_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_POLLING => map() | nil,
    :FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL => map() | nil,
    :FIRST_TRADE_SPOT_FROM_STREAMING => map() | nil,
    :FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL => map() | nil,
    :HOST_MIGRATION_DESTINATION => String.t | nil,
    :HOST_MIGRATION_SOURCE => String.t | nil,
    :HOST_MIGRATION_STATUS => String.t | nil,
    :INSTRUMENT => String.t | nil,
    :INSTRUMENT_EXTERNAL_DATA => String.t | nil,
    :INSTRUMENT_MAPPING => map() | nil,
    :INSTRUMENT_MAPPING_HISTORY => [String.t] | nil,
    :INSTRUMENT_SOURCE_BACKFILL => String.t | nil,
    :INSTRUMENT_SOURCE_BLOB => String.t | nil,
    :INSTRUMENT_SOURCE_CALCULATED => String.t | nil,
    :INSTRUMENT_SOURCE_FIX => String.t | nil,
    :INSTRUMENT_SOURCE_GO => String.t | nil,
    :INSTRUMENT_SOURCE_POLLING => String.t | nil,
    :INSTRUMENT_SOURCE_STREAMING => String.t | nil,
    :INSTRUMENT_STATUS => String.t | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST => map() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS => integer() | nil,
    :INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION => boolean() | nil,
    :INSTRUMENT_TRADE_SPOT_REST_URI => String.t | nil,
    :INSTRUMENT_TRADE_SPOT_REST_URL => String.t | nil,
    :INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION => String.t | nil,
    :LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS => integer() | nil,
    :LAST_SEEN_ON_BLOB_TS => integer() | nil,
    :LAST_SEEN_ON_FIX_TS => integer() | nil,
    :LAST_SEEN_ON_HARDCODED_TS => integer() | nil,
    :LAST_SEEN_ON_INDEX_COMPOSITION_TS => integer() | nil,
    :LAST_SEEN_ON_NSQ_TS => integer() | nil,
    :LAST_SEEN_ON_POLLING_TS => integer() | nil,
    :LAST_SEEN_ON_STREAMING_TS => integer() | nil,
    :LAST_TRADE_SPOT_FROM_BACKFILL => map() | nil,
    :LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_BLOB => map() | nil,
    :LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_CALCULATED => map() | nil,
    :LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_FIX => map() | nil,
    :LAST_TRADE_SPOT_FROM_FIX_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_GO => map() | nil,
    :LAST_TRADE_SPOT_FROM_GO_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_POLLING => map() | nil,
    :LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL => map() | nil,
    :LAST_TRADE_SPOT_FROM_STREAMING => map() | nil,
    :LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL => map() | nil,
    :METADATA_VERSION => integer() | nil,
    :PROCESSING_TRADES_FROM_BLOB_STATUS => String.t | nil,
    :TOTAL_TRADES_SPOT => integer() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA => map() | nil,
    :UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA => map() | nil
  }
end

defimpl Poison.Decoder, for: CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadata do
  def decode(value, _options) do
    value
  end
end
