cmake_minimum_required(VERSION 3.2)

project(client)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else ()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
endif ()

find_package(Qt5Core REQUIRED)
find_package(Qt5Network REQUIRED)
find_package(Qt5Gui REQUIRED)

add_library(${PROJECT_NAME}
    OAIError.cpp
    OAIError_Err.cpp
    OAIError_Err_other_info.cpp
    OAIGENERIC_RESPONSE.cpp
    OAIGENERIC_RESPONSE_Data.cpp
    OAISPOT_INSTRUMENT_HISTO_DATA.cpp
    OAISPOT_INSTRUMENT_HISTO_DATA_RESPONSE.cpp
    OAISPOT_INSTRUMENT_MARKET_DATA.cpp
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE.cpp
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.cpp
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.cpp
    OAISPOT_INSTRUMENT_METADATA.cpp
    OAISPOT_INSTRUMENT_METADATA_RESPONSE.cpp
    OAISPOT_INSTRUMENT_TRADE.cpp
    OAISPOT_INSTRUMENT_TRADE_RESPONSE.cpp
    OAIAssetApi.cpp
    OAIFuturesApi.cpp
    OAINewsApi.cpp
    OAIOverviewApi.cpp
    OAIReferenceRatesApi.cpp
    OAISpotApi.cpp
    OAIHelpers.cpp
    OAIHttpRequest.cpp
    OAIHttpFileElement.cpp
    OAIOauth.cpp
)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Network Qt5::Gui)
if(NOT APPLE)
  find_package(OpenSSL REQUIRED)
  target_link_libraries(${PROJECT_NAME} PRIVATE ssl crypto)
endif()

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_EXTENSIONS OFF)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
