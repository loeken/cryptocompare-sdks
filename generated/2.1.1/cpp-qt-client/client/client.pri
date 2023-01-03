QT += network

HEADERS += \
# Models
    $${PWD}/OAIError.h \
    $${PWD}/OAIError_Err.h \
    $${PWD}/OAIError_Err_other_info.h \
    $${PWD}/OAIGENERIC_RESPONSE.h \
    $${PWD}/OAIGENERIC_RESPONSE_Data.h \
    $${PWD}/OAISPOT_INSTRUMENT_HISTO_DATA.h \
    $${PWD}/OAISPOT_INSTRUMENT_HISTO_DATA_RESPONSE.h \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA.h \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE.h \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h \
    $${PWD}/OAISPOT_INSTRUMENT_METADATA.h \
    $${PWD}/OAISPOT_INSTRUMENT_METADATA_RESPONSE.h \
    $${PWD}/OAISPOT_INSTRUMENT_TRADE.h \
    $${PWD}/OAISPOT_INSTRUMENT_TRADE_RESPONSE.h \
# APIs
    $${PWD}/OAIAssetApi.h \
    $${PWD}/OAIFuturesApi.h \
    $${PWD}/OAINewsApi.h \
    $${PWD}/OAIOverviewApi.h \
    $${PWD}/OAIReferenceRatesApi.h \
    $${PWD}/OAISpotApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIError.cpp \
    $${PWD}/OAIError_Err.cpp \
    $${PWD}/OAIError_Err_other_info.cpp \
    $${PWD}/OAIGENERIC_RESPONSE.cpp \
    $${PWD}/OAIGENERIC_RESPONSE_Data.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_HISTO_DATA.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_HISTO_DATA_RESPONSE.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_METADATA.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_METADATA_RESPONSE.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_TRADE.cpp \
    $${PWD}/OAISPOT_INSTRUMENT_TRADE_RESPONSE.cpp \
# APIs
    $${PWD}/OAIAssetApi.cpp \
    $${PWD}/OAIFuturesApi.cpp \
    $${PWD}/OAINewsApi.cpp \
    $${PWD}/OAIOverviewApi.cpp \
    $${PWD}/OAIReferenceRatesApi.cpp \
    $${PWD}/OAISpotApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
