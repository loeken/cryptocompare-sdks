
/*
 * GENERIC_RESPONSE.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GENERIC_RESPONSE_H_
#define TINY_CPP_CLIENT_GENERIC_RESPONSE_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GENERIC_RESPONSE_Data.h"
#include "Object.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GENERIC_RESPONSE{
public:

    /*! \brief Constructor.
	 */
    GENERIC_RESPONSE();
    GENERIC_RESPONSE(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GENERIC_RESPONSE();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	GENERIC_RESPONSE_Data getData();

	/*! \brief Set 
	 */
	void setData(GENERIC_RESPONSE_Data  data);
	/*! \brief Get 
	 */
	Object getErr();

	/*! \brief Set 
	 */
	void setErr(Object  err);


    private:
    GENERIC_RESPONSE_Data data;
    Object err;
};
}

#endif /* TINY_CPP_CLIENT_GENERIC_RESPONSE_H_ */
