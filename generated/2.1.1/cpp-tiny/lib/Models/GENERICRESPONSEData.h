
/*
 * GENERIC_RESPONSE_Data.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GENERIC_RESPONSE_Data_H_
#define TINY_CPP_CLIENT_GENERIC_RESPONSE_Data_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GENERIC_RESPONSE_Data{
public:

    /*! \brief Constructor.
	 */
    GENERIC_RESPONSE_Data();
    GENERIC_RESPONSE_Data(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GENERIC_RESPONSE_Data();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get The endpoint does not have a reponse defined
	 */
	std::string getNODATA();

	/*! \brief Set The endpoint does not have a reponse defined
	 */
	void setNODATA(std::string  nO_DATA);


    private:
    std::string nO_DATA{};
};
}

#endif /* TINY_CPP_CLIENT_GENERIC_RESPONSE_Data_H_ */
