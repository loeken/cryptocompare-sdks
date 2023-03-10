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
	API_CLIENT_RESPONSE

create
	make

feature {NONE} -- Initialization

	make (a_response: detachable HTTP_CLIENT_RESPONSE; a_error: detachable API_ERROR; a_custom_deserializer: detachable FUNCTION [TUPLE [READABLE_STRING_8, READABLE_STRING_8, TYPE [detachable ANY]], detachable ANY])
		do
			response := a_response
			error := a_error
			deserializer := a_custom_deserializer
		end

feature -- Access

	has_error: BOOLEAN
			-- has error?
		do
			Result := response = Void and then attached error
		end

	status: INTEGER
			-- Status code of the response.
		do
			if attached response as l_response then
				Result := l_response.status
			end
		end

feature -- Data

	data (a_type: TYPE [detachable ANY]): detachable ANY
			-- Data representation of the HTTP Response.
		do
			if
				attached response as l_response  and then
				attached deserializer as l_deserializer and then
				attached l_response.body as l_body and then
				attached l_response.header ("Content-Type") as l_content_type
			then
				Result := (create {API_DESERIALIZER}).deserializer (l_deserializer, l_content_type, l_body, a_type)
			end
		end

feature -- Error

	error: detachable API_ERROR
			-- Internal client error.

feature {NONE} -- Implementation

	response: detachable HTTP_CLIENT_RESPONSE
			-- Low level response returned by the API call.

	deserializer: detachable FUNCTION [TUPLE [READABLE_STRING_8, READABLE_STRING_8, TYPE [detachable ANY]], detachable ANY]
			-- Function to map a response body with a given content type to the target in the domain model.

end
