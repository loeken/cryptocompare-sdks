/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 * Generated by: https://openapi-generator.tech
 */


use reqwest;

use crate::apis::ResponseContent;
use super::{Error, configuration};


/// struct for typed errors of method [`index_cc_v1_historical_days`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1HistoricalDaysError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_historical_hours`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1HistoricalHoursError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_historical_messages`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1HistoricalMessagesError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_historical_messages_hour`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1HistoricalMessagesHourError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_historical_minutes`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1HistoricalMinutesError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_latest_instrument_metadata`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1LatestInstrumentMetadataError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_latest_tick`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1LatestTickError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_markets`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1MarketsError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_markets_instruments`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1MarketsInstrumentsError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`index_cc_v1_markets_instruments_unmapped`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum IndexCcV1MarketsInstrumentsUnmappedError {
    Status400(crate::models::Error),
    Status401(crate::models::Error),
    Status403(crate::models::Error),
    Status404(crate::models::Error),
    Status405(crate::models::Error),
    Status429(crate::models::Error),
    Status500(crate::models::Error),
    Status502(crate::models::Error),
    Status503(crate::models::Error),
    UnknownValue(serde_json::Value),
}


pub async fn index_cc_v1_historical_days(configuration: &configuration::Configuration, market: &str, instrument: &str, groups: Option<Vec<String>>, limit: Option<i32>, to_ts: Option<i32>, aggregate: Option<i32>, fill: Option<bool>, mapping_priority: Option<&str>, response_format: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1HistoricalDaysError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/historical/days", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("instrument", &instrument.to_string())]);
    if let Some(ref local_var_str) = groups {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("groups".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("groups", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_str) = limit {
        local_var_req_builder = local_var_req_builder.query(&[("limit", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = to_ts {
        local_var_req_builder = local_var_req_builder.query(&[("to_ts", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = aggregate {
        local_var_req_builder = local_var_req_builder.query(&[("aggregate", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = fill {
        local_var_req_builder = local_var_req_builder.query(&[("fill", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = response_format {
        local_var_req_builder = local_var_req_builder.query(&[("response_format", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1HistoricalDaysError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_historical_hours(configuration: &configuration::Configuration, market: &str, instrument: &str, groups: Option<Vec<String>>, limit: Option<i32>, to_ts: Option<i32>, aggregate: Option<i32>, fill: Option<bool>, mapping_priority: Option<&str>, response_format: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1HistoricalHoursError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/historical/hours", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("instrument", &instrument.to_string())]);
    if let Some(ref local_var_str) = groups {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("groups".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("groups", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_str) = limit {
        local_var_req_builder = local_var_req_builder.query(&[("limit", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = to_ts {
        local_var_req_builder = local_var_req_builder.query(&[("to_ts", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = aggregate {
        local_var_req_builder = local_var_req_builder.query(&[("aggregate", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = fill {
        local_var_req_builder = local_var_req_builder.query(&[("fill", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = response_format {
        local_var_req_builder = local_var_req_builder.query(&[("response_format", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1HistoricalHoursError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_historical_messages(configuration: &configuration::Configuration, market: &str, instrument: &str, after_ts: Option<i32>, last_ccseq: Option<i32>, mapping_priority: Option<&str>, limit: Option<i32>, response_format: Option<&str>, return_404_on_empty_response: Option<bool>) -> Result<crate::models::GenericResponse, Error<IndexCcV1HistoricalMessagesError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/historical/messages", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("instrument", &instrument.to_string())]);
    if let Some(ref local_var_str) = after_ts {
        local_var_req_builder = local_var_req_builder.query(&[("after_ts", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = last_ccseq {
        local_var_req_builder = local_var_req_builder.query(&[("last_ccseq", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = limit {
        local_var_req_builder = local_var_req_builder.query(&[("limit", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = response_format {
        local_var_req_builder = local_var_req_builder.query(&[("response_format", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = return_404_on_empty_response {
        local_var_req_builder = local_var_req_builder.query(&[("return_404_on_empty_response", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api_key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("authorization", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1HistoricalMessagesError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_historical_messages_hour(configuration: &configuration::Configuration, market: &str, instrument: &str, hour_ts: Option<i32>, mapping_priority: Option<&str>, response_format: Option<&str>, return_404_on_empty_response: Option<bool>) -> Result<crate::models::GenericResponse, Error<IndexCcV1HistoricalMessagesHourError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/historical/messages/hour", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("instrument", &instrument.to_string())]);
    if let Some(ref local_var_str) = hour_ts {
        local_var_req_builder = local_var_req_builder.query(&[("hour_ts", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = response_format {
        local_var_req_builder = local_var_req_builder.query(&[("response_format", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = return_404_on_empty_response {
        local_var_req_builder = local_var_req_builder.query(&[("return_404_on_empty_response", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api_key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("authorization", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1HistoricalMessagesHourError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_historical_minutes(configuration: &configuration::Configuration, market: &str, instrument: &str, groups: Option<Vec<String>>, limit: Option<i32>, to_ts: Option<i32>, aggregate: Option<i32>, fill: Option<bool>, mapping_priority: Option<&str>, response_format: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1HistoricalMinutesError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/historical/minutes", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("instrument", &instrument.to_string())]);
    if let Some(ref local_var_str) = groups {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("groups".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("groups", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_str) = limit {
        local_var_req_builder = local_var_req_builder.query(&[("limit", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = to_ts {
        local_var_req_builder = local_var_req_builder.query(&[("to_ts", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = aggregate {
        local_var_req_builder = local_var_req_builder.query(&[("aggregate", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = fill {
        local_var_req_builder = local_var_req_builder.query(&[("fill", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = response_format {
        local_var_req_builder = local_var_req_builder.query(&[("response_format", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1HistoricalMinutesError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_latest_instrument_metadata(configuration: &configuration::Configuration, market: &str, instruments: Vec<String>, groups: Option<Vec<String>>, mapping_priority: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1LatestInstrumentMetadataError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/latest/instrument/metadata", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = match "csv" {
        "multi" => local_var_req_builder.query(&instruments.into_iter().map(|p| ("instruments".to_owned(), p)).collect::<Vec<(std::string::String, std::string::String)>>()),
        _ => local_var_req_builder.query(&[("instruments", &instruments.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
    };
    if let Some(ref local_var_str) = groups {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("groups".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("groups", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1LatestInstrumentMetadataError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_latest_tick(configuration: &configuration::Configuration, market: &str, instruments: Vec<String>, groups: Option<Vec<String>>, mapping_priority: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1LatestTickError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/latest/tick", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("market", &market.to_string())]);
    local_var_req_builder = match "csv" {
        "multi" => local_var_req_builder.query(&instruments.into_iter().map(|p| ("instruments".to_owned(), p)).collect::<Vec<(std::string::String, std::string::String)>>()),
        _ => local_var_req_builder.query(&[("instruments", &instruments.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
    };
    if let Some(ref local_var_str) = groups {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("groups".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("groups", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_str) = mapping_priority {
        local_var_req_builder = local_var_req_builder.query(&[("mapping_priority", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1LatestTickError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_markets(configuration: &configuration::Configuration, market: Option<&str>) -> Result<crate::models::GenericResponse, Error<IndexCcV1MarketsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/markets", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = market {
        local_var_req_builder = local_var_req_builder.query(&[("market", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1MarketsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_markets_instruments(configuration: &configuration::Configuration, market: Option<&str>, instrument: Option<&str>, instrument_status: Option<Vec<String>>) -> Result<crate::models::GenericResponse, Error<IndexCcV1MarketsInstrumentsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/markets/instruments", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = market {
        local_var_req_builder = local_var_req_builder.query(&[("market", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = instrument {
        local_var_req_builder = local_var_req_builder.query(&[("instrument", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = instrument_status {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("instrument_status".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("instrument_status", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1MarketsInstrumentsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

pub async fn index_cc_v1_markets_instruments_unmapped(configuration: &configuration::Configuration, market: Option<&str>, instrument: Option<&str>, instrument_status: Option<Vec<String>>) -> Result<crate::models::GenericResponse, Error<IndexCcV1MarketsInstrumentsUnmappedError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/index/cc/v1/markets/instruments/unmapped", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = market {
        local_var_req_builder = local_var_req_builder.query(&[("market", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = instrument {
        local_var_req_builder = local_var_req_builder.query(&[("instrument", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = instrument_status {
        local_var_req_builder = match "csv" {
            "multi" => local_var_req_builder.query(&local_var_str.into_iter().map(|p| ("instrument_status".to_owned(), p.to_string())).collect::<Vec<(std::string::String, std::string::String)>>()),
            _ => local_var_req_builder.query(&[("instrument_status", &local_var_str.into_iter().map(|p| p.to_string()).collect::<Vec<String>>().join(",").to_string())]),
        };
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<IndexCcV1MarketsInstrumentsUnmappedError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}
