@isTest
private class OASNewsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void newsV1ArticleListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'sourceIds' => new List<String>{''},
            'lang' => EN,
            'categories' => new List<String>{'1INCH'},
            'excludeCategories' => new List<String>{'1INCH'},
            'toTs' => ''
        };

        OASClient client;
        OASNewsApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASNewsApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.newsV1ArticleList(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void newsV1CategoryListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASNewsApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASNewsApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.newsV1CategoryList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void newsV1SourceListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'lang' => EN,
            'type' => RSS,
            'status' => ACTIVE
        };

        OASClient client;
        OASNewsApi api;
        OASGENERICRESPONSE response;
        OASGENERICRESPONSE expectedResponse;
        String js = '';

        api = new OASNewsApi(new OASClient());

        js = JSON.serialize(OASGENERICRESPONSE.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGENERICRESPONSE.getExample();
        response = (OASGENERICRESPONSE) api.newsV1SourceList(params);
        System.assertEquals(expectedResponse, response);
    }
}