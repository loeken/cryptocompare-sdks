/*
 * GENERIC_RESPONSE_Data.h
 *
 * 
 */

#ifndef _GENERIC_RESPONSE_Data_H_
#define _GENERIC_RESPONSE_Data_H_


#include <string>
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

class GENERIC_RESPONSE_Data : public Object {
public:
	/*! \brief Constructor.
	 */
	GENERIC_RESPONSE_Data();
	GENERIC_RESPONSE_Data(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GENERIC_RESPONSE_Data();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The endpoint does not have a reponse defined
	 */
	std::string getNODATA();

	/*! \brief Set The endpoint does not have a reponse defined
	 */
	void setNODATA(std::string  nO_DATA);

private:
	std::string nO_DATA;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GENERIC_RESPONSE_Data_H_ */
