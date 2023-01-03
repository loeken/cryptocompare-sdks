/**
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

package org.openapitools.client.api;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.MediaType;

import org.eclipse.microprofile.rest.client.annotation.RegisterProvider;
import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;

import org.openapitools.client.model.Error;
import org.openapitools.client.model.GENERICRESPONSE;

/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * <p>CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 */
@RegisterRestClient
@RegisterProvider(ApiExceptionMapper.class)
@Path("/asset/v1")
public interface AssetApi  {

    @GET
    @Path("/data/by/address")
    @Produces({ "application/json" })
    GENERICRESPONSE assetV1DataByAddress(@QueryParam("address") String address, @QueryParam("chain_symbol") String chainSymbol, @QueryParam("groups") @DefaultValue("") String groups) throws ApiException, ProcessingException;

    @GET
    @Path("/data/by/id")
    @Produces({ "application/json" })
    GENERICRESPONSE assetV1DataById(@QueryParam("asset_id") Integer assetId, @QueryParam("groups") @DefaultValue("") String groups) throws ApiException, ProcessingException;

    @GET
    @Path("/data/by/symbol")
    @Produces({ "application/json" })
    GENERICRESPONSE assetV1DataBySymbol(@QueryParam("asset_symbol") String assetSymbol, @QueryParam("groups") @DefaultValue("") String groups) throws ApiException, ProcessingException;

    @GET
    @Path("/top/list")
    @Produces({ "application/json" })
    GENERICRESPONSE assetV1TopList(@QueryParam("page") @DefaultValue("1") Integer page, @QueryParam("page_size") @DefaultValue("100") Integer pageSize, @QueryParam("asset_type") @DefaultValue("") String assetType, @QueryParam("sort_by") @DefaultValue("CREATED_ON") String sortBy, @QueryParam("sort_direction") @DefaultValue("DESC") String sortDirection, @QueryParam("groups") @DefaultValue("") String groups) throws ApiException, ProcessingException;
}