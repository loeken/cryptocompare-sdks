@isTest
private class OASGENERICRESPONSETest {
    @isTest
    private static void equalsSameInstance() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = GENERIC_RESPONSE1;
        OASGENERICRESPONSE GENERIC_RESPONSE3 = new OASGENERICRESPONSE();
        OASGENERICRESPONSE GENERIC_RESPONSE4 = GENERIC_RESPONSE3;

        System.assert(GENERIC_RESPONSE1.equals(GENERIC_RESPONSE2));
        System.assert(GENERIC_RESPONSE2.equals(GENERIC_RESPONSE1));
        System.assert(GENERIC_RESPONSE1.equals(GENERIC_RESPONSE1));
        System.assert(GENERIC_RESPONSE3.equals(GENERIC_RESPONSE4));
        System.assert(GENERIC_RESPONSE4.equals(GENERIC_RESPONSE3));
        System.assert(GENERIC_RESPONSE3.equals(GENERIC_RESPONSE3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE3 = new OASGENERICRESPONSE();
        OASGENERICRESPONSE GENERIC_RESPONSE4 = new OASGENERICRESPONSE();

        System.assert(GENERIC_RESPONSE1.equals(GENERIC_RESPONSE2));
        System.assert(GENERIC_RESPONSE2.equals(GENERIC_RESPONSE1));
        System.assert(GENERIC_RESPONSE3.equals(GENERIC_RESPONSE4));
        System.assert(GENERIC_RESPONSE4.equals(GENERIC_RESPONSE3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = new OASGENERICRESPONSE();

        System.assertEquals(false, GENERIC_RESPONSE1.equals('foo'));
        System.assertEquals(false, GENERIC_RESPONSE2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = new OASGENERICRESPONSE();
        OASGENERICRESPONSE GENERIC_RESPONSE3;

        System.assertEquals(false, GENERIC_RESPONSE1.equals(GENERIC_RESPONSE3));
        System.assertEquals(false, GENERIC_RESPONSE2.equals(GENERIC_RESPONSE3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = new OASGENERICRESPONSE();

        System.assertEquals(GENERIC_RESPONSE1.hashCode(), GENERIC_RESPONSE1.hashCode());
        System.assertEquals(GENERIC_RESPONSE2.hashCode(), GENERIC_RESPONSE2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGENERICRESPONSE GENERIC_RESPONSE1 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE2 = OASGENERICRESPONSE.getExample();
        OASGENERICRESPONSE GENERIC_RESPONSE3 = new OASGENERICRESPONSE();
        OASGENERICRESPONSE GENERIC_RESPONSE4 = new OASGENERICRESPONSE();

        System.assert(GENERIC_RESPONSE1.equals(GENERIC_RESPONSE2));
        System.assert(GENERIC_RESPONSE3.equals(GENERIC_RESPONSE4));
        System.assertEquals(GENERIC_RESPONSE1.hashCode(), GENERIC_RESPONSE2.hashCode());
        System.assertEquals(GENERIC_RESPONSE3.hashCode(), GENERIC_RESPONSE4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGENERICRESPONSE GENERIC_RESPONSE = new OASGENERICRESPONSE();
        Map<String, String> x-property-mappings = GENERIC_RESPONSE.getx-property-mappings();
        System.assertEquals('data', x-property-mappings.get('Data'));
        System.assertEquals('err', x-property-mappings.get('Err'));
    }
}
