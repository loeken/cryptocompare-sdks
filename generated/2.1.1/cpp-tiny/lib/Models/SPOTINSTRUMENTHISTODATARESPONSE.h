
/*
 * SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_
#define TINY_CPP_CLIENT_SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Object.h"
#include "SPOT_INSTRUMENT_HISTO_DATA.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_HISTO_DATA_RESPONSE{
public:

    /*! \brief Constructor.
	 */
    SPOT_INSTRUMENT_HISTO_DATA_RESPONSE();
    SPOT_INSTRUMENT_HISTO_DATA_RESPONSE(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SPOT_INSTRUMENT_HISTO_DATA_RESPONSE();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::list<SPOT_INSTRUMENT_HISTO_DATA> getData();

	/*! \brief Set 
	 */
	void setData(std::list <SPOT_INSTRUMENT_HISTO_DATA> data);
	/*! \brief Get 
	 */
	Object getErr();

	/*! \brief Set 
	 */
	void setErr(Object  err);


    private:
    std::list<SPOT_INSTRUMENT_HISTO_DATA> data;
    Object err;
};
}

#endif /* TINY_CPP_CLIENT_SPOT_INSTRUMENT_HISTO_DATA_RESPONSE_H_ */
