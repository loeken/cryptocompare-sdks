@isTest
private class OASReferenceRatesApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1HistoricalDaysTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1HistoricalHoursTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1HistoricalMessagesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null',
            'instrument' => 'null',
            'afterTs' => '',
            'lastCcseq' => '',
            'mappingPriority' => CHECK_MAPPED_FIRST,
            'r_limit' => '',
            'responseFormat' => JSON,
            'return404OnEmptyResponse' => ''
        };

        OASClient client;
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReferenceRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalMessages(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASReferenceRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalMessages(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1HistoricalMessagesHourTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReferenceRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalMessagesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASReferenceRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalMessagesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1HistoricalMinutesTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1HistoricalMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1LatestInstrumentMetadataTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1LatestInstrumentMetadata(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1LatestTickTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1LatestTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1MarketsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null'
        };

        OASClient client;
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1Markets(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1MarketsInstrumentsTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1MarketsInstruments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexCcV1MarketsInstrumentsUnmappedTest() {
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
        OASReferenceRatesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASReferenceRatesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexCcV1MarketsInstrumentsUnmapped(params);
        System.assertEquals(expectedResponse, response);
    }
}