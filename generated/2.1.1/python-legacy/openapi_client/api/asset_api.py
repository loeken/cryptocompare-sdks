# coding: utf-8

"""
    CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

    CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.  # noqa: E501

    The version of the OpenAPI document: 2.1.1
    Contact: data@cryptocompare.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from openapi_client.api_client import ApiClient
from openapi_client.exceptions import (  # noqa: F401
    ApiTypeError,
    ApiValueError
)


class AssetApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def asset_v1_data_by_address(self, address, chain_symbol, **kwargs):  # noqa: E501
        """asset_v1_data_by_address  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_address(address, chain_symbol, async_req=True)
        >>> result = thread.get()

        :param address: (required)
        :type address: str
        :param chain_symbol: (required)
        :type chain_symbol: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: GENERICRESPONSE
        """
        kwargs['_return_http_data_only'] = True
        return self.asset_v1_data_by_address_with_http_info(address, chain_symbol, **kwargs)  # noqa: E501

    def asset_v1_data_by_address_with_http_info(self, address, chain_symbol, **kwargs):  # noqa: E501
        """asset_v1_data_by_address  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_address_with_http_info(address, chain_symbol, async_req=True)
        >>> result = thread.get()

        :param address: (required)
        :type address: str
        :param chain_symbol: (required)
        :type chain_symbol: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _return_http_data_only: response data without head status code
                                       and headers
        :type _return_http_data_only: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the authentication
                              in the spec for a single request.
        :type _request_auth: dict, optional
        :type _content_type: string, optional: force content-type for the request
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: tuple(GENERICRESPONSE, status_code(int), headers(HTTPHeaderDict))
        """

        local_var_params = locals()

        all_params = [
            'address',
            'chain_symbol',
            'groups'
        ]
        all_params.extend(
            [
                'async_req',
                '_return_http_data_only',
                '_preload_content',
                '_request_timeout',
                '_request_auth',
                '_content_type',
                '_headers'
            ]
        )

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method asset_v1_data_by_address" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'address' is set
        if self.api_client.client_side_validation and local_var_params.get('address') is None:  # noqa: E501
            raise ApiValueError("Missing the required parameter `address` when calling `asset_v1_data_by_address`")  # noqa: E501
        # verify the required parameter 'chain_symbol' is set
        if self.api_client.client_side_validation and local_var_params.get('chain_symbol') is None:  # noqa: E501
            raise ApiValueError("Missing the required parameter `chain_symbol` when calling `asset_v1_data_by_address`")  # noqa: E501

        if self.api_client.client_side_validation and ('address' in local_var_params and  # noqa: E501
                                                        len(local_var_params['address']) > 500):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `address` when calling `asset_v1_data_by_address`, length must be less than or equal to `500`")  # noqa: E501
        if self.api_client.client_side_validation and ('address' in local_var_params and  # noqa: E501
                                                        len(local_var_params['address']) < 1):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `address` when calling `asset_v1_data_by_address`, length must be greater than or equal to `1`")  # noqa: E501
        if self.api_client.client_side_validation and ('chain_symbol' in local_var_params and  # noqa: E501
                                                        len(local_var_params['chain_symbol']) > 100):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `chain_symbol` when calling `asset_v1_data_by_address`, length must be less than or equal to `100`")  # noqa: E501
        if self.api_client.client_side_validation and ('chain_symbol' in local_var_params and  # noqa: E501
                                                        len(local_var_params['chain_symbol']) < 1):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `chain_symbol` when calling `asset_v1_data_by_address`, length must be greater than or equal to `1`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) > 2000):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_address`, length must be less than or equal to `2000`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) < 0):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_address`, length must be greater than or equal to `0`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if local_var_params.get('address') is not None:  # noqa: E501
            query_params.append(('address', local_var_params['address']))  # noqa: E501
        if local_var_params.get('chain_symbol') is not None:  # noqa: E501
            query_params.append(('chain_symbol', local_var_params['chain_symbol']))  # noqa: E501
        if local_var_params.get('groups') is not None:  # noqa: E501
            query_params.append(('groups', local_var_params['groups']))  # noqa: E501

        header_params = dict(local_var_params.get('_headers', {}))

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        response_types_map = {
            200: "GENERICRESPONSE",
            400: "Error",
            401: "Error",
            403: "Error",
            404: "Error",
            405: "Error",
            429: "Error",
            500: "Error",
            502: "Error",
            503: "Error",
        }

        return self.api_client.call_api(
            '/asset/v1/data/by/address', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_types_map=response_types_map,
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats,
            _request_auth=local_var_params.get('_request_auth'))

    def asset_v1_data_by_id(self, asset_id, **kwargs):  # noqa: E501
        """asset_v1_data_by_id  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_id(asset_id, async_req=True)
        >>> result = thread.get()

        :param asset_id: The asset id you are interested in (required)
        :type asset_id: int
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: GENERICRESPONSE
        """
        kwargs['_return_http_data_only'] = True
        return self.asset_v1_data_by_id_with_http_info(asset_id, **kwargs)  # noqa: E501

    def asset_v1_data_by_id_with_http_info(self, asset_id, **kwargs):  # noqa: E501
        """asset_v1_data_by_id  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_id_with_http_info(asset_id, async_req=True)
        >>> result = thread.get()

        :param asset_id: The asset id you are interested in (required)
        :type asset_id: int
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _return_http_data_only: response data without head status code
                                       and headers
        :type _return_http_data_only: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the authentication
                              in the spec for a single request.
        :type _request_auth: dict, optional
        :type _content_type: string, optional: force content-type for the request
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: tuple(GENERICRESPONSE, status_code(int), headers(HTTPHeaderDict))
        """

        local_var_params = locals()

        all_params = [
            'asset_id',
            'groups'
        ]
        all_params.extend(
            [
                'async_req',
                '_return_http_data_only',
                '_preload_content',
                '_request_timeout',
                '_request_auth',
                '_content_type',
                '_headers'
            ]
        )

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method asset_v1_data_by_id" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'asset_id' is set
        if self.api_client.client_side_validation and local_var_params.get('asset_id') is None:  # noqa: E501
            raise ApiValueError("Missing the required parameter `asset_id` when calling `asset_v1_data_by_id`")  # noqa: E501

        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) > 2000):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_id`, length must be less than or equal to `2000`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) < 0):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_id`, length must be greater than or equal to `0`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if local_var_params.get('asset_id') is not None:  # noqa: E501
            query_params.append(('asset_id', local_var_params['asset_id']))  # noqa: E501
        if local_var_params.get('groups') is not None:  # noqa: E501
            query_params.append(('groups', local_var_params['groups']))  # noqa: E501

        header_params = dict(local_var_params.get('_headers', {}))

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        response_types_map = {
            200: "GENERICRESPONSE",
            400: "Error",
            401: "Error",
            403: "Error",
            404: "Error",
            405: "Error",
            429: "Error",
            500: "Error",
            502: "Error",
            503: "Error",
        }

        return self.api_client.call_api(
            '/asset/v1/data/by/id', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_types_map=response_types_map,
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats,
            _request_auth=local_var_params.get('_request_auth'))

    def asset_v1_data_by_symbol(self, asset_symbol, **kwargs):  # noqa: E501
        """asset_v1_data_by_symbol  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_symbol(asset_symbol, async_req=True)
        >>> result = thread.get()

        :param asset_symbol: The asset symbol you are interested in (required)
        :type asset_symbol: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: GENERICRESPONSE
        """
        kwargs['_return_http_data_only'] = True
        return self.asset_v1_data_by_symbol_with_http_info(asset_symbol, **kwargs)  # noqa: E501

    def asset_v1_data_by_symbol_with_http_info(self, asset_symbol, **kwargs):  # noqa: E501
        """asset_v1_data_by_symbol  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_data_by_symbol_with_http_info(asset_symbol, async_req=True)
        >>> result = thread.get()

        :param asset_symbol: The asset symbol you are interested in (required)
        :type asset_symbol: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _return_http_data_only: response data without head status code
                                       and headers
        :type _return_http_data_only: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the authentication
                              in the spec for a single request.
        :type _request_auth: dict, optional
        :type _content_type: string, optional: force content-type for the request
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: tuple(GENERICRESPONSE, status_code(int), headers(HTTPHeaderDict))
        """

        local_var_params = locals()

        all_params = [
            'asset_symbol',
            'groups'
        ]
        all_params.extend(
            [
                'async_req',
                '_return_http_data_only',
                '_preload_content',
                '_request_timeout',
                '_request_auth',
                '_content_type',
                '_headers'
            ]
        )

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method asset_v1_data_by_symbol" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'asset_symbol' is set
        if self.api_client.client_side_validation and local_var_params.get('asset_symbol') is None:  # noqa: E501
            raise ApiValueError("Missing the required parameter `asset_symbol` when calling `asset_v1_data_by_symbol`")  # noqa: E501

        if self.api_client.client_side_validation and ('asset_symbol' in local_var_params and  # noqa: E501
                                                        len(local_var_params['asset_symbol']) > 100):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `asset_symbol` when calling `asset_v1_data_by_symbol`, length must be less than or equal to `100`")  # noqa: E501
        if self.api_client.client_side_validation and ('asset_symbol' in local_var_params and  # noqa: E501
                                                        len(local_var_params['asset_symbol']) < 1):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `asset_symbol` when calling `asset_v1_data_by_symbol`, length must be greater than or equal to `1`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) > 2000):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_symbol`, length must be less than or equal to `2000`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) < 0):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_data_by_symbol`, length must be greater than or equal to `0`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if local_var_params.get('asset_symbol') is not None:  # noqa: E501
            query_params.append(('asset_symbol', local_var_params['asset_symbol']))  # noqa: E501
        if local_var_params.get('groups') is not None:  # noqa: E501
            query_params.append(('groups', local_var_params['groups']))  # noqa: E501

        header_params = dict(local_var_params.get('_headers', {}))

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        response_types_map = {
            200: "GENERICRESPONSE",
            400: "Error",
            401: "Error",
            403: "Error",
            404: "Error",
            405: "Error",
            429: "Error",
            500: "Error",
            502: "Error",
            503: "Error",
        }

        return self.api_client.call_api(
            '/asset/v1/data/by/symbol', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_types_map=response_types_map,
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats,
            _request_auth=local_var_params.get('_request_auth'))

    def asset_v1_top_list(self, **kwargs):  # noqa: E501
        """asset_v1_top_list  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_top_list(async_req=True)
        >>> result = thread.get()

        :param page: The page number for the request to get {page_size} coins at the time.
        :type page: int
        :param page_size: The number of items returned per page
        :type page_size: int
        :param asset_type: The asset class/type
        :type asset_type: str
        :param sort_by: Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
        :type sort_by: str
        :param sort_direction: Sort direction ( DESC,ASC )
        :type sort_direction: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: GENERICRESPONSE
        """
        kwargs['_return_http_data_only'] = True
        return self.asset_v1_top_list_with_http_info(**kwargs)  # noqa: E501

    def asset_v1_top_list_with_http_info(self, **kwargs):  # noqa: E501
        """asset_v1_top_list  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.asset_v1_top_list_with_http_info(async_req=True)
        >>> result = thread.get()

        :param page: The page number for the request to get {page_size} coins at the time.
        :type page: int
        :param page_size: The number of items returned per page
        :type page_size: int
        :param asset_type: The asset class/type
        :type asset_type: str
        :param sort_by: Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
        :type sort_by: str
        :param sort_direction: Sort direction ( DESC,ASC )
        :type sort_direction: str
        :param groups:
        :type groups: str
        :param async_req: Whether to execute the request asynchronously.
        :type async_req: bool, optional
        :param _return_http_data_only: response data without head status code
                                       and headers
        :type _return_http_data_only: bool, optional
        :param _preload_content: if False, the urllib3.HTTPResponse object will
                                 be returned without reading/decoding response
                                 data. Default is True.
        :type _preload_content: bool, optional
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the authentication
                              in the spec for a single request.
        :type _request_auth: dict, optional
        :type _content_type: string, optional: force content-type for the request
        :return: Returns the result object.
                 If the method is called asynchronously,
                 returns the request thread.
        :rtype: tuple(GENERICRESPONSE, status_code(int), headers(HTTPHeaderDict))
        """

        local_var_params = locals()

        all_params = [
            'page',
            'page_size',
            'asset_type',
            'sort_by',
            'sort_direction',
            'groups'
        ]
        all_params.extend(
            [
                'async_req',
                '_return_http_data_only',
                '_preload_content',
                '_request_timeout',
                '_request_auth',
                '_content_type',
                '_headers'
            ]
        )

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method asset_v1_top_list" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        if self.api_client.client_side_validation and 'page' in local_var_params and local_var_params['page'] > 100:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `page` when calling `asset_v1_top_list`, must be a value less than or equal to `100`")  # noqa: E501
        if self.api_client.client_side_validation and 'page' in local_var_params and local_var_params['page'] < 1:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `page` when calling `asset_v1_top_list`, must be a value greater than or equal to `1`")  # noqa: E501
        if self.api_client.client_side_validation and 'page_size' in local_var_params and local_var_params['page_size'] > 100:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `page_size` when calling `asset_v1_top_list`, must be a value less than or equal to `100`")  # noqa: E501
        if self.api_client.client_side_validation and 'page_size' in local_var_params and local_var_params['page_size'] < 10:  # noqa: E501
            raise ApiValueError("Invalid value for parameter `page_size` when calling `asset_v1_top_list`, must be a value greater than or equal to `10`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) > 2000):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_top_list`, length must be less than or equal to `2000`")  # noqa: E501
        if self.api_client.client_side_validation and ('groups' in local_var_params and  # noqa: E501
                                                        len(local_var_params['groups']) < 0):  # noqa: E501
            raise ApiValueError("Invalid value for parameter `groups` when calling `asset_v1_top_list`, length must be greater than or equal to `0`")  # noqa: E501
        collection_formats = {}

        path_params = {}

        query_params = []
        if local_var_params.get('page') is not None:  # noqa: E501
            query_params.append(('page', local_var_params['page']))  # noqa: E501
        if local_var_params.get('page_size') is not None:  # noqa: E501
            query_params.append(('page_size', local_var_params['page_size']))  # noqa: E501
        if local_var_params.get('asset_type') is not None:  # noqa: E501
            query_params.append(('asset_type', local_var_params['asset_type']))  # noqa: E501
        if local_var_params.get('sort_by') is not None:  # noqa: E501
            query_params.append(('sort_by', local_var_params['sort_by']))  # noqa: E501
        if local_var_params.get('sort_direction') is not None:  # noqa: E501
            query_params.append(('sort_direction', local_var_params['sort_direction']))  # noqa: E501
        if local_var_params.get('groups') is not None:  # noqa: E501
            query_params.append(('groups', local_var_params['groups']))  # noqa: E501

        header_params = dict(local_var_params.get('_headers', {}))

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        response_types_map = {
            200: "GENERICRESPONSE",
            400: "Error",
            401: "Error",
            403: "Error",
            404: "Error",
            405: "Error",
            429: "Error",
            500: "Error",
            502: "Error",
            503: "Error",
        }

        return self.api_client.call_api(
            '/asset/v1/top/list', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_types_map=response_types_map,
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats,
            _request_auth=local_var_params.get('_request_auth'))