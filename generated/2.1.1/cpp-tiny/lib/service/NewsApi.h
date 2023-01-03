#ifndef TINY_CPP_CLIENT_NewsApi_H_
#define TINY_CPP_CLIENT_NewsApi_H_


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

class NewsApi : public Service {
public:
    NewsApi() = default;

    virtual ~NewsApi() = default;

    /**
    * .
    *
    * 
    * \param sourceIds Get articles from specific sources; either by their ids or keys
    * \param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
    * \param categories News article categories to return
    * \param excludeCategories News article categories to exclude from results
    * \param toTs Articles published on or before this timestamp
    */
    Response<
                GENERIC_RESPONSE
        >
    newsV1ArticleList(
            std::list<std::string> sourceIds
            
            , 
            
            std::string lang
            , 
            std::list<std::string> categories
            
            , 
            std::list<std::string> excludeCategories
            
            , 
            
            int toTs
            
    );
    /**
    * .
    *
    * 
    */
    Response<
                GENERIC_RESPONSE
        >
    newsV1CategoryList(
    );
    /**
    * .
    *
    * 
    * \param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
    * \param type RSS, API, TWITTER
    * \param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
    */
    Response<
                GENERIC_RESPONSE
        >
    newsV1SourceList(
            
            std::string lang
            , 
            
            std::string type
            , 
            
            std::string status
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_NewsApi_H_ */