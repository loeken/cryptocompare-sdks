# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :"crypto_compare_market,index,reference_data,news_and_overview_metrcis_api_for_the_cryptocurrency_industry", base_url: "https://data-api.cryptocompare.com"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
#
# import_config "#{config_env()}.exs"
