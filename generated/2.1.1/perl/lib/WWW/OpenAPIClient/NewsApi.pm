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
package WWW::OpenAPIClient::NewsApi;

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
# news_v1_article_list
#
# 
#
# @param ARRAY[string] $source_ids Get articles from specific sources; either by their ids or keys (optional)
# @param string $lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to 'EN')
# @param ARRAY[string] $categories News article categories to return (optional)
# @param ARRAY[string] $exclude_categories News article categories to exclude from results (optional)
# @param int $to_ts Articles published on or before this timestamp (optional, default to -1)
{
    my $params = {
    'source_ids' => {
        data_type => 'ARRAY[string]',
        description => 'Get articles from specific sources; either by their ids or keys',
        required => '0',
    },
    'lang' => {
        data_type => 'string',
        description => 'The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)',
        required => '0',
    },
    'categories' => {
        data_type => 'ARRAY[string]',
        description => 'News article categories to return',
        required => '0',
    },
    'exclude_categories' => {
        data_type => 'ARRAY[string]',
        description => 'News article categories to exclude from results',
        required => '0',
    },
    'to_ts' => {
        data_type => 'int',
        description => 'Articles published on or before this timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'news_v1_article_list' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub news_v1_article_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/news/v1/article/list';

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
    if ( exists $args{'source_ids'}) {
        $query_params->{'source_ids'} = $self->{api_client}->to_query_value($args{'source_ids'});
    }

    # query params
    if ( exists $args{'lang'}) {
        $query_params->{'lang'} = $self->{api_client}->to_query_value($args{'lang'});
    }

    # query params
    if ( exists $args{'categories'}) {
        $query_params->{'categories'} = $self->{api_client}->to_query_value($args{'categories'});
    }

    # query params
    if ( exists $args{'exclude_categories'}) {
        $query_params->{'exclude_categories'} = $self->{api_client}->to_query_value($args{'exclude_categories'});
    }

    # query params
    if ( exists $args{'to_ts'}) {
        $query_params->{'to_ts'} = $self->{api_client}->to_query_value($args{'to_ts'});
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
# news_v1_category_list
#
# 
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'news_v1_category_list' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub news_v1_category_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/news/v1/category/list';

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
# news_v1_source_list
#
# 
#
# @param string $lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to 'EN')
# @param string $type RSS, API, TWITTER (optional, default to 'RSS')
# @param string $status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional, default to 'ACTIVE')
{
    my $params = {
    'lang' => {
        data_type => 'string',
        description => 'The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'RSS, API, TWITTER',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'The status for the  article source entry. Allowed values: ACTIVE, INACTIVE',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'news_v1_source_list' } = {
        summary => '',
        params => $params,
        returns => 'GENERICRESPONSE',
        };
}
# @return GENERICRESPONSE
#
sub news_v1_source_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/news/v1/source/list';

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
    if ( exists $args{'lang'}) {
        $query_params->{'lang'} = $self->{api_client}->to_query_value($args{'lang'});
    }

    # query params
    if ( exists $args{'type'}) {
        $query_params->{'type'} = $self->{api_client}->to_query_value($args{'type'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
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
