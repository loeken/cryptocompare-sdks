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
 * OASError
 */
public class OASError implements OAS.MappedProperties {
    /**
     * Get data
     * @return data
     */
    public Object data { get; set; }

    /**
     * Get err
     * @return err
     */
    public OASErrorErr err { get; set; }

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

    public static OASError getExample() {
        OASError error = new OASError();
          error.data = null;
          error.err = OASErrorErr.getExample();
        return error;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASError) {           
            OASError error = (OASError) obj;
            return this.data == error.data
                && this.err == error.err;
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
