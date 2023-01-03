import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.

if base_url = System.get_env("CRYPTO_COMPARE_MARKET,INDEX,REFERENCE_DATA,NEWS_AND_OVERVIEW_METRCIS_API_FOR_THE_CRYPTOCURRENCY_INDUSTRY_BASE_URI") do
  config :"crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry", base_url: base_url
end
