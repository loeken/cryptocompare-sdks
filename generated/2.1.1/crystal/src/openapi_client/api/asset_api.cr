# #CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
#
##CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
#
#The version of the OpenAPI document: 2.1.1
#Contact: data@cryptocompare.com
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 6.3.0-SNAPSHOT
#

require "uri"

module OpenAPIClient
  class AssetApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param address [String] 
    # @param chain_symbol [String] 
    # @return [GENERICRESPONSE]
    def asset_v1_data_by_address(address : String, chain_symbol : String, groups : String?)
      data, _status_code, _headers = asset_v1_data_by_address_with_http_info(address, chain_symbol, groups)
      data
    end

    # @param address [String] 
    # @param chain_symbol [String] 
    # @return [Array<(GENERICRESPONSE, Integer, Hash)>] GENERICRESPONSE data, response status code and response headers
    def asset_v1_data_by_address_with_http_info(address : String, chain_symbol : String, groups : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AssetApi.asset_v1_data_by_address ..."}
      end
      # verify the required parameter "address" is set
      if @api_client.config.client_side_validation && address.nil?
        raise ArgumentError.new("Missing the required parameter 'address' when calling AssetApi.asset_v1_data_by_address")
      end
      if @api_client.config.client_side_validation && address.to_s.size > 500
        raise ArgumentError.new("invalid value for \"address\" when calling AssetApi.asset_v1_data_by_address, the character length must be smaller than or equal to 500.")
      end

      if @api_client.config.client_side_validation && address.to_s.size < 1
        raise ArgumentError.new("invalid value for \"address\" when calling AssetApi.asset_v1_data_by_address, the character length must be great than or equal to 1.")
      end

      # verify the required parameter "chain_symbol" is set
      if @api_client.config.client_side_validation && chain_symbol.nil?
        raise ArgumentError.new("Missing the required parameter 'chain_symbol' when calling AssetApi.asset_v1_data_by_address")
      end
      if @api_client.config.client_side_validation && chain_symbol.to_s.size > 100
        raise ArgumentError.new("invalid value for \"chain_symbol\" when calling AssetApi.asset_v1_data_by_address, the character length must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && chain_symbol.to_s.size < 1
        raise ArgumentError.new("invalid value for \"chain_symbol\" when calling AssetApi.asset_v1_data_by_address, the character length must be great than or equal to 1.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size > 2000
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_address, the character length must be smaller than or equal to 2000.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size < 0
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_address, the character length must be great than or equal to 0.")
      end

      # resource path
      local_var_path = "/asset/v1/data/by/address"

      # query parameters
      query_params = Hash(String, String).new
      query_params["address"] = address.to_s unless address.nil?
      query_params["chain_symbol"] = chain_symbol.to_s unless chain_symbol.nil?
      query_params["groups"] = groups.to_s unless groups.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GENERICRESPONSE"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AssetApi.asset_v1_data_by_address",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AssetApi#asset_v1_data_by_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GENERICRESPONSE.from_json(data), status_code, headers
    end

    # @param asset_id [Int32] The asset id you are interested in
    # @return [GENERICRESPONSE]
    def asset_v1_data_by_id(asset_id : Int32, groups : String?)
      data, _status_code, _headers = asset_v1_data_by_id_with_http_info(asset_id, groups)
      data
    end

    # @param asset_id [Int32] The asset id you are interested in
    # @return [Array<(GENERICRESPONSE, Integer, Hash)>] GENERICRESPONSE data, response status code and response headers
    def asset_v1_data_by_id_with_http_info(asset_id : Int32, groups : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AssetApi.asset_v1_data_by_id ..."}
      end
      # verify the required parameter "asset_id" is set
      if @api_client.config.client_side_validation && asset_id.nil?
        raise ArgumentError.new("Missing the required parameter 'asset_id' when calling AssetApi.asset_v1_data_by_id")
      end
      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size > 2000
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_id, the character length must be smaller than or equal to 2000.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size < 0
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_id, the character length must be great than or equal to 0.")
      end

      # resource path
      local_var_path = "/asset/v1/data/by/id"

      # query parameters
      query_params = Hash(String, String).new
      query_params["asset_id"] = asset_id.to_s unless asset_id.nil?
      query_params["groups"] = groups.to_s unless groups.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GENERICRESPONSE"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AssetApi.asset_v1_data_by_id",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AssetApi#asset_v1_data_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GENERICRESPONSE.from_json(data), status_code, headers
    end

    # @param asset_symbol [String] The asset symbol you are interested in
    # @return [GENERICRESPONSE]
    def asset_v1_data_by_symbol(asset_symbol : String, groups : String?)
      data, _status_code, _headers = asset_v1_data_by_symbol_with_http_info(asset_symbol, groups)
      data
    end

    # @param asset_symbol [String] The asset symbol you are interested in
    # @return [Array<(GENERICRESPONSE, Integer, Hash)>] GENERICRESPONSE data, response status code and response headers
    def asset_v1_data_by_symbol_with_http_info(asset_symbol : String, groups : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AssetApi.asset_v1_data_by_symbol ..."}
      end
      # verify the required parameter "asset_symbol" is set
      if @api_client.config.client_side_validation && asset_symbol.nil?
        raise ArgumentError.new("Missing the required parameter 'asset_symbol' when calling AssetApi.asset_v1_data_by_symbol")
      end
      if @api_client.config.client_side_validation && asset_symbol.to_s.size > 100
        raise ArgumentError.new("invalid value for \"asset_symbol\" when calling AssetApi.asset_v1_data_by_symbol, the character length must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && asset_symbol.to_s.size < 1
        raise ArgumentError.new("invalid value for \"asset_symbol\" when calling AssetApi.asset_v1_data_by_symbol, the character length must be great than or equal to 1.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size > 2000
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_symbol, the character length must be smaller than or equal to 2000.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size < 0
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_data_by_symbol, the character length must be great than or equal to 0.")
      end

      # resource path
      local_var_path = "/asset/v1/data/by/symbol"

      # query parameters
      query_params = Hash(String, String).new
      query_params["asset_symbol"] = asset_symbol.to_s unless asset_symbol.nil?
      query_params["groups"] = groups.to_s unless groups.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GENERICRESPONSE"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AssetApi.asset_v1_data_by_symbol",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AssetApi#asset_v1_data_by_symbol\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GENERICRESPONSE.from_json(data), status_code, headers
    end

    # @return [GENERICRESPONSE]
    def asset_v1_top_list(page : Int32?, page_size : Int32?, asset_type : String?, sort_by : String?, sort_direction : String?, groups : String?)
      data, _status_code, _headers = asset_v1_top_list_with_http_info(page, page_size, asset_type, sort_by, sort_direction, groups)
      data
    end

    # @return [Array<(GENERICRESPONSE, Integer, Hash)>] GENERICRESPONSE data, response status code and response headers
    def asset_v1_top_list_with_http_info(page : Int32?, page_size : Int32?, asset_type : String?, sort_by : String?, sort_direction : String?, groups : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AssetApi.asset_v1_top_list ..."}
      end
      if @api_client.config.client_side_validation && !page.nil? && page > 100
        raise ArgumentError.new("invalid value for \"page\" when calling AssetApi.asset_v1_top_list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page.nil? && page < 1
        raise ArgumentError.new("invalid value for \"page\" when calling AssetApi.asset_v1_top_list, must be greater than or equal to 1.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 100
        raise ArgumentError.new("invalid value for \"page_size\" when calling AssetApi.asset_v1_top_list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 10
        raise ArgumentError.new("invalid value for \"page_size\" when calling AssetApi.asset_v1_top_list, must be greater than or equal to 10.")
      end

      allowable_values = ["CREATED_ON", "UPDATED_ON", "SYMBOL"]
      if @api_client.config.client_side_validation && sort_by && !allowable_values.includes?(sort_by)
        raise ArgumentError.new("invalid value for \"sort_by\", must be one of #{allowable_values}")
      end
      allowable_values = ["DESC", "ASC"]
      if @api_client.config.client_side_validation && sort_direction && !allowable_values.includes?(sort_direction)
        raise ArgumentError.new("invalid value for \"sort_direction\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size > 2000
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_top_list, the character length must be smaller than or equal to 2000.")
      end

      if @api_client.config.client_side_validation && !groups.nil? && groups.to_s.size < 0
        raise ArgumentError.new("invalid value for \"groups\" when calling AssetApi.asset_v1_top_list, the character length must be great than or equal to 0.")
      end

      # resource path
      local_var_path = "/asset/v1/top/list"

      # query parameters
      query_params = Hash(String, String).new
      query_params["page"] = page.to_s unless page.nil?
      query_params["page_size"] = page_size.to_s unless page_size.nil?
      query_params["asset_type"] = asset_type.to_s unless asset_type.nil?
      query_params["sort_by"] = sort_by.to_s unless sort_by.nil?
      query_params["sort_direction"] = sort_direction.to_s unless sort_direction.nil?
      query_params["groups"] = groups.to_s unless groups.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GENERICRESPONSE"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AssetApi.asset_v1_top_list",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AssetApi#asset_v1_top_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GENERICRESPONSE.from_json(data), status_code, headers
    end
  end
end
