public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://data-api.cryptocompare.com';
        calloutName = 'CryptoCompare_Market_Index_Reference_Data_News_and_Overview_Metrcis_API_for_the_Cryptocurrency_Industry';
        authentications.put('api_key_header', new OAS.ApiKeyHeaderAuth('authorization'));
        authentications.put('api_key_query', new OAS.ApiKeyQueryAuth('api_key'));
    }
}
