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
	API_CLIENT_REQUEST

inherit

	ANY
		redefine
			default_create
		end


feature -- Access

	default_create
		do
			create {ARRAYED_LIST [TUPLE [name: STRING; value: STRING]]} query_params.make (0)
			create header_params.make (0)
			create form_params.make (0)
			create auth_names.make_empty
		end

feature -- Access

	query_params: LIST [TUPLE [name: STRING; value: STRING]]
			-- List of query parameters as a pair name, value.

	header_params: STRING_TABLE [STRING]
			-- table of header parameters.

	form_params: STRING_TABLE [ANY]
			-- table of form parameters.

	body: detachable ANY
			--	The request body object.

	auth_names: ARRAY [STRING]
			-- The authentications to apply	.

feature -- Change Element

	fill_query_params (a_params: like query_params)
			-- Fill all of the elements in the specified list `a_params' to the end of
     		-- `query_params'.
		do
			query_params.fill (a_params)
		end

	add_header (new: STRING; key: READABLE_STRING_GENERAL)
			-- Update `header_params' so that `new' will be the item associated
			-- with `key'.
		do
			header_params.force (new, key)
		end

	add_form (new: ANY; key: READABLE_STRING_GENERAL)
			-- Update `form_params' so that `new' will be the item associated
			-- with `key'.
		do
			form_params.force (new, key)
		end

	set_body (a_body: like body)
			-- Set 	'body' with 'a_body'.
		do
			body := a_body
		ensure
			body_set: body = a_body
		end

	set_auth_names (a_auth_names: like auth_names)
			-- Set 'auth_names' with 'a_auth_names'.
		do
			auth_names := a_auth_names
		ensure
			auth_names_set: auth_names = a_auth_names
		end
end
