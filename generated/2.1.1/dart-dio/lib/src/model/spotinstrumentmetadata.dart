//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotinstrumentmetadata.g.dart';

/// SPOTINSTRUMENTMETADATA
///
/// Properties:
/// * [FIRST_SEEN_ON_BLOB_TS] - This is the first time instrument was seen on instrumentListSourceType BLOB.
/// * [FIRST_SEEN_ON_FIX_TS] - This is the first time instrument was seen on instrumentListSourceType FIX.
/// * [FIRST_SEEN_ON_HARDCODED_TS] - This is the first time instrument was seen on instrumentListSourceType HARDCODED.
/// * [FIRST_SEEN_ON_INDEX_COMPOSITION_TS] - This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
/// * [FIRST_SEEN_ON_NSQ_TS] - This is the first time instrument was seen on instrumentListSourceType NSQ.
/// * [FIRST_SEEN_ON_POLLING_TS] - This is the first time instrument was seen on instrumentListSourceType POLLING.
/// * [FIRST_SEEN_ON_STREAMING_TS] - This is the first time instrument was seen on instrumentListSourceType STREAMING.
/// * [FIRST_TRADE_SPOT_FROM_BACKFILL] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_BLOB] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_CALCULATED] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_FIX] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_GO] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_GO_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_POLLING] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [FIRST_TRADE_SPOT_FROM_STREAMING] - This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL] - This is the first TRADE_SPOT that we have seen on the specific source type in external format.
/// * [HOST_MIGRATION_DESTINATION] - The migration destination vm hostname.
/// * [HOST_MIGRATION_SOURCE] - The migration source vm hostname.
/// * [HOST_MIGRATION_STATUS] - The migration status of the symbol, we only poll / stream / connect empty or SETTLED
/// * [INSTRUMENT] - The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
/// * [INSTRUMENT_EXTERNAL_DATA] - The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
/// * [INSTRUMENT_MAPPING] - The current mapping information for this instrument
/// * [INSTRUMENT_MAPPING_HISTORY] - Historical mapping information for this instrument
/// * [INSTRUMENT_SOURCE_BACKFILL] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_BLOB] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_CALCULATED] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_FIX] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_GO] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_POLLING] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_SOURCE_STREAMING] - Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
/// * [INSTRUMENT_STATUS] - The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST] - The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS] - The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS] - The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
/// * [INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS] - The next time we expect to make a request for TRADE_SPOT on this instrument.
/// * [INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION] - This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
/// * [INSTRUMENT_TRADE_SPOT_REST_URI] - This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
/// * [INSTRUMENT_TRADE_SPOT_REST_URL] - The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
/// * [INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION] - This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
/// * [LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS] - The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
/// * [LAST_SEEN_ON_BLOB_TS] - This is the last time instrument was seen on instrumentListSourceType BLOB.
/// * [LAST_SEEN_ON_FIX_TS] - This is the last time instrument was seen on instrumentListSourceType FIX.
/// * [LAST_SEEN_ON_HARDCODED_TS] - This is the last time instrument was seen on instrumentListSourceType HARDCODED.
/// * [LAST_SEEN_ON_INDEX_COMPOSITION_TS] - This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
/// * [LAST_SEEN_ON_NSQ_TS] - This is the last time instrument was seen on instrumentListSourceType NSQ.
/// * [LAST_SEEN_ON_POLLING_TS] - This is the last time instrument was seen on instrumentListSourceType POLLING.
/// * [LAST_SEEN_ON_STREAMING_TS] - This is the last time instrument was seen on instrumentListSourceType STREAMING.
/// * [LAST_TRADE_SPOT_FROM_BACKFILL] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_BLOB] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_CALCULATED] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_FIX] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_FIX_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_GO] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_GO_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_POLLING] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [LAST_TRADE_SPOT_FROM_STREAMING] - This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
/// * [LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL] - This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
/// * [METADATA_VERSION] - The version of metadata, used for version conversions/migrates.
/// * [PROCESSING_TRADES_FROM_BLOB_STATUS] - This states the status of blob migration for this intrument on this exchange.
/// * [TOTAL_TRADES_SPOT] - This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
/// * [UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA] - This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
@BuiltValue()
abstract class SPOTINSTRUMENTMETADATA implements Built<SPOTINSTRUMENTMETADATA, SPOTINSTRUMENTMETADATABuilder> {
  /// This is the first time instrument was seen on instrumentListSourceType BLOB.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_BLOB_TS')
  int? get FIRST_SEEN_ON_BLOB_TS;

