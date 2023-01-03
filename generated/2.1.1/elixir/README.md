# CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry

CryptoCompare is the world&#39;s leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:"crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry", "~> 2.1.1"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry, base_url: "https://data-api.cryptocompare.com"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection.new/1`:

```elixir
client = CryptoCompareMarket,Index,ReferenceData,NewsAndOverviewMetrcisAPIForTheCryptocurrencyIndustry.Connection.new(base_url: "https://data-api.cryptocompare.com")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry
