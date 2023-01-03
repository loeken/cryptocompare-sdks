@isTest
private class OASFuturesApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalDaysTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalFundingRateDaysTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalFundingRateHoursTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalFundingRateMessagesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateMessages(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateMessages(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalFundingRateMessagesHourTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateMessagesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateMessagesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalFundingRateMinutesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalFundingRateMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalHoursTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalMinutesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalOpenInterestDaysTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalOpenInterestHoursTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalOpenInterestMessagesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestMessages(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestMessages(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalOpenInterestMessagesHourTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestMessagesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestMessagesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalOpenInterestMinutesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalOpenInterestMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalTradesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalTrades(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalTrades(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1HistoricalTradesHourTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalTradesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1HistoricalTradesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1LatestFundingRateTickTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1LatestFundingRateTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1LatestInstrumentMetadataTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1LatestInstrumentMetadata(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1LatestOpenInterestTickTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1LatestOpenInterestTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1LatestTickTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1LatestTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1MarketsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null'
        };

        OASClient client;
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1Markets(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1MarketsInstrumentsTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1MarketsInstruments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void futuresV1MarketsInstrumentsUnmappedTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.futuresV1MarketsInstrumentsUnmapped(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1HistoricalDaysTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalDays(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1HistoricalHoursTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalHours(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1HistoricalMessagesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalMessages(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalMessages(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1HistoricalMessagesHourTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_header')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalMessagesHour(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFuturesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('api_key_query')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalMessagesHour(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1HistoricalMinutesTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1HistoricalMinutes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1LatestInstrumentMetadataTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1LatestInstrumentMetadata(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1LatestTickTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1LatestTick(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1MarketsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'market' => 'null'
        };

        OASClient client;
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1Markets(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1MarketsInstrumentsTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1MarketsInstruments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void indexV1MarketsInstrumentsUnmappedTest() {
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
        OASFuturesApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASFuturesApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.indexV1MarketsInstrumentsUnmapped(params);
        System.assertEquals(expectedResponse, response);
    }
}