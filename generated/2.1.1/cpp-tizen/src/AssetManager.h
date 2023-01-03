#ifndef _AssetManager_H_
#define _AssetManager_H_

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
/** \addtogroup Asset Asset
 * \ingroup Operations
 *  @{
 */
class AssetManager {
public:
	AssetManager();
	virtual ~AssetManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param address  *Required*
 * \param chainSymbol  *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataByAddressSync(char * accessToken,
	std::string address, std::string chainSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param address  *Required*
 * \param chainSymbol  *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataByAddressAsync(char * accessToken,
	std::string address, std::string chainSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param assetId The asset id you are interested in *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataByIdSync(char * accessToken,
	int assetId, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param assetId The asset id you are interested in *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataByIdAsync(char * accessToken,
	int assetId, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param assetSymbol The asset symbol you are interested in *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataBySymbolSync(char * accessToken,
	std::string assetSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param assetSymbol The asset symbol you are interested in *Required*
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1DataBySymbolAsync(char * accessToken,
	std::string assetSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param page The page number for the request to get {page_size} coins at the time.
 * \param pageSize The number of items returned per page
 * \param assetType The asset class/type
 * \param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
 * \param sortDirection Sort direction ( DESC,ASC )
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1TopListSync(char * accessToken,
	int page, int pageSize, std::string assetType, std::string sortBy, std::string sortDirection, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param page The page number for the request to get {page_size} coins at the time.
 * \param pageSize The number of items returned per page
 * \param assetType The asset class/type
 * \param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
 * \param sortDirection Sort direction ( DESC,ASC )
 * \param groups 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool assetV1TopListAsync(char * accessToken,
	int page, int pageSize, std::string assetType, std::string sortBy, std::string sortDirection, std::string groups, 
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
#endif /* AssetManager_H_ */
