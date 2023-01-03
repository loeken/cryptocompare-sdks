/*
 * GENERIC_RESPONSE.h
 *
 * 
 */

#ifndef _GENERIC_RESPONSE_H_
#define _GENERIC_RESPONSE_H_


#include <string>
#include "GENERIC_RESPONSE_Data.h"
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

class GENERIC_RESPONSE : public Object {
public:
	/*! \brief Constructor.
	 */
	GENERIC_RESPONSE();
	GENERIC_RESPONSE(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GENERIC_RESPONSE();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	GENERIC_RESPONSE_Data getData();

	/*! \brief Set 
	 */
	void setData(GENERIC_RESPONSE_Data  data);
	/*! \brief Get 
	 */
	std::string getErr();

	/*! \brief Set 
	 */
	void setErr(std::string  err);

private:
	GENERIC_RESPONSE_Data data;
	std::string err;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GENERIC_RESPONSE_H_ */
