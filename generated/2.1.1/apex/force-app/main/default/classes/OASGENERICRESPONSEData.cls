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
 * OASGENERICRESPONSEData
 */
public class OASGENERICRESPONSEData {
    /**
     * The endpoint does not have a reponse defined
     * @return NO_DATA
     */
    public String NO_DATA { get; set; }

    public static OASGENERICRESPONSEData getExample() {
        OASGENERICRESPONSEData geNERICRESPONSEData = new OASGENERICRESPONSEData();
          geNERICRESPONSEData.NO_DATA = 'Please add a ResponseObject on the endpoint!';
        return geNERICRESPONSEData;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASGENERICRESPONSEData) {           
            OASGENERICRESPONSEData geNERICRESPONSEData = (OASGENERICRESPONSEData) obj;
            return this.NO_DATA == geNERICRESPONSEData.NO_DATA;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (NO_DATA == null ? 0 : System.hashCode(NO_DATA));
        return hashCode;
    }
}
