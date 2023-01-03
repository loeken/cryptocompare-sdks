note
 description:"[
		CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 		CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
  		The version of the OpenAPI document: 2.1.1
 	    Contact: data@cryptocompare.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	API_DESERIALIZER

feature -- Access

	deserializer (f: FUNCTION [TUPLE [content_type:READABLE_STRING_8; body:READABLE_STRING_8; type:TYPE [detachable ANY]], detachable ANY]; a_content_type: READABLE_STRING_8; a_body: READABLE_STRING_8; a_type:TYPE [detachable ANY]): detachable ANY
			-- From a given response deserialize body `a_body' with content_type `a_content_type' to a target object of type `a_type'.
		do
			Result := f.item ([a_content_type, a_body, a_type])
		end
end
