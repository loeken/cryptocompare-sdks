/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.api;

import io.micronaut.http.annotation.*;
import io.micronaut.core.annotation.*;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.core.convert.format.Format;
import reactor.core.publisher.Mono;
import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;
import javax.annotation.Generated;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.validation.constraints.*;

@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2023-01-03T11:56:05.409869Z[Etc/UTC]")
@Client("${openapi-micronaut-client-base-path}")
public interface AssetApi {
    /**
     * assetV1DataByAddress
     *
     * @param address  (required)
     * @param chainSymbol  (required)
     * @param groups  (optional, default to )
     * @return GENERICRESPONSE
     */
    @Get(uri="/asset/v1/data/by/address")
    @Consumes({"application/json"})
    Mono<GENERICRESPONSE> assetV1DataByAddress(
        @QueryValue(value="address") @NotNull @Size(min=1, max=500) String address, 
        @QueryValue(value="chain_symbol") @NotNull @Size(min=1, max=100) String chainSymbol, 
        @QueryValue(value="groups", defaultValue="") @Nullable @Size(min=0, max=2000) String groups
    );

    /**
     * assetV1DataById
     *
     * @param assetId The asset id you are interested in (required)
     * @param groups  (optional, default to )
     * @return GENERICRESPONSE
     */
    @Get(uri="/asset/v1/data/by/id")
    @Consumes({"application/json"})
    Mono<GENERICRESPONSE> assetV1DataById(
        @QueryValue(value="asset_id") @NotNull Integer assetId, 
        @QueryValue(value="groups", defaultValue="") @Nullable @Size(min=0, max=2000) String groups
    );

    /**
     * assetV1DataBySymbol
     *
     * @param assetSymbol The asset symbol you are interested in (required)
     * @param groups  (optional, default to )
     * @return GENERICRESPONSE
     */
    @Get(uri="/asset/v1/data/by/symbol")
    @Consumes({"application/json"})
    Mono<GENERICRESPONSE> assetV1DataBySymbol(
        @QueryValue(value="asset_symbol") @NotNull @Size(min=1, max=100) String assetSymbol, 
        @QueryValue(value="groups", defaultValue="") @Nullable @Size(min=0, max=2000) String groups
    );

    /**
     * assetV1TopList
     *
     * @param page The page number for the request to get {page_size} coins at the time. (optional, default to 1)
     * @param pageSize The number of items returned per page (optional, default to 100)
     * @param assetType The asset class/type (optional, default to )
     * @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional, default to CREATED_ON)
     * @param sortDirection Sort direction ( DESC,ASC ) (optional, default to DESC)
     * @param groups  (optional, default to )
     * @return GENERICRESPONSE
     */
    @Get(uri="/asset/v1/top/list")
    @Consumes({"application/json"})
    Mono<GENERICRESPONSE> assetV1TopList(
        @QueryValue(value="page", defaultValue="1") @Nullable @Min(1) @Max(100) Integer page, 
        @QueryValue(value="page_size", defaultValue="100") @Nullable @Min(10) @Max(100) Integer pageSize, 
        @QueryValue(value="asset_type", defaultValue="") @Nullable String assetType, 
        @QueryValue(value="sort_by", defaultValue="CREATED_ON") @Nullable String sortBy, 
        @QueryValue(value="sort_direction", defaultValue="DESC") @Nullable String sortDirection, 
        @QueryValue(value="groups", defaultValue="") @Nullable @Size(min=0, max=2000) String groups
    );

}