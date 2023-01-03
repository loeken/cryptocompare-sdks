#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry.
#
# LICENSE:
# https://www.cryptocompare.com/api-licence-agreement/
#
# CONTACT:
# data@cryptocompare.com
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["assetV1DataByAddress:::address"]=1
operation_parameters_minimum_occurrences["assetV1DataByAddress:::chain_symbol"]=1
operation_parameters_minimum_occurrences["assetV1DataByAddress:::groups"]=0
operation_parameters_minimum_occurrences["assetV1DataById:::asset_id"]=1
operation_parameters_minimum_occurrences["assetV1DataById:::groups"]=0
operation_parameters_minimum_occurrences["assetV1DataBySymbol:::asset_symbol"]=1
operation_parameters_minimum_occurrences["assetV1DataBySymbol:::groups"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::page"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::page_size"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::asset_type"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::sort_by"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::sort_direction"]=0
operation_parameters_minimum_occurrences["assetV1TopList:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalDays:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateDays:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateHours:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::after_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::last_ccseq"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessages:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalFundingRateMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalHours:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestDays:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestHours:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::after_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::last_ccseq"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessages:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::fill"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalOpenInterestMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::after_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::last_ccseq"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::limit"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTrades:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::market"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::instrument"]=1
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::response_format"]=0
operation_parameters_minimum_occurrences["futuresV1HistoricalTradesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["futuresV1LatestFundingRateTick:::market"]=1
operation_parameters_minimum_occurrences["futuresV1LatestFundingRateTick:::instruments"]=1
operation_parameters_minimum_occurrences["futuresV1LatestFundingRateTick:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1LatestFundingRateTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1LatestInstrumentMetadata:::market"]=1
operation_parameters_minimum_occurrences["futuresV1LatestInstrumentMetadata:::instruments"]=1
operation_parameters_minimum_occurrences["futuresV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1LatestOpenInterestTick:::market"]=1
operation_parameters_minimum_occurrences["futuresV1LatestOpenInterestTick:::instruments"]=1
operation_parameters_minimum_occurrences["futuresV1LatestOpenInterestTick:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1LatestOpenInterestTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1LatestTick:::market"]=1
operation_parameters_minimum_occurrences["futuresV1LatestTick:::instruments"]=1
operation_parameters_minimum_occurrences["futuresV1LatestTick:::groups"]=0
operation_parameters_minimum_occurrences["futuresV1LatestTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["futuresV1Markets:::market"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstruments:::market"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstruments:::instrument"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstruments:::instrument_status"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_minimum_occurrences["futuresV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::market"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::instrument"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::groups"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::limit"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::to_ts"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::aggregate"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::fill"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalDays:::response_format"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::market"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::instrument"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::groups"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::limit"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::to_ts"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::aggregate"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::fill"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalHours:::response_format"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::market"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::instrument"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::after_ts"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::last_ccseq"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::limit"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::response_format"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessages:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::market"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::instrument"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::response_format"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::market"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::groups"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::limit"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::fill"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1HistoricalMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["indexV1LatestInstrumentMetadata:::market"]=1
operation_parameters_minimum_occurrences["indexV1LatestInstrumentMetadata:::instruments"]=1
operation_parameters_minimum_occurrences["indexV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_minimum_occurrences["indexV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1LatestTick:::market"]=1
operation_parameters_minimum_occurrences["indexV1LatestTick:::instruments"]=1
operation_parameters_minimum_occurrences["indexV1LatestTick:::groups"]=0
operation_parameters_minimum_occurrences["indexV1LatestTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexV1Markets:::market"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstruments:::market"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstruments:::instrument"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstruments:::instrument_status"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_minimum_occurrences["indexV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_minimum_occurrences["newsV1ArticleList:::source_ids"]=0
operation_parameters_minimum_occurrences["newsV1ArticleList:::lang"]=0
operation_parameters_minimum_occurrences["newsV1ArticleList:::categories"]=0
operation_parameters_minimum_occurrences["newsV1ArticleList:::exclude_categories"]=0
operation_parameters_minimum_occurrences["newsV1ArticleList:::to_ts"]=0
operation_parameters_minimum_occurrences["newsV1SourceList:::lang"]=0
operation_parameters_minimum_occurrences["newsV1SourceList:::type"]=0
operation_parameters_minimum_occurrences["newsV1SourceList:::status"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::groups"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::limit"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::to_ts"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::aggregate"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::fill"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::response_format"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::groups"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::limit"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::to_ts"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::aggregate"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::fill"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::response_format"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::groups"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::limit"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::to_ts"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::aggregate"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::fill"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::response_format"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::groups"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::limit"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::to_ts"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::aggregate"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::fill"]=0
operation_parameters_minimum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::response_format"]=0
operation_parameters_minimum_occurrences["overviewV1LatestMarketcapAllTick:::groups"]=0
operation_parameters_minimum_occurrences["overviewV1LatestMarketcapFtwTick:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::instrument"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::limit"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::to_ts"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::aggregate"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::fill"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalDays:::response_format"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::instrument"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::limit"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::to_ts"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::aggregate"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::fill"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalHours:::response_format"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::instrument"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::after_ts"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::last_ccseq"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::limit"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::response_format"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessages:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::instrument"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::response_format"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::limit"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::fill"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1HistoricalMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["indexCcV1LatestInstrumentMetadata:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1LatestInstrumentMetadata:::instruments"]=1
operation_parameters_minimum_occurrences["indexCcV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1LatestTick:::market"]=1
operation_parameters_minimum_occurrences["indexCcV1LatestTick:::instruments"]=1
operation_parameters_minimum_occurrences["indexCcV1LatestTick:::groups"]=0
operation_parameters_minimum_occurrences["indexCcV1LatestTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["indexCcV1Markets:::market"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstruments:::market"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstruments:::instrument"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstruments:::instrument_status"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_minimum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::groups"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::limit"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::to_ts"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::aggregate"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::fill"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalDays:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::groups"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::limit"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::to_ts"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::aggregate"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::fill"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalHours:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::groups"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::limit"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::to_ts"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::aggregate"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::fill"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalMinutes:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::minute_ts"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::depth"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::after_ts"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::last_ccseq"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::limit"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTrades:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::market"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::instrument"]=1
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::hour_ts"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::response_format"]=0
operation_parameters_minimum_occurrences["spotV1HistoricalTradesHour:::return_404_on_empty_response"]=0
operation_parameters_minimum_occurrences["spotV1LatestInstrumentMetadata:::market"]=1
operation_parameters_minimum_occurrences["spotV1LatestInstrumentMetadata:::instruments"]=1
operation_parameters_minimum_occurrences["spotV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_minimum_occurrences["spotV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1LatestTick:::market"]=1
operation_parameters_minimum_occurrences["spotV1LatestTick:::instruments"]=1
operation_parameters_minimum_occurrences["spotV1LatestTick:::groups"]=0
operation_parameters_minimum_occurrences["spotV1LatestTick:::mapping_priority"]=0
operation_parameters_minimum_occurrences["spotV1Markets:::market"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstruments:::market"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstruments:::instrument"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstruments:::instrument_status"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_minimum_occurrences["spotV1MarketsInstrumentsUnmapped:::instrument_status"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["assetV1DataByAddress:::address"]=0
operation_parameters_maximum_occurrences["assetV1DataByAddress:::chain_symbol"]=0
operation_parameters_maximum_occurrences["assetV1DataByAddress:::groups"]=0
operation_parameters_maximum_occurrences["assetV1DataById:::asset_id"]=0
operation_parameters_maximum_occurrences["assetV1DataById:::groups"]=0
operation_parameters_maximum_occurrences["assetV1DataBySymbol:::asset_symbol"]=0
operation_parameters_maximum_occurrences["assetV1DataBySymbol:::groups"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::page"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::page_size"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::asset_type"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::sort_by"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::sort_direction"]=0
operation_parameters_maximum_occurrences["assetV1TopList:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalDays:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateDays:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateHours:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::after_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::last_ccseq"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessages:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalFundingRateMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalHours:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestDays:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestHours:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::after_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::last_ccseq"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessages:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::fill"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalOpenInterestMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::after_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::last_ccseq"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::limit"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTrades:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::market"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::response_format"]=0
operation_parameters_maximum_occurrences["futuresV1HistoricalTradesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["futuresV1LatestFundingRateTick:::market"]=0
operation_parameters_maximum_occurrences["futuresV1LatestFundingRateTick:::instruments"]=0
operation_parameters_maximum_occurrences["futuresV1LatestFundingRateTick:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1LatestFundingRateTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1LatestInstrumentMetadata:::market"]=0
operation_parameters_maximum_occurrences["futuresV1LatestInstrumentMetadata:::instruments"]=0
operation_parameters_maximum_occurrences["futuresV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1LatestOpenInterestTick:::market"]=0
operation_parameters_maximum_occurrences["futuresV1LatestOpenInterestTick:::instruments"]=0
operation_parameters_maximum_occurrences["futuresV1LatestOpenInterestTick:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1LatestOpenInterestTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1LatestTick:::market"]=0
operation_parameters_maximum_occurrences["futuresV1LatestTick:::instruments"]=0
operation_parameters_maximum_occurrences["futuresV1LatestTick:::groups"]=0
operation_parameters_maximum_occurrences["futuresV1LatestTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["futuresV1Markets:::market"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstruments:::market"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstruments:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstruments:::instrument_status"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_maximum_occurrences["futuresV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::market"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::groups"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::limit"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::to_ts"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::aggregate"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::fill"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalDays:::response_format"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::market"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::groups"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::limit"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::to_ts"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::aggregate"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::fill"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalHours:::response_format"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::market"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::after_ts"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::last_ccseq"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::limit"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::response_format"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessages:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::market"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::response_format"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::market"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::groups"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::limit"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::fill"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1HistoricalMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["indexV1LatestInstrumentMetadata:::market"]=0
operation_parameters_maximum_occurrences["indexV1LatestInstrumentMetadata:::instruments"]=0
operation_parameters_maximum_occurrences["indexV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_maximum_occurrences["indexV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1LatestTick:::market"]=0
operation_parameters_maximum_occurrences["indexV1LatestTick:::instruments"]=0
operation_parameters_maximum_occurrences["indexV1LatestTick:::groups"]=0
operation_parameters_maximum_occurrences["indexV1LatestTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexV1Markets:::market"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstruments:::market"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstruments:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstruments:::instrument_status"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_maximum_occurrences["indexV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_maximum_occurrences["newsV1ArticleList:::source_ids"]=0
operation_parameters_maximum_occurrences["newsV1ArticleList:::lang"]=0
operation_parameters_maximum_occurrences["newsV1ArticleList:::categories"]=0
operation_parameters_maximum_occurrences["newsV1ArticleList:::exclude_categories"]=0
operation_parameters_maximum_occurrences["newsV1ArticleList:::to_ts"]=0
operation_parameters_maximum_occurrences["newsV1SourceList:::lang"]=0
operation_parameters_maximum_occurrences["newsV1SourceList:::type"]=0
operation_parameters_maximum_occurrences["newsV1SourceList:::status"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::groups"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::limit"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::to_ts"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::aggregate"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::fill"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsDays:::response_format"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::groups"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::limit"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::to_ts"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::aggregate"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::fill"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapAllAssetsHours:::response_format"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::groups"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::limit"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::to_ts"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::aggregate"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::fill"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsDays:::response_format"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::groups"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::limit"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::to_ts"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::aggregate"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::fill"]=0
operation_parameters_maximum_occurrences["overviewV1HistoricalMarketcapFtwAssetsHours:::response_format"]=0
operation_parameters_maximum_occurrences["overviewV1LatestMarketcapAllTick:::groups"]=0
operation_parameters_maximum_occurrences["overviewV1LatestMarketcapFtwTick:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::limit"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::to_ts"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::aggregate"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::fill"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalDays:::response_format"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::limit"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::to_ts"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::aggregate"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::fill"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalHours:::response_format"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::after_ts"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::last_ccseq"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::limit"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::response_format"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessages:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::response_format"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMessagesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::limit"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::fill"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1HistoricalMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestInstrumentMetadata:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestInstrumentMetadata:::instruments"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestTick:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestTick:::instruments"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestTick:::groups"]=0
operation_parameters_maximum_occurrences["indexCcV1LatestTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["indexCcV1Markets:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstruments:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstruments:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstruments:::instrument_status"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_maximum_occurrences["indexCcV1MarketsInstrumentsUnmapped:::instrument_status"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::groups"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::limit"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::to_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::aggregate"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::fill"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalDays:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::groups"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::limit"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::to_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::aggregate"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::fill"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalHours:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::groups"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::limit"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::to_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::aggregate"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::fill"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalMinutes:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::minute_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::depth"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalOrderbookL2SnapshotMinute:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::after_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::last_ccseq"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::limit"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTrades:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::market"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::hour_ts"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::response_format"]=0
operation_parameters_maximum_occurrences["spotV1HistoricalTradesHour:::return_404_on_empty_response"]=0
operation_parameters_maximum_occurrences["spotV1LatestInstrumentMetadata:::market"]=0
operation_parameters_maximum_occurrences["spotV1LatestInstrumentMetadata:::instruments"]=0
operation_parameters_maximum_occurrences["spotV1LatestInstrumentMetadata:::groups"]=0
operation_parameters_maximum_occurrences["spotV1LatestInstrumentMetadata:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1LatestTick:::market"]=0
operation_parameters_maximum_occurrences["spotV1LatestTick:::instruments"]=0
operation_parameters_maximum_occurrences["spotV1LatestTick:::groups"]=0
operation_parameters_maximum_occurrences["spotV1LatestTick:::mapping_priority"]=0
operation_parameters_maximum_occurrences["spotV1Markets:::market"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstruments:::market"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstruments:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstruments:::instrument_status"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstrumentsUnmapped:::market"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstrumentsUnmapped:::instrument"]=0
operation_parameters_maximum_occurrences["spotV1MarketsInstrumentsUnmapped:::instrument_status"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["assetV1DataByAddress:::address"]=""
operation_parameters_collection_type["assetV1DataByAddress:::chain_symbol"]=""
operation_parameters_collection_type["assetV1DataByAddress:::groups"]=""
operation_parameters_collection_type["assetV1DataById:::asset_id"]=""
operation_parameters_collection_type["assetV1DataById:::groups"]=""
operation_parameters_collection_type["assetV1DataBySymbol:::asset_symbol"]=""
operation_parameters_collection_type["assetV1DataBySymbol:::groups"]=""
operation_parameters_collection_type["assetV1TopList:::page"]=""
operation_parameters_collection_type["assetV1TopList:::page_size"]=""
operation_parameters_collection_type["assetV1TopList:::asset_type"]=""
operation_parameters_collection_type["assetV1TopList:::sort_by"]=""
operation_parameters_collection_type["assetV1TopList:::sort_direction"]=""
operation_parameters_collection_type["assetV1TopList:::groups"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalDays:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalDays:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateDays:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateHours:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::after_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::last_ccseq"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessages:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::hour_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMessagesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalFundingRateMinutes:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalHours:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalHours:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalMinutes:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalMinutes:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestDays:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestHours:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::after_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::last_ccseq"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessages:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::hour_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMessagesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::groups"]="csv"
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::to_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::aggregate"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::fill"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalOpenInterestMinutes:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::after_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::last_ccseq"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::limit"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalTrades:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::market"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::instrument"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::hour_ts"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::response_format"]=""
operation_parameters_collection_type["futuresV1HistoricalTradesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["futuresV1LatestFundingRateTick:::market"]=""
operation_parameters_collection_type["futuresV1LatestFundingRateTick:::instruments"]="csv"
operation_parameters_collection_type["futuresV1LatestFundingRateTick:::groups"]="csv"
operation_parameters_collection_type["futuresV1LatestFundingRateTick:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1LatestInstrumentMetadata:::market"]=""
operation_parameters_collection_type["futuresV1LatestInstrumentMetadata:::instruments"]="csv"
operation_parameters_collection_type["futuresV1LatestInstrumentMetadata:::groups"]="csv"
operation_parameters_collection_type["futuresV1LatestInstrumentMetadata:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1LatestOpenInterestTick:::market"]=""
operation_parameters_collection_type["futuresV1LatestOpenInterestTick:::instruments"]="csv"
operation_parameters_collection_type["futuresV1LatestOpenInterestTick:::groups"]="csv"
operation_parameters_collection_type["futuresV1LatestOpenInterestTick:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1LatestTick:::market"]=""
operation_parameters_collection_type["futuresV1LatestTick:::instruments"]="csv"
operation_parameters_collection_type["futuresV1LatestTick:::groups"]="csv"
operation_parameters_collection_type["futuresV1LatestTick:::mapping_priority"]=""
operation_parameters_collection_type["futuresV1Markets:::market"]=""
operation_parameters_collection_type["futuresV1MarketsInstruments:::market"]=""
operation_parameters_collection_type["futuresV1MarketsInstruments:::instrument"]=""
operation_parameters_collection_type["futuresV1MarketsInstruments:::instrument_status"]="csv"
operation_parameters_collection_type["futuresV1MarketsInstrumentsUnmapped:::market"]=""
operation_parameters_collection_type["futuresV1MarketsInstrumentsUnmapped:::instrument"]=""
operation_parameters_collection_type["futuresV1MarketsInstrumentsUnmapped:::instrument_status"]="csv"
operation_parameters_collection_type["indexV1HistoricalDays:::market"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::instrument"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::groups"]="csv"
operation_parameters_collection_type["indexV1HistoricalDays:::limit"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::to_ts"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::aggregate"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::fill"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::mapping_priority"]=""
operation_parameters_collection_type["indexV1HistoricalDays:::response_format"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::market"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::instrument"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::groups"]="csv"
operation_parameters_collection_type["indexV1HistoricalHours:::limit"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::to_ts"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::aggregate"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::fill"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::mapping_priority"]=""
operation_parameters_collection_type["indexV1HistoricalHours:::response_format"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::market"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::instrument"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::after_ts"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::last_ccseq"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::limit"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::mapping_priority"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::response_format"]=""
operation_parameters_collection_type["indexV1HistoricalMessages:::return_404_on_empty_response"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::market"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::instrument"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::hour_ts"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::mapping_priority"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::response_format"]=""
operation_parameters_collection_type["indexV1HistoricalMessagesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::market"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::instrument"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::groups"]="csv"
operation_parameters_collection_type["indexV1HistoricalMinutes:::limit"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::to_ts"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::aggregate"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::fill"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::mapping_priority"]=""
operation_parameters_collection_type["indexV1HistoricalMinutes:::response_format"]=""
operation_parameters_collection_type["indexV1LatestInstrumentMetadata:::market"]=""
operation_parameters_collection_type["indexV1LatestInstrumentMetadata:::instruments"]="csv"
operation_parameters_collection_type["indexV1LatestInstrumentMetadata:::groups"]="csv"
operation_parameters_collection_type["indexV1LatestInstrumentMetadata:::mapping_priority"]=""
operation_parameters_collection_type["indexV1LatestTick:::market"]=""
operation_parameters_collection_type["indexV1LatestTick:::instruments"]="csv"
operation_parameters_collection_type["indexV1LatestTick:::groups"]="csv"
operation_parameters_collection_type["indexV1LatestTick:::mapping_priority"]=""
operation_parameters_collection_type["indexV1Markets:::market"]=""
operation_parameters_collection_type["indexV1MarketsInstruments:::market"]=""
operation_parameters_collection_type["indexV1MarketsInstruments:::instrument"]=""
operation_parameters_collection_type["indexV1MarketsInstruments:::instrument_status"]="csv"
operation_parameters_collection_type["indexV1MarketsInstrumentsUnmapped:::market"]=""
operation_parameters_collection_type["indexV1MarketsInstrumentsUnmapped:::instrument"]=""
operation_parameters_collection_type["indexV1MarketsInstrumentsUnmapped:::instrument_status"]="csv"
operation_parameters_collection_type["newsV1ArticleList:::source_ids"]="csv"
operation_parameters_collection_type["newsV1ArticleList:::lang"]=""
operation_parameters_collection_type["newsV1ArticleList:::categories"]="csv"
operation_parameters_collection_type["newsV1ArticleList:::exclude_categories"]="csv"
operation_parameters_collection_type["newsV1ArticleList:::to_ts"]=""
operation_parameters_collection_type["newsV1SourceList:::lang"]=""
operation_parameters_collection_type["newsV1SourceList:::type"]=""
operation_parameters_collection_type["newsV1SourceList:::status"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::groups"]="csv"
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::limit"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::to_ts"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::aggregate"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::fill"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsDays:::response_format"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::groups"]="csv"
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::limit"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::to_ts"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::aggregate"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::fill"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapAllAssetsHours:::response_format"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::groups"]="csv"
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::limit"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::to_ts"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::aggregate"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::fill"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsDays:::response_format"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::groups"]="csv"
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::limit"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::to_ts"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::aggregate"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::fill"]=""
operation_parameters_collection_type["overviewV1HistoricalMarketcapFtwAssetsHours:::response_format"]=""
operation_parameters_collection_type["overviewV1LatestMarketcapAllTick:::groups"]="csv"
operation_parameters_collection_type["overviewV1LatestMarketcapFtwTick:::groups"]="csv"
operation_parameters_collection_type["indexCcV1HistoricalDays:::market"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::instrument"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::groups"]="csv"
operation_parameters_collection_type["indexCcV1HistoricalDays:::limit"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::to_ts"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::aggregate"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::fill"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1HistoricalDays:::response_format"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::market"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::instrument"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::groups"]="csv"
operation_parameters_collection_type["indexCcV1HistoricalHours:::limit"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::to_ts"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::aggregate"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::fill"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1HistoricalHours:::response_format"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::market"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::instrument"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::after_ts"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::last_ccseq"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::limit"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::response_format"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessages:::return_404_on_empty_response"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::market"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::instrument"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::hour_ts"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::response_format"]=""
operation_parameters_collection_type["indexCcV1HistoricalMessagesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::market"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::instrument"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::groups"]="csv"
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::limit"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::to_ts"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::aggregate"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::fill"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1HistoricalMinutes:::response_format"]=""
operation_parameters_collection_type["indexCcV1LatestInstrumentMetadata:::market"]=""
operation_parameters_collection_type["indexCcV1LatestInstrumentMetadata:::instruments"]="csv"
operation_parameters_collection_type["indexCcV1LatestInstrumentMetadata:::groups"]="csv"
operation_parameters_collection_type["indexCcV1LatestInstrumentMetadata:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1LatestTick:::market"]=""
operation_parameters_collection_type["indexCcV1LatestTick:::instruments"]="csv"
operation_parameters_collection_type["indexCcV1LatestTick:::groups"]="csv"
operation_parameters_collection_type["indexCcV1LatestTick:::mapping_priority"]=""
operation_parameters_collection_type["indexCcV1Markets:::market"]=""
operation_parameters_collection_type["indexCcV1MarketsInstruments:::market"]=""
operation_parameters_collection_type["indexCcV1MarketsInstruments:::instrument"]=""
operation_parameters_collection_type["indexCcV1MarketsInstruments:::instrument_status"]="csv"
operation_parameters_collection_type["indexCcV1MarketsInstrumentsUnmapped:::market"]=""
operation_parameters_collection_type["indexCcV1MarketsInstrumentsUnmapped:::instrument"]=""
operation_parameters_collection_type["indexCcV1MarketsInstrumentsUnmapped:::instrument_status"]="csv"
operation_parameters_collection_type["spotV1HistoricalDays:::market"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::groups"]="csv"
operation_parameters_collection_type["spotV1HistoricalDays:::limit"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::to_ts"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::aggregate"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::fill"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalDays:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::market"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::groups"]="csv"
operation_parameters_collection_type["spotV1HistoricalHours:::limit"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::to_ts"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::aggregate"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::fill"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalHours:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::market"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::groups"]="csv"
operation_parameters_collection_type["spotV1HistoricalMinutes:::limit"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::to_ts"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::aggregate"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::fill"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalMinutes:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::market"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::minute_ts"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::depth"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalOrderbookL2SnapshotMinute:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::market"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::after_ts"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::last_ccseq"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::limit"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalTrades:::return_404_on_empty_response"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::market"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::instrument"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::hour_ts"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::mapping_priority"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::response_format"]=""
operation_parameters_collection_type["spotV1HistoricalTradesHour:::return_404_on_empty_response"]=""
operation_parameters_collection_type["spotV1LatestInstrumentMetadata:::market"]=""
operation_parameters_collection_type["spotV1LatestInstrumentMetadata:::instruments"]="csv"
operation_parameters_collection_type["spotV1LatestInstrumentMetadata:::groups"]="csv"
operation_parameters_collection_type["spotV1LatestInstrumentMetadata:::mapping_priority"]=""
operation_parameters_collection_type["spotV1LatestTick:::market"]=""
operation_parameters_collection_type["spotV1LatestTick:::instruments"]="csv"
operation_parameters_collection_type["spotV1LatestTick:::groups"]="csv"
operation_parameters_collection_type["spotV1LatestTick:::mapping_priority"]=""
operation_parameters_collection_type["spotV1Markets:::market"]=""
operation_parameters_collection_type["spotV1MarketsInstruments:::market"]=""
operation_parameters_collection_type["spotV1MarketsInstruments:::instrument"]=""
operation_parameters_collection_type["spotV1MarketsInstruments:::instrument_status"]="csv"
operation_parameters_collection_type["spotV1MarketsInstrumentsUnmapped:::market"]=""
operation_parameters_collection_type["spotV1MarketsInstrumentsUnmapped:::instrument"]=""
operation_parameters_collection_type["spotV1MarketsInstrumentsUnmapped:::instrument_status"]="csv"


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="authorization"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")


        if [[ ${qparam} == "api_key" ]]; then
            if [[ -n "${parameter_values[*]}" ]]; then
                parameter_value+="${qparam}=${parameter_values}"
            else
                echo "Missing ApiKey!!! You have to provide on command line option 'api_key=...'"
                exit 1
            fi
            continue
        fi

        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry command line client (API version 2.1.1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}api_key=<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[asset]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}assetV1DataByAddress${OFF};
  ${CYAN}assetV1DataById${OFF};
  ${CYAN}assetV1DataBySymbol${OFF};
  ${CYAN}assetV1TopList${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[futures]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}futuresV1HistoricalDays${OFF};
  ${CYAN}futuresV1HistoricalFundingRateDays${OFF};
  ${CYAN}futuresV1HistoricalFundingRateHours${OFF};
  ${CYAN}futuresV1HistoricalFundingRateMessages${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1HistoricalFundingRateMessagesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1HistoricalFundingRateMinutes${OFF};
  ${CYAN}futuresV1HistoricalHours${OFF};
  ${CYAN}futuresV1HistoricalMinutes${OFF};
  ${CYAN}futuresV1HistoricalOpenInterestDays${OFF};
  ${CYAN}futuresV1HistoricalOpenInterestHours${OFF};
  ${CYAN}futuresV1HistoricalOpenInterestMessages${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1HistoricalOpenInterestMessagesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1HistoricalOpenInterestMinutes${OFF};
  ${CYAN}futuresV1HistoricalTrades${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1HistoricalTradesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}futuresV1LatestFundingRateTick${OFF};
  ${CYAN}futuresV1LatestInstrumentMetadata${OFF};
  ${CYAN}futuresV1LatestOpenInterestTick${OFF};
  ${CYAN}futuresV1LatestTick${OFF};
  ${CYAN}futuresV1Markets${OFF};
  ${CYAN}futuresV1MarketsInstruments${OFF};
  ${CYAN}futuresV1MarketsInstrumentsUnmapped${OFF};
  ${CYAN}indexV1HistoricalDays${OFF};
  ${CYAN}indexV1HistoricalHours${OFF};
  ${CYAN}indexV1HistoricalMessages${OFF}; (AUTH) (AUTH)
  ${CYAN}indexV1HistoricalMessagesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}indexV1HistoricalMinutes${OFF};
  ${CYAN}indexV1LatestInstrumentMetadata${OFF};
  ${CYAN}indexV1LatestTick${OFF};
  ${CYAN}indexV1Markets${OFF};
  ${CYAN}indexV1MarketsInstruments${OFF};
  ${CYAN}indexV1MarketsInstrumentsUnmapped${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[news]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}newsV1ArticleList${OFF};
  ${CYAN}newsV1CategoryList${OFF};
  ${CYAN}newsV1SourceList${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[overview]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}overviewV1HistoricalMarketcapAllAssetsDays${OFF};
  ${CYAN}overviewV1HistoricalMarketcapAllAssetsHours${OFF};
  ${CYAN}overviewV1HistoricalMarketcapFtwAssetsDays${OFF};
  ${CYAN}overviewV1HistoricalMarketcapFtwAssetsHours${OFF};
  ${CYAN}overviewV1LatestMarketcapAllTick${OFF};
  ${CYAN}overviewV1LatestMarketcapFtwTick${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[referenceRates]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}indexCcV1HistoricalDays${OFF};
  ${CYAN}indexCcV1HistoricalHours${OFF};
  ${CYAN}indexCcV1HistoricalMessages${OFF}; (AUTH) (AUTH)
  ${CYAN}indexCcV1HistoricalMessagesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}indexCcV1HistoricalMinutes${OFF};
  ${CYAN}indexCcV1LatestInstrumentMetadata${OFF};
  ${CYAN}indexCcV1LatestTick${OFF};
  ${CYAN}indexCcV1Markets${OFF};
  ${CYAN}indexCcV1MarketsInstruments${OFF};
  ${CYAN}indexCcV1MarketsInstrumentsUnmapped${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[spot]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}spotV1HistoricalDays${OFF};
  ${CYAN}spotV1HistoricalHours${OFF};
  ${CYAN}spotV1HistoricalMinutes${OFF};
  ${CYAN}spotV1HistoricalOrderbookL2SnapshotMinute${OFF}; (AUTH) (AUTH)
  ${CYAN}spotV1HistoricalTrades${OFF}; (AUTH) (AUTH)
  ${CYAN}spotV1HistoricalTradesHour${OFF}; (AUTH) (AUTH)
  ${CYAN}spotV1LatestInstrumentMetadata${OFF};
  ${CYAN}spotV1LatestTick${OFF};
  ${CYAN}spotV1Markets${OFF};
  ${CYAN}spotV1MarketsInstruments${OFF};
  ${CYAN}spotV1MarketsInstrumentsUnmapped${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://data-api.cryptocompare.com')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry command line client (API version 2.1.1)${OFF}"
    echo ""
    echo -e "License: CryptoCompare API License Agreement"
    echo -e "Contact: data@cryptocompare.com"
    echo ""
read -r -d '' appdescription <<EOF

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry command line client (API version 2.1.1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for assetV1DataByAddress operation
#
##############################################################################
print_assetV1DataByAddress_help() {
    echo ""
    echo -e "${BOLD}${WHITE}assetV1DataByAddress - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}chain_symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: chain_symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - ${YELLOW} Specify as: groups=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for assetV1DataById operation
#
##############################################################################
print_assetV1DataById_help() {
    echo ""
    echo -e "${BOLD}${WHITE}assetV1DataById - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The asset id you are interested in${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - ${YELLOW} Specify as: groups=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for assetV1DataBySymbol operation
#
##############################################################################
print_assetV1DataBySymbol_help() {
    echo ""
    echo -e "${BOLD}${WHITE}assetV1DataBySymbol - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_symbol${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The asset symbol you are interested in${YELLOW} Specify as: asset_symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - ${YELLOW} Specify as: groups=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for assetV1TopList operation
#
##############################################################################
print_assetV1TopList_help() {
    echo ""
    echo -e "${BOLD}${WHITE}assetV1TopList - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The page number for the request to get {page_size} coins at the time.${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The number of items returned per page${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The asset class/type${YELLOW} Specify as: asset_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_by${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CREATED_ON)${OFF} - Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )${YELLOW} Specify as: sort_by=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_direction${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: DESC)${OFF} - Sort direction ( DESC,ASC )${YELLOW} Specify as: sort_direction=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - ${YELLOW} Specify as: groups=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalDays operation
#
##############################################################################
print_futuresV1HistoricalDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalFundingRateDays operation
#
##############################################################################
print_futuresV1HistoricalFundingRateDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalFundingRateDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalFundingRateHours operation
#
##############################################################################
print_futuresV1HistoricalFundingRateHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalFundingRateHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalFundingRateMessages operation
#
##############################################################################
print_futuresV1HistoricalFundingRateMessages_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalFundingRateMessages - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest funding rate message in the response${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of funding rate messages to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalFundingRateMessagesHour operation
#
##############################################################################
print_futuresV1HistoricalFundingRateMessagesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalFundingRateMessagesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalFundingRateMinutes operation
#
##############################################################################
print_futuresV1HistoricalFundingRateMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalFundingRateMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalHours operation
#
##############################################################################
print_futuresV1HistoricalHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalMinutes operation
#
##############################################################################
print_futuresV1HistoricalMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalOpenInterestDays operation
#
##############################################################################
print_futuresV1HistoricalOpenInterestDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalOpenInterestDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalOpenInterestHours operation
#
##############################################################################
print_futuresV1HistoricalOpenInterestHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalOpenInterestHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalOpenInterestMessages operation
#
##############################################################################
print_futuresV1HistoricalOpenInterestMessages_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalOpenInterestMessages - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest open interest message in the response${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of open interest messages to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalOpenInterestMessagesHour operation
#
##############################################################################
print_futuresV1HistoricalOpenInterestMessagesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalOpenInterestMessagesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalOpenInterestMinutes operation
#
##############################################################################
print_futuresV1HistoricalOpenInterestMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalOpenInterestMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalTrades operation
#
##############################################################################
print_futuresV1HistoricalTrades_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalTrades - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest trade in the response.${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of trades to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1HistoricalTradesHour operation
#
##############################################################################
print_futuresV1HistoricalTradesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1HistoricalTradesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1LatestFundingRateTick operation
#
##############################################################################
print_futuresV1LatestFundingRateTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1LatestFundingRateTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1LatestInstrumentMetadata operation
#
##############################################################################
print_futuresV1LatestInstrumentMetadata_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1LatestInstrumentMetadata - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1LatestOpenInterestTick operation
#
##############################################################################
print_futuresV1LatestOpenInterestTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1LatestOpenInterestTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1LatestTick operation
#
##############################################################################
print_futuresV1LatestTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1LatestTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1Markets operation
#
##############################################################################
print_futuresV1Markets_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1Markets - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1MarketsInstruments operation
#
##############################################################################
print_futuresV1MarketsInstruments_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1MarketsInstruments - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The mapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for futuresV1MarketsInstrumentsUnmapped operation
#
##############################################################################
print_futuresV1MarketsInstrumentsUnmapped_help() {
    echo ""
    echo -e "${BOLD}${WHITE}futuresV1MarketsInstrumentsUnmapped - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The unmapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1HistoricalDays operation
#
##############################################################################
print_indexV1HistoricalDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1HistoricalDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1HistoricalHours operation
#
##############################################################################
print_indexV1HistoricalHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1HistoricalHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1HistoricalMessages operation
#
##############################################################################
print_indexV1HistoricalMessages_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1HistoricalMessages - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest index message in the response${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of index messages to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1HistoricalMessagesHour operation
#
##############################################################################
print_indexV1HistoricalMessagesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1HistoricalMessagesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1HistoricalMinutes operation
#
##############################################################################
print_indexV1HistoricalMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1HistoricalMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1LatestInstrumentMetadata operation
#
##############################################################################
print_indexV1LatestInstrumentMetadata_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1LatestInstrumentMetadata - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1LatestTick operation
#
##############################################################################
print_indexV1LatestTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1LatestTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1Markets operation
#
##############################################################################
print_indexV1Markets_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1Markets - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1MarketsInstruments operation
#
##############################################################################
print_indexV1MarketsInstruments_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1MarketsInstruments - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The mapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexV1MarketsInstrumentsUnmapped operation
#
##############################################################################
print_indexV1MarketsInstrumentsUnmapped_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexV1MarketsInstrumentsUnmapped - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The unmapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for newsV1ArticleList operation
#
##############################################################################
print_newsV1ArticleList_help() {
    echo ""
    echo -e "${BOLD}${WHITE}newsV1ArticleList - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}source_ids${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [&quot;&quot;])${OFF} - Get articles from specific sources; either by their ids or keys${YELLOW} Specify as: source_ids="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}lang${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: EN)${OFF} - The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)${YELLOW} Specify as: lang=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}categories${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [&quot;&quot;])${OFF} - News article categories to return${YELLOW} Specify as: categories="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exclude_categories${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [&quot;&quot;])${OFF} - News article categories to exclude from results${YELLOW} Specify as: exclude_categories="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: -1)${OFF} - Articles published on or before this timestamp${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for newsV1CategoryList operation
#
##############################################################################
print_newsV1CategoryList_help() {
    echo ""
    echo -e "${BOLD}${WHITE}newsV1CategoryList - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for newsV1SourceList operation
#
##############################################################################
print_newsV1SourceList_help() {
    echo ""
    echo -e "${BOLD}${WHITE}newsV1SourceList - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}lang${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: EN)${OFF} - The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)${YELLOW} Specify as: lang=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: RSS)${OFF} - RSS, API, TWITTER${YELLOW} Specify as: type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}status${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: ACTIVE)${OFF} - The status for the  article source entry. Allowed values: ACTIVE, INACTIVE${YELLOW} Specify as: status=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1HistoricalMarketcapAllAssetsDays operation
#
##############################################################################
print_overviewV1HistoricalMarketcapAllAssetsDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1HistoricalMarketcapAllAssetsDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1HistoricalMarketcapAllAssetsHours operation
#
##############################################################################
print_overviewV1HistoricalMarketcapAllAssetsHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1HistoricalMarketcapAllAssetsHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1HistoricalMarketcapFtwAssetsDays operation
#
##############################################################################
print_overviewV1HistoricalMarketcapFtwAssetsDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1HistoricalMarketcapFtwAssetsDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1HistoricalMarketcapFtwAssetsHours operation
#
##############################################################################
print_overviewV1HistoricalMarketcapFtwAssetsHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1HistoricalMarketcapFtwAssetsHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1LatestMarketcapAllTick operation
#
##############################################################################
print_overviewV1LatestMarketcapAllTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1LatestMarketcapAllTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for overviewV1LatestMarketcapFtwTick operation
#
##############################################################################
print_overviewV1LatestMarketcapFtwTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}overviewV1LatestMarketcapFtwTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1HistoricalDays operation
#
##############################################################################
print_indexCcV1HistoricalDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1HistoricalDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1HistoricalHours operation
#
##############################################################################
print_indexCcV1HistoricalHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1HistoricalHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1HistoricalMessages operation
#
##############################################################################
print_indexCcV1HistoricalMessages_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1HistoricalMessages - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest index message in the response${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of index messages to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1HistoricalMessagesHour operation
#
##############################################################################
print_indexCcV1HistoricalMessagesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1HistoricalMessagesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1HistoricalMinutes operation
#
##############################################################################
print_indexCcV1HistoricalMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1HistoricalMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1LatestInstrumentMetadata operation
#
##############################################################################
print_indexCcV1LatestInstrumentMetadata_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1LatestInstrumentMetadata - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1LatestTick operation
#
##############################################################################
print_indexCcV1LatestTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1LatestTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1Markets operation
#
##############################################################################
print_indexCcV1Markets_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1Markets - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1MarketsInstruments operation
#
##############################################################################
print_indexCcV1MarketsInstruments_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1MarketsInstruments - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The mapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for indexCcV1MarketsInstrumentsUnmapped operation
#
##############################################################################
print_indexCcV1MarketsInstrumentsUnmapped_help() {
    echo ""
    echo -e "${BOLD}${WHITE}indexCcV1MarketsInstrumentsUnmapped - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The unmapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalDays operation
#
##############################################################################
print_spotV1HistoricalDays_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalDays - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalHours operation
#
##############################################################################
print_spotV1HistoricalHours_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalHours - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalMinutes operation
#
##############################################################################
print_spotV1HistoricalMinutes_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalMinutes - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 30)${OFF} - The number of data points to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}to_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}${YELLOW} Specify as: to_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}aggregate${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries${YELLOW} Specify as: aggregate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fill${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: true)${OFF} - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.${YELLOW} Specify as: fill=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalOrderbookL2SnapshotMinute operation
#
##############################################################################
print_spotV1HistoricalOrderbookL2SnapshotMinute_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalOrderbookL2SnapshotMinute - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}minute_ts${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.${YELLOW} Specify as: minute_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}depth${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 50)${OFF} - The number of top bids and asks to return.${YELLOW} Specify as: depth=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalTrades operation
#
##############################################################################
print_spotV1HistoricalTrades_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalTrades - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}after_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds of the earliest trade in the response.${YELLOW} Specify as: after_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}last_ccseq${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.${YELLOW} Specify as: last_ccseq=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - The maximum number of trades to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1HistoricalTradesHour operation
#
##############################################################################
print_spotV1HistoricalTradesHour_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1HistoricalTradesHour - ${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - QUERY)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hour_ts${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.${YELLOW} Specify as: hour_ts=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}response_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: JSON)${OFF} - The format of the data response in uppercase. It can be one of the following: JSON,CSV${YELLOW} Specify as: response_format=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}return_404_on_empty_response${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.${YELLOW} Specify as: return_404_on_empty_response=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1LatestInstrumentMetadata operation
#
##############################################################################
print_spotV1LatestInstrumentMetadata_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1LatestInstrumentMetadata - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1LatestTick operation
#
##############################################################################
print_spotV1LatestTick_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1LatestTick - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instruments${OFF} ${BLUE}[array[string]]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.${YELLOW} Specify as: instruments="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}groups${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [])${OFF} - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME${YELLOW} Specify as: groups="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}mapping_priority${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: CHECK_MAPPED_FIRST)${OFF} - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST${YELLOW} Specify as: mapping_priority=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1Markets operation
#
##############################################################################
print_spotV1Markets_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1Markets - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1MarketsInstruments operation
#
##############################################################################
print_spotV1MarketsInstruments_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1MarketsInstruments - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The mapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for spotV1MarketsInstrumentsUnmapped operation
#
##############################################################################
print_spotV1MarketsInstrumentsUnmapped_help() {
    echo ""
    echo -e "${BOLD}${WHITE}spotV1MarketsInstrumentsUnmapped - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}market${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The exchange to obtain data from${YELLOW} Specify as: market=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: )${OFF} - The unmapped instrument to retrieve on a specific market.${YELLOW} Specify as: instrument=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}instrument_status${OFF} ${BLUE}[array[string]]${OFF} ${CYAN}(default: [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;])${OFF} - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED${YELLOW} Specify as: instrument_status="value1,value2,..."${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success response from the API.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;The 400 error occurs when some of the data sent is malformed.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=429
    echo -e "${result_color_table[${code:0:1}]}  429;The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;The 500 error occurs our API is up but does not know how to / can't handle the request.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=502
    echo -e "${result_color_table[${code:0:1}]}  502;The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call assetV1DataByAddress operation
#
##############################################################################
call_assetV1DataByAddress() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(address chain_symbol groups)
    local path

    if ! path=$(build_request_path "/asset/v1/data/by/address" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call assetV1DataById operation
#
##############################################################################
call_assetV1DataById() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(asset_id groups)
    local path

    if ! path=$(build_request_path "/asset/v1/data/by/id" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call assetV1DataBySymbol operation
#
##############################################################################
call_assetV1DataBySymbol() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(asset_symbol groups)
    local path

    if ! path=$(build_request_path "/asset/v1/data/by/symbol" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call assetV1TopList operation
#
##############################################################################
call_assetV1TopList() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size asset_type sort_by sort_direction groups)
    local path

    if ! path=$(build_request_path "/asset/v1/top/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalDays operation
#
##############################################################################
call_futuresV1HistoricalDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalFundingRateDays operation
#
##############################################################################
call_futuresV1HistoricalFundingRateDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/funding-rate/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalFundingRateHours operation
#
##############################################################################
call_futuresV1HistoricalFundingRateHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/funding-rate/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalFundingRateMessages operation
#
##############################################################################
call_futuresV1HistoricalFundingRateMessages() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/funding-rate-messages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalFundingRateMessagesHour operation
#
##############################################################################
call_futuresV1HistoricalFundingRateMessagesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/funding-rate-messages/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalFundingRateMinutes operation
#
##############################################################################
call_futuresV1HistoricalFundingRateMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/funding-rate/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalHours operation
#
##############################################################################
call_futuresV1HistoricalHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalMinutes operation
#
##############################################################################
call_futuresV1HistoricalMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalOpenInterestDays operation
#
##############################################################################
call_futuresV1HistoricalOpenInterestDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/open-interest/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalOpenInterestHours operation
#
##############################################################################
call_futuresV1HistoricalOpenInterestHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/open-interest/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalOpenInterestMessages operation
#
##############################################################################
call_futuresV1HistoricalOpenInterestMessages() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/open-interest-messages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalOpenInterestMessagesHour operation
#
##############################################################################
call_futuresV1HistoricalOpenInterestMessagesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/open-interest-messages/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalOpenInterestMinutes operation
#
##############################################################################
call_futuresV1HistoricalOpenInterestMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/futures/v1/historical/open-interest/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalTrades operation
#
##############################################################################
call_futuresV1HistoricalTrades() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/trades" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1HistoricalTradesHour operation
#
##############################################################################
call_futuresV1HistoricalTradesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/futures/v1/historical/trades/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1LatestFundingRateTick operation
#
##############################################################################
call_futuresV1LatestFundingRateTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/futures/v1/latest/funding-rate/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1LatestInstrumentMetadata operation
#
##############################################################################
call_futuresV1LatestInstrumentMetadata() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/futures/v1/latest/instrument/metadata" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1LatestOpenInterestTick operation
#
##############################################################################
call_futuresV1LatestOpenInterestTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/futures/v1/latest/open-interest/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1LatestTick operation
#
##############################################################################
call_futuresV1LatestTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/futures/v1/latest/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1Markets operation
#
##############################################################################
call_futuresV1Markets() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market)
    local path

    if ! path=$(build_request_path "/futures/v1/markets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1MarketsInstruments operation
#
##############################################################################
call_futuresV1MarketsInstruments() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/futures/v1/markets/instruments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call futuresV1MarketsInstrumentsUnmapped operation
#
##############################################################################
call_futuresV1MarketsInstrumentsUnmapped() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/futures/v1/markets/instruments/unmapped" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1HistoricalDays operation
#
##############################################################################
call_indexV1HistoricalDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/v1/historical/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1HistoricalHours operation
#
##############################################################################
call_indexV1HistoricalHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/v1/historical/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1HistoricalMessages operation
#
##############################################################################
call_indexV1HistoricalMessages() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/index/v1/historical/messages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1HistoricalMessagesHour operation
#
##############################################################################
call_indexV1HistoricalMessagesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/index/v1/historical/messages/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1HistoricalMinutes operation
#
##############################################################################
call_indexV1HistoricalMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/v1/historical/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1LatestInstrumentMetadata operation
#
##############################################################################
call_indexV1LatestInstrumentMetadata() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/index/v1/latest/instrument/metadata" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1LatestTick operation
#
##############################################################################
call_indexV1LatestTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/index/v1/latest/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1Markets operation
#
##############################################################################
call_indexV1Markets() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market)
    local path

    if ! path=$(build_request_path "/index/v1/markets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1MarketsInstruments operation
#
##############################################################################
call_indexV1MarketsInstruments() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/index/v1/markets/instruments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexV1MarketsInstrumentsUnmapped operation
#
##############################################################################
call_indexV1MarketsInstrumentsUnmapped() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/index/v1/markets/instruments/unmapped" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call newsV1ArticleList operation
#
##############################################################################
call_newsV1ArticleList() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(source_ids lang categories exclude_categories to_ts)
    local path

    if ! path=$(build_request_path "/news/v1/article/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call newsV1CategoryList operation
#
##############################################################################
call_newsV1CategoryList() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/news/v1/category/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call newsV1SourceList operation
#
##############################################################################
call_newsV1SourceList() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(lang type status)
    local path

    if ! path=$(build_request_path "/news/v1/source/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1HistoricalMarketcapAllAssetsDays operation
#
##############################################################################
call_overviewV1HistoricalMarketcapAllAssetsDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups limit to_ts aggregate fill response_format)
    local path

    if ! path=$(build_request_path "/overview/v1/historical/marketcap/all/assets/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1HistoricalMarketcapAllAssetsHours operation
#
##############################################################################
call_overviewV1HistoricalMarketcapAllAssetsHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups limit to_ts aggregate fill response_format)
    local path

    if ! path=$(build_request_path "/overview/v1/historical/marketcap/all/assets/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1HistoricalMarketcapFtwAssetsDays operation
#
##############################################################################
call_overviewV1HistoricalMarketcapFtwAssetsDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups limit to_ts aggregate fill response_format)
    local path

    if ! path=$(build_request_path "/overview/v1/historical/marketcap/ftw/assets/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1HistoricalMarketcapFtwAssetsHours operation
#
##############################################################################
call_overviewV1HistoricalMarketcapFtwAssetsHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups limit to_ts aggregate fill response_format)
    local path

    if ! path=$(build_request_path "/overview/v1/historical/marketcap/ftw/assets/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1LatestMarketcapAllTick operation
#
##############################################################################
call_overviewV1LatestMarketcapAllTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups)
    local path

    if ! path=$(build_request_path "/overview/v1/latest/marketcap/all/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call overviewV1LatestMarketcapFtwTick operation
#
##############################################################################
call_overviewV1LatestMarketcapFtwTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(groups)
    local path

    if ! path=$(build_request_path "/overview/v1/latest/marketcap/ftw/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1HistoricalDays operation
#
##############################################################################
call_indexCcV1HistoricalDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/cc/v1/historical/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1HistoricalHours operation
#
##############################################################################
call_indexCcV1HistoricalHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/cc/v1/historical/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1HistoricalMessages operation
#
##############################################################################
call_indexCcV1HistoricalMessages() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq mapping_priority limit response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/index/cc/v1/historical/messages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1HistoricalMessagesHour operation
#
##############################################################################
call_indexCcV1HistoricalMessagesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/index/cc/v1/historical/messages/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1HistoricalMinutes operation
#
##############################################################################
call_indexCcV1HistoricalMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/index/cc/v1/historical/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1LatestInstrumentMetadata operation
#
##############################################################################
call_indexCcV1LatestInstrumentMetadata() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/index/cc/v1/latest/instrument/metadata" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1LatestTick operation
#
##############################################################################
call_indexCcV1LatestTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/index/cc/v1/latest/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1Markets operation
#
##############################################################################
call_indexCcV1Markets() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market)
    local path

    if ! path=$(build_request_path "/index/cc/v1/markets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1MarketsInstruments operation
#
##############################################################################
call_indexCcV1MarketsInstruments() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/index/cc/v1/markets/instruments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call indexCcV1MarketsInstrumentsUnmapped operation
#
##############################################################################
call_indexCcV1MarketsInstrumentsUnmapped() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/index/cc/v1/markets/instruments/unmapped" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalDays operation
#
##############################################################################
call_spotV1HistoricalDays() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/spot/v1/historical/days" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalHours operation
#
##############################################################################
call_spotV1HistoricalHours() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/spot/v1/historical/hours" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalMinutes operation
#
##############################################################################
call_spotV1HistoricalMinutes() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument groups limit to_ts aggregate fill mapping_priority response_format)
    local path

    if ! path=$(build_request_path "/spot/v1/historical/minutes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalOrderbookL2SnapshotMinute operation
#
##############################################################################
call_spotV1HistoricalOrderbookL2SnapshotMinute() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument minute_ts depth mapping_priority response_format   api_key )
    local path

    if ! path=$(build_request_path "/spot/v1/historical/orderbook/l2/snapshot/minute" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalTrades operation
#
##############################################################################
call_spotV1HistoricalTrades() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/spot/v1/historical/trades" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1HistoricalTradesHour operation
#
##############################################################################
call_spotV1HistoricalTradesHour() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument hour_ts mapping_priority response_format return_404_on_empty_response   api_key )
    local path

    if ! path=$(build_request_path "/spot/v1/historical/trades/hour" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1LatestInstrumentMetadata operation
#
##############################################################################
call_spotV1LatestInstrumentMetadata() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/spot/v1/latest/instrument/metadata" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1LatestTick operation
#
##############################################################################
call_spotV1LatestTick() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instruments groups mapping_priority)
    local path

    if ! path=$(build_request_path "/spot/v1/latest/tick" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1Markets operation
#
##############################################################################
call_spotV1Markets() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market)
    local path

    if ! path=$(build_request_path "/spot/v1/markets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1MarketsInstruments operation
#
##############################################################################
call_spotV1MarketsInstruments() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/spot/v1/markets/instruments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call spotV1MarketsInstrumentsUnmapped operation
#
##############################################################################
call_spotV1MarketsInstrumentsUnmapped() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(market instrument instrument_status)
    local path

    if ! path=$(build_request_path "/spot/v1/markets/instruments/unmapped" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    assetV1DataByAddress)
    operation="assetV1DataByAddress"
    ;;
    assetV1DataById)
    operation="assetV1DataById"
    ;;
    assetV1DataBySymbol)
    operation="assetV1DataBySymbol"
    ;;
    assetV1TopList)
    operation="assetV1TopList"
    ;;
    futuresV1HistoricalDays)
    operation="futuresV1HistoricalDays"
    ;;
    futuresV1HistoricalFundingRateDays)
    operation="futuresV1HistoricalFundingRateDays"
    ;;
    futuresV1HistoricalFundingRateHours)
    operation="futuresV1HistoricalFundingRateHours"
    ;;
    futuresV1HistoricalFundingRateMessages)
    operation="futuresV1HistoricalFundingRateMessages"
    ;;
    futuresV1HistoricalFundingRateMessagesHour)
    operation="futuresV1HistoricalFundingRateMessagesHour"
    ;;
    futuresV1HistoricalFundingRateMinutes)
    operation="futuresV1HistoricalFundingRateMinutes"
    ;;
    futuresV1HistoricalHours)
    operation="futuresV1HistoricalHours"
    ;;
    futuresV1HistoricalMinutes)
    operation="futuresV1HistoricalMinutes"
    ;;
    futuresV1HistoricalOpenInterestDays)
    operation="futuresV1HistoricalOpenInterestDays"
    ;;
    futuresV1HistoricalOpenInterestHours)
    operation="futuresV1HistoricalOpenInterestHours"
    ;;
    futuresV1HistoricalOpenInterestMessages)
    operation="futuresV1HistoricalOpenInterestMessages"
    ;;
    futuresV1HistoricalOpenInterestMessagesHour)
    operation="futuresV1HistoricalOpenInterestMessagesHour"
    ;;
    futuresV1HistoricalOpenInterestMinutes)
    operation="futuresV1HistoricalOpenInterestMinutes"
    ;;
    futuresV1HistoricalTrades)
    operation="futuresV1HistoricalTrades"
    ;;
    futuresV1HistoricalTradesHour)
    operation="futuresV1HistoricalTradesHour"
    ;;
    futuresV1LatestFundingRateTick)
    operation="futuresV1LatestFundingRateTick"
    ;;
    futuresV1LatestInstrumentMetadata)
    operation="futuresV1LatestInstrumentMetadata"
    ;;
    futuresV1LatestOpenInterestTick)
    operation="futuresV1LatestOpenInterestTick"
    ;;
    futuresV1LatestTick)
    operation="futuresV1LatestTick"
    ;;
    futuresV1Markets)
    operation="futuresV1Markets"
    ;;
    futuresV1MarketsInstruments)
    operation="futuresV1MarketsInstruments"
    ;;
    futuresV1MarketsInstrumentsUnmapped)
    operation="futuresV1MarketsInstrumentsUnmapped"
    ;;
    indexV1HistoricalDays)
    operation="indexV1HistoricalDays"
    ;;
    indexV1HistoricalHours)
    operation="indexV1HistoricalHours"
    ;;
    indexV1HistoricalMessages)
    operation="indexV1HistoricalMessages"
    ;;
    indexV1HistoricalMessagesHour)
    operation="indexV1HistoricalMessagesHour"
    ;;
    indexV1HistoricalMinutes)
    operation="indexV1HistoricalMinutes"
    ;;
    indexV1LatestInstrumentMetadata)
    operation="indexV1LatestInstrumentMetadata"
    ;;
    indexV1LatestTick)
    operation="indexV1LatestTick"
    ;;
    indexV1Markets)
    operation="indexV1Markets"
    ;;
    indexV1MarketsInstruments)
    operation="indexV1MarketsInstruments"
    ;;
    indexV1MarketsInstrumentsUnmapped)
    operation="indexV1MarketsInstrumentsUnmapped"
    ;;
    newsV1ArticleList)
    operation="newsV1ArticleList"
    ;;
    newsV1CategoryList)
    operation="newsV1CategoryList"
    ;;
    newsV1SourceList)
    operation="newsV1SourceList"
    ;;
    overviewV1HistoricalMarketcapAllAssetsDays)
    operation="overviewV1HistoricalMarketcapAllAssetsDays"
    ;;
    overviewV1HistoricalMarketcapAllAssetsHours)
    operation="overviewV1HistoricalMarketcapAllAssetsHours"
    ;;
    overviewV1HistoricalMarketcapFtwAssetsDays)
    operation="overviewV1HistoricalMarketcapFtwAssetsDays"
    ;;
    overviewV1HistoricalMarketcapFtwAssetsHours)
    operation="overviewV1HistoricalMarketcapFtwAssetsHours"
    ;;
    overviewV1LatestMarketcapAllTick)
    operation="overviewV1LatestMarketcapAllTick"
    ;;
    overviewV1LatestMarketcapFtwTick)
    operation="overviewV1LatestMarketcapFtwTick"
    ;;
    indexCcV1HistoricalDays)
    operation="indexCcV1HistoricalDays"
    ;;
    indexCcV1HistoricalHours)
    operation="indexCcV1HistoricalHours"
    ;;
    indexCcV1HistoricalMessages)
    operation="indexCcV1HistoricalMessages"
    ;;
    indexCcV1HistoricalMessagesHour)
    operation="indexCcV1HistoricalMessagesHour"
    ;;
    indexCcV1HistoricalMinutes)
    operation="indexCcV1HistoricalMinutes"
    ;;
    indexCcV1LatestInstrumentMetadata)
    operation="indexCcV1LatestInstrumentMetadata"
    ;;
    indexCcV1LatestTick)
    operation="indexCcV1LatestTick"
    ;;
    indexCcV1Markets)
    operation="indexCcV1Markets"
    ;;
    indexCcV1MarketsInstruments)
    operation="indexCcV1MarketsInstruments"
    ;;
    indexCcV1MarketsInstrumentsUnmapped)
    operation="indexCcV1MarketsInstrumentsUnmapped"
    ;;
    spotV1HistoricalDays)
    operation="spotV1HistoricalDays"
    ;;
    spotV1HistoricalHours)
    operation="spotV1HistoricalHours"
    ;;
    spotV1HistoricalMinutes)
    operation="spotV1HistoricalMinutes"
    ;;
    spotV1HistoricalOrderbookL2SnapshotMinute)
    operation="spotV1HistoricalOrderbookL2SnapshotMinute"
    ;;
    spotV1HistoricalTrades)
    operation="spotV1HistoricalTrades"
    ;;
    spotV1HistoricalTradesHour)
    operation="spotV1HistoricalTradesHour"
    ;;
    spotV1LatestInstrumentMetadata)
    operation="spotV1LatestInstrumentMetadata"
    ;;
    spotV1LatestTick)
    operation="spotV1LatestTick"
    ;;
    spotV1Markets)
    operation="spotV1Markets"
    ;;
    spotV1MarketsInstruments)
    operation="spotV1MarketsInstruments"
    ;;
    spotV1MarketsInstrumentsUnmapped)
    operation="spotV1MarketsInstrumentsUnmapped"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "authorization" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    assetV1DataByAddress)
    call_assetV1DataByAddress
    ;;
    assetV1DataById)
    call_assetV1DataById
    ;;
    assetV1DataBySymbol)
    call_assetV1DataBySymbol
    ;;
    assetV1TopList)
    call_assetV1TopList
    ;;
    futuresV1HistoricalDays)
    call_futuresV1HistoricalDays
    ;;
    futuresV1HistoricalFundingRateDays)
    call_futuresV1HistoricalFundingRateDays
    ;;
    futuresV1HistoricalFundingRateHours)
    call_futuresV1HistoricalFundingRateHours
    ;;
    futuresV1HistoricalFundingRateMessages)
    call_futuresV1HistoricalFundingRateMessages
    ;;
    futuresV1HistoricalFundingRateMessagesHour)
    call_futuresV1HistoricalFundingRateMessagesHour
    ;;
    futuresV1HistoricalFundingRateMinutes)
    call_futuresV1HistoricalFundingRateMinutes
    ;;
    futuresV1HistoricalHours)
    call_futuresV1HistoricalHours
    ;;
    futuresV1HistoricalMinutes)
    call_futuresV1HistoricalMinutes
    ;;
    futuresV1HistoricalOpenInterestDays)
    call_futuresV1HistoricalOpenInterestDays
    ;;
    futuresV1HistoricalOpenInterestHours)
    call_futuresV1HistoricalOpenInterestHours
    ;;
    futuresV1HistoricalOpenInterestMessages)
    call_futuresV1HistoricalOpenInterestMessages
    ;;
    futuresV1HistoricalOpenInterestMessagesHour)
    call_futuresV1HistoricalOpenInterestMessagesHour
    ;;
    futuresV1HistoricalOpenInterestMinutes)
    call_futuresV1HistoricalOpenInterestMinutes
    ;;
    futuresV1HistoricalTrades)
    call_futuresV1HistoricalTrades
    ;;
    futuresV1HistoricalTradesHour)
    call_futuresV1HistoricalTradesHour
    ;;
    futuresV1LatestFundingRateTick)
    call_futuresV1LatestFundingRateTick
    ;;
    futuresV1LatestInstrumentMetadata)
    call_futuresV1LatestInstrumentMetadata
    ;;
    futuresV1LatestOpenInterestTick)
    call_futuresV1LatestOpenInterestTick
    ;;
    futuresV1LatestTick)
    call_futuresV1LatestTick
    ;;
    futuresV1Markets)
    call_futuresV1Markets
    ;;
    futuresV1MarketsInstruments)
    call_futuresV1MarketsInstruments
    ;;
    futuresV1MarketsInstrumentsUnmapped)
    call_futuresV1MarketsInstrumentsUnmapped
    ;;
    indexV1HistoricalDays)
    call_indexV1HistoricalDays
    ;;
    indexV1HistoricalHours)
    call_indexV1HistoricalHours
    ;;
    indexV1HistoricalMessages)
    call_indexV1HistoricalMessages
    ;;
    indexV1HistoricalMessagesHour)
    call_indexV1HistoricalMessagesHour
    ;;
    indexV1HistoricalMinutes)
    call_indexV1HistoricalMinutes
    ;;
    indexV1LatestInstrumentMetadata)
    call_indexV1LatestInstrumentMetadata
    ;;
    indexV1LatestTick)
    call_indexV1LatestTick
    ;;
    indexV1Markets)
    call_indexV1Markets
    ;;
    indexV1MarketsInstruments)
    call_indexV1MarketsInstruments
    ;;
    indexV1MarketsInstrumentsUnmapped)
    call_indexV1MarketsInstrumentsUnmapped
    ;;
    newsV1ArticleList)
    call_newsV1ArticleList
    ;;
    newsV1CategoryList)
    call_newsV1CategoryList
    ;;
    newsV1SourceList)
    call_newsV1SourceList
    ;;
    overviewV1HistoricalMarketcapAllAssetsDays)
    call_overviewV1HistoricalMarketcapAllAssetsDays
    ;;
    overviewV1HistoricalMarketcapAllAssetsHours)
    call_overviewV1HistoricalMarketcapAllAssetsHours
    ;;
    overviewV1HistoricalMarketcapFtwAssetsDays)
    call_overviewV1HistoricalMarketcapFtwAssetsDays
    ;;
    overviewV1HistoricalMarketcapFtwAssetsHours)
    call_overviewV1HistoricalMarketcapFtwAssetsHours
    ;;
    overviewV1LatestMarketcapAllTick)
    call_overviewV1LatestMarketcapAllTick
    ;;
    overviewV1LatestMarketcapFtwTick)
    call_overviewV1LatestMarketcapFtwTick
    ;;
    indexCcV1HistoricalDays)
    call_indexCcV1HistoricalDays
    ;;
    indexCcV1HistoricalHours)
    call_indexCcV1HistoricalHours
    ;;
    indexCcV1HistoricalMessages)
    call_indexCcV1HistoricalMessages
    ;;
    indexCcV1HistoricalMessagesHour)
    call_indexCcV1HistoricalMessagesHour
    ;;
    indexCcV1HistoricalMinutes)
    call_indexCcV1HistoricalMinutes
    ;;
    indexCcV1LatestInstrumentMetadata)
    call_indexCcV1LatestInstrumentMetadata
    ;;
    indexCcV1LatestTick)
    call_indexCcV1LatestTick
    ;;
    indexCcV1Markets)
    call_indexCcV1Markets
    ;;
    indexCcV1MarketsInstruments)
    call_indexCcV1MarketsInstruments
    ;;
    indexCcV1MarketsInstrumentsUnmapped)
    call_indexCcV1MarketsInstrumentsUnmapped
    ;;
    spotV1HistoricalDays)
    call_spotV1HistoricalDays
    ;;
    spotV1HistoricalHours)
    call_spotV1HistoricalHours
    ;;
    spotV1HistoricalMinutes)
    call_spotV1HistoricalMinutes
    ;;
    spotV1HistoricalOrderbookL2SnapshotMinute)
    call_spotV1HistoricalOrderbookL2SnapshotMinute
    ;;
    spotV1HistoricalTrades)
    call_spotV1HistoricalTrades
    ;;
    spotV1HistoricalTradesHour)
    call_spotV1HistoricalTradesHour
    ;;
    spotV1LatestInstrumentMetadata)
    call_spotV1LatestInstrumentMetadata
    ;;
    spotV1LatestTick)
    call_spotV1LatestTick
    ;;
    spotV1Markets)
    call_spotV1Markets
    ;;
    spotV1MarketsInstruments)
    call_spotV1MarketsInstruments
    ;;
    spotV1MarketsInstrumentsUnmapped)
    call_spotV1MarketsInstrumentsUnmapped
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
