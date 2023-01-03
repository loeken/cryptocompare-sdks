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
from openapi_client.models.spotinstrumentmetadataresponse import SPOTINSTRUMENTMETADATARESPONSE  # noqa: E501
from openapi_client.rest import ApiException

class TestSPOTINSTRUMENTMETADATARESPONSE(unittest.TestCase):
    """SPOTINSTRUMENTMETADATARESPONSE unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test SPOTINSTRUMENTMETADATARESPONSE
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.spotinstrumentmetadataresponse.SPOTINSTRUMENTMETADATARESPONSE()  # noqa: E501
        if include_optional :
            return SPOTINSTRUMENTMETADATARESPONSE(
                data = {
                    'key' : openapi_client.models.spot_instrument_metadata.SPOT_INSTRUMENT_METADATA(
                        first_seen_on_blob_ts = 56, 
                        first_seen_on_fix_ts = 56, 
                        first_seen_on_hardcoded_ts = 56, 
                        first_seen_on_index_composition_ts = 56, 
                        first_seen_on_nsq_ts = 56, 
                        first_seen_on_polling_ts = 56, 
                        first_seen_on_streaming_ts = 56, 
                        first_trade_spot_from_backfill = openapi_client.models.first_trade_spot_from_backfill.FIRST_TRADE_SPOT_FROM_BACKFILL(), 
                        first_trade_spot_from_backfill_external = openapi_client.models.first_trade_spot_from_backfill_external.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(), 
                        first_trade_spot_from_blob = openapi_client.models.first_trade_spot_from_blob.FIRST_TRADE_SPOT_FROM_BLOB(), 
                        first_trade_spot_from_blob_external = openapi_client.models.first_trade_spot_from_blob_external.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL(), 
                        first_trade_spot_from_calculated = openapi_client.models.first_trade_spot_from_calculated.FIRST_TRADE_SPOT_FROM_CALCULATED(), 
                        first_trade_spot_from_calculated_external = openapi_client.models.first_trade_spot_from_calculated_external.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(), 
                        first_trade_spot_from_fix = openapi_client.models.first_trade_spot_from_fix.FIRST_TRADE_SPOT_FROM_FIX(), 
                        first_trade_spot_from_fix_external = openapi_client.models.first_trade_spot_from_fix_external.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL(), 
                        first_trade_spot_from_go = openapi_client.models.first_trade_spot_from_go.FIRST_TRADE_SPOT_FROM_GO(), 
                        first_trade_spot_from_go_external = openapi_client.models.first_trade_spot_from_go_external.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL(), 
                        first_trade_spot_from_polling = openapi_client.models.first_trade_spot_from_polling.FIRST_TRADE_SPOT_FROM_POLLING(), 
                        first_trade_spot_from_polling_external = openapi_client.models.first_trade_spot_from_polling_external.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL(), 
                        first_trade_spot_from_streaming = openapi_client.models.first_trade_spot_from_streaming.FIRST_TRADE_SPOT_FROM_STREAMING(), 
                        first_trade_spot_from_streaming_external = openapi_client.models.first_trade_spot_from_streaming_external.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(), 
                        host_migration_destination = '', 
                        host_migration_source = '', 
                        host_migration_status = '', 
                        instrument = '', 
                        instrument_external_data = '', 
                        instrument_mapping = {}, 
                        instrument_mapping_history = [], 
                        instrument_source_backfill = '', 
                        instrument_source_blob = '', 
                        instrument_source_calculated = '', 
                        instrument_source_fix = '', 
                        instrument_source_go = '', 
                        instrument_source_polling = '', 
                        instrument_source_streaming = '', 
                        instrument_status = 'ACTIVE', 
                        instrument_trade_spot_from_backfill_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_backfill_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_backfill_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_backfill_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_backfill_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_blob_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_blob_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_blob_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_blob_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_blob_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_calculated_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_calculated_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_calculated_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_calculated_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_calculated_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_fix_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_fix_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_fix_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_fix_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_fix_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_go_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_go_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_go_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_go_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_go_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_polling_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_polling_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_polling_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_polling_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_polling_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_from_streaming_last_proxied_rest_request = openapi_client.models.instrument_trade_spot_from_streaming_last_proxied_rest_request.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST(), 
                        instrument_trade_spot_from_streaming_rest_uri_last_request_ts = 56, 
                        instrument_trade_spot_from_streaming_rest_uri_last_response_ts = 56, 
                        instrument_trade_spot_from_streaming_rest_uri_next_request_ts = 56, 
                        instrument_trade_spot_is_ready_for_streaming_integration = False, 
                        instrument_trade_spot_rest_uri = '', 
                        instrument_trade_spot_rest_url = '', 
                        instrument_trade_spot_streaming_subscription = '', 
                        last_concurrent_batch_of_trades_spot_ms = 56, 
                        last_seen_on_blob_ts = 56, 
                        last_seen_on_fix_ts = 56, 
                        last_seen_on_hardcoded_ts = 56, 
                        last_seen_on_index_composition_ts = 56, 
                        last_seen_on_nsq_ts = 56, 
                        last_seen_on_polling_ts = 56, 
                        last_seen_on_streaming_ts = 56, 
                        last_trade_spot_from_backfill = openapi_client.models.last_trade_spot_from_backfill.LAST_TRADE_SPOT_FROM_BACKFILL(), 
                        last_trade_spot_from_backfill_external = openapi_client.models.last_trade_spot_from_backfill_external.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(), 
                        last_trade_spot_from_blob = openapi_client.models.last_trade_spot_from_blob.LAST_TRADE_SPOT_FROM_BLOB(), 
                        last_trade_spot_from_blob_external = openapi_client.models.last_trade_spot_from_blob_external.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL(), 
                        last_trade_spot_from_calculated = openapi_client.models.last_trade_spot_from_calculated.LAST_TRADE_SPOT_FROM_CALCULATED(), 
                        last_trade_spot_from_calculated_external = openapi_client.models.last_trade_spot_from_calculated_external.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(), 
                        last_trade_spot_from_fix = openapi_client.models.last_trade_spot_from_fix.LAST_TRADE_SPOT_FROM_FIX(), 
                        last_trade_spot_from_fix_external = openapi_client.models.last_trade_spot_from_fix_external.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL(), 
                        last_trade_spot_from_go = openapi_client.models.last_trade_spot_from_go.LAST_TRADE_SPOT_FROM_GO(), 
                        last_trade_spot_from_go_external = openapi_client.models.last_trade_spot_from_go_external.LAST_TRADE_SPOT_FROM_GO_EXTERNAL(), 
                        last_trade_spot_from_polling = openapi_client.models.last_trade_spot_from_polling.LAST_TRADE_SPOT_FROM_POLLING(), 
                        last_trade_spot_from_polling_external = openapi_client.models.last_trade_spot_from_polling_external.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL(), 
                        last_trade_spot_from_streaming = openapi_client.models.last_trade_spot_from_streaming.LAST_TRADE_SPOT_FROM_STREAMING(), 
                        last_trade_spot_from_streaming_external = openapi_client.models.last_trade_spot_from_streaming_external.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(), 
                        metadata_version = 4, 
                        processing_trades_from_blob_status = '', 
                        total_trades_spot = 56, 
                        unstructured_trade_spot_from_backfill_internal_data = openapi_client.models.unstructured_trade_spot_from_backfill_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_blob_internal_data = openapi_client.models.unstructured_trade_spot_from_blob_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_calculated_internal_data = openapi_client.models.unstructured_trade_spot_from_calculated_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_fix_internal_data = openapi_client.models.unstructured_trade_spot_from_fix_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_go_internal_data = openapi_client.models.unstructured_trade_spot_from_go_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_polling_internal_data = openapi_client.models.unstructured_trade_spot_from_polling_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA(), 
                        unstructured_trade_spot_from_streaming_internal_data = openapi_client.models.unstructured_trade_spot_from_streaming_internal_data.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA(), )
                    }, 
                err = openapi_client.models.spot_instrument_market_data_response_err.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err(
                    message = 'Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST', 
                    other_info = openapi_client.models.spot_instrument_market_data_response_err_other_info.SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info(
                        param = 'instruments', 
                        values = ["INSTRUMENT-DOES-NOT-EXIST"], ), 
                    type = 1, )
            )
        else :
            return SPOTINSTRUMENTMETADATARESPONSE(
        )

    def testSPOTINSTRUMENTMETADATARESPONSE(self):
        """Test SPOTINSTRUMENTMETADATARESPONSE"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
