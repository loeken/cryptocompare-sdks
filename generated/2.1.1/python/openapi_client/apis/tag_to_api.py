import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.reference_rates_api import ReferenceRatesApi
from openapi_client.apis.tags.spot_api import SpotApi
from openapi_client.apis.tags.futures_api import FuturesApi
from openapi_client.apis.tags.overview_api import OverviewApi
from openapi_client.apis.tags.news_api import NewsApi
from openapi_client.apis.tags.asset_api import AssetApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.REFERENCE_RATES: ReferenceRatesApi,
        TagValues.SPOT: SpotApi,
        TagValues.FUTURES: FuturesApi,
        TagValues.OVERVIEW: OverviewApi,
        TagValues.NEWS: NewsApi,
        TagValues.ASSET: AssetApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.REFERENCE_RATES: ReferenceRatesApi,
        TagValues.SPOT: SpotApi,
        TagValues.FUTURES: FuturesApi,
        TagValues.OVERVIEW: OverviewApi,
        TagValues.NEWS: NewsApi,
        TagValues.ASSET: AssetApi,
    }
)
