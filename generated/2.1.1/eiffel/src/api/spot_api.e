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
	SPOT_API

inherit

    API_I


feature -- API Access


	spot_v1_historical_days (market: STRING_32; instrument: STRING_32; groups: detachable LIST [STRING_32]; limit: INTEGER_32; to_ts: INTEGER_32; aggregate: INTEGER_32; fill: BOOLEAN; mapping_priority: STRING_32; response_format: STRING_32): detachable SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional, default to [])
			-- 
			-- argument: limit The number of data points to return (optional, default to 30)
			-- 
			-- argument: to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional, default to null)
			-- 
			-- argument: aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
			-- 
			-- argument: fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
		require
			limit_is_less_or_equal_than: limit <= 5000
     		limit_is_greater_or_equal_than: limit >= 1
			aggregate_is_less_or_equal_than: aggregate <= 30
     		aggregate_is_greater_or_equal_than: aggregate >= 1
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/days"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "groups", groups));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "limit", limit));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "to_ts", to_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "aggregate", aggregate));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "fill", fill));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_HISTO_DATA_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_HISTO_DATA_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_historical_hours (market: STRING_32; instrument: STRING_32; groups: detachable LIST [STRING_32]; limit: INTEGER_32; to_ts: INTEGER_32; aggregate: INTEGER_32; fill: BOOLEAN; mapping_priority: STRING_32; response_format: STRING_32): detachable SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional, default to [])
			-- 
			-- argument: limit The number of data points to return (optional, default to 30)
			-- 
			-- argument: to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional, default to null)
			-- 
			-- argument: aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
			-- 
			-- argument: fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
		require
			limit_is_less_or_equal_than: limit <= 2000
     		limit_is_greater_or_equal_than: limit >= 1
			aggregate_is_less_or_equal_than: aggregate <= 30
     		aggregate_is_greater_or_equal_than: aggregate >= 1
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/hours"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "groups", groups));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "limit", limit));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "to_ts", to_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "aggregate", aggregate));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "fill", fill));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_HISTO_DATA_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_HISTO_DATA_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_historical_minutes (market: STRING_32; instrument: STRING_32; groups: detachable LIST [STRING_32]; limit: INTEGER_32; to_ts: INTEGER_32; aggregate: INTEGER_32; fill: BOOLEAN; mapping_priority: STRING_32; response_format: STRING_32): detachable SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional, default to [])
			-- 
			-- argument: limit The number of data points to return (optional, default to 30)
			-- 
			-- argument: to_ts Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional, default to null)
			-- 
			-- argument: aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
			-- 
			-- argument: fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
		require
			limit_is_less_or_equal_than: limit <= 2000
     		limit_is_greater_or_equal_than: limit >= 1
			aggregate_is_less_or_equal_than: aggregate <= 30
     		aggregate_is_greater_or_equal_than: aggregate >= 1
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/minutes"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "groups", groups));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "limit", limit));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "to_ts", to_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "aggregate", aggregate));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "fill", fill));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_HISTO_DATA_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_HISTO_DATA_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_historical_orderbook_l2_snapshot_minute (market: STRING_32; instrument: STRING_32; minute_ts: INTEGER_32; depth: INTEGER_32; mapping_priority: STRING_32; response_format: STRING_32): detachable GENERIC_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: minute_ts Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. (required)
			-- 
			-- argument: depth The number of top bids and asks to return. (optional, default to 50)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- 
			-- Result GENERIC_RESPONSE
		require
			depth_is_less_or_equal_than: depth <= 20000
     		depth_is_greater_or_equal_than: depth >= 1
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/orderbook/l2/snapshot/minute"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "minute_ts", minute_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "depth", depth));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"api_key_header", "api_key_query">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { GENERIC_RESPONSE } l_response.data ({ GENERIC_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_historical_trades (market: STRING_32; instrument: STRING_32; after_ts: INTEGER_32; last_ccseq: INTEGER_32; limit: INTEGER_32; mapping_priority: STRING_32; response_format: STRING_32; return_404_on_empty_response: BOOLEAN): detachable SPOT_INSTRUMENT_TRADE_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: after_ts Unix timestamp in seconds of the earliest trade in the response. (optional, default to null)
			-- 
			-- argument: last_ccseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional, default to 0)
			-- 
			-- argument: limit The maximum number of trades to return (optional, default to 100)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- argument: return_404_on_empty_response If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional, default to false)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_TRADE_RESPONSE
		require
     		after_ts_is_greater_or_equal_than: after_ts >= 0
     		last_ccseq_is_greater_or_equal_than: last_ccseq >= 0
			limit_is_less_or_equal_than: limit <= 5000
     		limit_is_greater_or_equal_than: limit >= 1
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/trades"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "after_ts", after_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "last_ccseq", last_ccseq));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "limit", limit));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "return_404_on_empty_response", return_404_on_empty_response));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"api_key_header", "api_key_query">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_TRADE_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_TRADE_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_historical_trades_hour (market: STRING_32; instrument: STRING_32; hour_ts: INTEGER_32; mapping_priority: STRING_32; response_format: STRING_32; return_404_on_empty_response: BOOLEAN): detachable SPOT_INSTRUMENT_TRADE_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: hour_ts Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional, default to null)
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- argument: response_format The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
			-- 
			-- argument: return_404_on_empty_response If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional, default to false)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_TRADE_RESPONSE
		require
     		hour_ts_is_greater_or_equal_than: hour_ts >= 0
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/historical/trades/hour"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "hour_ts", hour_ts));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "response_format", response_format));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "return_404_on_empty_response", return_404_on_empty_response));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"api_key_header", "api_key_query">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_TRADE_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_TRADE_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_latest_instrument_metadata (market: STRING_32; instruments: LIST [STRING_32]; groups: detachable LIST [STRING_32]; mapping_priority: STRING_32): detachable SPOT_INSTRUMENT_METADATA_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional, default to [])
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_METADATA_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/latest/instrument/metadata"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "instruments", instruments));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "groups", groups));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_METADATA_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_METADATA_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_latest_tick (market: STRING_32; instruments: LIST [STRING_32]; groups: detachable LIST [STRING_32]; mapping_priority: STRING_32): detachable SPOT_INSTRUMENT_MARKET_DATA_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (required)
			-- 
			-- argument: instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. (required)
			-- 
			-- argument: groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional, default to [])
			-- 
			-- argument: mapping_priority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to CHECK_MAPPED_FIRST)
			-- 
			-- 
			-- Result SPOT_INSTRUMENT_MARKET_DATA_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/latest/tick"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "instruments", instruments));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "groups", groups));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "mapping_priority", mapping_priority));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { SPOT_INSTRUMENT_MARKET_DATA_RESPONSE } l_response.data ({ SPOT_INSTRUMENT_MARKET_DATA_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_markets (market: STRING_32): detachable GENERIC_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (optional, default to )
			-- 
			-- 
			-- Result GENERIC_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/markets"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { GENERIC_RESPONSE } l_response.data ({ GENERIC_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_markets_instruments (market: STRING_32; instrument: STRING_32; instrument_status: detachable LIST [STRING_32]): detachable GENERIC_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (optional, default to )
			-- 
			-- argument: instrument The mapped instrument to retrieve on a specific market. (optional, default to )
			-- 
			-- argument: instrument_status The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional, default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])
			-- 
			-- 
			-- Result GENERIC_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/markets/instruments"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "instrument_status", instrument_status));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { GENERIC_RESPONSE } l_response.data ({ GENERIC_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	spot_v1_markets_instruments_unmapped (market: STRING_32; instrument: STRING_32; instrument_status: detachable LIST [STRING_32]): detachable GENERIC_RESPONSE
			-- 
			-- 
			-- 
			-- argument: market The exchange to obtain data from (optional, default to )
			-- 
			-- argument: instrument The unmapped instrument to retrieve on a specific market. (optional, default to )
			-- 
			-- argument: instrument_status The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional, default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])
			-- 
			-- 
			-- Result GENERIC_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/spot/v1/markets/instruments/unmapped"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "market", market));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "instrument", instrument));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "instrument_status", instrument_status));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { GENERIC_RESPONSE } l_response.data ({ GENERIC_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end


end