  /// This is the first time instrument was seen on instrumentListSourceType FIX.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_FIX_TS')
  int? get FIRST_SEEN_ON_FIX_TS;

  /// This is the first time instrument was seen on instrumentListSourceType HARDCODED.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_HARDCODED_TS')
  int? get FIRST_SEEN_ON_HARDCODED_TS;

  /// This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS')
  int? get FIRST_SEEN_ON_INDEX_COMPOSITION_TS;

  /// This is the first time instrument was seen on instrumentListSourceType NSQ.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_NSQ_TS')
  int? get FIRST_SEEN_ON_NSQ_TS;

  /// This is the first time instrument was seen on instrumentListSourceType POLLING.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_POLLING_TS')
  int? get FIRST_SEEN_ON_POLLING_TS;

  /// This is the first time instrument was seen on instrumentListSourceType STREAMING.
  @BuiltValueField(wireName: r'FIRST_SEEN_ON_STREAMING_TS')
  int? get FIRST_SEEN_ON_STREAMING_TS;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_BACKFILL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_BACKFILL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_BLOB')
  JsonObject? get FIRST_TRADE_SPOT_FROM_BLOB;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_CALCULATED')
  JsonObject? get FIRST_TRADE_SPOT_FROM_CALCULATED;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_FIX')
  JsonObject? get FIRST_TRADE_SPOT_FROM_FIX;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_GO')
  JsonObject? get FIRST_TRADE_SPOT_FROM_GO;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_POLLING')
  JsonObject? get FIRST_TRADE_SPOT_FROM_POLLING;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_STREAMING')
  JsonObject? get FIRST_TRADE_SPOT_FROM_STREAMING;

  /// This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  @BuiltValueField(wireName: r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL')
  JsonObject? get FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  /// The migration destination vm hostname.
  @BuiltValueField(wireName: r'HOST_MIGRATION_DESTINATION')
  String? get HOST_MIGRATION_DESTINATION;

  /// The migration source vm hostname.
  @BuiltValueField(wireName: r'HOST_MIGRATION_SOURCE')
  String? get HOST_MIGRATION_SOURCE;

  /// The migration status of the symbol, we only poll / stream / connect empty or SETTLED
  @BuiltValueField(wireName: r'HOST_MIGRATION_STATUS')
  String? get HOST_MIGRATION_STATUS;

  /// The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
  @BuiltValueField(wireName: r'INSTRUMENT')
  String? get INSTRUMENT;

  /// The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
  @BuiltValueField(wireName: r'INSTRUMENT_EXTERNAL_DATA')
  String? get INSTRUMENT_EXTERNAL_DATA;

  /// The current mapping information for this instrument
  @BuiltValueField(wireName: r'INSTRUMENT_MAPPING')
  JsonObject? get INSTRUMENT_MAPPING;

  /// Historical mapping information for this instrument
  @BuiltValueField(wireName: r'INSTRUMENT_MAPPING_HISTORY')
  BuiltList<String>? get INSTRUMENT_MAPPING_HISTORY;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_BACKFILL')
  String? get INSTRUMENT_SOURCE_BACKFILL;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_BLOB')
  String? get INSTRUMENT_SOURCE_BLOB;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_CALCULATED')
  String? get INSTRUMENT_SOURCE_CALCULATED;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_FIX')
  String? get INSTRUMENT_SOURCE_FIX;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_GO')
  String? get INSTRUMENT_SOURCE_GO;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_POLLING')
  String? get INSTRUMENT_SOURCE_POLLING;

