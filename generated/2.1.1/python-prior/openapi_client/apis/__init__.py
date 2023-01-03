
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from openapi_client.api.asset_api import AssetApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from openapi_client.api.asset_api import AssetApi
from openapi_client.api.futures_api import FuturesApi
from openapi_client.api.news_api import NewsApi
from openapi_client.api.overview_api import OverviewApi
from openapi_client.api.reference_rates_api import ReferenceRatesApi
from openapi_client.api.spot_api import SpotApi
