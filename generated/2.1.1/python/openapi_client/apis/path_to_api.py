import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.asset_v1_data_by_address import AssetV1DataByAddress
from openapi_client.apis.paths.asset_v1_data_by_id import AssetV1DataById
from openapi_client.apis.paths.asset_v1_data_by_symbol import AssetV1DataBySymbol
from openapi_client.apis.paths.asset_v1_top_list import AssetV1TopList
from openapi_client.apis.paths.futures_v1_historical_days import FuturesV1HistoricalDays
from openapi_client.apis.paths.futures_v1_historical_funding_rate_messages import FuturesV1HistoricalFundingRateMessages
from openapi_client.apis.paths.futures_v1_historical_funding_rate_messages_hour import FuturesV1HistoricalFundingRateMessagesHour
from openapi_client.apis.paths.futures_v1_historical_funding_rate_days import FuturesV1HistoricalFundingRateDays
from openapi_client.apis.paths.futures_v1_historical_funding_rate_hours import FuturesV1HistoricalFundingRateHours
from openapi_client.apis.paths.futures_v1_historical_funding_rate_minutes import FuturesV1HistoricalFundingRateMinutes
from openapi_client.apis.paths.futures_v1_historical_hours import FuturesV1HistoricalHours
from openapi_client.apis.paths.futures_v1_historical_minutes import FuturesV1HistoricalMinutes
from openapi_client.apis.paths.futures_v1_historical_open_interest_messages import FuturesV1HistoricalOpenInterestMessages
from openapi_client.apis.paths.futures_v1_historical_open_interest_messages_hour import FuturesV1HistoricalOpenInterestMessagesHour
from openapi_client.apis.paths.futures_v1_historical_open_interest_days import FuturesV1HistoricalOpenInterestDays
from openapi_client.apis.paths.futures_v1_historical_open_interest_hours import FuturesV1HistoricalOpenInterestHours
from openapi_client.apis.paths.futures_v1_historical_open_interest_minutes import FuturesV1HistoricalOpenInterestMinutes
from openapi_client.apis.paths.futures_v1_historical_trades import FuturesV1HistoricalTrades
from openapi_client.apis.paths.futures_v1_historical_trades_hour import FuturesV1HistoricalTradesHour
from openapi_client.apis.paths.futures_v1_latest_funding_rate_tick import FuturesV1LatestFundingRateTick
from openapi_client.apis.paths.futures_v1_latest_instrument_metadata import FuturesV1LatestInstrumentMetadata
from openapi_client.apis.paths.futures_v1_latest_open_interest_tick import FuturesV1LatestOpenInterestTick
from openapi_client.apis.paths.futures_v1_latest_tick import FuturesV1LatestTick
from openapi_client.apis.paths.futures_v1_markets import FuturesV1Markets
from openapi_client.apis.paths.futures_v1_markets_instruments import FuturesV1MarketsInstruments
from openapi_client.apis.paths.futures_v1_markets_instruments_unmapped import FuturesV1MarketsInstrumentsUnmapped
from openapi_client.apis.paths.index_cc_v1_historical_days import IndexCcV1HistoricalDays
from openapi_client.apis.paths.index_cc_v1_historical_hours import IndexCcV1HistoricalHours
from openapi_client.apis.paths.index_cc_v1_historical_messages import IndexCcV1HistoricalMessages
from openapi_client.apis.paths.index_cc_v1_historical_messages_hour import IndexCcV1HistoricalMessagesHour
from openapi_client.apis.paths.index_cc_v1_historical_minutes import IndexCcV1HistoricalMinutes
from openapi_client.apis.paths.index_cc_v1_latest_instrument_metadata import IndexCcV1LatestInstrumentMetadata
from openapi_client.apis.paths.index_cc_v1_latest_tick import IndexCcV1LatestTick
from openapi_client.apis.paths.index_cc_v1_markets import IndexCcV1Markets
from openapi_client.apis.paths.index_cc_v1_markets_instruments import IndexCcV1MarketsInstruments
from openapi_client.apis.paths.index_cc_v1_markets_instruments_unmapped import IndexCcV1MarketsInstrumentsUnmapped
from openapi_client.apis.paths.index_v1_historical_days import IndexV1HistoricalDays
from openapi_client.apis.paths.index_v1_historical_hours import IndexV1HistoricalHours
from openapi_client.apis.paths.index_v1_historical_messages import IndexV1HistoricalMessages
from openapi_client.apis.paths.index_v1_historical_messages_hour import IndexV1HistoricalMessagesHour
from openapi_client.apis.paths.index_v1_historical_minutes import IndexV1HistoricalMinutes
from openapi_client.apis.paths.index_v1_latest_instrument_metadata import IndexV1LatestInstrumentMetadata
from openapi_client.apis.paths.index_v1_latest_tick import IndexV1LatestTick
from openapi_client.apis.paths.index_v1_markets import IndexV1Markets
from openapi_client.apis.paths.index_v1_markets_instruments import IndexV1MarketsInstruments
from openapi_client.apis.paths.index_v1_markets_instruments_unmapped import IndexV1MarketsInstrumentsUnmapped
from openapi_client.apis.paths.news_v1_article_list import NewsV1ArticleList
from openapi_client.apis.paths.news_v1_category_list import NewsV1CategoryList
from openapi_client.apis.paths.news_v1_source_list import NewsV1SourceList
from openapi_client.apis.paths.overview_v1_historical_marketcap_all_assets_days import OverviewV1HistoricalMarketcapAllAssetsDays
from openapi_client.apis.paths.overview_v1_historical_marketcap_all_assets_hours import OverviewV1HistoricalMarketcapAllAssetsHours
from openapi_client.apis.paths.overview_v1_historical_marketcap_ftw_assets_days import OverviewV1HistoricalMarketcapFtwAssetsDays
from openapi_client.apis.paths.overview_v1_historical_marketcap_ftw_assets_hours import OverviewV1HistoricalMarketcapFtwAssetsHours
from openapi_client.apis.paths.overview_v1_latest_marketcap_all_tick import OverviewV1LatestMarketcapAllTick
from openapi_client.apis.paths.overview_v1_latest_marketcap_ftw_tick import OverviewV1LatestMarketcapFtwTick
from openapi_client.apis.paths.spot_v1_historical_days import SpotV1HistoricalDays
from openapi_client.apis.paths.spot_v1_historical_hours import SpotV1HistoricalHours
from openapi_client.apis.paths.spot_v1_historical_minutes import SpotV1HistoricalMinutes
from openapi_client.apis.paths.spot_v1_historical_orderbook_l2_snapshot_minute import SpotV1HistoricalOrderbookL2SnapshotMinute
from openapi_client.apis.paths.spot_v1_historical_trades import SpotV1HistoricalTrades
from openapi_client.apis.paths.spot_v1_historical_trades_hour import SpotV1HistoricalTradesHour
from openapi_client.apis.paths.spot_v1_latest_instrument_metadata import SpotV1LatestInstrumentMetadata
from openapi_client.apis.paths.spot_v1_latest_tick import SpotV1LatestTick
from openapi_client.apis.paths.spot_v1_markets import SpotV1Markets
from openapi_client.apis.paths.spot_v1_markets_instruments import SpotV1MarketsInstruments
from openapi_client.apis.paths.spot_v1_markets_instruments_unmapped import SpotV1MarketsInstrumentsUnmapped

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.ASSET_V1_DATA_BY_ADDRESS: AssetV1DataByAddress,
        PathValues.ASSET_V1_DATA_BY_ID: AssetV1DataById,
        PathValues.ASSET_V1_DATA_BY_SYMBOL: AssetV1DataBySymbol,
        PathValues.ASSET_V1_TOP_LIST: AssetV1TopList,
        PathValues.FUTURES_V1_HISTORICAL_DAYS: FuturesV1HistoricalDays,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATEMESSAGES: FuturesV1HistoricalFundingRateMessages,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATEMESSAGES_HOUR: FuturesV1HistoricalFundingRateMessagesHour,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_DAYS: FuturesV1HistoricalFundingRateDays,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_HOURS: FuturesV1HistoricalFundingRateHours,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_MINUTES: FuturesV1HistoricalFundingRateMinutes,
        PathValues.FUTURES_V1_HISTORICAL_HOURS: FuturesV1HistoricalHours,
        PathValues.FUTURES_V1_HISTORICAL_MINUTES: FuturesV1HistoricalMinutes,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTERESTMESSAGES: FuturesV1HistoricalOpenInterestMessages,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTERESTMESSAGES_HOUR: FuturesV1HistoricalOpenInterestMessagesHour,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_DAYS: FuturesV1HistoricalOpenInterestDays,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_HOURS: FuturesV1HistoricalOpenInterestHours,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_MINUTES: FuturesV1HistoricalOpenInterestMinutes,
        PathValues.FUTURES_V1_HISTORICAL_TRADES: FuturesV1HistoricalTrades,
        PathValues.FUTURES_V1_HISTORICAL_TRADES_HOUR: FuturesV1HistoricalTradesHour,
        PathValues.FUTURES_V1_LATEST_FUNDINGRATE_TICK: FuturesV1LatestFundingRateTick,
        PathValues.FUTURES_V1_LATEST_INSTRUMENT_METADATA: FuturesV1LatestInstrumentMetadata,
        PathValues.FUTURES_V1_LATEST_OPENINTEREST_TICK: FuturesV1LatestOpenInterestTick,
        PathValues.FUTURES_V1_LATEST_TICK: FuturesV1LatestTick,
        PathValues.FUTURES_V1_MARKETS: FuturesV1Markets,
        PathValues.FUTURES_V1_MARKETS_INSTRUMENTS: FuturesV1MarketsInstruments,
        PathValues.FUTURES_V1_MARKETS_INSTRUMENTS_UNMAPPED: FuturesV1MarketsInstrumentsUnmapped,
        PathValues.INDEX_CC_V1_HISTORICAL_DAYS: IndexCcV1HistoricalDays,
        PathValues.INDEX_CC_V1_HISTORICAL_HOURS: IndexCcV1HistoricalHours,
        PathValues.INDEX_CC_V1_HISTORICAL_MESSAGES: IndexCcV1HistoricalMessages,
        PathValues.INDEX_CC_V1_HISTORICAL_MESSAGES_HOUR: IndexCcV1HistoricalMessagesHour,
        PathValues.INDEX_CC_V1_HISTORICAL_MINUTES: IndexCcV1HistoricalMinutes,
        PathValues.INDEX_CC_V1_LATEST_INSTRUMENT_METADATA: IndexCcV1LatestInstrumentMetadata,
        PathValues.INDEX_CC_V1_LATEST_TICK: IndexCcV1LatestTick,
        PathValues.INDEX_CC_V1_MARKETS: IndexCcV1Markets,
        PathValues.INDEX_CC_V1_MARKETS_INSTRUMENTS: IndexCcV1MarketsInstruments,
        PathValues.INDEX_CC_V1_MARKETS_INSTRUMENTS_UNMAPPED: IndexCcV1MarketsInstrumentsUnmapped,
        PathValues.INDEX_V1_HISTORICAL_DAYS: IndexV1HistoricalDays,
        PathValues.INDEX_V1_HISTORICAL_HOURS: IndexV1HistoricalHours,
        PathValues.INDEX_V1_HISTORICAL_MESSAGES: IndexV1HistoricalMessages,
        PathValues.INDEX_V1_HISTORICAL_MESSAGES_HOUR: IndexV1HistoricalMessagesHour,
        PathValues.INDEX_V1_HISTORICAL_MINUTES: IndexV1HistoricalMinutes,
        PathValues.INDEX_V1_LATEST_INSTRUMENT_METADATA: IndexV1LatestInstrumentMetadata,
        PathValues.INDEX_V1_LATEST_TICK: IndexV1LatestTick,
        PathValues.INDEX_V1_MARKETS: IndexV1Markets,
        PathValues.INDEX_V1_MARKETS_INSTRUMENTS: IndexV1MarketsInstruments,
        PathValues.INDEX_V1_MARKETS_INSTRUMENTS_UNMAPPED: IndexV1MarketsInstrumentsUnmapped,
        PathValues.NEWS_V1_ARTICLE_LIST: NewsV1ArticleList,
        PathValues.NEWS_V1_CATEGORY_LIST: NewsV1CategoryList,
        PathValues.NEWS_V1_SOURCE_LIST: NewsV1SourceList,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_ALL_ASSETS_DAYS: OverviewV1HistoricalMarketcapAllAssetsDays,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_ALL_ASSETS_HOURS: OverviewV1HistoricalMarketcapAllAssetsHours,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_FTW_ASSETS_DAYS: OverviewV1HistoricalMarketcapFtwAssetsDays,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_FTW_ASSETS_HOURS: OverviewV1HistoricalMarketcapFtwAssetsHours,
        PathValues.OVERVIEW_V1_LATEST_MARKETCAP_ALL_TICK: OverviewV1LatestMarketcapAllTick,
        PathValues.OVERVIEW_V1_LATEST_MARKETCAP_FTW_TICK: OverviewV1LatestMarketcapFtwTick,
        PathValues.SPOT_V1_HISTORICAL_DAYS: SpotV1HistoricalDays,
        PathValues.SPOT_V1_HISTORICAL_HOURS: SpotV1HistoricalHours,
        PathValues.SPOT_V1_HISTORICAL_MINUTES: SpotV1HistoricalMinutes,
        PathValues.SPOT_V1_HISTORICAL_ORDERBOOK_L2_SNAPSHOT_MINUTE: SpotV1HistoricalOrderbookL2SnapshotMinute,
        PathValues.SPOT_V1_HISTORICAL_TRADES: SpotV1HistoricalTrades,
        PathValues.SPOT_V1_HISTORICAL_TRADES_HOUR: SpotV1HistoricalTradesHour,
        PathValues.SPOT_V1_LATEST_INSTRUMENT_METADATA: SpotV1LatestInstrumentMetadata,
        PathValues.SPOT_V1_LATEST_TICK: SpotV1LatestTick,
        PathValues.SPOT_V1_MARKETS: SpotV1Markets,
        PathValues.SPOT_V1_MARKETS_INSTRUMENTS: SpotV1MarketsInstruments,
        PathValues.SPOT_V1_MARKETS_INSTRUMENTS_UNMAPPED: SpotV1MarketsInstrumentsUnmapped,
    }
)

