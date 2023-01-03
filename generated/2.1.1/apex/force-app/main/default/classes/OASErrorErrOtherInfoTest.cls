@isTest
private class OASErrorErrOtherInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = errorErrOtherInfo1;
        OASErrorErrOtherInfo errorErrOtherInfo3 = new OASErrorErrOtherInfo();
        OASErrorErrOtherInfo errorErrOtherInfo4 = errorErrOtherInfo3;

        System.assert(errorErrOtherInfo1.equals(errorErrOtherInfo2));
        System.assert(errorErrOtherInfo2.equals(errorErrOtherInfo1));
        System.assert(errorErrOtherInfo1.equals(errorErrOtherInfo1));
        System.assert(errorErrOtherInfo3.equals(errorErrOtherInfo4));
        System.assert(errorErrOtherInfo4.equals(errorErrOtherInfo3));
        System.assert(errorErrOtherInfo3.equals(errorErrOtherInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo3 = new OASErrorErrOtherInfo();
        OASErrorErrOtherInfo errorErrOtherInfo4 = new OASErrorErrOtherInfo();

        System.assert(errorErrOtherInfo1.equals(errorErrOtherInfo2));
        System.assert(errorErrOtherInfo2.equals(errorErrOtherInfo1));
        System.assert(errorErrOtherInfo3.equals(errorErrOtherInfo4));
        System.assert(errorErrOtherInfo4.equals(errorErrOtherInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = new OASErrorErrOtherInfo();

        System.assertEquals(false, errorErrOtherInfo1.equals('foo'));
        System.assertEquals(false, errorErrOtherInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = new OASErrorErrOtherInfo();
        OASErrorErrOtherInfo errorErrOtherInfo3;

        System.assertEquals(false, errorErrOtherInfo1.equals(errorErrOtherInfo3));
        System.assertEquals(false, errorErrOtherInfo2.equals(errorErrOtherInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = new OASErrorErrOtherInfo();

        System.assertEquals(errorErrOtherInfo1.hashCode(), errorErrOtherInfo1.hashCode());
        System.assertEquals(errorErrOtherInfo2.hashCode(), errorErrOtherInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASErrorErrOtherInfo errorErrOtherInfo1 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo2 = OASErrorErrOtherInfo.getExample();
        OASErrorErrOtherInfo errorErrOtherInfo3 = new OASErrorErrOtherInfo();
        OASErrorErrOtherInfo errorErrOtherInfo4 = new OASErrorErrOtherInfo();

        System.assert(errorErrOtherInfo1.equals(errorErrOtherInfo2));
        System.assert(errorErrOtherInfo3.equals(errorErrOtherInfo4));
        System.assertEquals(errorErrOtherInfo1.hashCode(), errorErrOtherInfo2.hashCode());
        System.assertEquals(errorErrOtherInfo3.hashCode(), errorErrOtherInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASErrorErrOtherInfo errorErrOtherInfo = new OASErrorErrOtherInfo();
        System.assertEquals(new List<String>(), errorErrOtherInfo.values);
        System.assertEquals(null, errorErrOtherInfo.param);
    }
}
