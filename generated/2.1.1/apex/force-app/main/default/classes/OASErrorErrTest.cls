@isTest
private class OASErrorErrTest {
    @isTest
    private static void equalsSameInstance() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = errorErr1;
        OASErrorErr errorErr3 = new OASErrorErr();
        OASErrorErr errorErr4 = errorErr3;

        System.assert(errorErr1.equals(errorErr2));
        System.assert(errorErr2.equals(errorErr1));
        System.assert(errorErr1.equals(errorErr1));
        System.assert(errorErr3.equals(errorErr4));
        System.assert(errorErr4.equals(errorErr3));
        System.assert(errorErr3.equals(errorErr3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = OASErrorErr.getExample();
        OASErrorErr errorErr3 = new OASErrorErr();
        OASErrorErr errorErr4 = new OASErrorErr();

        System.assert(errorErr1.equals(errorErr2));
        System.assert(errorErr2.equals(errorErr1));
        System.assert(errorErr3.equals(errorErr4));
        System.assert(errorErr4.equals(errorErr3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = new OASErrorErr();

        System.assertEquals(false, errorErr1.equals('foo'));
        System.assertEquals(false, errorErr2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = new OASErrorErr();
        OASErrorErr errorErr3;

        System.assertEquals(false, errorErr1.equals(errorErr3));
        System.assertEquals(false, errorErr2.equals(errorErr3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = new OASErrorErr();

        System.assertEquals(errorErr1.hashCode(), errorErr1.hashCode());
        System.assertEquals(errorErr2.hashCode(), errorErr2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASErrorErr errorErr1 = OASErrorErr.getExample();
        OASErrorErr errorErr2 = OASErrorErr.getExample();
        OASErrorErr errorErr3 = new OASErrorErr();
        OASErrorErr errorErr4 = new OASErrorErr();

        System.assert(errorErr1.equals(errorErr2));
        System.assert(errorErr3.equals(errorErr4));
        System.assertEquals(errorErr1.hashCode(), errorErr2.hashCode());
        System.assertEquals(errorErr3.hashCode(), errorErr4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASErrorErr errorErr = new OASErrorErr();
        Map<String, String> x-property-mappings = errorErr.getx-property-mappings();
        System.assertEquals('otherInfo', x-property-mappings.get('other_info'));
    }
}
