package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ErrorErrOtherInfo;

@Canonical
class ErrorErr {
    /* A message describing the error */
    String message
    
    ErrorErrOtherInfo otherInfo
    /* A public facing error type. If you want to treat a specific error use the type. */
    Integer type
}
