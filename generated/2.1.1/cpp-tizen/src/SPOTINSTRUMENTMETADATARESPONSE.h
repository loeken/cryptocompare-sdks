/*
 * SPOT_INSTRUMENT_METADATA_RESPONSE.h
 *
 * 
 */

#ifndef _SPOT_INSTRUMENT_METADATA_RESPONSE_H_
#define _SPOT_INSTRUMENT_METADATA_RESPONSE_H_


#include <string>
#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h"
#include "SPOT_INSTRUMENT_METADATA.h"
#include <map>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_METADATA_RESPONSE : public Object {
public:
	/*! \brief Constructor.
	 */
	SPOT_INSTRUMENT_METADATA_RESPONSE();
	SPOT_INSTRUMENT_METADATA_RESPONSE(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SPOT_INSTRUMENT_METADATA_RESPONSE();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::map<std::string, std::string> getData();

	/*! \brief Set 
	 */
	void setData(std::map <std::string, std::string> data);
	/*! \brief Get 
	 */
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err getErr();

	/*! \brief Set 
	 */
	void setErr(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err  err);

private:
	std::map <std::string, std::string>data;
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err err;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SPOT_INSTRUMENT_METADATA_RESPONSE_H_ */