path_to_api = PathToApi(
    {
        PathValues.ASSET_V1_DATA_BY_ADDRESS: AssetV1DataByAddress,
        PathValues.ASSET_V1_DATA_BY_ID: AssetV1DataById,
        PathValues.ASSET_V1_DATA_BY_SYMBOL: AssetV1DataBySymbol,
        PathValues.ASSET_V1_TOP_LIST: AssetV1TopList,
        PathValues.FUTURES_V1_HISTORICAL_DAYS: FuturesV1HistoricalDays,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATEMESSAGES: FuturesV1HistoricalFundingRateMessages,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATEMESSAGES_HOUR: FuturesV1HistoricalFundingRateMessagesHour,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_DAYS: FuturesV1HistoricalFundingRateDays,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_HOURS: FuturesV1HistoricalFundingRateHours,
        PathValues.FUTURES_V1_HISTORICAL_FUNDINGRATE_MINUTES: FuturesV1HistoricalFundingRateMinutes,
        PathValues.FUTURES_V1_HISTORICAL_HOURS: FuturesV1HistoricalHours,
        PathValues.FUTURES_V1_HISTORICAL_MINUTES: FuturesV1HistoricalMinutes,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTERESTMESSAGES: FuturesV1HistoricalOpenInterestMessages,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTERESTMESSAGES_HOUR: FuturesV1HistoricalOpenInterestMessagesHour,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_DAYS: FuturesV1HistoricalOpenInterestDays,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_HOURS: FuturesV1HistoricalOpenInterestHours,
        PathValues.FUTURES_V1_HISTORICAL_OPENINTEREST_MINUTES: FuturesV1HistoricalOpenInterestMinutes,
        PathValues.FUTURES_V1_HISTORICAL_TRADES: FuturesV1HistoricalTrades,
        PathValues.FUTURES_V1_HISTORICAL_TRADES_HOUR: FuturesV1HistoricalTradesHour,
        PathValues.FUTURES_V1_LATEST_FUNDINGRATE_TICK: FuturesV1LatestFundingRateTick,
        PathValues.FUTURES_V1_LATEST_INSTRUMENT_METADATA: FuturesV1LatestInstrumentMetadata,
        PathValues.FUTURES_V1_LATEST_OPENINTEREST_TICK: FuturesV1LatestOpenInterestTick,
        PathValues.FUTURES_V1_LATEST_TICK: FuturesV1LatestTick,
        PathValues.FUTURES_V1_MARKETS: FuturesV1Markets,
        PathValues.FUTURES_V1_MARKETS_INSTRUMENTS: FuturesV1MarketsInstruments,
        PathValues.FUTURES_V1_MARKETS_INSTRUMENTS_UNMAPPED: FuturesV1MarketsInstrumentsUnmapped,
        PathValues.INDEX_CC_V1_HISTORICAL_DAYS: IndexCcV1HistoricalDays,
        PathValues.INDEX_CC_V1_HISTORICAL_HOURS: IndexCcV1HistoricalHours,
        PathValues.INDEX_CC_V1_HISTORICAL_MESSAGES: IndexCcV1HistoricalMessages,
        PathValues.INDEX_CC_V1_HISTORICAL_MESSAGES_HOUR: IndexCcV1HistoricalMessagesHour,
        PathValues.INDEX_CC_V1_HISTORICAL_MINUTES: IndexCcV1HistoricalMinutes,
        PathValues.INDEX_CC_V1_LATEST_INSTRUMENT_METADATA: IndexCcV1LatestInstrumentMetadata,
        PathValues.INDEX_CC_V1_LATEST_TICK: IndexCcV1LatestTick,
        PathValues.INDEX_CC_V1_MARKETS: IndexCcV1Markets,
        PathValues.INDEX_CC_V1_MARKETS_INSTRUMENTS: IndexCcV1MarketsInstruments,
        PathValues.INDEX_CC_V1_MARKETS_INSTRUMENTS_UNMAPPED: IndexCcV1MarketsInstrumentsUnmapped,
        PathValues.INDEX_V1_HISTORICAL_DAYS: IndexV1HistoricalDays,
        PathValues.INDEX_V1_HISTORICAL_HOURS: IndexV1HistoricalHours,
        PathValues.INDEX_V1_HISTORICAL_MESSAGES: IndexV1HistoricalMessages,
        PathValues.INDEX_V1_HISTORICAL_MESSAGES_HOUR: IndexV1HistoricalMessagesHour,
        PathValues.INDEX_V1_HISTORICAL_MINUTES: IndexV1HistoricalMinutes,
        PathValues.INDEX_V1_LATEST_INSTRUMENT_METADATA: IndexV1LatestInstrumentMetadata,
        PathValues.INDEX_V1_LATEST_TICK: IndexV1LatestTick,
        PathValues.INDEX_V1_MARKETS: IndexV1Markets,
        PathValues.INDEX_V1_MARKETS_INSTRUMENTS: IndexV1MarketsInstruments,
        PathValues.INDEX_V1_MARKETS_INSTRUMENTS_UNMAPPED: IndexV1MarketsInstrumentsUnmapped,
        PathValues.NEWS_V1_ARTICLE_LIST: NewsV1ArticleList,
        PathValues.NEWS_V1_CATEGORY_LIST: NewsV1CategoryList,
        PathValues.NEWS_V1_SOURCE_LIST: NewsV1SourceList,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_ALL_ASSETS_DAYS: OverviewV1HistoricalMarketcapAllAssetsDays,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_ALL_ASSETS_HOURS: OverviewV1HistoricalMarketcapAllAssetsHours,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_FTW_ASSETS_DAYS: OverviewV1HistoricalMarketcapFtwAssetsDays,
        PathValues.OVERVIEW_V1_HISTORICAL_MARKETCAP_FTW_ASSETS_HOURS: OverviewV1HistoricalMarketcapFtwAssetsHours,
        PathValues.OVERVIEW_V1_LATEST_MARKETCAP_ALL_TICK: OverviewV1LatestMarketcapAllTick,
        PathValues.OVERVIEW_V1_LATEST_MARKETCAP_FTW_TICK: OverviewV1LatestMarketcapFtwTick,
        PathValues.SPOT_V1_HISTORICAL_DAYS: SpotV1HistoricalDays,
        PathValues.SPOT_V1_HISTORICAL_HOURS: SpotV1HistoricalHours,
        PathValues.SPOT_V1_HISTORICAL_MINUTES: SpotV1HistoricalMinutes,
        PathValues.SPOT_V1_HISTORICAL_ORDERBOOK_L2_SNAPSHOT_MINUTE: SpotV1HistoricalOrderbookL2SnapshotMinute,
        PathValues.SPOT_V1_HISTORICAL_TRADES: SpotV1HistoricalTrades,
        PathValues.SPOT_V1_HISTORICAL_TRADES_HOUR: SpotV1HistoricalTradesHour,
        PathValues.SPOT_V1_LATEST_INSTRUMENT_METADATA: SpotV1LatestInstrumentMetadata,
        PathValues.SPOT_V1_LATEST_TICK: SpotV1LatestTick,
        PathValues.SPOT_V1_MARKETS: SpotV1Markets,
        PathValues.SPOT_V1_MARKETS_INSTRUMENTS: SpotV1MarketsInstruments,
        PathValues.SPOT_V1_MARKETS_INSTRUMENTS_UNMAPPED: SpotV1MarketsInstrumentsUnmapped,
    }
)
