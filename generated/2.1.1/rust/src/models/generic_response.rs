/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct GenericResponse {
    #[serde(rename = "Data", skip_serializing_if = "Option::is_none")]
    pub data: Option<Box<crate::models::GenericResponseData>>,
    #[serde(rename = "Err", skip_serializing_if = "Option::is_none")]
    pub err: Option<serde_json::Value>,
}

impl GenericResponse {
    pub fn new() -> GenericResponse {
        GenericResponse {
            data: None,
            err: None,
        }
    }
}


