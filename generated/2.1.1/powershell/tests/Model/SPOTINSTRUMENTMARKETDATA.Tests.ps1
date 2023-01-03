#
# CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
# CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
# Version: 2.1.1
# Contact: data@cryptocompare.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'SPOTINSTRUMENTMARKETDATA' {
    Context 'SPOTINSTRUMENTMARKETDATA' {
        It 'Initialize-SPOTINSTRUMENTMARKETDATA' {
            # a simple test to create an object
            #$NewObject = Initialize-SPOTINSTRUMENTMARKETDATA -BASE "TEST_VALUE" -CCSEQ "TEST_VALUE" -CURRENTDAYHIGH "TEST_VALUE" -CURRENTDAYLOW "TEST_VALUE" -CURRENTDAYOPEN "TEST_VALUE" -CURRENTDAYQUOTEVOLUME "TEST_VALUE" -CURRENTDAYQUOTEVOLUMEBUY "TEST_VALUE" -CURRENTDAYQUOTEVOLUMESELL "TEST_VALUE" -CURRENTDAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -CURRENTDAYTOTALTRADES "TEST_VALUE" -CURRENTDAYTOTALTRADESBUY "TEST_VALUE" -CURRENTDAYTOTALTRADESSELL "TEST_VALUE" -CURRENTDAYTOTALTRADESUNKNOWN "TEST_VALUE" -CURRENTDAYVOLUME "TEST_VALUE" -CURRENTDAYVOLUMEBUY "TEST_VALUE" -CURRENTDAYVOLUMESELL "TEST_VALUE" -CURRENTDAYVOLUMEUNKNOWN "TEST_VALUE" -CURRENTHOURHIGH "TEST_VALUE" -CURRENTHOURLOW "TEST_VALUE" -CURRENTHOUROPEN "TEST_VALUE" -CURRENTHOURQUOTEVOLUME "TEST_VALUE" -CURRENTHOURQUOTEVOLUMEBUY "TEST_VALUE" -CURRENTHOURQUOTEVOLUMESELL "TEST_VALUE" -CURRENTHOURQUOTEVOLUMEUNKNOWN "TEST_VALUE" -CURRENTHOURTOTALTRADES "TEST_VALUE" -CURRENTHOURTOTALTRADESBUY "TEST_VALUE" -CURRENTHOURTOTALTRADESSELL "TEST_VALUE" -CURRENTHOURTOTALTRADESUNKNOWN "TEST_VALUE" -CURRENTHOURVOLUME "TEST_VALUE" -CURRENTHOURVOLUMEBUY "TEST_VALUE" -CURRENTHOURVOLUMESELL "TEST_VALUE" -CURRENTHOURVOLUMEUNKNOWN "TEST_VALUE" -CURRENTMONTHHIGH "TEST_VALUE" -CURRENTMONTHLOW "TEST_VALUE" -CURRENTMONTHOPEN "TEST_VALUE" -CURRENTMONTHQUOTEVOLUME "TEST_VALUE" -CURRENTMONTHQUOTEVOLUMEBUY "TEST_VALUE" -CURRENTMONTHQUOTEVOLUMESELL "TEST_VALUE" -CURRENTMONTHQUOTEVOLUMEUNKNOWN "TEST_VALUE" -CURRENTMONTHTOTALTRADES "TEST_VALUE" -CURRENTMONTHTOTALTRADESBUY "TEST_VALUE" -CURRENTMONTHTOTALTRADESSELL "TEST_VALUE" -CURRENTMONTHTOTALTRADESUNKNOWN "TEST_VALUE" -CURRENTMONTHVOLUME "TEST_VALUE" -CURRENTMONTHVOLUMEBUY "TEST_VALUE" -CURRENTMONTHVOLUMESELL "TEST_VALUE" -CURRENTMONTHVOLUMEUNKNOWN "TEST_VALUE" -CURRENTWEEKHIGH "TEST_VALUE" -CURRENTWEEKLOW "TEST_VALUE" -CURRENTWEEKOPEN "TEST_VALUE" -CURRENTWEEKQUOTEVOLUME "TEST_VALUE" -CURRENTWEEKQUOTEVOLUMEBUY "TEST_VALUE" -CURRENTWEEKQUOTEVOLUMESELL "TEST_VALUE" -CURRENTWEEKQUOTEVOLUMEUNKNOWN "TEST_VALUE" -CURRENTWEEKTOTALTRADES "TEST_VALUE" -CURRENTWEEKTOTALTRADESBUY "TEST_VALUE" -CURRENTWEEKTOTALTRADESSELL "TEST_VALUE" -CURRENTWEEKTOTALTRADESUNKNOWN "TEST_VALUE" -CURRENTWEEKVOLUME "TEST_VALUE" -CURRENTWEEKVOLUMEBUY "TEST_VALUE" -CURRENTWEEKVOLUMESELL "TEST_VALUE" -CURRENTWEEKVOLUMEUNKNOWN "TEST_VALUE" -CURRENTYEARHIGH "TEST_VALUE" -CURRENTYEARLOW "TEST_VALUE" -CURRENTYEAROPEN "TEST_VALUE" -CURRENTYEARQUOTEVOLUME "TEST_VALUE" -CURRENTYEARQUOTEVOLUMEBUY "TEST_VALUE" -CURRENTYEARQUOTEVOLUMESELL "TEST_VALUE" -CURRENTYEARQUOTEVOLUMEUNKNOWN "TEST_VALUE" -CURRENTYEARTOTALTRADES "TEST_VALUE" -CURRENTYEARTOTALTRADESBUY "TEST_VALUE" -CURRENTYEARTOTALTRADESSELL "TEST_VALUE" -CURRENTYEARTOTALTRADESUNKNOWN "TEST_VALUE" -CURRENTYEARVOLUME "TEST_VALUE" -CURRENTYEARVOLUMEBUY "TEST_VALUE" -CURRENTYEARVOLUMESELL "TEST_VALUE" -CURRENTYEARVOLUMEUNKNOWN "TEST_VALUE" -INSTRUMENT "TEST_VALUE" -LASTPROCESSEDTRADECCSEQ "TEST_VALUE" -LASTPROCESSEDTRADEPRICE "TEST_VALUE" -LASTPROCESSEDTRADEQUANTITY "TEST_VALUE" -LASTPROCESSEDTRADEQUOTEQUANTITY "TEST_VALUE" -LASTPROCESSEDTRADESIDE "TEST_VALUE" -LASTPROCESSEDTRADETS "TEST_VALUE" -LASTTRADECCSEQ "TEST_VALUE" -LASTTRADEID "TEST_VALUE" -LASTTRADEQUANTITY "TEST_VALUE" -LASTTRADEQUOTEQUANTITY "TEST_VALUE" -LASTTRADESIDE "TEST_VALUE" -LIFETIMEFIRSTTRADETS "TEST_VALUE" -LIFETIMEHIGH "TEST_VALUE" -LIFETIMEHIGHTS "TEST_VALUE" -LIFETIMELOW "TEST_VALUE" -LIFETIMELOWTS "TEST_VALUE" -LIFETIMEOPEN "TEST_VALUE" -LIFETIMEQUOTEVOLUME "TEST_VALUE" -LIFETIMEQUOTEVOLUMEBUY "TEST_VALUE" -LIFETIMEQUOTEVOLUMESELL "TEST_VALUE" -LIFETIMEQUOTEVOLUMEUNKNOWN "TEST_VALUE" -LIFETIMETOTALTRADES "TEST_VALUE" -LIFETIMETOTALTRADESBUY "TEST_VALUE" -LIFETIMETOTALTRADESSELL "TEST_VALUE" -LIFETIMETOTALTRADESUNKNOWN "TEST_VALUE" -LIFETIMEVOLUME "TEST_VALUE" -LIFETIMEVOLUMEBUY "TEST_VALUE" -LIFETIMEVOLUMESELL "TEST_VALUE" -LIFETIMEVOLUMEUNKNOWN "TEST_VALUE" -MAPPEDINSTRUMENT "TEST_VALUE" -MARKET "TEST_VALUE" -MOVING180DAYHIGH "TEST_VALUE" -MOVING180DAYLOW "TEST_VALUE" -MOVING180DAYOPEN "TEST_VALUE" -MOVING180DAYQUOTEVOLUME "TEST_VALUE" -MOVING180DAYQUOTEVOLUMEBUY "TEST_VALUE" -MOVING180DAYQUOTEVOLUMESELL "TEST_VALUE" -MOVING180DAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING180DAYTOTALTRADES "TEST_VALUE" -MOVING180DAYTOTALTRADESBUY "TEST_VALUE" -MOVING180DAYTOTALTRADESSELL "TEST_VALUE" -MOVING180DAYTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING180DAYVOLUME "TEST_VALUE" -MOVING180DAYVOLUMEBUY "TEST_VALUE" -MOVING180DAYVOLUMESELL "TEST_VALUE" -MOVING180DAYVOLUMEUNKNOWN "TEST_VALUE" -MOVING24HOURHIGH "TEST_VALUE" -MOVING24HOURLOW "TEST_VALUE" -MOVING24HOUROPEN "TEST_VALUE" -MOVING24HOURQUOTEVOLUME "TEST_VALUE" -MOVING24HOURQUOTEVOLUMEBUY "TEST_VALUE" -MOVING24HOURQUOTEVOLUMESELL "TEST_VALUE" -MOVING24HOURQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING24HOURTOTALTRADES "TEST_VALUE" -MOVING24HOURTOTALTRADESBUY "TEST_VALUE" -MOVING24HOURTOTALTRADESSELL "TEST_VALUE" -MOVING24HOURTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING24HOURVOLUME "TEST_VALUE" -MOVING24HOURVOLUMEBUY "TEST_VALUE" -MOVING24HOURVOLUMESELL "TEST_VALUE" -MOVING24HOURVOLUMEUNKNOWN "TEST_VALUE" -MOVING30DAYHIGH "TEST_VALUE" -MOVING30DAYLOW "TEST_VALUE" -MOVING30DAYOPEN "TEST_VALUE" -MOVING30DAYQUOTEVOLUME "TEST_VALUE" -MOVING30DAYQUOTEVOLUMEBUY "TEST_VALUE" -MOVING30DAYQUOTEVOLUMESELL "TEST_VALUE" -MOVING30DAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING30DAYTOTALTRADES "TEST_VALUE" -MOVING30DAYTOTALTRADESBUY "TEST_VALUE" -MOVING30DAYTOTALTRADESSELL "TEST_VALUE" -MOVING30DAYTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING30DAYVOLUME "TEST_VALUE" -MOVING30DAYVOLUMEBUY "TEST_VALUE" -MOVING30DAYVOLUMESELL "TEST_VALUE" -MOVING30DAYVOLUMEUNKNOWN "TEST_VALUE" -MOVING365DAYHIGH "TEST_VALUE" -MOVING365DAYLOW "TEST_VALUE" -MOVING365DAYOPEN "TEST_VALUE" -MOVING365DAYQUOTEVOLUME "TEST_VALUE" -MOVING365DAYQUOTEVOLUMEBUY "TEST_VALUE" -MOVING365DAYQUOTEVOLUMESELL "TEST_VALUE" -MOVING365DAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING365DAYTOTALTRADES "TEST_VALUE" -MOVING365DAYTOTALTRADESBUY "TEST_VALUE" -MOVING365DAYTOTALTRADESSELL "TEST_VALUE" -MOVING365DAYTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING365DAYVOLUME "TEST_VALUE" -MOVING365DAYVOLUMEBUY "TEST_VALUE" -MOVING365DAYVOLUMESELL "TEST_VALUE" -MOVING365DAYVOLUMEUNKNOWN "TEST_VALUE" -MOVING7DAYHIGH "TEST_VALUE" -MOVING7DAYLOW "TEST_VALUE" -MOVING7DAYOPEN "TEST_VALUE" -MOVING7DAYQUOTEVOLUME "TEST_VALUE" -MOVING7DAYQUOTEVOLUMEBUY "TEST_VALUE" -MOVING7DAYQUOTEVOLUMESELL "TEST_VALUE" -MOVING7DAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING7DAYTOTALTRADES "TEST_VALUE" -MOVING7DAYTOTALTRADESBUY "TEST_VALUE" -MOVING7DAYTOTALTRADESSELL "TEST_VALUE" -MOVING7DAYTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING7DAYVOLUME "TEST_VALUE" -MOVING7DAYVOLUMEBUY "TEST_VALUE" -MOVING7DAYVOLUMESELL "TEST_VALUE" -MOVING7DAYVOLUMEUNKNOWN "TEST_VALUE" -MOVING90DAYHIGH "TEST_VALUE" -MOVING90DAYLOW "TEST_VALUE" -MOVING90DAYOPEN "TEST_VALUE" -MOVING90DAYQUOTEVOLUME "TEST_VALUE" -MOVING90DAYQUOTEVOLUMEBUY "TEST_VALUE" -MOVING90DAYQUOTEVOLUMESELL "TEST_VALUE" -MOVING90DAYQUOTEVOLUMEUNKNOWN "TEST_VALUE" -MOVING90DAYTOTALTRADES "TEST_VALUE" -MOVING90DAYTOTALTRADESBUY "TEST_VALUE" -MOVING90DAYTOTALTRADESSELL "TEST_VALUE" -MOVING90DAYTOTALTRADESUNKNOWN "TEST_VALUE" -MOVING90DAYVOLUME "TEST_VALUE" -MOVING90DAYVOLUMEBUY "TEST_VALUE" -MOVING90DAYVOLUMESELL "TEST_VALUE" -MOVING90DAYVOLUMEUNKNOWN "TEST_VALUE" -PRICE "TEST_VALUE" -PRICEFLAG "TEST_VALUE" -PRICELASTUPDATETS "TEST_VALUE" -QUOTE "TEST_VALUE" -TOPASKLASTUPDATETS "TEST_VALUE" -TOPASKPRICE "TEST_VALUE" -TOPASKQUANTITY "TEST_VALUE" -TOPBIDLASTUPDATETS "TEST_VALUE" -TOPBIDPRICE "TEST_VALUE" -TOPBIDQUANTITY "TEST_VALUE" -TYPE "TEST_VALUE"
            #$NewObject | Should -BeOfType SPOTINSTRUMENTMARKETDATA
            #$NewObject.property | Should -Be 0
        }
    }
}