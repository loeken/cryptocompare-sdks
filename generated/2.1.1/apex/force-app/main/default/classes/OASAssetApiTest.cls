@isTest
private class OASAssetApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void assetV1DataByAddressTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'address' => 'null',
            'chainSymbol' => 'null',
            'groups' => 'null'
        };

        OASClient client;
        OASAssetApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASAssetApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.assetV1DataByAddress(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void assetV1DataByIdTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetId' => '',
            'groups' => 'null'
        };

        OASClient client;
        OASAssetApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASAssetApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.assetV1DataById(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void assetV1DataBySymbolTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetSymbol' => 'null',
            'groups' => 'null'
        };

        OASClient client;
        OASAssetApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASAssetApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.assetV1DataBySymbol(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void assetV1TopListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'assetType' => 'null',
            'sortBy' => CREATED_ON,
            'sortDirection' => DESC,
            'groups' => 'null'
        };

        OASClient client;
        OASAssetApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASAssetApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.assetV1TopList(params);
        System.assertEquals(expectedResponse, response);
    }
}