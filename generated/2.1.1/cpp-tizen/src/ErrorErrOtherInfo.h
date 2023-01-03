/*
 * Error_Err_other_info.h
 *
 * 
 */

#ifndef _Error_Err_other_info_H_
#define _Error_Err_other_info_H_


#include <string>
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

class Error_Err_other_info : public Object {
public:
	/*! \brief Constructor.
	 */
	Error_Err_other_info();
	Error_Err_other_info(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Error_Err_other_info();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The parameter that is resposible for the error
	 */
	std::string getParam();

	/*! \brief Set The parameter that is resposible for the error
	 */
	void setParam(std::string  param);
	/*! \brief Get The values resposible for the error
	 */
	std::list<std::string> getValues();

	/*! \brief Set The values resposible for the error
	 */
	void setValues(std::list <std::string> values);

private:
	std::string param;
	std::list <std::string>values;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Error_Err_other_info_H_ */
