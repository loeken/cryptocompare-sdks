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
class GENERIC_RESPONSE




feature --Access

    data: detachable GENERIC_RESPONSE_DATA
      
    err: detachable ANY
      

feature -- Change Element

    set_data (a_name: like data)
        -- Set 'data' with 'a_name'.
      do
        data := a_name
      ensure
        data_set: data = a_name
      end

    set_err (a_name: like err)
        -- Set 'err' with 'a_name'.
      do
        err := a_name
      ensure
        err_set: err = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass GENERIC_RESPONSE%N")
        if attached data as l_data then
          Result.append ("%Ndata:")
          Result.append (l_data.out)
          Result.append ("%N")
        end
        if attached err as l_err then
          Result.append ("%Nerr:")
          Result.append (l_err.out)
          Result.append ("%N")
        end
      end
end

