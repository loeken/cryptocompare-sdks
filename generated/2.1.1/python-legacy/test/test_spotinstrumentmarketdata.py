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
from openapi_client.models.spotinstrumentmarketdata import SPOTINSTRUMENTMARKETDATA  # noqa: E501
from openapi_client.rest import ApiException

class TestSPOTINSTRUMENTMARKETDATA(unittest.TestCase):
    """SPOTINSTRUMENTMARKETDATA unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test SPOTINSTRUMENTMARKETDATA
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.spotinstrumentmarketdata.SPOTINSTRUMENTMARKETDATA()  # noqa: E501
        if include_optional :
            return SPOTINSTRUMENTMARKETDATA(
                base = '', 
                ccseq = 56, 
                current_day_high = 56, 
                current_day_low = 56, 
                current_day_open = 56, 
                current_day_quote_volume = 56, 
                current_day_quote_volume_buy = 56, 
                current_day_quote_volume_sell = 56, 
                current_day_quote_volume_unknown = 56, 
                current_day_total_trades = 56, 
                current_day_total_trades_buy = 56, 
                current_day_total_trades_sell = 56, 
                current_day_total_trades_unknown = 56, 
                current_day_volume = 56, 
                current_day_volume_buy = 56, 
                current_day_volume_sell = 56, 
                current_day_volume_unknown = 56, 
                current_hour_high = 56, 
                current_hour_low = 56, 
                current_hour_open = 56, 
                current_hour_quote_volume = 56, 
                current_hour_quote_volume_buy = 56, 
                current_hour_quote_volume_sell = 56, 
                current_hour_quote_volume_unknown = 56, 
                current_hour_total_trades = 56, 
                current_hour_total_trades_buy = 56, 
                current_hour_total_trades_sell = 56, 
                current_hour_total_trades_unknown = 56, 
                current_hour_volume = 56, 
                current_hour_volume_buy = 56, 
                current_hour_volume_sell = 56, 
                current_hour_volume_unknown = 56, 
                current_month_high = 56, 
                current_month_low = 56, 
                current_month_open = 56, 
                current_month_quote_volume = 56, 
                current_month_quote_volume_buy = 56, 
                current_month_quote_volume_sell = 56, 
                current_month_quote_volume_unknown = 56, 
                current_month_total_trades = 56, 
                current_month_total_trades_buy = 56, 
                current_month_total_trades_sell = 56, 
                current_month_total_trades_unknown = 56, 
                current_month_volume = 56, 
                current_month_volume_buy = 56, 
                current_month_volume_sell = 56, 
                current_month_volume_unknown = 56, 
                current_week_high = 56, 
                current_week_low = 56, 
                current_week_open = 56, 
                current_week_quote_volume = 56, 
                current_week_quote_volume_buy = 56, 
                current_week_quote_volume_sell = 56, 
                current_week_quote_volume_unknown = 56, 
                current_week_total_trades = 56, 
                current_week_total_trades_buy = 56, 
                current_week_total_trades_sell = 56, 
                current_week_total_trades_unknown = 56, 
                current_week_volume = 56, 
                current_week_volume_buy = 56, 
                current_week_volume_sell = 56, 
                current_week_volume_unknown = 56, 
                current_year_high = 56, 
                current_year_low = 56, 
                current_year_open = 56, 
                current_year_quote_volume = 56, 
                current_year_quote_volume_buy = 56, 
                current_year_quote_volume_sell = 56, 
                current_year_quote_volume_unknown = 56, 
                current_year_total_trades = 56, 
                current_year_total_trades_buy = 56, 
                current_year_total_trades_sell = 56, 
                current_year_total_trades_unknown = 56, 
                current_year_volume = 56, 
                current_year_volume_buy = 56, 
                current_year_volume_sell = 56, 
                current_year_volume_unknown = 56, 
                instrument = '', 
                last_processed_trade_ccseq = '', 
                last_processed_trade_price = 56, 
                last_processed_trade_quantity = 56, 
                last_processed_trade_quote_quantity = 56, 
                last_processed_trade_side = '', 
                last_processed_trade_ts = 56, 
                last_trade_ccseq = '', 
                last_trade_id = '', 
                last_trade_quantity = 56, 
                last_trade_quote_quantity = 56, 
                last_trade_side = '', 
                lifetime_first_trade_ts = 56, 
                lifetime_high = 56, 
                lifetime_high_ts = 56, 
                lifetime_low = 56, 
                lifetime_low_ts = 56, 
                lifetime_open = 56, 
                lifetime_quote_volume = 56, 
                lifetime_quote_volume_buy = 56, 
                lifetime_quote_volume_sell = 56, 
                lifetime_quote_volume_unknown = 56, 
                lifetime_total_trades = 56, 
                lifetime_total_trades_buy = 56, 
                lifetime_total_trades_sell = 56, 
                lifetime_total_trades_unknown = 56, 
                lifetime_volume = 56, 
                lifetime_volume_buy = 56, 
                lifetime_volume_sell = 56, 
                lifetime_volume_unknown = 56, 
                mapped_instrument = '', 
                market = '', 
                moving_180_day_high = 56, 
                moving_180_day_low = 56, 
                moving_180_day_open = 56, 
                moving_180_day_quote_volume = 56, 
                moving_180_day_quote_volume_buy = 56, 
                moving_180_day_quote_volume_sell = 56, 
                moving_180_day_quote_volume_unknown = 56, 
                moving_180_day_total_trades = 56, 
                moving_180_day_total_trades_buy = 56, 
                moving_180_day_total_trades_sell = 56, 
                moving_180_day_total_trades_unknown = 56, 
                moving_180_day_volume = 56, 
                moving_180_day_volume_buy = 56, 
                moving_180_day_volume_sell = 56, 
                moving_180_day_volume_unknown = 56, 
                moving_24_hour_high = 56, 
                moving_24_hour_low = 56, 
                moving_24_hour_open = 56, 
                moving_24_hour_quote_volume = 56, 
                moving_24_hour_quote_volume_buy = 56, 
                moving_24_hour_quote_volume_sell = 56, 
                moving_24_hour_quote_volume_unknown = 56, 
                moving_24_hour_total_trades = 56, 
                moving_24_hour_total_trades_buy = 56, 
                moving_24_hour_total_trades_sell = 56, 
                moving_24_hour_total_trades_unknown = 56, 
                moving_24_hour_volume = 56, 
                moving_24_hour_volume_buy = 56, 
                moving_24_hour_volume_sell = 56, 
                moving_24_hour_volume_unknown = 56, 
                moving_30_day_high = 56, 
                moving_30_day_low = 56, 
                moving_30_day_open = 56, 
                moving_30_day_quote_volume = 56, 
                moving_30_day_quote_volume_buy = 56, 
                moving_30_day_quote_volume_sell = 56, 
                moving_30_day_quote_volume_unknown = 56, 
                moving_30_day_total_trades = 56, 
                moving_30_day_total_trades_buy = 56, 
                moving_30_day_total_trades_sell = 56, 
                moving_30_day_total_trades_unknown = 56, 
                moving_30_day_volume = 56, 
                moving_30_day_volume_buy = 56, 
                moving_30_day_volume_sell = 56, 
                moving_30_day_volume_unknown = 56, 
                moving_365_day_high = 56, 
                moving_365_day_low = 56, 
                moving_365_day_open = 56, 
                moving_365_day_quote_volume = 56, 
                moving_365_day_quote_volume_buy = 56, 
                moving_365_day_quote_volume_sell = 56, 
                moving_365_day_quote_volume_unknown = 56, 
                moving_365_day_total_trades = 56, 
                moving_365_day_total_trades_buy = 56, 
                moving_365_day_total_trades_sell = 56, 
                moving_365_day_total_trades_unknown = 56, 
                moving_365_day_volume = 56, 
                moving_365_day_volume_buy = 56, 
                moving_365_day_volume_sell = 56, 
                moving_365_day_volume_unknown = 56, 
                moving_7_day_high = 56, 
                moving_7_day_low = 56, 
                moving_7_day_open = 56, 
                moving_7_day_quote_volume = 56, 
                moving_7_day_quote_volume_buy = 56, 
                moving_7_day_quote_volume_sell = 56, 
                moving_7_day_quote_volume_unknown = 56, 
                moving_7_day_total_trades = 56, 
                moving_7_day_total_trades_buy = 56, 
                moving_7_day_total_trades_sell = 56, 
                moving_7_day_total_trades_unknown = 56, 
                moving_7_day_volume = 56, 
                moving_7_day_volume_buy = 56, 
                moving_7_day_volume_sell = 56, 
                moving_7_day_volume_unknown = 56, 
                moving_90_day_high = 56, 
                moving_90_day_low = 56, 
                moving_90_day_open = 56, 
                moving_90_day_quote_volume = 56, 
                moving_90_day_quote_volume_buy = 56, 
                moving_90_day_quote_volume_sell = 56, 
                moving_90_day_quote_volume_unknown = 56, 
                moving_90_day_total_trades = 56, 
                moving_90_day_total_trades_buy = 56, 
                moving_90_day_total_trades_sell = 56, 
                moving_90_day_total_trades_unknown = 56, 
                moving_90_day_volume = 56, 
                moving_90_day_volume_buy = 56, 
                moving_90_day_volume_sell = 56, 
                moving_90_day_volume_unknown = 56, 
                price = 56, 
                price_flag = '', 
                price_last_update_ts = 56, 
                quote = '', 
                top_ask_last_update_ts = 56, 
                top_ask_price = 56, 
                top_ask_quantity = 56, 
                top_bid_last_update_ts = 56, 
                top_bid_price = 56, 
                top_bid_quantity = 56, 
                type = ''
            )
        else :
            return SPOTINSTRUMENTMARKETDATA(
        )

    def testSPOTINSTRUMENTMARKETDATA(self):
        """Test SPOTINSTRUMENTMARKETDATA"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
