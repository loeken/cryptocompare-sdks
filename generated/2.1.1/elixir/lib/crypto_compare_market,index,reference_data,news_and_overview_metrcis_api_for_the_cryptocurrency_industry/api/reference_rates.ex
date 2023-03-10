# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Api.ReferenceRates do
  @moduledoc """
  API calls for all endpoints tagged `ReferenceRates`.
  """

  alias CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection
  import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instrument` (String.t): The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:groups` ([String.t]): When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    - `:limit` (integer()): The number of data points to return
    - `:to_ts` (integer()): Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    - `:aggregate` (integer()): The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    - `:fill` (boolean()): Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    - `:response_format` (String.t): The format of the data response in uppercase. It can be one of the following: JSON,CSV

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_historical_days(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_historical_days(connection, market, instrument, opts \\ []) do
    optional_params = %{
      :groups => :query,
      :limit => :query,
      :to_ts => :query,
      :aggregate => :query,
      :fill => :query,
      :mapping_priority => :query,
      :response_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/historical/days")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instrument, instrument)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instrument` (String.t): The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:groups` ([String.t]): When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    - `:limit` (integer()): The number of data points to return
    - `:to_ts` (integer()): Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    - `:aggregate` (integer()): The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    - `:fill` (boolean()): Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    - `:response_format` (String.t): The format of the data response in uppercase. It can be one of the following: JSON,CSV

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_historical_hours(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_historical_hours(connection, market, instrument, opts \\ []) do
    optional_params = %{
      :groups => :query,
      :limit => :query,
      :to_ts => :query,
      :aggregate => :query,
      :fill => :query,
      :mapping_priority => :query,
      :response_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/historical/hours")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instrument, instrument)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instrument` (String.t): The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:after_ts` (integer()): Unix timestamp in seconds of the earliest index message in the response
    - `:last_ccseq` (integer()): The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    - `:limit` (integer()): The maximum number of index messages to return
    - `:response_format` (String.t): The format of the data response in uppercase. It can be one of the following: JSON,CSV
    - `:return_404_on_empty_response` (boolean()): If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_historical_messages(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_historical_messages(connection, market, instrument, opts \\ []) do
    optional_params = %{
      :after_ts => :query,
      :last_ccseq => :query,
      :mapping_priority => :query,
      :limit => :query,
      :response_format => :query,
      :return_404_on_empty_response => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/historical/messages")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instrument, instrument)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instrument` (String.t): The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:hour_ts` (integer()): Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    - `:response_format` (String.t): The format of the data response in uppercase. It can be one of the following: JSON,CSV
    - `:return_404_on_empty_response` (boolean()): If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_historical_messages_hour(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_historical_messages_hour(connection, market, instrument, opts \\ []) do
    optional_params = %{
      :hour_ts => :query,
      :mapping_priority => :query,
      :response_format => :query,
      :return_404_on_empty_response => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/historical/messages/hour")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instrument, instrument)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instrument` (String.t): The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:groups` ([String.t]): When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    - `:limit` (integer()): The number of data points to return
    - `:to_ts` (integer()): Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    - `:aggregate` (integer()): The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    - `:fill` (boolean()): Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    - `:response_format` (String.t): The format of the data response in uppercase. It can be one of the following: JSON,CSV

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_historical_minutes(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_historical_minutes(connection, market, instrument, opts \\ []) do
    optional_params = %{
      :groups => :query,
      :limit => :query,
      :to_ts => :query,
      :aggregate => :query,
      :fill => :query,
      :mapping_priority => :query,
      :response_format => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/historical/minutes")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instrument, instrument)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instruments` ([String.t]): A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:groups` ([String.t]): When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_latest_instrument_metadata(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_latest_instrument_metadata(connection, market, instruments, opts \\ []) do
    optional_params = %{
      :groups => :query,
      :mapping_priority => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/latest/instrument/metadata")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instruments, instruments)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `market` (String.t): The exchange to obtain data from
  - `instruments` ([String.t]): A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  - `opts` (keyword): Optional parameters
    - `:groups` ([String.t]): When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
    - `:mapping_priority` (String.t): The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_latest_tick(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_latest_tick(connection, market, instruments, opts \\ []) do
    optional_params = %{
      :groups => :query,
      :mapping_priority => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/latest/tick")
      |> add_param(:query, :market, market)
      |> add_param(:query, :instruments, instruments)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:market` (String.t): The exchange to obtain data from

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_markets(Tesla.Env.client, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_markets(connection, opts \\ []) do
    optional_params = %{
      :market => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/markets")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:market` (String.t): The exchange to obtain data from
    - `:instrument` (String.t): The mapped instrument to retrieve on a specific market.
    - `:instrument_status` ([String.t]): The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_markets_instruments(Tesla.Env.client, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_markets_instruments(connection, opts \\ []) do
    optional_params = %{
      :market => :query,
      :instrument => :query,
      :instrument_status => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/markets/instruments")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:market` (String.t): The exchange to obtain data from
    - `:instrument` (String.t): The unmapped instrument to retrieve on a specific market.
    - `:instrument_status` ([String.t]): The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

  ### Returns

  - `{:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_cc_v1_markets_instruments_unmapped(Tesla.Env.client, keyword()) :: {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse.t} | {:ok, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error.t} | {:error, Tesla.Env.t}
  def index_cc_v1_markets_instruments_unmapped(connection, opts \\ []) do
    optional_params = %{
      :market => :query,
      :instrument => :query,
      :instrument_status => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/index/cc/v1/markets/instruments/unmapped")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse{}},
      {400, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {401, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {403, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {404, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {405, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {429, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {500, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {502, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}},
      {503, %CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.Error{}}
    ])
  end
end
