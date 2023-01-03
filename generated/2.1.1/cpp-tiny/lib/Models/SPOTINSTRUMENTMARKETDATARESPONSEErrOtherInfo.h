
/*
 * SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H_
#define TINY_CPP_CLIENT_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info{
public:

    /*! \brief Constructor.
	 */
    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info();
    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string param{};
    std::list<std::string> values;
};
}

#endif /* TINY_CPP_CLIENT_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H_ */
