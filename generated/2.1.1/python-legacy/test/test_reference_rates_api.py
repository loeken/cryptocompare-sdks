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

import openapi_client
from openapi_client.api.reference_rates_api import ReferenceRatesApi  # noqa: E501
from openapi_client.rest import ApiException


class TestReferenceRatesApi(unittest.TestCase):
    """ReferenceRatesApi unit test stubs"""

    def setUp(self):
        self.api = openapi_client.api.reference_rates_api.ReferenceRatesApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_index_cc_v1_historical_days(self):
        """Test case for index_cc_v1_historical_days

        """
        pass

    def test_index_cc_v1_historical_hours(self):
        """Test case for index_cc_v1_historical_hours

        """
        pass

    def test_index_cc_v1_historical_messages(self):
        """Test case for index_cc_v1_historical_messages

        """
        pass

    def test_index_cc_v1_historical_messages_hour(self):
        """Test case for index_cc_v1_historical_messages_hour

        """
        pass

    def test_index_cc_v1_historical_minutes(self):
        """Test case for index_cc_v1_historical_minutes

        """
        pass

    def test_index_cc_v1_latest_instrument_metadata(self):
        """Test case for index_cc_v1_latest_instrument_metadata

        """
        pass

    def test_index_cc_v1_latest_tick(self):
        """Test case for index_cc_v1_latest_tick

        """
        pass

    def test_index_cc_v1_markets(self):
        """Test case for index_cc_v1_markets

        """
        pass

    def test_index_cc_v1_markets_instruments(self):
        """Test case for index_cc_v1_markets_instruments

        """
        pass

    def test_index_cc_v1_markets_instruments_unmapped(self):
        """Test case for index_cc_v1_markets_instruments_unmapped

        """
        pass


if __name__ == '__main__':
    unittest.main()
