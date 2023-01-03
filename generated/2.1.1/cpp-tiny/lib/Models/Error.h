
/*
 * Error.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Error_H_
#define TINY_CPP_CLIENT_Error_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Error_Err.h"
#include "Object.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Error{
public:

    /*! \brief Constructor.
	 */
    Error();
    Error(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Error();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	Object getData();

	/*! \brief Set 
	 */
	void setData(Object  data);
	/*! \brief Get 
	 */
	Error_Err getErr();

	/*! \brief Set 
	 */
	void setErr(Error_Err  err);


    private:
    Object data;
    Error_Err err;
};
}

#endif /* TINY_CPP_CLIENT_Error_H_ */
