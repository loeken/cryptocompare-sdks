/*
 * SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.h
 *
 * 
 */

#ifndef _SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_
#define _SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_


#include <string>
#include "SPOT_INSTRUMENT_HISTO_DATA.h"
#include <list>
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

class SPOT_INSTRUMENT_HISTO_DATA_RESPONSE : public Object {
public:
	/*! \brief Constructor.
	 */
	SPOT_INSTRUMENT_HISTO_DATA_RESPONSE();
	SPOT_INSTRUMENT_HISTO_DATA_RESPONSE(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SPOT_INSTRUMENT_HISTO_DATA_RESPONSE();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<SPOT_INSTRUMENT_HISTO_DATA> getData();

	/*! \brief Set 
	 */
	void setData(std::list <SPOT_INSTRUMENT_HISTO_DATA> data);
	/*! \brief Get 
	 */
	std::string getErr();

	/*! \brief Set 
	 */
	void setErr(std::string  err);

private:
	std::list <SPOT_INSTRUMENT_HISTO_DATA>data;
	std::string err;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_ */
