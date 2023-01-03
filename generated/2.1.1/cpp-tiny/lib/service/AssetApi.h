#ifndef TINY_CPP_CLIENT_AssetApi_H_
#define TINY_CPP_CLIENT_AssetApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "Error.h"
#include "GENERIC_RESPONSE.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class AssetApi : public Service {
public:
    AssetApi() = default;

    virtual ~AssetApi() = default;

    /**
    * .
    *
    * 
    * \param address  *Required*
    * \param chainSymbol  *Required*
    * \param groups 
    */
    Response<
                GENERIC_RESPONSE
        >
    assetV1DataByAddress(
            
            std::string address
            , 
            
            std::string chainSymbol
            , 
            
            std::string groups
            
    );
    /**
    * .
    *
    * 
    * \param assetId The asset id you are interested in *Required*
    * \param groups 
    */
    Response<
                GENERIC_RESPONSE
        >
    assetV1DataById(
            
            int assetId
            , 
            
            std::string groups
            
    );
    /**
    * .
    *
    * 
    * \param assetSymbol The asset symbol you are interested in *Required*
    * \param groups 
    */
    Response<
                GENERIC_RESPONSE
        >
    assetV1DataBySymbol(
            
            std::string assetSymbol
            , 
            
            std::string groups
            
    );
    /**
    * .
    *
    * 
    * \param page The page number for the request to get {page_size} coins at the time.
    * \param pageSize The number of items returned per page
    * \param assetType The asset class/type
    * \param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
    * \param sortDirection Sort direction ( DESC,ASC )
    * \param groups 
    */
    Response<
                GENERIC_RESPONSE
        >
    assetV1TopList(
            
            int page
            , 
            
            int pageSize
            , 
            
            std::string assetType
            , 
            
            std::string sortBy
            , 
            
            std::string sortDirection
            , 
            
            std::string groups
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_AssetApi_H_ */