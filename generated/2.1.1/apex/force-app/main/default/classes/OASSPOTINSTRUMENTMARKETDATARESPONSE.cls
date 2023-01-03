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
 * OASSPOTINSTRUMENTMARKETDATARESPONSE
 */
public class OASSPOTINSTRUMENTMARKETDATARESPONSE implements OAS.MappedProperties {
    /**
     * Get data
     * @return data
     */
    public Map<String, OASSPOTINSTRUMENTMARKETDATA> data { get; set; }

    /**
     * Get err
     * @return err
     */
    public OASSPOTINSTRUMENTMARKETDATARESPONSEE err { get; set; }

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

    public OASSPOTINSTRUMENTMARKETDATARESPONSE() {
        data = new Map<String, OASSPOTINSTRUMENTMARKETDATA>();
    }

    public static OASSPOTINSTRUMENTMARKETDATARESPONSE getExample() {
        OASSPOTINSTRUMENTMARKETDATARESPONSE SPOT_INSTRUMENT_MARKET_DATA_RESPONSE = new OASSPOTINSTRUMENTMARKETDATARESPONSE();
          SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.data = new Map<String, OASSPOTINSTRUMENTMARKETDATA>{'key'=>OASSPOTINSTRUMENTMARKETDATA.getExample()};
          SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.err = OASSPOTINSTRUMENTMARKETDATARESPONSEE.getExample();
        return SPOT_INSTRUMENT_MARKET_DATA_RESPONSE;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSPOTINSTRUMENTMARKETDATARESPONSE) {           
            OASSPOTINSTRUMENTMARKETDATARESPONSE SPOT_INSTRUMENT_MARKET_DATA_RESPONSE = (OASSPOTINSTRUMENTMARKETDATARESPONSE) obj;
            return this.data == SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.data
                && this.err == SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.err;
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
