package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSEErr;
import org.openapitools.model.SPOTINSTRUMENTMETADATA;

@Canonical
class SPOTINSTRUMENTMETADATARESPONSE {
    
    Map<String, SPOTINSTRUMENTMETADATA> data = new HashMap<>()
    
    SPOTINSTRUMENTMARKETDATARESPONSEErr err
}