  /// Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  @BuiltValueField(wireName: r'INSTRUMENT_SOURCE_STREAMING')
  String? get INSTRUMENT_SOURCE_STREAMING;

  /// The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
  @BuiltValueField(wireName: r'INSTRUMENT_STATUS')
  String? get INSTRUMENT_STATUS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;

  /// The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST')
  JsonObject? get INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;

  /// The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;

  /// The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;

  /// The next time we expect to make a request for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS')
  int? get INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;

  /// This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION')
  bool? get INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;

  /// This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_REST_URI')
  String? get INSTRUMENT_TRADE_SPOT_REST_URI;

  /// The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_REST_URL')
  String? get INSTRUMENT_TRADE_SPOT_REST_URL;

  /// This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
  @BuiltValueField(wireName: r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION')
  String? get INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;

  /// The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
  @BuiltValueField(wireName: r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS')
  int? get LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;

  /// This is the last time instrument was seen on instrumentListSourceType BLOB.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_BLOB_TS')
  int? get LAST_SEEN_ON_BLOB_TS;

  /// This is the last time instrument was seen on instrumentListSourceType FIX.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_FIX_TS')
  int? get LAST_SEEN_ON_FIX_TS;

  /// This is the last time instrument was seen on instrumentListSourceType HARDCODED.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_HARDCODED_TS')
  int? get LAST_SEEN_ON_HARDCODED_TS;

  /// This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_INDEX_COMPOSITION_TS')
  int? get LAST_SEEN_ON_INDEX_COMPOSITION_TS;

  /// This is the last time instrument was seen on instrumentListSourceType NSQ.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_NSQ_TS')
  int? get LAST_SEEN_ON_NSQ_TS;

  /// This is the last time instrument was seen on instrumentListSourceType POLLING.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_POLLING_TS')
  int? get LAST_SEEN_ON_POLLING_TS;

  /// This is the last time instrument was seen on instrumentListSourceType STREAMING.
  @BuiltValueField(wireName: r'LAST_SEEN_ON_STREAMING_TS')
  int? get LAST_SEEN_ON_STREAMING_TS;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_BACKFILL')
  JsonObject? get LAST_TRADE_SPOT_FROM_BACKFILL;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_BLOB')
  JsonObject? get LAST_TRADE_SPOT_FROM_BLOB;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_CALCULATED')
  JsonObject? get LAST_TRADE_SPOT_FROM_CALCULATED;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_FIX')
  JsonObject? get LAST_TRADE_SPOT_FROM_FIX;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_GO')
  JsonObject? get LAST_TRADE_SPOT_FROM_GO;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_GO_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_POLLING')
  JsonObject? get LAST_TRADE_SPOT_FROM_POLLING;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  /// This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_STREAMING')
  JsonObject? get LAST_TRADE_SPOT_FROM_STREAMING;

  /// This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  @BuiltValueField(wireName: r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL')
  JsonObject? get LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  /// The version of metadata, used for version conversions/migrates.
  @BuiltValueField(wireName: r'METADATA_VERSION')
  int? get METADATA_VERSION;

  /// This states the status of blob migration for this intrument on this exchange.
  @BuiltValueField(wireName: r'PROCESSING_TRADES_FROM_BLOB_STATUS')
  String? get PROCESSING_TRADES_FROM_BLOB_STATUS;

  /// This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
  @BuiltValueField(wireName: r'TOTAL_TRADES_SPOT')
  int? get TOTAL_TRADES_SPOT;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;

  /// This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  @BuiltValueField(wireName: r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA')
  JsonObject? get UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;

  SPOTINSTRUMENTMETADATA._();

  factory SPOTINSTRUMENTMETADATA([void updates(SPOTINSTRUMENTMETADATABuilder b)]) = _$SPOTINSTRUMENTMETADATA;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPOTINSTRUMENTMETADATABuilder b) => b
      ..INSTRUMENT_MAPPING = {}
      ..INSTRUMENT_MAPPING_HISTORY = ListBuilder()
      ..INSTRUMENT_STATUS = 'ACTIVE'
      ..INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = false
      ..METADATA_VERSION = 4;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPOTINSTRUMENTMETADATA> get serializer => _$SPOTINSTRUMENTMETADATASerializer();
}

class _$SPOTINSTRUMENTMETADATASerializer implements PrimitiveSerializer<SPOTINSTRUMENTMETADATA> {
  @override
  final Iterable<Type> types = const [SPOTINSTRUMENTMETADATA, _$SPOTINSTRUMENTMETADATA];

