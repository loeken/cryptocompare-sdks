# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentHistoData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :BASE,
    :CLOSE,
    :FIRST_TRADE_PRICE,
    :FIRST_TRADE_TIMESTAMP,
    :HIGH,
    :HIGH_TRADE_PRICE,
    :HIGH_TRADE_TIMESTAMP,
    :INSTRUMENT,
    :LAST_TRADE_PRICE,
    :LAST_TRADE_TIMESTAMP,
    :LOW,
    :LOW_TRADE_PRICE,
    :LOW_TRADE_TIMESTAMP,
    :MAPPED_INSTRUMENT,
    :MARKET,
    :OPEN,
    :QUOTE,
    :QUOTE_VOLUME,
    :QUOTE_VOLUME_BUY,
    :QUOTE_VOLUME_SELL,
    :QUOTE_VOLUME_UNKNOWN,
    :TIMESTAMP,
    :TOTAL_TRADES,
    :TOTAL_TRADES_BUY,
    :TOTAL_TRADES_SELL,
    :TOTAL_TRADES_UNKNOWN,
    :TYPE,
    :UNIT,
    :VOLUME,
    :VOLUME_BUY,
    :VOLUME_SELL,
    :VOLUME_UNKNOWN
  ]

  @type t :: %__MODULE__{
    :BASE => String.t | nil,
    :CLOSE => integer() | nil,
    :FIRST_TRADE_PRICE => integer() | nil,
    :FIRST_TRADE_TIMESTAMP => integer() | nil,
    :HIGH => integer() | nil,
    :HIGH_TRADE_PRICE => integer() | nil,
    :HIGH_TRADE_TIMESTAMP => integer() | nil,
    :INSTRUMENT => String.t | nil,
    :LAST_TRADE_PRICE => integer() | nil,
    :LAST_TRADE_TIMESTAMP => integer() | nil,
    :LOW => integer() | nil,
    :LOW_TRADE_PRICE => integer() | nil,
    :LOW_TRADE_TIMESTAMP => integer() | nil,
    :MAPPED_INSTRUMENT => String.t | nil,
    :MARKET => String.t | nil,
    :OPEN => integer() | nil,
    :QUOTE => String.t | nil,
    :QUOTE_VOLUME => integer() | nil,
    :QUOTE_VOLUME_BUY => integer() | nil,
    :QUOTE_VOLUME_SELL => integer() | nil,
    :QUOTE_VOLUME_UNKNOWN => integer() | nil,
    :TIMESTAMP => integer() | nil,
    :TOTAL_TRADES => integer() | nil,
    :TOTAL_TRADES_BUY => integer() | nil,
    :TOTAL_TRADES_SELL => integer() | nil,
    :TOTAL_TRADES_UNKNOWN => integer() | nil,
    :TYPE => String.t | nil,
    :UNIT => String.t | nil,
    :VOLUME => integer() | nil,
    :VOLUME_BUY => integer() | nil,
    :VOLUME_SELL => integer() | nil,
    :VOLUME_UNKNOWN => integer() | nil
  }
end

defimpl Poison.Decoder, for: CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Model.SpotInstrumentHistoData do
  def decode(value, _options) do
    value
  end
end
