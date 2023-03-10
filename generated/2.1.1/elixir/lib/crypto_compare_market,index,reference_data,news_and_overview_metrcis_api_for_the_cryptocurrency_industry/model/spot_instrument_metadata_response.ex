# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadataResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data,
    :Err
  ]

  @type t :: %__MODULE__{
    :Data => %{optional(String.t) => CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadata.t} | nil,
    :Err => CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMarketDataResponseErr.t | nil
  }
end

defimpl Poison.Decoder, for: CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadataResponse do
  import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :map, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMetadata, options)
    |> deserialize(:Err, :struct, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentMarketDataResponseErr, options)
  end
end