  @override
  final String wireName = r'SPOTINSTRUMENTMETADATA';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPOTINSTRUMENTMETADATA object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.FIRST_SEEN_ON_BLOB_TS != null) {
      yield r'FIRST_SEEN_ON_BLOB_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_BLOB_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_FIX_TS != null) {
      yield r'FIRST_SEEN_ON_FIX_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_FIX_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_HARDCODED_TS != null) {
      yield r'FIRST_SEEN_ON_HARDCODED_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_HARDCODED_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_INDEX_COMPOSITION_TS != null) {
      yield r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_INDEX_COMPOSITION_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_NSQ_TS != null) {
      yield r'FIRST_SEEN_ON_NSQ_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_NSQ_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_POLLING_TS != null) {
      yield r'FIRST_SEEN_ON_POLLING_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_POLLING_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_SEEN_ON_STREAMING_TS != null) {
      yield r'FIRST_SEEN_ON_STREAMING_TS';
      yield serializers.serialize(
        object.FIRST_SEEN_ON_STREAMING_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_BACKFILL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_BACKFILL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_BACKFILL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_BLOB != null) {
      yield r'FIRST_TRADE_SPOT_FROM_BLOB';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_BLOB,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_CALCULATED != null) {
      yield r'FIRST_TRADE_SPOT_FROM_CALCULATED';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_CALCULATED,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_FIX != null) {
      yield r'FIRST_TRADE_SPOT_FROM_FIX';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_FIX,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_GO != null) {
      yield r'FIRST_TRADE_SPOT_FROM_GO';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_GO,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_POLLING != null) {
      yield r'FIRST_TRADE_SPOT_FROM_POLLING';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_POLLING,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_STREAMING != null) {
      yield r'FIRST_TRADE_SPOT_FROM_STREAMING';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_STREAMING,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != null) {
      yield r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL';
      yield serializers.serialize(
        object.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.HOST_MIGRATION_DESTINATION != null) {
      yield r'HOST_MIGRATION_DESTINATION';
      yield serializers.serialize(
        object.HOST_MIGRATION_DESTINATION,
        specifiedType: const FullType(String),
      );
    }
    if (object.HOST_MIGRATION_SOURCE != null) {
      yield r'HOST_MIGRATION_SOURCE';
      yield serializers.serialize(
        object.HOST_MIGRATION_SOURCE,
        specifiedType: const FullType(String),
      );
    }
    if (object.HOST_MIGRATION_STATUS != null) {
      yield r'HOST_MIGRATION_STATUS';
      yield serializers.serialize(
        object.HOST_MIGRATION_STATUS,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT != null) {
      yield r'INSTRUMENT';
      yield serializers.serialize(
        object.INSTRUMENT,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_EXTERNAL_DATA != null) {
      yield r'INSTRUMENT_EXTERNAL_DATA';
      yield serializers.serialize(
        object.INSTRUMENT_EXTERNAL_DATA,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_MAPPING != null) {
      yield r'INSTRUMENT_MAPPING';
      yield serializers.serialize(
        object.INSTRUMENT_MAPPING,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_MAPPING_HISTORY != null) {
      yield r'INSTRUMENT_MAPPING_HISTORY';
      yield serializers.serialize(
        object.INSTRUMENT_MAPPING_HISTORY,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.INSTRUMENT_SOURCE_BACKFILL != null) {
      yield r'INSTRUMENT_SOURCE_BACKFILL';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_BACKFILL,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_BLOB != null) {
      yield r'INSTRUMENT_SOURCE_BLOB';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_BLOB,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_CALCULATED != null) {
      yield r'INSTRUMENT_SOURCE_CALCULATED';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_CALCULATED,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_FIX != null) {
      yield r'INSTRUMENT_SOURCE_FIX';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_FIX,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_GO != null) {
      yield r'INSTRUMENT_SOURCE_GO';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_GO,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_POLLING != null) {
      yield r'INSTRUMENT_SOURCE_POLLING';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_POLLING,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_SOURCE_STREAMING != null) {
      yield r'INSTRUMENT_SOURCE_STREAMING';
      yield serializers.serialize(
        object.INSTRUMENT_SOURCE_STREAMING,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_STATUS != null) {
      yield r'INSTRUMENT_STATUS';
      yield serializers.serialize(
        object.INSTRUMENT_STATUS,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS != null) {
      yield r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION != null) {
      yield r'INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION,
        specifiedType: const FullType(bool),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_REST_URI != null) {
      yield r'INSTRUMENT_TRADE_SPOT_REST_URI';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_REST_URI,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_REST_URL != null) {
      yield r'INSTRUMENT_TRADE_SPOT_REST_URL';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_REST_URL,
        specifiedType: const FullType(String),
      );
    }
    if (object.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION != null) {
      yield r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION';
      yield serializers.serialize(
        object.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION,
        specifiedType: const FullType(String),
      );
    }
    if (object.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS != null) {
      yield r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS';
      yield serializers.serialize(
        object.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_BLOB_TS != null) {
      yield r'LAST_SEEN_ON_BLOB_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_BLOB_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_FIX_TS != null) {
      yield r'LAST_SEEN_ON_FIX_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_FIX_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_HARDCODED_TS != null) {
      yield r'LAST_SEEN_ON_HARDCODED_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_HARDCODED_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_INDEX_COMPOSITION_TS != null) {
      yield r'LAST_SEEN_ON_INDEX_COMPOSITION_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_INDEX_COMPOSITION_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_NSQ_TS != null) {
      yield r'LAST_SEEN_ON_NSQ_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_NSQ_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_POLLING_TS != null) {
      yield r'LAST_SEEN_ON_POLLING_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_POLLING_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_SEEN_ON_STREAMING_TS != null) {
      yield r'LAST_SEEN_ON_STREAMING_TS';
      yield serializers.serialize(
        object.LAST_SEEN_ON_STREAMING_TS,
        specifiedType: const FullType(int),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_BACKFILL != null) {
      yield r'LAST_TRADE_SPOT_FROM_BACKFILL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_BACKFILL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_BLOB != null) {
      yield r'LAST_TRADE_SPOT_FROM_BLOB';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_BLOB,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_CALCULATED != null) {
      yield r'LAST_TRADE_SPOT_FROM_CALCULATED';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_CALCULATED,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_FIX != null) {
      yield r'LAST_TRADE_SPOT_FROM_FIX';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_FIX,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_GO != null) {
      yield r'LAST_TRADE_SPOT_FROM_GO';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_GO,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_GO_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_GO_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_POLLING != null) {
      yield r'LAST_TRADE_SPOT_FROM_POLLING';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_POLLING,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_STREAMING != null) {
      yield r'LAST_TRADE_SPOT_FROM_STREAMING';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_STREAMING,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != null) {
      yield r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL';
      yield serializers.serialize(
        object.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.METADATA_VERSION != null) {
      yield r'METADATA_VERSION';
      yield serializers.serialize(
        object.METADATA_VERSION,
        specifiedType: const FullType(int),
      );
    }
    if (object.PROCESSING_TRADES_FROM_BLOB_STATUS != null) {
      yield r'PROCESSING_TRADES_FROM_BLOB_STATUS';
      yield serializers.serialize(
        object.PROCESSING_TRADES_FROM_BLOB_STATUS,
        specifiedType: const FullType(String),
      );
    }
    if (object.TOTAL_TRADES_SPOT != null) {
      yield r'TOTAL_TRADES_SPOT';
      yield serializers.serialize(
        object.TOTAL_TRADES_SPOT,
        specifiedType: const FullType(int),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA != null) {
      yield r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA';
      yield serializers.serialize(
        object.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SPOTINSTRUMENTMETADATA object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPOTINSTRUMENTMETADATABuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'FIRST_SEEN_ON_BLOB_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_BLOB_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_FIX_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_FIX_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_HARDCODED_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_HARDCODED_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_INDEX_COMPOSITION_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_INDEX_COMPOSITION_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_NSQ_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_NSQ_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_POLLING_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_POLLING_TS = valueDes;
          break;
        case r'FIRST_SEEN_ON_STREAMING_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.FIRST_SEEN_ON_STREAMING_TS = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_BACKFILL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_BACKFILL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_BLOB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_BLOB = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_CALCULATED':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_CALCULATED = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_FIX':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_FIX = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_GO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_GO = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_GO_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_POLLING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_POLLING = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_STREAMING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_STREAMING = valueDes;
          break;
        case r'FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = valueDes;
          break;
        case r'HOST_MIGRATION_DESTINATION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.HOST_MIGRATION_DESTINATION = valueDes;
          break;
        case r'HOST_MIGRATION_SOURCE':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.HOST_MIGRATION_SOURCE = valueDes;
          break;
        case r'HOST_MIGRATION_STATUS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.HOST_MIGRATION_STATUS = valueDes;
          break;
        case r'INSTRUMENT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT = valueDes;
          break;
        case r'INSTRUMENT_EXTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_EXTERNAL_DATA = valueDes;
          break;
        case r'INSTRUMENT_MAPPING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_MAPPING = valueDes;
          break;
        case r'INSTRUMENT_MAPPING_HISTORY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.INSTRUMENT_MAPPING_HISTORY.replace(valueDes);
          break;
        case r'INSTRUMENT_SOURCE_BACKFILL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_BACKFILL = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_BLOB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_BLOB = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_CALCULATED':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_CALCULATED = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_FIX':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_FIX = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_GO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_GO = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_POLLING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_POLLING = valueDes;
          break;
        case r'INSTRUMENT_SOURCE_STREAMING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_SOURCE_STREAMING = valueDes;
          break;
        case r'INSTRUMENT_STATUS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_STATUS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_REST_URI':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_TRADE_SPOT_REST_URI = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_REST_URL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_TRADE_SPOT_REST_URL = valueDes;
          break;
        case r'INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = valueDes;
          break;
        case r'LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = valueDes;
          break;
        case r'LAST_SEEN_ON_BLOB_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_BLOB_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_FIX_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_FIX_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_HARDCODED_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_HARDCODED_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_INDEX_COMPOSITION_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_INDEX_COMPOSITION_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_NSQ_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_NSQ_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_POLLING_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_POLLING_TS = valueDes;
          break;
        case r'LAST_SEEN_ON_STREAMING_TS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.LAST_SEEN_ON_STREAMING_TS = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_BACKFILL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_BACKFILL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_BLOB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_BLOB = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_CALCULATED':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_CALCULATED = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_FIX':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_FIX = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_FIX_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_GO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_GO = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_GO_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_GO_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_POLLING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_POLLING = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_STREAMING':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_STREAMING = valueDes;
          break;
        case r'LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = valueDes;
          break;
        case r'METADATA_VERSION':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.METADATA_VERSION = valueDes;
          break;
        case r'PROCESSING_TRADES_FROM_BLOB_STATUS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.PROCESSING_TRADES_FROM_BLOB_STATUS = valueDes;
          break;
        case r'TOTAL_TRADES_SPOT':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.TOTAL_TRADES_SPOT = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = valueDes;
          break;
        case r'UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPOTINSTRUMENTMETADATA deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPOTINSTRUMENTMETADATABuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

