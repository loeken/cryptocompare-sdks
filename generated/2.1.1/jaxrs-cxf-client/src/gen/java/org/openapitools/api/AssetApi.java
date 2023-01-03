package org.openapitools.api;

import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * <p>CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 */
@Path("/asset/v1")
@Api(value = "/", description = "")
public interface AssetApi  {

    @GET
    @Path("/data/by/address")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Success response from the API.", response = GENERICRESPONSE.class),
        @ApiResponse(code = 400, message = "The 400 error occurs when some of the data sent is malformed.", response = Error.class),
        @ApiResponse(code = 401, message = "The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 403, message = "The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 404, message = "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", response = Error.class),
        @ApiResponse(code = 405, message = "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", response = Error.class),
        @ApiResponse(code = 429, message = "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", response = Error.class),
        @ApiResponse(code = 500, message = "The 500 error occurs our API is up but does not know how to / can't handle the request.", response = Error.class),
        @ApiResponse(code = 502, message = "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", response = Error.class),
        @ApiResponse(code = 503, message = "The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.", response = Error.class) })
    public GENERICRESPONSE assetV1DataByAddress(@QueryParam("address") String address, @QueryParam("chain_symbol") String chainSymbol, @QueryParam("groups") @DefaultValue("")String groups);

    @GET
    @Path("/data/by/id")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Success response from the API.", response = GENERICRESPONSE.class),
        @ApiResponse(code = 400, message = "The 400 error occurs when some of the data sent is malformed.", response = Error.class),
        @ApiResponse(code = 401, message = "The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 403, message = "The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 404, message = "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", response = Error.class),
        @ApiResponse(code = 405, message = "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", response = Error.class),
        @ApiResponse(code = 429, message = "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", response = Error.class),
        @ApiResponse(code = 500, message = "The 500 error occurs our API is up but does not know how to / can't handle the request.", response = Error.class),
        @ApiResponse(code = 502, message = "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", response = Error.class),
        @ApiResponse(code = 503, message = "The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.", response = Error.class) })
    public GENERICRESPONSE assetV1DataById(@QueryParam("asset_id") Integer assetId, @QueryParam("groups") @DefaultValue("")String groups);

    @GET
    @Path("/data/by/symbol")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Success response from the API.", response = GENERICRESPONSE.class),
        @ApiResponse(code = 400, message = "The 400 error occurs when some of the data sent is malformed.", response = Error.class),
        @ApiResponse(code = 401, message = "The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 403, message = "The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 404, message = "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", response = Error.class),
        @ApiResponse(code = 405, message = "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", response = Error.class),
        @ApiResponse(code = 429, message = "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", response = Error.class),
        @ApiResponse(code = 500, message = "The 500 error occurs our API is up but does not know how to / can't handle the request.", response = Error.class),
        @ApiResponse(code = 502, message = "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", response = Error.class),
        @ApiResponse(code = 503, message = "The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.", response = Error.class) })
    public GENERICRESPONSE assetV1DataBySymbol(@QueryParam("asset_symbol") String assetSymbol, @QueryParam("groups") @DefaultValue("")String groups);

    @GET
    @Path("/top/list")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Success response from the API.", response = GENERICRESPONSE.class),
        @ApiResponse(code = 400, message = "The 400 error occurs when some of the data sent is malformed.", response = Error.class),
        @ApiResponse(code = 401, message = "The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 403, message = "The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.", response = Error.class),
        @ApiResponse(code = 404, message = "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", response = Error.class),
        @ApiResponse(code = 405, message = "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", response = Error.class),
        @ApiResponse(code = 429, message = "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", response = Error.class),
        @ApiResponse(code = 500, message = "The 500 error occurs our API is up but does not know how to / can't handle the request.", response = Error.class),
        @ApiResponse(code = 502, message = "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", response = Error.class),
        @ApiResponse(code = 503, message = "The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.", response = Error.class) })
    public GENERICRESPONSE assetV1TopList(@QueryParam("page") @DefaultValue("1")Integer page, @QueryParam("page_size") @DefaultValue("100")Integer pageSize, @QueryParam("asset_type") @DefaultValue("")String assetType, @QueryParam("sort_by") @DefaultValue("CREATED_ON")String sortBy, @QueryParam("sort_direction") @DefaultValue("DESC")String sortDirection, @QueryParam("groups") @DefaultValue("")String groups);
}
