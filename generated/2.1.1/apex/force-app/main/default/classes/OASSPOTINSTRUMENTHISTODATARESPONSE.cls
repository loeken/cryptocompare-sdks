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
 * OASSPOTINSTRUMENTHISTODATARESPONSE
 */
public class OASSPOTINSTRUMENTHISTODATARESPONSE implements OAS.MappedProperties {
    /**
     * Get data
     * @return data
     */
    public List<OASSPOTINSTRUMENTHISTODATA> data { get; set; }

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

    public OASSPOTINSTRUMENTHISTODATARESPONSE() {
        data = new List<OASSPOTINSTRUMENTHISTODATA>();
    }

    public static OASSPOTINSTRUMENTHISTODATARESPONSE getExample() {
        OASSPOTINSTRUMENTHISTODATARESPONSE SPOT_INSTRUMENT_HISTO_DATA_RESPONSE = new OASSPOTINSTRUMENTHISTODATARESPONSE();
          SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.data = new List<OASSPOTINSTRUMENTHISTODATA>{OASSPOTINSTRUMENTHISTODATA.getExample()};
          SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.err = null;
        return SPOT_INSTRUMENT_HISTO_DATA_RESPONSE;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSPOTINSTRUMENTHISTODATARESPONSE) {           
            OASSPOTINSTRUMENTHISTODATARESPONSE SPOT_INSTRUMENT_HISTO_DATA_RESPONSE = (OASSPOTINSTRUMENTHISTODATARESPONSE) obj;
            return this.data == SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.data
                && this.err == SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.err;
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
