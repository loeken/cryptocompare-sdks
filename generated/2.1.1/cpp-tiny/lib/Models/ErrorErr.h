
/*
 * Error_Err.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Error_Err_H_
#define TINY_CPP_CLIENT_Error_Err_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Error_Err_other_info.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Error_Err{
public:

    /*! \brief Constructor.
	 */
    Error_Err();
    Error_Err(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Error_Err();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get A message describing the error
	 */
	std::string getMessage();

	/*! \brief Set A message describing the error
	 */
	void setMessage(std::string  message);
	/*! \brief Get 
	 */
	Error_Err_other_info getOtherInfo();

	/*! \brief Set 
	 */
	void setOtherInfo(Error_Err_other_info  other_info);
	/*! \brief Get A public facing error type. If you want to treat a specific error use the type.
	 */
	int getType();

	/*! \brief Set A public facing error type. If you want to treat a specific error use the type.
	 */
	void setType(int  type);


    private:
    std::string message{};
    Error_Err_other_info other_info;
    int type{};
};
}

#endif /* TINY_CPP_CLIENT_Error_Err_H_ */
