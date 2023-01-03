/*
 * SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h
 *
 * 
 */

#ifndef _SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H_
#define _SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H_


#include <string>
#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h"
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

class SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err : public Object {
public:
	/*! \brief Constructor.
	 */
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err();
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get A message describing the error
	 */
	std::string getMessage();

	/*! \brief Set A message describing the error
	 */
	void setMessage(std::string  message);
	/*! \brief Get 
	 */
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info getOtherInfo();

	/*! \brief Set 
	 */
	void setOtherInfo(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info  other_info);
	/*! \brief Get A public facing error type. If you want to treat a specific error use the type.
	 */
	int getType();

	/*! \brief Set A public facing error type. If you want to treat a specific error use the type.
	 */
	void setType(int  type);

private:
	std::string message;
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info other_info;
	int type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H_ */
