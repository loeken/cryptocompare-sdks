@isTest
private class OASSPOTINSTRUMENTMETADATATest {
    @isTest
    private static void equalsSameInstance() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = SPOT_INSTRUMENT_METADATA1;
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA3 = new OASSPOTINSTRUMENTMETADATA();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA4 = SPOT_INSTRUMENT_METADATA3;

        System.assert(SPOT_INSTRUMENT_METADATA1.equals(SPOT_INSTRUMENT_METADATA2));
        System.assert(SPOT_INSTRUMENT_METADATA2.equals(SPOT_INSTRUMENT_METADATA1));
        System.assert(SPOT_INSTRUMENT_METADATA1.equals(SPOT_INSTRUMENT_METADATA1));
        System.assert(SPOT_INSTRUMENT_METADATA3.equals(SPOT_INSTRUMENT_METADATA4));
        System.assert(SPOT_INSTRUMENT_METADATA4.equals(SPOT_INSTRUMENT_METADATA3));
        System.assert(SPOT_INSTRUMENT_METADATA3.equals(SPOT_INSTRUMENT_METADATA3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA3 = new OASSPOTINSTRUMENTMETADATA();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA4 = new OASSPOTINSTRUMENTMETADATA();

        System.assert(SPOT_INSTRUMENT_METADATA1.equals(SPOT_INSTRUMENT_METADATA2));
        System.assert(SPOT_INSTRUMENT_METADATA2.equals(SPOT_INSTRUMENT_METADATA1));
        System.assert(SPOT_INSTRUMENT_METADATA3.equals(SPOT_INSTRUMENT_METADATA4));
        System.assert(SPOT_INSTRUMENT_METADATA4.equals(SPOT_INSTRUMENT_METADATA3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = new OASSPOTINSTRUMENTMETADATA();

        System.assertEquals(false, SPOT_INSTRUMENT_METADATA1.equals('foo'));
        System.assertEquals(false, SPOT_INSTRUMENT_METADATA2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = new OASSPOTINSTRUMENTMETADATA();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA3;

        System.assertEquals(false, SPOT_INSTRUMENT_METADATA1.equals(SPOT_INSTRUMENT_METADATA3));
        System.assertEquals(false, SPOT_INSTRUMENT_METADATA2.equals(SPOT_INSTRUMENT_METADATA3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = new OASSPOTINSTRUMENTMETADATA();

        System.assertEquals(SPOT_INSTRUMENT_METADATA1.hashCode(), SPOT_INSTRUMENT_METADATA1.hashCode());
        System.assertEquals(SPOT_INSTRUMENT_METADATA2.hashCode(), SPOT_INSTRUMENT_METADATA2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA1 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA2 = OASSPOTINSTRUMENTMETADATA.getExample();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA3 = new OASSPOTINSTRUMENTMETADATA();
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA4 = new OASSPOTINSTRUMENTMETADATA();

        System.assert(SPOT_INSTRUMENT_METADATA1.equals(SPOT_INSTRUMENT_METADATA2));
        System.assert(SPOT_INSTRUMENT_METADATA3.equals(SPOT_INSTRUMENT_METADATA4));
        System.assertEquals(SPOT_INSTRUMENT_METADATA1.hashCode(), SPOT_INSTRUMENT_METADATA2.hashCode());
        System.assertEquals(SPOT_INSTRUMENT_METADATA3.hashCode(), SPOT_INSTRUMENT_METADATA4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA = new OASSPOTINSTRUMENTMETADATA();
        System.assertEquals({}, SPOT_INSTRUMENT_METADATA.INSTRUMENT_MAPPING);
        System.assertEquals(new List<String>(), SPOT_INSTRUMENT_METADATA.INSTRUMENT_MAPPING_HISTORY);
        System.assertEquals('ACTIVE', SPOT_INSTRUMENT_METADATA.INSTRUMENT_STATUS);
        System.assertEquals(false, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION);
        System.assertEquals(4, SPOT_INSTRUMENT_METADATA.METADATA_VERSION);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_BLOB_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_FIX_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_HARDCODED_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_INDEX_COMPOSITION_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_NSQ_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_POLLING_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_STREAMING_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BACKFILL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BLOB);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_CALCULATED);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_FIX);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_GO);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_POLLING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_STREAMING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_DESTINATION);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_SOURCE);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_STATUS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_EXTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_BACKFILL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_BLOB);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_CALCULATED);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_FIX);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_GO);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_POLLING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_STREAMING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_REST_URI);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_REST_URL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_BLOB_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_FIX_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_HARDCODED_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_INDEX_COMPOSITION_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_NSQ_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_POLLING_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_STREAMING_TS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BACKFILL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BLOB);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_CALCULATED);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_FIX);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_GO);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_GO_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_POLLING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_STREAMING);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.PROCESSING_TRADES_FROM_BLOB_STATUS);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.TOTAL_TRADES_SPOT);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA);
        System.assertEquals(null, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA);
    }
}
