# #CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
#
##CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
#
#The version of the OpenAPI document: 2.1.1
#Contact: data@cryptocompare.com
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 6.3.0-SNAPSHOT
#

# load modules
require "spec"
require "json"
require "../src/openapi_client"

def assert_compilation_error(path : String, message : String) : Nil
  buffer = IO::Memory.new
  result = Process.run("crystal", ["run", "--no-color", "--no-codegen", path], error: buffer)
  result.success?.should be_false
  buffer.to_s.should contain message
  buffer.close
end
