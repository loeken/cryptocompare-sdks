//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTMETADATA {
  /// Returns a new [SPOTINSTRUMENTMETADATA] instance.
  SPOTINSTRUMENTMETADATA({
    this.FIRST_SEEN_ON_BLOB_TS,
    this.FIRST_SEEN_ON_FIX_TS,
    this.FIRST_SEEN_ON_HARDCODED_TS,
    this.FIRST_SEEN_ON_INDEX_COMPOSITION_TS,
    this.FIRST_SEEN_ON_NSQ_TS,
    this.FIRST_SEEN_ON_POLLING_TS,
    this.FIRST_SEEN_ON_STREAMING_TS,
    this.FIRST_TRADE_SPOT_FROM_BACKFILL,
    this.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_BLOB,
    this.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_CALCULATED,
    this.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_FIX,
    this.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_GO,
    this.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_POLLING,
    this.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
    this.FIRST_TRADE_SPOT_FROM_STREAMING,
    this.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
    this.HOST_MIGRATION_DESTINATION,
    this.HOST_MIGRATION_SOURCE,
    this.HOST_MIGRATION_STATUS,
    this.INSTRUMENT,
    this.INSTRUMENT_EXTERNAL_DATA,
    this.INSTRUMENT_MAPPING = {},
    this.INSTRUMENT_MAPPING_HISTORY = const [],
    this.INSTRUMENT_SOURCE_BACKFILL,
    this.INSTRUMENT_SOURCE_BLOB,
    this.INSTRUMENT_SOURCE_CALCULATED,
    this.INSTRUMENT_SOURCE_FIX,
    this.INSTRUMENT_SOURCE_GO,
    this.INSTRUMENT_SOURCE_POLLING,
    this.INSTRUMENT_SOURCE_STREAMING,
    this.INSTRUMENT_STATUS = 'ACTIVE',
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST,
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS,
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS,
    this.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = false,
    this.INSTRUMENT_TRADE_SPOT_REST_URI,
    this.INSTRUMENT_TRADE_SPOT_REST_URL,
    this.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION,
    this.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS,
    this.LAST_SEEN_ON_BLOB_TS,
    this.LAST_SEEN_ON_FIX_TS,
    this.LAST_SEEN_ON_HARDCODED_TS,
    this.LAST_SEEN_ON_INDEX_COMPOSITION_TS,
    this.LAST_SEEN_ON_NSQ_TS,
    this.LAST_SEEN_ON_POLLING_TS,
    this.LAST_SEEN_ON_STREAMING_TS,
    this.LAST_TRADE_SPOT_FROM_BACKFILL,
    this.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_BLOB,
    this.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_CALCULATED,
    this.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_FIX,
    this.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_GO,
    this.LAST_TRADE_SPOT_FROM_GO_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_POLLING,
    this.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
    this.LAST_TRADE_SPOT_FROM_STREAMING,
    this.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
    this.METADATA_VERSION = 4,
    this.PROCESSING_TRADES_FROM_BLOB_STATUS,
    this.TOTAL_TRADES_SPOT,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA,
    this.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA,
  });

  /// This is the first time instrument was seen on instrumentListSourceType BLOB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_BLOB_TS;

  /// This is the first time instrument was seen on instrumentListSourceType FIX.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_FIX_TS;

  /// This is the first time instrument was seen on instrumentListSourceType HARDCODED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_HARDCODED_TS;

  /// This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_INDEX_COMPOSITION_TS;

  /// This is the first time instrument was seen on instrumentListSourceType NSQ.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_NSQ_TS;

  /// This is the first time instrument was seen on instrumentListSourceType POLLING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_POLLING_TS;

  /// This is the first time instrument was seen on instrumentListSourceType STREAMING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? FIRST_SEEN_ON_STREAMING_TS;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_BACKFILL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_BLOB;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_CALCULATED;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_FIX;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_GO;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_POLLING;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_STREAMING;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  /// The migration destination vm hostname.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? HOST_MIGRATION_DESTINATION;

  /// The migration source vm hostname.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? HOST_MIGRATION_SOURCE;

  /// The migration status of the symbol, we only poll / stream / connect empty or SETTLED
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? HOST_MIGRATION_STATUS;

  /// The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT;

  /// The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_EXTERNAL_DATA;

  /// The current mapping information for this instrument
  Object INSTRUMENT_MAPPING;

  /// Historical mapping information for this instrument
  List<String> INSTRUMENT_MAPPING_HISTORY;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_BACKFILL;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_BLOB;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_CALCULATED;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_FIX;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_GO;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_POLLING;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_SOURCE_STREAMING;

  /// The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
  String INSTRUMENT_STATUS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;

  /// This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
  bool INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;

  /// This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_TRADE_SPOT_REST_URI;

  /// The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_TRADE_SPOT_REST_URL;

  /// This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;

  /// The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;

  /// This is the last time instrument was seen on instrumentListSourceType BLOB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_BLOB_TS;

  /// This is the last time instrument was seen on instrumentListSourceType FIX.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_FIX_TS;

  /// This is the last time instrument was seen on instrumentListSourceType HARDCODED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_HARDCODED_TS;

  /// This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_INDEX_COMPOSITION_TS;

  /// This is the last time instrument was seen on instrumentListSourceType NSQ.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_NSQ_TS;

  /// This is the last time instrument was seen on instrumentListSourceType POLLING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_POLLING_TS;

  /// This is the last time instrument was seen on instrumentListSourceType STREAMING.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? LAST_SEEN_ON_STREAMING_TS;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_BACKFILL;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_BLOB;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_CALCULATED;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_FIX;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_GO;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_GO_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_POLLING;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_STREAMING;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  /// The version of metadata, used for version conversions/migrates.
  int METADATA_VERSION;

  /// This states the status of blob migration for this intrument on this exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? PROCESSING_TRADES_FROM_BLOB_STATUS;

  /// This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TOTAL_TRADES_SPOT;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTMETADATA &&
     other.FIRST_SEEN_ON_BLOB_TS == FIRST_SEEN_ON_BLOB_TS &&
     other.FIRST_SEEN_ON_FIX_TS == FIRST_SEEN_ON_FIX_TS &&
     other.FIRST_SEEN_ON_HARDCODED_TS == FIRST_SEEN_ON_HARDCODED_TS &&
     other.FIRST_SEEN_ON_INDEX_COMPOSITION_TS == FIRST_SEEN_ON_INDEX_COMPOSITION_TS &&
     other.FIRST_SEEN_ON_NSQ_TS == FIRST_SEEN_ON_NSQ_TS &&
     other.FIRST_SEEN_ON_POLLING_TS == FIRST_SEEN_ON_POLLING_TS &&
     other.FIRST_SEEN_ON_STREAMING_TS == FIRST_SEEN_ON_STREAMING_TS &&
     other.FIRST_TRADE_SPOT_FROM_BACKFILL == FIRST_TRADE_SPOT_FROM_BACKFILL &&
     other.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL == FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_BLOB == FIRST_TRADE_SPOT_FROM_BLOB &&
     other.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL == FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_CALCULATED == FIRST_TRADE_SPOT_FROM_CALCULATED &&
     other.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL == FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_FIX == FIRST_TRADE_SPOT_FROM_FIX &&
     other.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL == FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_GO == FIRST_TRADE_SPOT_FROM_GO &&
     other.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL == FIRST_TRADE_SPOT_FROM_GO_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_POLLING == FIRST_TRADE_SPOT_FROM_POLLING &&
     other.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL == FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL &&
     other.FIRST_TRADE_SPOT_FROM_STREAMING == FIRST_TRADE_SPOT_FROM_STREAMING &&
     other.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL == FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL &&
     other.HOST_MIGRATION_DESTINATION == HOST_MIGRATION_DESTINATION &&
     other.HOST_MIGRATION_SOURCE == HOST_MIGRATION_SOURCE &&
     other.HOST_MIGRATION_STATUS == HOST_MIGRATION_STATUS &&
     other.INSTRUMENT == INSTRUMENT &&
     other.INSTRUMENT_EXTERNAL_DATA == INSTRUMENT_EXTERNAL_DATA &&
     other.INSTRUMENT_MAPPING == INSTRUMENT_MAPPING &&
     other.INSTRUMENT_MAPPING_HISTORY == INSTRUMENT_MAPPING_HISTORY &&
     other.INSTRUMENT_SOURCE_BACKFILL == INSTRUMENT_SOURCE_BACKFILL &&
     other.INSTRUMENT_SOURCE_BLOB == INSTRUMENT_SOURCE_BLOB &&
     other.INSTRUMENT_SOURCE_CALCULATED == INSTRUMENT_SOURCE_CALCULATED &&
     other.INSTRUMENT_SOURCE_FIX == INSTRUMENT_SOURCE_FIX &&
     other.INSTRUMENT_SOURCE_GO == INSTRUMENT_SOURCE_GO &&
     other.INSTRUMENT_SOURCE_POLLING == INSTRUMENT_SOURCE_POLLING &&
     other.INSTRUMENT_SOURCE_STREAMING == INSTRUMENT_SOURCE_STREAMING &&
     other.INSTRUMENT_STATUS == INSTRUMENT_STATUS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST == INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST &&
     other.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS == INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS &&
     other.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS == INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS &&
     other.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION == INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION &&
     other.INSTRUMENT_TRADE_SPOT_REST_URI == INSTRUMENT_TRADE_SPOT_REST_URI &&
     other.INSTRUMENT_TRADE_SPOT_REST_URL == INSTRUMENT_TRADE_SPOT_REST_URL &&
     other.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION == INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION &&
     other.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS == LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS &&
     other.LAST_SEEN_ON_BLOB_TS == LAST_SEEN_ON_BLOB_TS &&
     other.LAST_SEEN_ON_FIX_TS == LAST_SEEN_ON_FIX_TS &&
     other.LAST_SEEN_ON_HARDCODED_TS == LAST_SEEN_ON_HARDCODED_TS &&
     other.LAST_SEEN_ON_INDEX_COMPOSITION_TS == LAST_SEEN_ON_INDEX_COMPOSITION_TS &&
     other.LAST_SEEN_ON_NSQ_TS == LAST_SEEN_ON_NSQ_TS &&
     other.LAST_SEEN_ON_POLLING_TS == LAST_SEEN_ON_POLLING_TS &&
     other.LAST_SEEN_ON_STREAMING_TS == LAST_SEEN_ON_STREAMING_TS &&
     other.LAST_TRADE_SPOT_FROM_BACKFILL == LAST_TRADE_SPOT_FROM_BACKFILL &&
     other.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL == LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_BLOB == LAST_TRADE_SPOT_FROM_BLOB &&
     other.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL == LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_CALCULATED == LAST_TRADE_SPOT_FROM_CALCULATED &&
     other.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL == LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_FIX == LAST_TRADE_SPOT_FROM_FIX &&
     other.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL == LAST_TRADE_SPOT_FROM_FIX_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_GO == LAST_TRADE_SPOT_FROM_GO &&
     other.LAST_TRADE_SPOT_FROM_GO_EXTERNAL == LAST_TRADE_SPOT_FROM_GO_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_POLLING == LAST_TRADE_SPOT_FROM_POLLING &&
     other.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL == LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL &&
     other.LAST_TRADE_SPOT_FROM_STREAMING == LAST_TRADE_SPOT_FROM_STREAMING &&
     other.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL == LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL &&
     other.METADATA_VERSION == METADATA_VERSION &&
     other.PROCESSING_TRADES_FROM_BLOB_STATUS == PROCESSING_TRADES_FROM_BLOB_STATUS &&
     other.TOTAL_TRADES_SPOT == TOTAL_TRADES_SPOT &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA &&
     other.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA == UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (FIRST_SEEN_ON_BLOB_TS == null ? 0 : FIRST_SEEN_ON_BLOB_TS!.hashCode) +
    (FIRST_SEEN_ON_FIX_TS == null ? 0 : FIRST_SEEN_ON_FIX_TS!.hashCode) +
    (FIRST_SEEN_ON_HARDCODED_TS == null ? 0 : FIRST_SEEN_ON_HARDCODED_TS!.hashCode) +
    (FIRST_SEEN_ON_INDEX_COMPOSITION_TS == null ? 0 : FIRST_SEEN_ON_INDEX_COMPOSITION_TS!.hashCode) +
    (FIRST_SEEN_ON_NSQ_TS == null ? 0 : FIRST_SEEN_ON_NSQ_TS!.hashCode) +
    (FIRST_SEEN_ON_POLLING_TS == null ? 0 : FIRST_SEEN_ON_POLLING_TS!.hashCode) +
    (FIRST_SEEN_ON_STREAMING_TS == null ? 0 : FIRST_SEEN_ON_STREAMING_TS!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_BACKFILL == null ? 0 : FIRST_TRADE_SPOT_FROM_BACKFILL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_BLOB == null ? 0 : FIRST_TRADE_SPOT_FROM_BLOB!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_CALCULATED == null ? 0 : FIRST_TRADE_SPOT_FROM_CALCULATED!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_FIX == null ? 0 : FIRST_TRADE_SPOT_FROM_FIX!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_GO == null ? 0 : FIRST_TRADE_SPOT_FROM_GO!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_GO_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_GO_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_POLLING == null ? 0 : FIRST_TRADE_SPOT_FROM_POLLING!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_STREAMING == null ? 0 : FIRST_TRADE_SPOT_FROM_STREAMING!.hashCode) +
    (FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL == null ? 0 : FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL!.hashCode) +
    (HOST_MIGRATION_DESTINATION == null ? 0 : HOST_MIGRATION_DESTINATION!.hashCode) +
    (HOST_MIGRATION_SOURCE == null ? 0 : HOST_MIGRATION_SOURCE!.hashCode) +
    (HOST_MIGRATION_STATUS == null ? 0 : HOST_MIGRATION_STATUS!.hashCode) +
    (INSTRUMENT == null ? 0 : INSTRUMENT!.hashCode) +
    (INSTRUMENT_EXTERNAL_DATA == null ? 0 : INSTRUMENT_EXTERNAL_DATA!.hashCode) +
    (INSTRUMENT_MAPPING.hashCode) +
    (INSTRUMENT_MAPPING_HISTORY.hashCode) +
    (INSTRUMENT_SOURCE_BACKFILL == null ? 0 : INSTRUMENT_SOURCE_BACKFILL!.hashCode) +
    (INSTRUMENT_SOURCE_BLOB == null ? 0 : INSTRUMENT_SOURCE_BLOB!.hashCode) +
    (INSTRUMENT_SOURCE_CALCULATED == null ? 0 : INSTRUMENT_SOURCE_CALCULATED!.hashCode) +
    (INSTRUMENT_SOURCE_FIX == null ? 0 : INSTRUMENT_SOURCE_FIX!.hashCode) +
    (INSTRUMENT_SOURCE_GO == null ? 0 : INSTRUMENT_SOURCE_GO!.hashCode) +
    (INSTRUMENT_SOURCE_POLLING == null ? 0 : INSTRUMENT_SOURCE_POLLING!.hashCode) +
    (INSTRUMENT_SOURCE_STREAMING == null ? 0 : INSTRUMENT_SOURCE_STREAMING!.hashCode) +
    (INSTRUMENT_STATUS.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS == null ? 0 : INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION.hashCode) +
    (INSTRUMENT_TRADE_SPOT_REST_URI == null ? 0 : INSTRUMENT_TRADE_SPOT_REST_URI!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_REST_URL == null ? 0 : INSTRUMENT_TRADE_SPOT_REST_URL!.hashCode) +
    (INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION == null ? 0 : INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION!.hashCode) +
    (LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS == null ? 0 : LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS!.hashCode) +
    (LAST_SEEN_ON_BLOB_TS == null ? 0 : LAST_SEEN_ON_BLOB_TS!.hashCode) +
    (LAST_SEEN_ON_FIX_TS == null ? 0 : LAST_SEEN_ON_FIX_TS!.hashCode) +
    (LAST_SEEN_ON_HARDCODED_TS == null ? 0 : LAST_SEEN_ON_HARDCODED_TS!.hashCode) +
    (LAST_SEEN_ON_INDEX_COMPOSITION_TS == null ? 0 : LAST_SEEN_ON_INDEX_COMPOSITION_TS!.hashCode) +
    (LAST_SEEN_ON_NSQ_TS == null ? 0 : LAST_SEEN_ON_NSQ_TS!.hashCode) +
    (LAST_SEEN_ON_POLLING_TS == null ? 0 : LAST_SEEN_ON_POLLING_TS!.hashCode) +
    (LAST_SEEN_ON_STREAMING_TS == null ? 0 : LAST_SEEN_ON_STREAMING_TS!.hashCode) +
    (LAST_TRADE_SPOT_FROM_BACKFILL == null ? 0 : LAST_TRADE_SPOT_FROM_BACKFILL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_BLOB == null ? 0 : LAST_TRADE_SPOT_FROM_BLOB!.hashCode) +
    (LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_CALCULATED == null ? 0 : LAST_TRADE_SPOT_FROM_CALCULATED!.hashCode) +
    (LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_FIX == null ? 0 : LAST_TRADE_SPOT_FROM_FIX!.hashCode) +
    (LAST_TRADE_SPOT_FROM_FIX_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_FIX_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_GO == null ? 0 : LAST_TRADE_SPOT_FROM_GO!.hashCode) +
    (LAST_TRADE_SPOT_FROM_GO_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_GO_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_POLLING == null ? 0 : LAST_TRADE_SPOT_FROM_POLLING!.hashCode) +
    (LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL!.hashCode) +
    (LAST_TRADE_SPOT_FROM_STREAMING == null ? 0 : LAST_TRADE_SPOT_FROM_STREAMING!.hashCode) +
    (LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL == null ? 0 : LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL!.hashCode) +
    (METADATA_VERSION.hashCode) +
    (PROCESSING_TRADES_FROM_BLOB_STATUS == null ? 0 : PROCESSING_TRADES_FROM_BLOB_STATUS!.hashCode) +
    (TOTAL_TRADES_SPOT == null ? 0 : TOTAL_TRADES_SPOT!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA!.hashCode) +
    (UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA == null ? 0 : UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTMETADATA[FIRST_SEEN_ON_BLOB_TS=$FIRST_SEEN_ON_BLOB_TS, FIRST_SEEN_ON_FIX_TS=$FIRST_SEEN_ON_FIX_TS, FIRST_SEEN_ON_HARDCODED_TS=$FIRST_SEEN_ON_HARDCODED_TS, FIRST_SEEN_ON_INDEX_COMPOSITION_TS=$FIRST_SEEN_ON_INDEX_COMPOSITION_TS, FIRST_SEEN_ON_NSQ_TS=$FIRST_SEEN_ON_NSQ_TS, FIRST_SEEN_ON_POLLING_TS=$FIRST_SEEN_ON_POLLING_TS, FIRST_SEEN_ON_STREAMING_TS=$FIRST_SEEN_ON_STREAMING_TS, FIRST_TRADE_SPOT_FROM_BACKFILL=$FIRST_TRADE_SPOT_FROM_BACKFILL, FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL=$FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, FIRST_TRADE_SPOT_FROM_BLOB=$FIRST_TRADE_SPOT_FROM_BLOB, FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL=$FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL, FIRST_TRADE_SPOT_FROM_CALCULATED=$FIRST_TRADE_SPOT_FROM_CALCULATED, FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL=$FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, FIRST_TRADE_SPOT_FROM_FIX=$FIRST_TRADE_SPOT_FROM_FIX, FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL=$FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL, FIRST_TRADE_SPOT_FROM_GO=$FIRST_TRADE_SPOT_FROM_GO, FIRST_TRADE_SPOT_FROM_GO_EXTERNAL=$FIRST_TRADE_SPOT_FROM_GO_EXTERNAL, FIRST_TRADE_SPOT_FROM_POLLING=$FIRST_TRADE_SPOT_FROM_POLLING, FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL=$FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL, FIRST_TRADE_SPOT_FROM_STREAMING=$FIRST_TRADE_SPOT_FROM_STREAMING, FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL=$FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, HOST_MIGRATION_DESTINATION=$HOST_MIGRATION_DESTINATION, HOST_MIGRATION_SOURCE=$HOST_MIGRATION_SOURCE, HOST_MIGRATION_STATUS=$HOST_MIGRATION_STATUS, INSTRUMENT=$INSTRUMENT, INSTRUMENT_EXTERNAL_DATA=$INSTRUMENT_EXTERNAL_DATA, INSTRUMENT_MAPPING=$INSTRUMENT_MAPPING, INSTRUMENT_MAPPING_HISTORY=$INSTRUMENT_MAPPING_HISTORY, INSTRUMENT_SOURCE_BACKFILL=$INSTRUMENT_SOURCE_BACKFILL, INSTRUMENT_SOURCE_BLOB=$INSTRUMENT_SOURCE_BLOB, INSTRUMENT_SOURCE_CALCULATED=$INSTRUMENT_SOURCE_CALCULATED, INSTRUMENT_SOURCE_FIX=$INSTRUMENT_SOURCE_FIX, INSTRUMENT_SOURCE_GO=$INSTRUMENT_SOURCE_GO, INSTRUMENT_SOURCE_POLLING=$INSTRUMENT_SOURCE_POLLING, INSTRUMENT_SOURCE_STREAMING=$INSTRUMENT_SOURCE_STREAMING, INSTRUMENT_STATUS=$INSTRUMENT_STATUS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST=$INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS=$INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS=$INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION=$INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, INSTRUMENT_TRADE_SPOT_REST_URI=$INSTRUMENT_TRADE_SPOT_REST_URI, INSTRUMENT_TRADE_SPOT_REST_URL=$INSTRUMENT_TRADE_SPOT_REST_URL, INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION=$INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS=$LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, LAST_SEEN_ON_BLOB_TS=$LAST_SEEN_ON_BLOB_TS, LAST_SEEN_ON_FIX_TS=$LAST_SEEN_ON_FIX_TS, LAST_SEEN_ON_HARDCODED_TS=$LAST_SEEN_ON_HARDCODED_TS, LAST_SEEN_ON_INDEX_COMPOSITION_TS=$LAST_SEEN_ON_INDEX_COMPOSITION_TS, LAST_SEEN_ON_NSQ_TS=$LAST_SEEN_ON_NSQ_TS, LAST_SEEN_ON_POLLING_TS=$LAST_SEEN_ON_POLLING_TS, LAST_SEEN_ON_STREAMING_TS=$LAST_SEEN_ON_STREAMING_TS, LAST_TRADE_SPOT_FROM_BACKFILL=$LAST_TRADE_SPOT_FROM_BACKFILL, LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL=$LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, LAST_TRADE_SPOT_FROM_BLOB=$LAST_TRADE_SPOT_FROM_BLOB, LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL=$LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL, LAST_TRADE_SPOT_FROM_CALCULATED=$LAST_TRADE_SPOT_FROM_CALCULATED, LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL=$LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, LAST_TRADE_SPOT_FROM_FIX=$LAST_TRADE_SPOT_FROM_FIX, LAST_TRADE_SPOT_FROM_FIX_EXTERNAL=$LAST_TRADE_SPOT_FROM_FIX_EXTERNAL, LAST_TRADE_SPOT_FROM_GO=$LAST_TRADE_SPOT_FROM_GO, LAST_TRADE_SPOT_FROM_GO_EXTERNAL=$LAST_TRADE_SPOT_FROM_GO_EXTERNAL, LAST_TRADE_SPOT_FROM_POLLING=$LAST_TRADE_SPOT_FROM_POLLING, LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL=$LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL, LAST_TRADE_SPOT_FROM_STREAMING=$LAST_TRADE_SPOT_FROM_STREAMING, LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL=$LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, METADATA_VERSION=$METADATA_VERSION, PROCESSING_TRADES_FROM_BLOB_STATUS=$PROCESSING_TRADES_FROM_BLOB_STATUS, TOTAL_TRADES_SPOT=$TOTAL_TRADES_SPOT, UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA=$UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.FIRST_SEEN_ON_BLOB_TS != null) {
      json[r'FIRST_SEEN_ON_BLOB_TS'] = this.FIRST_SEEN_ON_BLOB_TS;
    } else {
      json[r'FIRST_SEEN_ON_BLOB_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_FIX_TS != null) {
      json[r'FIRST_SEEN_ON_FIX_TS'] = this.FIRST_SEEN_ON_FIX_TS;
    } else {
      json[r'FIRST_SEEN_ON_FIX_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_HARDCODED_TS != null) {
      json[r'FIRST_SEEN_ON_HARDCODED_TS'] = this.FIRST_SEEN_ON_HARDCODED_TS;
    } else {
      json[r'FIRST_SEEN_ON_HARDCODED_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_INDEX_COMPOSITION_TS != null) {
      json[r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS'] = this.FIRST_SEEN_ON_INDEX_COMPOSITION_TS;
    } else {
      json[r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_NSQ_TS != null) {
      json[r'FIRST_SEEN_ON_NSQ_TS'] = this.FIRST_SEEN_ON_NSQ_TS;
    } else {
      json[r'FIRST_SEEN_ON_NSQ_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_POLLING_TS != null) {
      json[r'FIRST_SEEN_ON_POLLING_TS'] = this.FIRST_SEEN_ON_POLLING_TS;
    } else {
      json[r'FIRST_SEEN_ON_POLLING_TS'] = null;
    }
    if (this.FIRST_SEEN_ON_STREAMING_TS != null) {
      json[r'FIRST_SEEN_ON_STREAMING_TS'] = this.FIRST_SEEN_ON_STREAMING_TS;
    } else {
      json[r'FIRST_SEEN_ON_STREAMING_TS'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_BACKFILL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_BACKFILL'] = this.FIRST_TRADE_SPOT_FROM_BACKFILL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_BACKFILL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_BLOB != null) {
      json[r'FIRST_TRADE_SPOT_FROM_BLOB'] = this.FIRST_TRADE_SPOT_FROM_BLOB;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_BLOB'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_CALCULATED != null) {
      json[r'FIRST_TRADE_SPOT_FROM_CALCULATED'] = this.FIRST_TRADE_SPOT_FROM_CALCULATED;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_CALCULATED'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_FIX != null) {
      json[r'FIRST_TRADE_SPOT_FROM_FIX'] = this.FIRST_TRADE_SPOT_FROM_FIX;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_FIX'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_GO != null) {
      json[r'FIRST_TRADE_SPOT_FROM_GO'] = this.FIRST_TRADE_SPOT_FROM_GO;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_GO'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_POLLING != null) {
      json[r'FIRST_TRADE_SPOT_FROM_POLLING'] = this.FIRST_TRADE_SPOT_FROM_POLLING;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_POLLING'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_STREAMING != null) {
      json[r'FIRST_TRADE_SPOT_FROM_STREAMING'] = this.FIRST_TRADE_SPOT_FROM_STREAMING;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_STREAMING'] = null;
    }
    if (this.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != null) {
      json[r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'] = this.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    } else {
      json[r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'] = null;
    }
    if (this.HOST_MIGRATION_DESTINATION != null) {
      json[r'HOST_MIGRATION_DESTINATION'] = this.HOST_MIGRATION_DESTINATION;
    } else {
      json[r'HOST_MIGRATION_DESTINATION'] = null;
    }
    if (this.HOST_MIGRATION_SOURCE != null) {
      json[r'HOST_MIGRATION_SOURCE'] = this.HOST_MIGRATION_SOURCE;
    } else {
      json[r'HOST_MIGRATION_SOURCE'] = null;
    }
    if (this.HOST_MIGRATION_STATUS != null) {
      json[r'HOST_MIGRATION_STATUS'] = this.HOST_MIGRATION_STATUS;
    } else {
      json[r'HOST_MIGRATION_STATUS'] = null;
    }
    if (this.INSTRUMENT != null) {
      json[r'INSTRUMENT'] = this.INSTRUMENT;
    } else {
      json[r'INSTRUMENT'] = null;
    }
    if (this.INSTRUMENT_EXTERNAL_DATA != null) {
      json[r'INSTRUMENT_EXTERNAL_DATA'] = this.INSTRUMENT_EXTERNAL_DATA;
    } else {
      json[r'INSTRUMENT_EXTERNAL_DATA'] = null;
    }
      json[r'INSTRUMENT_MAPPING'] = this.INSTRUMENT_MAPPING;
      json[r'INSTRUMENT_MAPPING_HISTORY'] = this.INSTRUMENT_MAPPING_HISTORY;
    if (this.INSTRUMENT_SOURCE_BACKFILL != null) {
      json[r'INSTRUMENT_SOURCE_BACKFILL'] = this.INSTRUMENT_SOURCE_BACKFILL;
    } else {
      json[r'INSTRUMENT_SOURCE_BACKFILL'] = null;
    }
    if (this.INSTRUMENT_SOURCE_BLOB != null) {
      json[r'INSTRUMENT_SOURCE_BLOB'] = this.INSTRUMENT_SOURCE_BLOB;
    } else {
      json[r'INSTRUMENT_SOURCE_BLOB'] = null;
    }
    if (this.INSTRUMENT_SOURCE_CALCULATED != null) {
      json[r'INSTRUMENT_SOURCE_CALCULATED'] = this.INSTRUMENT_SOURCE_CALCULATED;
    } else {
      json[r'INSTRUMENT_SOURCE_CALCULATED'] = null;
    }
    if (this.INSTRUMENT_SOURCE_FIX != null) {
      json[r'INSTRUMENT_SOURCE_FIX'] = this.INSTRUMENT_SOURCE_FIX;
    } else {
      json[r'INSTRUMENT_SOURCE_FIX'] = null;
    }
    if (this.INSTRUMENT_SOURCE_GO != null) {
      json[r'INSTRUMENT_SOURCE_GO'] = this.INSTRUMENT_SOURCE_GO;
    } else {
      json[r'INSTRUMENT_SOURCE_GO'] = null;
    }
    if (this.INSTRUMENT_SOURCE_POLLING != null) {
      json[r'INSTRUMENT_SOURCE_POLLING'] = this.INSTRUMENT_SOURCE_POLLING;
    } else {
      json[r'INSTRUMENT_SOURCE_POLLING'] = null;
    }
    if (this.INSTRUMENT_SOURCE_STREAMING != null) {
      json[r'INSTRUMENT_SOURCE_STREAMING'] = this.INSTRUMENT_SOURCE_STREAMING;
    } else {
      json[r'INSTRUMENT_SOURCE_STREAMING'] = null;
    }
      json[r'INSTRUMENT_STATUS'] = this.INSTRUMENT_STATUS;
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST'] = this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS != null) {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS'] = this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS'] = null;
    }
      json[r'INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION'] = this.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
    if (this.INSTRUMENT_TRADE_SPOT_REST_URI != null) {
      json[r'INSTRUMENT_TRADE_SPOT_REST_URI'] = this.INSTRUMENT_TRADE_SPOT_REST_URI;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_REST_URI'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_REST_URL != null) {
      json[r'INSTRUMENT_TRADE_SPOT_REST_URL'] = this.INSTRUMENT_TRADE_SPOT_REST_URL;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_REST_URL'] = null;
    }
    if (this.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION != null) {
      json[r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION'] = this.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
    } else {
      json[r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION'] = null;
    }
    if (this.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS != null) {
      json[r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS'] = this.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
    } else {
      json[r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS'] = null;
    }
    if (this.LAST_SEEN_ON_BLOB_TS != null) {
      json[r'LAST_SEEN_ON_BLOB_TS'] = this.LAST_SEEN_ON_BLOB_TS;
    } else {
      json[r'LAST_SEEN_ON_BLOB_TS'] = null;
    }
    if (this.LAST_SEEN_ON_FIX_TS != null) {
      json[r'LAST_SEEN_ON_FIX_TS'] = this.LAST_SEEN_ON_FIX_TS;
    } else {
      json[r'LAST_SEEN_ON_FIX_TS'] = null;
    }
    if (this.LAST_SEEN_ON_HARDCODED_TS != null) {
      json[r'LAST_SEEN_ON_HARDCODED_TS'] = this.LAST_SEEN_ON_HARDCODED_TS;
    } else {
      json[r'LAST_SEEN_ON_HARDCODED_TS'] = null;
    }
    if (this.LAST_SEEN_ON_INDEX_COMPOSITION_TS != null) {
      json[r'LAST_SEEN_ON_INDEX_COMPOSITION_TS'] = this.LAST_SEEN_ON_INDEX_COMPOSITION_TS;
    } else {
      json[r'LAST_SEEN_ON_INDEX_COMPOSITION_TS'] = null;
    }
    if (this.LAST_SEEN_ON_NSQ_TS != null) {
      json[r'LAST_SEEN_ON_NSQ_TS'] = this.LAST_SEEN_ON_NSQ_TS;
    } else {
      json[r'LAST_SEEN_ON_NSQ_TS'] = null;
    }
    if (this.LAST_SEEN_ON_POLLING_TS != null) {
      json[r'LAST_SEEN_ON_POLLING_TS'] = this.LAST_SEEN_ON_POLLING_TS;
    } else {
      json[r'LAST_SEEN_ON_POLLING_TS'] = null;
    }
    if (this.LAST_SEEN_ON_STREAMING_TS != null) {
      json[r'LAST_SEEN_ON_STREAMING_TS'] = this.LAST_SEEN_ON_STREAMING_TS;
    } else {
      json[r'LAST_SEEN_ON_STREAMING_TS'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_BACKFILL != null) {
      json[r'LAST_TRADE_SPOT_FROM_BACKFILL'] = this.LAST_TRADE_SPOT_FROM_BACKFILL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_BACKFILL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_BLOB != null) {
      json[r'LAST_TRADE_SPOT_FROM_BLOB'] = this.LAST_TRADE_SPOT_FROM_BLOB;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_BLOB'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_CALCULATED != null) {
      json[r'LAST_TRADE_SPOT_FROM_CALCULATED'] = this.LAST_TRADE_SPOT_FROM_CALCULATED;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_CALCULATED'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_FIX != null) {
      json[r'LAST_TRADE_SPOT_FROM_FIX'] = this.LAST_TRADE_SPOT_FROM_FIX;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_FIX'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_GO != null) {
      json[r'LAST_TRADE_SPOT_FROM_GO'] = this.LAST_TRADE_SPOT_FROM_GO;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_GO'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_GO_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_GO_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_POLLING != null) {
      json[r'LAST_TRADE_SPOT_FROM_POLLING'] = this.LAST_TRADE_SPOT_FROM_POLLING;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_POLLING'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_STREAMING != null) {
      json[r'LAST_TRADE_SPOT_FROM_STREAMING'] = this.LAST_TRADE_SPOT_FROM_STREAMING;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_STREAMING'] = null;
    }
    if (this.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != null) {
      json[r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'] = this.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    } else {
      json[r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'] = null;
    }
      json[r'METADATA_VERSION'] = this.METADATA_VERSION;
    if (this.PROCESSING_TRADES_FROM_BLOB_STATUS != null) {
      json[r'PROCESSING_TRADES_FROM_BLOB_STATUS'] = this.PROCESSING_TRADES_FROM_BLOB_STATUS;
    } else {
      json[r'PROCESSING_TRADES_FROM_BLOB_STATUS'] = null;
    }
    if (this.TOTAL_TRADES_SPOT != null) {
      json[r'TOTAL_TRADES_SPOT'] = this.TOTAL_TRADES_SPOT;
    } else {
      json[r'TOTAL_TRADES_SPOT'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA'] = null;
    }
    if (this.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA != null) {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA'] = this.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
    } else {
      json[r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTMETADATA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTMETADATA? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTMETADATA[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTMETADATA[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTMETADATA(
        FIRST_SEEN_ON_BLOB_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_BLOB_TS'),
        FIRST_SEEN_ON_FIX_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_FIX_TS'),
        FIRST_SEEN_ON_HARDCODED_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_HARDCODED_TS'),
        FIRST_SEEN_ON_INDEX_COMPOSITION_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS'),
        FIRST_SEEN_ON_NSQ_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_NSQ_TS'),
        FIRST_SEEN_ON_POLLING_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_POLLING_TS'),
        FIRST_SEEN_ON_STREAMING_TS: mapValueOfType<int>(json, r'FIRST_SEEN_ON_STREAMING_TS'),
        FIRST_TRADE_SPOT_FROM_BACKFILL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_BACKFILL'),
        FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_BLOB: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_BLOB'),
        FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_CALCULATED: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_CALCULATED'),
        FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_FIX: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_FIX'),
        FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_GO: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_GO'),
        FIRST_TRADE_SPOT_FROM_GO_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_POLLING: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_POLLING'),
        FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL'),
        FIRST_TRADE_SPOT_FROM_STREAMING: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_STREAMING'),
        FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: mapValueOfType<Object>(json, r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'),
        HOST_MIGRATION_DESTINATION: mapValueOfType<String>(json, r'HOST_MIGRATION_DESTINATION'),
        HOST_MIGRATION_SOURCE: mapValueOfType<String>(json, r'HOST_MIGRATION_SOURCE'),
        HOST_MIGRATION_STATUS: mapValueOfType<String>(json, r'HOST_MIGRATION_STATUS'),
        INSTRUMENT: mapValueOfType<String>(json, r'INSTRUMENT'),
        INSTRUMENT_EXTERNAL_DATA: mapValueOfType<String>(json, r'INSTRUMENT_EXTERNAL_DATA'),
        INSTRUMENT_MAPPING: mapValueOfType<Object>(json, r'INSTRUMENT_MAPPING') ?? {},
        INSTRUMENT_MAPPING_HISTORY: json[r'INSTRUMENT_MAPPING_HISTORY'] is List
            ? (json[r'INSTRUMENT_MAPPING_HISTORY'] as List).cast<String>()
            : const [],
        INSTRUMENT_SOURCE_BACKFILL: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_BACKFILL'),
        INSTRUMENT_SOURCE_BLOB: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_BLOB'),
        INSTRUMENT_SOURCE_CALCULATED: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_CALCULATED'),
        INSTRUMENT_SOURCE_FIX: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_FIX'),
        INSTRUMENT_SOURCE_GO: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_GO'),
        INSTRUMENT_SOURCE_POLLING: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_POLLING'),
        INSTRUMENT_SOURCE_STREAMING: mapValueOfType<String>(json, r'INSTRUMENT_SOURCE_STREAMING'),
        INSTRUMENT_STATUS: mapValueOfType<String>(json, r'INSTRUMENT_STATUS') ?? 'ACTIVE',
        INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST: mapValueOfType<Object>(json, r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST'),
        INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS'),
        INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS: mapValueOfType<int>(json, r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS'),
        INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION: mapValueOfType<bool>(json, r'INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION') ?? false,
        INSTRUMENT_TRADE_SPOT_REST_URI: mapValueOfType<String>(json, r'INSTRUMENT_TRADE_SPOT_REST_URI'),
        INSTRUMENT_TRADE_SPOT_REST_URL: mapValueOfType<String>(json, r'INSTRUMENT_TRADE_SPOT_REST_URL'),
        INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION: mapValueOfType<String>(json, r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION'),
        LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS: mapValueOfType<int>(json, r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS'),
        LAST_SEEN_ON_BLOB_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_BLOB_TS'),
        LAST_SEEN_ON_FIX_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_FIX_TS'),
        LAST_SEEN_ON_HARDCODED_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_HARDCODED_TS'),
        LAST_SEEN_ON_INDEX_COMPOSITION_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_INDEX_COMPOSITION_TS'),
        LAST_SEEN_ON_NSQ_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_NSQ_TS'),
        LAST_SEEN_ON_POLLING_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_POLLING_TS'),
        LAST_SEEN_ON_STREAMING_TS: mapValueOfType<int>(json, r'LAST_SEEN_ON_STREAMING_TS'),
        LAST_TRADE_SPOT_FROM_BACKFILL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_BACKFILL'),
        LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_BLOB: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_BLOB'),
        LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_CALCULATED: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_CALCULATED'),
        LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_FIX: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_FIX'),
        LAST_TRADE_SPOT_FROM_FIX_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_GO: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_GO'),
        LAST_TRADE_SPOT_FROM_GO_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_POLLING: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_POLLING'),
        LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL'),
        LAST_TRADE_SPOT_FROM_STREAMING: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_STREAMING'),
        LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: mapValueOfType<Object>(json, r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL'),
        METADATA_VERSION: mapValueOfType<int>(json, r'METADATA_VERSION') ?? 4,
        PROCESSING_TRADES_FROM_BLOB_STATUS: mapValueOfType<String>(json, r'PROCESSING_TRADES_FROM_BLOB_STATUS'),
        TOTAL_TRADES_SPOT: mapValueOfType<int>(json, r'TOTAL_TRADES_SPOT'),
        UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA'),
        UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA: mapValueOfType<Object>(json, r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA'),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTMETADATA>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTMETADATA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTMETADATA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTMETADATA> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTMETADATA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMETADATA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTMETADATA-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTMETADATA>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTMETADATA>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMETADATA.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

