@isTest
private class OASSpotApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalDaysTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'groups' => new List<String>{''},
            'r_limit' => '',
            'toTs' => '',
            'aggregate' => '',
            'fill' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTHISTODATARESPONSE response;
        OASSPOTINSTRUMENTHISTODATARESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASSPOTINSTRUMENTHISTODATARESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTHISTODATARESPONSE.getExample();
        response = (OASSPOTINSTRUMENTHISTODATARESPONSE) api.spotV1HistoricalDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalHoursTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'groups' => new List<String>{''},
            'r_limit' => '',
            'toTs' => '',
            'aggregate' => '',
            'fill' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTHISTODATARESPONSE response;
        OASSPOTINSTRUMENTHISTODATARESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASSPOTINSTRUMENTHISTODATARESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTHISTODATARESPONSE.getExample();
        response = (OASSPOTINSTRUMENTHISTODATARESPONSE) api.spotV1HistoricalHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalMinutesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'groups' => new List<String>{''},
            'r_limit' => '',
            'toTs' => '',
            'aggregate' => '',
            'fill' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTHISTODATARESPONSE response;
        OASSPOTINSTRUMENTHISTODATARESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASSPOTINSTRUMENTHISTODATARESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTHISTODATARESPONSE.getExample();
        response = (OASSPOTINSTRUMENTHISTODATARESPONSE) api.spotV1HistoricalMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalOrderbookL2SnapshotMinuteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'minuteTs' => '',
            'depth' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON
        };

        OASClient client;
        OASSpotApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.spotV1HistoricalOrderbookL2SnapshotMinute(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.spotV1HistoricalOrderbookL2SnapshotMinute(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalTradesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'afterTs' => '',
            'lastCcseq' => '',
            'r_limit' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON,
            'return404OnEmptyResponse' => ''
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTTRADERESPONSE response;
        OASSPOTINSTRUMENTTRADERESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSPOTINSTRUMENTTRADERESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTTRADERESPONSE.getExample();
        response = (OASSPOTINSTRUMENTTRADERESPONSE) api.spotV1HistoricalTrades(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSPOTINSTRUMENTTRADERESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTTRADERESPONSE.getExample();
        response = (OASSPOTINSTRUMENTTRADERESPONSE) api.spotV1HistoricalTrades(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1HistoricalTradesHourTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'hourTs' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'responseFormat' => JSON,
            'return404OnEmptyResponse' => ''
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTTRADERESPONSE response;
        OASSPOTINSTRUMENTTRADERESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSPOTINSTRUMENTTRADERESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTTRADERESPONSE.getExample();
        response = (OASSPOTINSTRUMENTTRADERESPONSE) api.spotV1HistoricalTradesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASSpotApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASSPOTINSTRUMENTTRADERESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTTRADERESPONSE.getExample();
        response = (OASSPOTINSTRUMENTTRADERESPONSE) api.spotV1HistoricalTradesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1LatestInstrumentMetadataTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => coinbase,
            'instruments' => ["BTC-USD","ETH-USD"],
            'groups' => new List<String>{''},
            'mappingPriority' => CHECK_MAPPED_FIRST
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTMETADATARESPONSE response;
        OASSPOTINSTRUMENTMETADATARESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASSPOTINSTRUMENTMETADATARESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTMETADATARESPONSE.getExample();
        response = (OASSPOTINSTRUMENTMETADATARESPONSE) api.spotV1LatestInstrumentMetadata(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1LatestTickTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instruments' => new List<String>{''},
            'groups' => new List<String>{''},
            'mappingPriority' => CHECK_MAPPED_FIRST
        };

        OASClient client;
        OASSpotApi api;
        OASSPOTINSTRUMENTMARKETDATARESPONSE response;
        OASSPOTINSTRUMENTMARKETDATARESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASSPOTINSTRUMENTMARKETDATARESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSPOTINSTRUMENTMARKETDATARESPONSE.getExample();
        response = (OASSPOTINSTRUMENTMARKETDATARESPONSE) api.spotV1LatestTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1MarketsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null'
        };

        OASClient client;
        OASSpotApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.spotV1Markets(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1MarketsInstrumentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'instrumentStatus' => new List<String>{'ACTIVE'}
        };

        OASClient client;
        OASSpotApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.spotV1MarketsInstruments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void spotV1MarketsInstrumentsUnmappedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'instrumentStatus' => new List<String>{'ACTIVE'}
        };

        OASClient client;
        OASSpotApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASSpotApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.spotV1MarketsInstrumentsUnmapped(params);
        System.assertEquals(expectedResponse, response);
    }
}