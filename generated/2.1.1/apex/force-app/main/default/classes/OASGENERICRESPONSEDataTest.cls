@isTest
private class OASGENERICRESPONSEDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = geNERICRESPONSEData1;
        OASGENERICRESPONSEData geNERICRESPONSEData3 = new OASGENERICRESPONSEData();
        OASGENERICRESPONSEData geNERICRESPONSEData4 = geNERICRESPONSEData3;

        System.assert(geNERICRESPONSEData1.equals(geNERICRESPONSEData2));
        System.assert(geNERICRESPONSEData2.equals(geNERICRESPONSEData1));
        System.assert(geNERICRESPONSEData1.equals(geNERICRESPONSEData1));
        System.assert(geNERICRESPONSEData3.equals(geNERICRESPONSEData4));
        System.assert(geNERICRESPONSEData4.equals(geNERICRESPONSEData3));
        System.assert(geNERICRESPONSEData3.equals(geNERICRESPONSEData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData3 = new OASGENERICRESPONSEData();
        OASGENERICRESPONSEData geNERICRESPONSEData4 = new OASGENERICRESPONSEData();

        System.assert(geNERICRESPONSEData1.equals(geNERICRESPONSEData2));
        System.assert(geNERICRESPONSEData2.equals(geNERICRESPONSEData1));
        System.assert(geNERICRESPONSEData3.equals(geNERICRESPONSEData4));
        System.assert(geNERICRESPONSEData4.equals(geNERICRESPONSEData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = new OASGENERICRESPONSEData();

        System.assertEquals(false, geNERICRESPONSEData1.equals('foo'));
        System.assertEquals(false, geNERICRESPONSEData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = new OASGENERICRESPONSEData();
        OASGENERICRESPONSEData geNERICRESPONSEData3;

        System.assertEquals(false, geNERICRESPONSEData1.equals(geNERICRESPONSEData3));
        System.assertEquals(false, geNERICRESPONSEData2.equals(geNERICRESPONSEData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = new OASGENERICRESPONSEData();

        System.assertEquals(geNERICRESPONSEData1.hashCode(), geNERICRESPONSEData1.hashCode());
        System.assertEquals(geNERICRESPONSEData2.hashCode(), geNERICRESPONSEData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGENERICRESPONSEData geNERICRESPONSEData1 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData2 = OASGENERICRESPONSEData.getExample();
        OASGENERICRESPONSEData geNERICRESPONSEData3 = new OASGENERICRESPONSEData();
        OASGENERICRESPONSEData geNERICRESPONSEData4 = new OASGENERICRESPONSEData();

        System.assert(geNERICRESPONSEData1.equals(geNERICRESPONSEData2));
        System.assert(geNERICRESPONSEData3.equals(geNERICRESPONSEData4));
        System.assertEquals(geNERICRESPONSEData1.hashCode(), geNERICRESPONSEData2.hashCode());
        System.assertEquals(geNERICRESPONSEData3.hashCode(), geNERICRESPONSEData4.hashCode());
    }
}
