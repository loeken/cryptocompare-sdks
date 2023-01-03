package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class ErrorErrOtherInfo {
    /* The parameter that is resposible for the error */
    String param
    /* The values resposible for the error */
    List<String> values = new ArrayList<>()
}
