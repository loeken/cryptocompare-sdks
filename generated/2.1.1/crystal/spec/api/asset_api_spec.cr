# #CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
#
##CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
#
#The version of the OpenAPI document: 2.1.1
#Contact: data@cryptocompare.com
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 6.3.0-SNAPSHOT
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for OpenAPIClient::AssetApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "AssetApi" do
  describe "test an instance of AssetApi" do
    it "should create an instance of AssetApi" do
      api_instance = OpenAPIClient::AssetApi.new
      # TODO expect(api_instance).to be_instance_of(OpenAPIClient::AssetApi)
    end
  end

  # unit tests for asset_v1_data_by_address
  # @param address 
  # @param chain_symbol 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :groups 
  # @return [GENERICRESPONSE]
  describe "asset_v1_data_by_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for asset_v1_data_by_id
  # @param asset_id The asset id you are interested in
  # @param [Hash] opts the optional parameters
  # @option opts [String] :groups 
  # @return [GENERICRESPONSE]
  describe "asset_v1_data_by_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for asset_v1_data_by_symbol
  # @param asset_symbol The asset symbol you are interested in
  # @param [Hash] opts the optional parameters
  # @option opts [String] :groups 
  # @return [GENERICRESPONSE]
  describe "asset_v1_data_by_symbol test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for asset_v1_top_list
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page The page number for the request to get {page_size} coins at the time.
  # @option opts [Int32] :page_size The number of items returned per page
  # @option opts [String] :asset_type The asset class/type
  # @option opts [String] :sort_by Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
  # @option opts [String] :sort_direction Sort direction ( DESC,ASC )
  # @option opts [String] :groups 
  # @return [GENERICRESPONSE]
  describe "asset_v1_top_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end