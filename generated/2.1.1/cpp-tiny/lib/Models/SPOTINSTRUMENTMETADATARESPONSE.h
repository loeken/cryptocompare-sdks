
/*
 * SPOT_INSTRUMENT_METADATA_RESPONSE.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_RESPONSE_H_
#define TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_RESPONSE_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h"
#include "SPOT_INSTRUMENT_METADATA.h"
#include <map>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_METADATA_RESPONSE{
public:

    /*! \brief Constructor.
	 */
    SPOT_INSTRUMENT_METADATA_RESPONSE();
    SPOT_INSTRUMENT_METADATA_RESPONSE(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SPOT_INSTRUMENT_METADATA_RESPONSE();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	Map<std::string, std::string> getData();

	/*! \brief Set 
	 */
	void setData(Map <std::string, std::string> data);
	/*! \brief Get 
	 */
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err getErr();

	/*! \brief Set 
	 */
	void setErr(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err  err);


    private:
    Map<std::string, std::string> data;
    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err err;
};
}

#endif /* TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_RESPONSE_H_ */
