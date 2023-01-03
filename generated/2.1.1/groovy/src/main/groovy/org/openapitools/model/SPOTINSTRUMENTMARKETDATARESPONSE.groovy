package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATA;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSEErr;

@Canonical
class SPOTINSTRUMENTMARKETDATARESPONSE {
    
    Map<String, SPOTINSTRUMENTMARKETDATA> data = new HashMap<>()
    
    SPOTINSTRUMENTMARKETDATARESPONSEErr err
}
