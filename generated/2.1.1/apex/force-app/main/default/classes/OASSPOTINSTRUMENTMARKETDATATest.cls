@isTest
private class OASSPOTINSTRUMENTMARKETDATATest {
    @isTest
    private static void equalsSameInstance() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = SPOT_INSTRUMENT_MARKET_DATA1;
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA3 = new OASSPOTINSTRUMENTMARKETDATA();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA4 = SPOT_INSTRUMENT_MARKET_DATA3;

        System.assert(SPOT_INSTRUMENT_MARKET_DATA1.equals(SPOT_INSTRUMENT_MARKET_DATA2));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA2.equals(SPOT_INSTRUMENT_MARKET_DATA1));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA1.equals(SPOT_INSTRUMENT_MARKET_DATA1));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA3.equals(SPOT_INSTRUMENT_MARKET_DATA4));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA4.equals(SPOT_INSTRUMENT_MARKET_DATA3));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA3.equals(SPOT_INSTRUMENT_MARKET_DATA3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA3 = new OASSPOTINSTRUMENTMARKETDATA();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA4 = new OASSPOTINSTRUMENTMARKETDATA();

        System.assert(SPOT_INSTRUMENT_MARKET_DATA1.equals(SPOT_INSTRUMENT_MARKET_DATA2));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA2.equals(SPOT_INSTRUMENT_MARKET_DATA1));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA3.equals(SPOT_INSTRUMENT_MARKET_DATA4));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA4.equals(SPOT_INSTRUMENT_MARKET_DATA3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = new OASSPOTINSTRUMENTMARKETDATA();

        System.assertEquals(false, SPOT_INSTRUMENT_MARKET_DATA1.equals('foo'));
        System.assertEquals(false, SPOT_INSTRUMENT_MARKET_DATA2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = new OASSPOTINSTRUMENTMARKETDATA();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA3;

        System.assertEquals(false, SPOT_INSTRUMENT_MARKET_DATA1.equals(SPOT_INSTRUMENT_MARKET_DATA3));
        System.assertEquals(false, SPOT_INSTRUMENT_MARKET_DATA2.equals(SPOT_INSTRUMENT_MARKET_DATA3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = new OASSPOTINSTRUMENTMARKETDATA();

        System.assertEquals(SPOT_INSTRUMENT_MARKET_DATA1.hashCode(), SPOT_INSTRUMENT_MARKET_DATA1.hashCode());
        System.assertEquals(SPOT_INSTRUMENT_MARKET_DATA2.hashCode(), SPOT_INSTRUMENT_MARKET_DATA2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA1 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA2 = OASSPOTINSTRUMENTMARKETDATA.getExample();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA3 = new OASSPOTINSTRUMENTMARKETDATA();
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA4 = new OASSPOTINSTRUMENTMARKETDATA();

        System.assert(SPOT_INSTRUMENT_MARKET_DATA1.equals(SPOT_INSTRUMENT_MARKET_DATA2));
        System.assert(SPOT_INSTRUMENT_MARKET_DATA3.equals(SPOT_INSTRUMENT_MARKET_DATA4));
        System.assertEquals(SPOT_INSTRUMENT_MARKET_DATA1.hashCode(), SPOT_INSTRUMENT_MARKET_DATA2.hashCode());
        System.assertEquals(SPOT_INSTRUMENT_MARKET_DATA3.hashCode(), SPOT_INSTRUMENT_MARKET_DATA4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSPOTINSTRUMENTMARKETDATA SPOT_INSTRUMENT_MARKET_DATA = new OASSPOTINSTRUMENTMARKETDATA();
        Map<String, String> x-property-mappings = SPOT_INSTRUMENT_MARKET_DATA.getx-property-mappings();
        System.assertEquals('moVING180DAYHIGH', x-property-mappings.get('MOVING_180_DAY_HIGH'));
        System.assertEquals('moVING180DAYLOW', x-property-mappings.get('MOVING_180_DAY_LOW'));
        System.assertEquals('moVING180DAYOPEN', x-property-mappings.get('MOVING_180_DAY_OPEN'));
        System.assertEquals('moVING180DAYQUOTEVOLUME', x-property-mappings.get('MOVING_180_DAY_QUOTE_VOLUME'));
        System.assertEquals('moVING180DAYQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_180_DAY_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING180DAYQUOTEVOLUMESELL', x-property-mappings.get('MOVING_180_DAY_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING180DAYQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING180DAYTOTALTRADES', x-property-mappings.get('MOVING_180_DAY_TOTAL_TRADES'));
        System.assertEquals('moVING180DAYTOTALTRADESBUY', x-property-mappings.get('MOVING_180_DAY_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING180DAYTOTALTRADESSELL', x-property-mappings.get('MOVING_180_DAY_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING180DAYTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_180_DAY_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING180DAYVOLUME', x-property-mappings.get('MOVING_180_DAY_VOLUME'));
        System.assertEquals('moVING180DAYVOLUMEBUY', x-property-mappings.get('MOVING_180_DAY_VOLUME_BUY'));
        System.assertEquals('moVING180DAYVOLUMESELL', x-property-mappings.get('MOVING_180_DAY_VOLUME_SELL'));
        System.assertEquals('moVING180DAYVOLUMEUNKNOWN', x-property-mappings.get('MOVING_180_DAY_VOLUME_UNKNOWN'));
        System.assertEquals('moVING24HOURHIGH', x-property-mappings.get('MOVING_24_HOUR_HIGH'));
        System.assertEquals('moVING24HOURLOW', x-property-mappings.get('MOVING_24_HOUR_LOW'));
        System.assertEquals('moVING24HOUROPEN', x-property-mappings.get('MOVING_24_HOUR_OPEN'));
        System.assertEquals('moVING24HOURQUOTEVOLUME', x-property-mappings.get('MOVING_24_HOUR_QUOTE_VOLUME'));
        System.assertEquals('moVING24HOURQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_24_HOUR_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING24HOURQUOTEVOLUMESELL', x-property-mappings.get('MOVING_24_HOUR_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING24HOURQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING24HOURTOTALTRADES', x-property-mappings.get('MOVING_24_HOUR_TOTAL_TRADES'));
        System.assertEquals('moVING24HOURTOTALTRADESBUY', x-property-mappings.get('MOVING_24_HOUR_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING24HOURTOTALTRADESSELL', x-property-mappings.get('MOVING_24_HOUR_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING24HOURTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING24HOURVOLUME', x-property-mappings.get('MOVING_24_HOUR_VOLUME'));
        System.assertEquals('moVING24HOURVOLUMEBUY', x-property-mappings.get('MOVING_24_HOUR_VOLUME_BUY'));
        System.assertEquals('moVING24HOURVOLUMESELL', x-property-mappings.get('MOVING_24_HOUR_VOLUME_SELL'));
        System.assertEquals('moVING24HOURVOLUMEUNKNOWN', x-property-mappings.get('MOVING_24_HOUR_VOLUME_UNKNOWN'));
        System.assertEquals('moVING30DAYHIGH', x-property-mappings.get('MOVING_30_DAY_HIGH'));
        System.assertEquals('moVING30DAYLOW', x-property-mappings.get('MOVING_30_DAY_LOW'));
        System.assertEquals('moVING30DAYOPEN', x-property-mappings.get('MOVING_30_DAY_OPEN'));
        System.assertEquals('moVING30DAYQUOTEVOLUME', x-property-mappings.get('MOVING_30_DAY_QUOTE_VOLUME'));
        System.assertEquals('moVING30DAYQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_30_DAY_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING30DAYQUOTEVOLUMESELL', x-property-mappings.get('MOVING_30_DAY_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING30DAYQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING30DAYTOTALTRADES', x-property-mappings.get('MOVING_30_DAY_TOTAL_TRADES'));
        System.assertEquals('moVING30DAYTOTALTRADESBUY', x-property-mappings.get('MOVING_30_DAY_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING30DAYTOTALTRADESSELL', x-property-mappings.get('MOVING_30_DAY_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING30DAYTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_30_DAY_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING30DAYVOLUME', x-property-mappings.get('MOVING_30_DAY_VOLUME'));
        System.assertEquals('moVING30DAYVOLUMEBUY', x-property-mappings.get('MOVING_30_DAY_VOLUME_BUY'));
        System.assertEquals('moVING30DAYVOLUMESELL', x-property-mappings.get('MOVING_30_DAY_VOLUME_SELL'));
        System.assertEquals('moVING30DAYVOLUMEUNKNOWN', x-property-mappings.get('MOVING_30_DAY_VOLUME_UNKNOWN'));
        System.assertEquals('moVING365DAYHIGH', x-property-mappings.get('MOVING_365_DAY_HIGH'));
        System.assertEquals('moVING365DAYLOW', x-property-mappings.get('MOVING_365_DAY_LOW'));
        System.assertEquals('moVING365DAYOPEN', x-property-mappings.get('MOVING_365_DAY_OPEN'));
        System.assertEquals('moVING365DAYQUOTEVOLUME', x-property-mappings.get('MOVING_365_DAY_QUOTE_VOLUME'));
        System.assertEquals('moVING365DAYQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_365_DAY_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING365DAYQUOTEVOLUMESELL', x-property-mappings.get('MOVING_365_DAY_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING365DAYQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING365DAYTOTALTRADES', x-property-mappings.get('MOVING_365_DAY_TOTAL_TRADES'));
        System.assertEquals('moVING365DAYTOTALTRADESBUY', x-property-mappings.get('MOVING_365_DAY_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING365DAYTOTALTRADESSELL', x-property-mappings.get('MOVING_365_DAY_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING365DAYTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_365_DAY_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING365DAYVOLUME', x-property-mappings.get('MOVING_365_DAY_VOLUME'));
        System.assertEquals('moVING365DAYVOLUMEBUY', x-property-mappings.get('MOVING_365_DAY_VOLUME_BUY'));
        System.assertEquals('moVING365DAYVOLUMESELL', x-property-mappings.get('MOVING_365_DAY_VOLUME_SELL'));
        System.assertEquals('moVING365DAYVOLUMEUNKNOWN', x-property-mappings.get('MOVING_365_DAY_VOLUME_UNKNOWN'));
        System.assertEquals('moVING7DAYHIGH', x-property-mappings.get('MOVING_7_DAY_HIGH'));
        System.assertEquals('moVING7DAYLOW', x-property-mappings.get('MOVING_7_DAY_LOW'));
        System.assertEquals('moVING7DAYOPEN', x-property-mappings.get('MOVING_7_DAY_OPEN'));
        System.assertEquals('moVING7DAYQUOTEVOLUME', x-property-mappings.get('MOVING_7_DAY_QUOTE_VOLUME'));
        System.assertEquals('moVING7DAYQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_7_DAY_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING7DAYQUOTEVOLUMESELL', x-property-mappings.get('MOVING_7_DAY_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING7DAYQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING7DAYTOTALTRADES', x-property-mappings.get('MOVING_7_DAY_TOTAL_TRADES'));
        System.assertEquals('moVING7DAYTOTALTRADESBUY', x-property-mappings.get('MOVING_7_DAY_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING7DAYTOTALTRADESSELL', x-property-mappings.get('MOVING_7_DAY_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING7DAYTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_7_DAY_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING7DAYVOLUME', x-property-mappings.get('MOVING_7_DAY_VOLUME'));
        System.assertEquals('moVING7DAYVOLUMEBUY', x-property-mappings.get('MOVING_7_DAY_VOLUME_BUY'));
        System.assertEquals('moVING7DAYVOLUMESELL', x-property-mappings.get('MOVING_7_DAY_VOLUME_SELL'));
        System.assertEquals('moVING7DAYVOLUMEUNKNOWN', x-property-mappings.get('MOVING_7_DAY_VOLUME_UNKNOWN'));
        System.assertEquals('moVING90DAYHIGH', x-property-mappings.get('MOVING_90_DAY_HIGH'));
        System.assertEquals('moVING90DAYLOW', x-property-mappings.get('MOVING_90_DAY_LOW'));
        System.assertEquals('moVING90DAYOPEN', x-property-mappings.get('MOVING_90_DAY_OPEN'));
        System.assertEquals('moVING90DAYQUOTEVOLUME', x-property-mappings.get('MOVING_90_DAY_QUOTE_VOLUME'));
        System.assertEquals('moVING90DAYQUOTEVOLUMEBUY', x-property-mappings.get('MOVING_90_DAY_QUOTE_VOLUME_BUY'));
        System.assertEquals('moVING90DAYQUOTEVOLUMESELL', x-property-mappings.get('MOVING_90_DAY_QUOTE_VOLUME_SELL'));
        System.assertEquals('moVING90DAYQUOTEVOLUMEUNKNOWN', x-property-mappings.get('MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN'));
        System.assertEquals('moVING90DAYTOTALTRADES', x-property-mappings.get('MOVING_90_DAY_TOTAL_TRADES'));
        System.assertEquals('moVING90DAYTOTALTRADESBUY', x-property-mappings.get('MOVING_90_DAY_TOTAL_TRADES_BUY'));
        System.assertEquals('moVING90DAYTOTALTRADESSELL', x-property-mappings.get('MOVING_90_DAY_TOTAL_TRADES_SELL'));
        System.assertEquals('moVING90DAYTOTALTRADESUNKNOWN', x-property-mappings.get('MOVING_90_DAY_TOTAL_TRADES_UNKNOWN'));
        System.assertEquals('moVING90DAYVOLUME', x-property-mappings.get('MOVING_90_DAY_VOLUME'));
        System.assertEquals('moVING90DAYVOLUMEBUY', x-property-mappings.get('MOVING_90_DAY_VOLUME_BUY'));
        System.assertEquals('moVING90DAYVOLUMESELL', x-property-mappings.get('MOVING_90_DAY_VOLUME_SELL'));
        System.assertEquals('moVING90DAYVOLUMEUNKNOWN', x-property-mappings.get('MOVING_90_DAY_VOLUME_UNKNOWN'));
    }
}
