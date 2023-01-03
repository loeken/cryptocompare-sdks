/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world\'s leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASGENERICRESPONSE
 */
public class OASGENERICRESPONSE implements OAS.MappedProperties {
    /**
     * Get data
     * @return data
     */
    public OASGENERICRESPONSEData data { get; set; }

    /**
     * Get err
     * @return err
     */
    public Object err { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Data' => 'data',
        'Err' => 'err'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Data' => 'data',
        'Err' => 'err'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASGENERICRESPONSE getExample() {
        OASGENERICRESPONSE GENERIC_RESPONSE = new OASGENERICRESPONSE();
          GENERIC_RESPONSE.data = OASGENERICRESPONSEData.getExample();
          GENERIC_RESPONSE.err = null;
        return GENERIC_RESPONSE;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASGENERICRESPONSE) {           
            OASGENERICRESPONSE GENERIC_RESPONSE = (OASGENERICRESPONSE) obj;
            return this.data == GENERIC_RESPONSE.data
                && this.err == GENERIC_RESPONSE.err;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        hashCode = (17 * hashCode) + (err == null ? 0 : System.hashCode(err));
        return hashCode;
    }
}
