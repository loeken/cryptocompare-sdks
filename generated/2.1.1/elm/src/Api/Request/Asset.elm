{-
   CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
   CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

   The version of the OpenAPI document: 2.1.1
   Contact: data@cryptocompare.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Asset exposing
    ( assetV1DataByAddress
    , assetV1DataById
    , assetV1DataBySymbol
    , assetV1TopList, SortBy(..), sortByVariants, SortDirection(..), sortDirectionVariants
    )

import Api
import Api.Data
import Dict
import Http
import Json.Decode
import Json.Encode


type SortBy
    = SortByCREATEDON
    | SortByUPDATEDON
    | SortBySYMBOL


sortByVariants : List SortBy
sortByVariants =
    [ SortByCREATEDON
    , SortByUPDATEDON
    , SortBySYMBOL
    ]


stringFromSortBy : SortBy -> String
stringFromSortBy model =
    case model of
        SortByCREATEDON ->
            "CREATED_ON"

        SortByUPDATEDON ->
            "UPDATED_ON"

        SortBySYMBOL ->
            "SYMBOL"




type SortDirection
    = SortDirectionDESC
    | SortDirectionASC


sortDirectionVariants : List SortDirection
sortDirectionVariants =
    [ SortDirectionDESC
    , SortDirectionASC
    ]


stringFromSortDirection : SortDirection -> String
stringFromSortDirection model =
    case model of
        SortDirectionDESC ->
            "DESC"

        SortDirectionASC ->
            "ASC"





assetV1DataByAddress : String -> String -> Maybe String -> Api.Request Api.Data.GENERICRESPONSE
assetV1DataByAddress address_query chainSymbol_query groups_query =
    Api.request
        "GET"
        "/asset/v1/data/by/address"
        []
        [ ( "address", Just <| identity address_query ), ( "chain_symbol", Just <| identity chainSymbol_query ), ( "groups", Maybe.map identity groups_query ) ]
        []
        Nothing
        Api.Data.gENERICRESPONSEDecoder



assetV1DataById : Int -> Maybe String -> Api.Request Api.Data.GENERICRESPONSE
assetV1DataById assetId_query groups_query =
    Api.request
        "GET"
        "/asset/v1/data/by/id"
        []
        [ ( "asset_id", Just <| String.fromInt assetId_query ), ( "groups", Maybe.map identity groups_query ) ]
        []
        Nothing
        Api.Data.gENERICRESPONSEDecoder



assetV1DataBySymbol : String -> Maybe String -> Api.Request Api.Data.GENERICRESPONSE
assetV1DataBySymbol assetSymbol_query groups_query =
    Api.request
        "GET"
        "/asset/v1/data/by/symbol"
        []
        [ ( "asset_symbol", Just <| identity assetSymbol_query ), ( "groups", Maybe.map identity groups_query ) ]
        []
        Nothing
        Api.Data.gENERICRESPONSEDecoder



assetV1TopList : Maybe Int -> Maybe Int -> Maybe String -> Maybe SortBy -> Maybe SortDirection -> Maybe String -> Api.Request Api.Data.GENERICRESPONSE
assetV1TopList page_query pageSize_query assetType_query sortBy_query sortDirection_query groups_query =
    Api.request
        "GET"
        "/asset/v1/top/list"
        []
        [ ( "page", Maybe.map String.fromInt page_query ), ( "page_size", Maybe.map String.fromInt pageSize_query ), ( "asset_type", Maybe.map identity assetType_query ), ( "sort_by", Maybe.map stringFromSortBy sortBy_query ), ( "sort_direction", Maybe.map stringFromSortDirection sortDirection_query ), ( "groups", Maybe.map identity groups_query ) ]
        []
        Nothing
        Api.Data.gENERICRESPONSEDecoder
