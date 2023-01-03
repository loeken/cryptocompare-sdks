=begin comment

CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

The version of the OpenAPI document: 2.1.1
Contact: data@cryptocompare.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::OverviewApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# overview_v1_historical_marketcap_all_assets_days
#
# 
#
# @param ARRAY[string] $groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
# @param int $limit The number of data points to return (optional, default to 30)
# @param int $to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
# @param int $aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
# @param boolean $fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
# @param string $response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to 'JSON')
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The number of data points to return',
        required => '0',
    },
    'to_ts' => {
        data_type => 'int',
        description => 'Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}',
        required => '0',
    },
    'aggregate' => {
        data_type => 'int',
        description => 'The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries',
        required => '0',
    },
    'fill' => {
        data_type => 'boolean',
        description => 'Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.',
        required => '0',
    },
    'response_format' => {
        data_type => 'string',
        description => 'The format of the data response in uppercase. It can be one of the following: JSON,CSV',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_historical_marketcap_all_assets_days' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_historical_marketcap_all_assets_days {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/historical/marketcap/all/assets/days';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'to_ts'}) {
        $query_params->{'to_ts'} = $self->{api_client}->to_query_value($args{'to_ts'});
    }

    # query params
    if ( exists $args{'aggregate'}) {
        $query_params->{'aggregate'} = $self->{api_client}->to_query_value($args{'aggregate'});
    }

    # query params
    if ( exists $args{'fill'}) {
        $query_params->{'fill'} = $self->{api_client}->to_query_value($args{'fill'});
    }

    # query params
    if ( exists $args{'response_format'}) {
        $query_params->{'response_format'} = $self->{api_client}->to_query_value($args{'response_format'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

#
# overview_v1_historical_marketcap_all_assets_hours
#
# 
#
# @param ARRAY[string] $groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
# @param int $limit The number of data points to return (optional, default to 30)
# @param int $to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
# @param int $aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
# @param boolean $fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
# @param string $response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to 'JSON')
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The number of data points to return',
        required => '0',
    },
    'to_ts' => {
        data_type => 'int',
        description => 'Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}',
        required => '0',
    },
    'aggregate' => {
        data_type => 'int',
        description => 'The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries',
        required => '0',
    },
    'fill' => {
        data_type => 'boolean',
        description => 'Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.',
        required => '0',
    },
    'response_format' => {
        data_type => 'string',
        description => 'The format of the data response in uppercase. It can be one of the following: JSON,CSV',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_historical_marketcap_all_assets_hours' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_historical_marketcap_all_assets_hours {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/historical/marketcap/all/assets/hours';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'to_ts'}) {
        $query_params->{'to_ts'} = $self->{api_client}->to_query_value($args{'to_ts'});
    }

    # query params
    if ( exists $args{'aggregate'}) {
        $query_params->{'aggregate'} = $self->{api_client}->to_query_value($args{'aggregate'});
    }

    # query params
    if ( exists $args{'fill'}) {
        $query_params->{'fill'} = $self->{api_client}->to_query_value($args{'fill'});
    }

    # query params
    if ( exists $args{'response_format'}) {
        $query_params->{'response_format'} = $self->{api_client}->to_query_value($args{'response_format'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

#
# overview_v1_historical_marketcap_ftw_assets_days
#
# 
#
# @param ARRAY[string] $groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
# @param int $limit The number of data points to return (optional, default to 30)
# @param int $to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
# @param int $aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
# @param boolean $fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
# @param string $response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to 'JSON')
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The number of data points to return',
        required => '0',
    },
    'to_ts' => {
        data_type => 'int',
        description => 'Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}',
        required => '0',
    },
    'aggregate' => {
        data_type => 'int',
        description => 'The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries',
        required => '0',
    },
    'fill' => {
        data_type => 'boolean',
        description => 'Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.',
        required => '0',
    },
    'response_format' => {
        data_type => 'string',
        description => 'The format of the data response in uppercase. It can be one of the following: JSON,CSV',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_historical_marketcap_ftw_assets_days' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_historical_marketcap_ftw_assets_days {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/historical/marketcap/ftw/assets/days';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'to_ts'}) {
        $query_params->{'to_ts'} = $self->{api_client}->to_query_value($args{'to_ts'});
    }

    # query params
    if ( exists $args{'aggregate'}) {
        $query_params->{'aggregate'} = $self->{api_client}->to_query_value($args{'aggregate'});
    }

    # query params
    if ( exists $args{'fill'}) {
        $query_params->{'fill'} = $self->{api_client}->to_query_value($args{'fill'});
    }

    # query params
    if ( exists $args{'response_format'}) {
        $query_params->{'response_format'} = $self->{api_client}->to_query_value($args{'response_format'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

#
# overview_v1_historical_marketcap_ftw_assets_hours
#
# 
#
# @param ARRAY[string] $groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
# @param int $limit The number of data points to return (optional, default to 30)
# @param int $to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
# @param int $aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
# @param boolean $fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
# @param string $response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to 'JSON')
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'The number of data points to return',
        required => '0',
    },
    'to_ts' => {
        data_type => 'int',
        description => 'Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}',
        required => '0',
    },
    'aggregate' => {
        data_type => 'int',
        description => 'The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries',
        required => '0',
    },
    'fill' => {
        data_type => 'boolean',
        description => 'Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.',
        required => '0',
    },
    'response_format' => {
        data_type => 'string',
        description => 'The format of the data response in uppercase. It can be one of the following: JSON,CSV',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_historical_marketcap_ftw_assets_hours' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_historical_marketcap_ftw_assets_hours {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/historical/marketcap/ftw/assets/hours';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'to_ts'}) {
        $query_params->{'to_ts'} = $self->{api_client}->to_query_value($args{'to_ts'});
    }

    # query params
    if ( exists $args{'aggregate'}) {
        $query_params->{'aggregate'} = $self->{api_client}->to_query_value($args{'aggregate'});
    }

    # query params
    if ( exists $args{'fill'}) {
        $query_params->{'fill'} = $self->{api_client}->to_query_value($args{'fill'});
    }

    # query params
    if ( exists $args{'response_format'}) {
        $query_params->{'response_format'} = $self->{api_client}->to_query_value($args{'response_format'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

#
# overview_v1_latest_marketcap_all_tick
#
# 
#
# @param ARRAY[string] $groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_latest_marketcap_all_tick' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_latest_marketcap_all_tick {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/latest/marketcap/all/tick';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

#
# overview_v1_latest_marketcap_ftw_tick
#
# 
#
# @param ARRAY[string] $groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
{
    my $params = {
    'groups' => {
        data_type => 'ARRAY[string]',
        description => 'When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'overview_v1_latest_marketcap_ftw_tick' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub overview_v1_latest_marketcap_ftw_tick {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/overview/v1/latest/marketcap/ftw/tick';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'groups'}) {
        $query_params->{'groups'} = $self->{api_client}->to_query_value($args{'groups'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GENERICRESPONSE', $response);
    return $_response_object;
}

1;
