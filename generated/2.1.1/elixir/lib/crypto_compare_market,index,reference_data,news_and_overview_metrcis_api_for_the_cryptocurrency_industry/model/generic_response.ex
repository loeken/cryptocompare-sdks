# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data,
    :Err
  ]

  @type t :: %__MODULE__{
    :Data => CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponseData.t | nil,
    :Err => map() | nil
  }
end

defimpl Poison.Decoder, for: CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponse do
  import CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.GenericResponseData, options)
  end
end

