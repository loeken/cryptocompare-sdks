# coding: utf-8

"""
    CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

    CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.  # noqa: E501

    The version of the OpenAPI document: 2.1.1
    Contact: data@cryptocompare.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import openapi_client
from openapi_client.models.spotinstrumenthistodataresponse import SPOTINSTRUMENTHISTODATARESPONSE  # noqa: E501
from openapi_client.rest import ApiException

class TestSPOTINSTRUMENTHISTODATARESPONSE(unittest.TestCase):
    """SPOTINSTRUMENTHISTODATARESPONSE unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test SPOTINSTRUMENTHISTODATARESPONSE
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.spotinstrumenthistodataresponse.SPOTINSTRUMENTHISTODATARESPONSE()  # noqa: E501
        if include_optional :
            return SPOTINSTRUMENTHISTODATARESPONSE(
                data = [
                    openapi_client.models.spot_instrument_histo_data.SPOT_INSTRUMENT_HISTO_DATA(
                        base = '', 
                        close = 56, 
                        first_trade_price = 56, 
                        first_trade_timestamp = 56, 
                        high = 56, 
                        high_trade_price = 56, 
                        high_trade_timestamp = 56, 
                        instrument = '', 
                        last_trade_price = 56, 
                        last_trade_timestamp = 56, 
                        low = 56, 
                        low_trade_price = 56, 
                        low_trade_timestamp = 56, 
                        mapped_instrument = '', 
                        market = '', 
                        open = 56, 
                        quote = '', 
                        quote_volume = 56, 
                        quote_volume_buy = 56, 
                        quote_volume_sell = 56, 
                        quote_volume_unknown = 56, 
                        timestamp = 56, 
                        total_trades = 56, 
                        total_trades_buy = 56, 
                        total_trades_sell = 56, 
                        total_trades_unknown = 56, 
                        type = '', 
                        unit = '', 
                        volume = 56, 
                        volume_buy = 56, 
                        volume_sell = 56, 
                        volume_unknown = 56, )
                    ], 
                err = None
            )
        else :
            return SPOTINSTRUMENTHISTODATARESPONSE(
        )

    def testSPOTINSTRUMENTHISTODATARESPONSE(self):
        """Test SPOTINSTRUMENTHISTODATARESPONSE"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
