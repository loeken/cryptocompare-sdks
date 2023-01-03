#ifndef _NewsManager_H_
#define _NewsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Error.h"
#include "GENERIC_RESPONSE.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup News News
 * \ingroup Operations
 *  @{
 */
class NewsManager {
public:
	NewsManager();
	virtual ~NewsManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param sourceIds Get articles from specific sources; either by their ids or keys
 * \param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * \param categories News article categories to return
 * \param excludeCategories News article categories to exclude from results
 * \param toTs Articles published on or before this timestamp
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1ArticleListSync(char * accessToken,
	std::list<std::string> sourceIds, std::string lang, std::list<std::string> categories, std::list<std::string> excludeCategories, int toTs, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param sourceIds Get articles from specific sources; either by their ids or keys
 * \param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * \param categories News article categories to return
 * \param excludeCategories News article categories to exclude from results
 * \param toTs Articles published on or before this timestamp
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1ArticleListAsync(char * accessToken,
	std::list<std::string> sourceIds, std::string lang, std::list<std::string> categories, std::list<std::string> excludeCategories, int toTs, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1CategoryListSync(char * accessToken,
	
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1CategoryListAsync(char * accessToken,
	
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * \param type RSS, API, TWITTER
 * \param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1SourceListSync(char * accessToken,
	std::string lang, std::string type, std::string status, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * \param type RSS, API, TWITTER
 * \param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool newsV1SourceListAsync(char * accessToken,
	std::string lang, std::string type, std::string status, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://data-api.cryptocompare.com";
	}
};
/** @}*/

}
}
#endif /* NewsManager_H_ */
