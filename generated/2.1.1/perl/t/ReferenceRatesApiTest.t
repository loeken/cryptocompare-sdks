=begin comment

CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

The version of the OpenAPI document: 2.1.1
Contact: data@cryptocompare.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::ReferenceRatesApi');

my $api = WWW::OpenAPIClient::ReferenceRatesApi->new();
isa_ok($api, 'WWW::OpenAPIClient::ReferenceRatesApi');

#
# index_cc_v1_historical_days test
#
# uncomment below and update the test
#my $index_cc_v1_historical_days_market = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_groups = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_limit = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_to_ts = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_aggregate = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_fill = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_response_format = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_days_result = $api->index_cc_v1_historical_days(market => $index_cc_v1_historical_days_market, instrument => $index_cc_v1_historical_days_instrument, groups => $index_cc_v1_historical_days_groups, limit => $index_cc_v1_historical_days_limit, to_ts => $index_cc_v1_historical_days_to_ts, aggregate => $index_cc_v1_historical_days_aggregate, fill => $index_cc_v1_historical_days_fill, mapping_priority => $index_cc_v1_historical_days_mapping_priority, response_format => $index_cc_v1_historical_days_response_format);

#
# index_cc_v1_historical_hours test
#
# uncomment below and update the test
#my $index_cc_v1_historical_hours_market = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_groups = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_limit = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_to_ts = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_aggregate = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_fill = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_response_format = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_hours_result = $api->index_cc_v1_historical_hours(market => $index_cc_v1_historical_hours_market, instrument => $index_cc_v1_historical_hours_instrument, groups => $index_cc_v1_historical_hours_groups, limit => $index_cc_v1_historical_hours_limit, to_ts => $index_cc_v1_historical_hours_to_ts, aggregate => $index_cc_v1_historical_hours_aggregate, fill => $index_cc_v1_historical_hours_fill, mapping_priority => $index_cc_v1_historical_hours_mapping_priority, response_format => $index_cc_v1_historical_hours_response_format);

#
# index_cc_v1_historical_messages test
#
# uncomment below and update the test
#my $index_cc_v1_historical_messages_market = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_after_ts = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_last_ccseq = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_limit = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_response_format = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_return_404_on_empty_response = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_result = $api->index_cc_v1_historical_messages(market => $index_cc_v1_historical_messages_market, instrument => $index_cc_v1_historical_messages_instrument, after_ts => $index_cc_v1_historical_messages_after_ts, last_ccseq => $index_cc_v1_historical_messages_last_ccseq, mapping_priority => $index_cc_v1_historical_messages_mapping_priority, limit => $index_cc_v1_historical_messages_limit, response_format => $index_cc_v1_historical_messages_response_format, return_404_on_empty_response => $index_cc_v1_historical_messages_return_404_on_empty_response);

#
# index_cc_v1_historical_messages_hour test
#
# uncomment below and update the test
#my $index_cc_v1_historical_messages_hour_market = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_hour_ts = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_response_format = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_return_404_on_empty_response = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_messages_hour_result = $api->index_cc_v1_historical_messages_hour(market => $index_cc_v1_historical_messages_hour_market, instrument => $index_cc_v1_historical_messages_hour_instrument, hour_ts => $index_cc_v1_historical_messages_hour_hour_ts, mapping_priority => $index_cc_v1_historical_messages_hour_mapping_priority, response_format => $index_cc_v1_historical_messages_hour_response_format, return_404_on_empty_response => $index_cc_v1_historical_messages_hour_return_404_on_empty_response);

#
# index_cc_v1_historical_minutes test
#
# uncomment below and update the test
#my $index_cc_v1_historical_minutes_market = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_groups = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_limit = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_to_ts = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_aggregate = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_fill = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_response_format = undef; # replace NULL with a proper value
#my $index_cc_v1_historical_minutes_result = $api->index_cc_v1_historical_minutes(market => $index_cc_v1_historical_minutes_market, instrument => $index_cc_v1_historical_minutes_instrument, groups => $index_cc_v1_historical_minutes_groups, limit => $index_cc_v1_historical_minutes_limit, to_ts => $index_cc_v1_historical_minutes_to_ts, aggregate => $index_cc_v1_historical_minutes_aggregate, fill => $index_cc_v1_historical_minutes_fill, mapping_priority => $index_cc_v1_historical_minutes_mapping_priority, response_format => $index_cc_v1_historical_minutes_response_format);

#
# index_cc_v1_latest_instrument_metadata test
#
# uncomment below and update the test
#my $index_cc_v1_latest_instrument_metadata_market = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_instrument_metadata_instruments = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_instrument_metadata_groups = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_instrument_metadata_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_instrument_metadata_result = $api->index_cc_v1_latest_instrument_metadata(market => $index_cc_v1_latest_instrument_metadata_market, instruments => $index_cc_v1_latest_instrument_metadata_instruments, groups => $index_cc_v1_latest_instrument_metadata_groups, mapping_priority => $index_cc_v1_latest_instrument_metadata_mapping_priority);

#
# index_cc_v1_latest_tick test
#
# uncomment below and update the test
#my $index_cc_v1_latest_tick_market = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_tick_instruments = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_tick_groups = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_tick_mapping_priority = undef; # replace NULL with a proper value
#my $index_cc_v1_latest_tick_result = $api->index_cc_v1_latest_tick(market => $index_cc_v1_latest_tick_market, instruments => $index_cc_v1_latest_tick_instruments, groups => $index_cc_v1_latest_tick_groups, mapping_priority => $index_cc_v1_latest_tick_mapping_priority);

#
# index_cc_v1_markets test
#
# uncomment below and update the test
#my $index_cc_v1_markets_market = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_result = $api->index_cc_v1_markets(market => $index_cc_v1_markets_market);

#
# index_cc_v1_markets_instruments test
#
# uncomment below and update the test
#my $index_cc_v1_markets_instruments_market = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_instrument_status = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_result = $api->index_cc_v1_markets_instruments(market => $index_cc_v1_markets_instruments_market, instrument => $index_cc_v1_markets_instruments_instrument, instrument_status => $index_cc_v1_markets_instruments_instrument_status);

#
# index_cc_v1_markets_instruments_unmapped test
#
# uncomment below and update the test
#my $index_cc_v1_markets_instruments_unmapped_market = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_unmapped_instrument = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_unmapped_instrument_status = undef; # replace NULL with a proper value
#my $index_cc_v1_markets_instruments_unmapped_result = $api->index_cc_v1_markets_instruments_unmapped(market => $index_cc_v1_markets_instruments_unmapped_market, instrument => $index_cc_v1_markets_instruments_unmapped_instrument, instrument_status => $index_cc_v1_markets_instruments_unmapped_instrument_status);

