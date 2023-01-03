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
@Path("")
@Api(value = "/", description = "")
public interface FuturesApi  {

    @GET
    @Path("/futures/v1/historical/days")
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
    public GENERICRESPONSE futuresV1HistoricalDays(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/funding-rate/days")
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
    public GENERICRESPONSE futuresV1HistoricalFundingRateDays(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/funding-rate/hours")
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
    public GENERICRESPONSE futuresV1HistoricalFundingRateHours(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/funding-rate-messages")
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
    public GENERICRESPONSE futuresV1HistoricalFundingRateMessages(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("after_ts") Integer afterTs, @QueryParam("last_ccseq") @DefaultValue("0")Integer lastCcseq, @QueryParam("limit") @DefaultValue("100")Integer limit, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/historical/funding-rate-messages/hour")
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
    public GENERICRESPONSE futuresV1HistoricalFundingRateMessagesHour(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("hour_ts") Integer hourTs, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/historical/funding-rate/minutes")
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
    public GENERICRESPONSE futuresV1HistoricalFundingRateMinutes(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/hours")
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
    public GENERICRESPONSE futuresV1HistoricalHours(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/minutes")
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
    public GENERICRESPONSE futuresV1HistoricalMinutes(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/open-interest/days")
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
    public GENERICRESPONSE futuresV1HistoricalOpenInterestDays(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/open-interest/hours")
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
    public GENERICRESPONSE futuresV1HistoricalOpenInterestHours(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/open-interest-messages")
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
    public GENERICRESPONSE futuresV1HistoricalOpenInterestMessages(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("after_ts") Integer afterTs, @QueryParam("last_ccseq") @DefaultValue("0")Integer lastCcseq, @QueryParam("limit") @DefaultValue("100")Integer limit, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/historical/open-interest-messages/hour")
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
    public GENERICRESPONSE futuresV1HistoricalOpenInterestMessagesHour(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("hour_ts") Integer hourTs, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/historical/open-interest/minutes")
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
    public GENERICRESPONSE futuresV1HistoricalOpenInterestMinutes(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/futures/v1/historical/trades")
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
    public GENERICRESPONSE futuresV1HistoricalTrades(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("after_ts") Integer afterTs, @QueryParam("last_ccseq") @DefaultValue("0")Integer lastCcseq, @QueryParam("limit") @DefaultValue("100")Integer limit, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/historical/trades/hour")
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
    public GENERICRESPONSE futuresV1HistoricalTradesHour(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("hour_ts") Integer hourTs, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/futures/v1/latest/funding-rate/tick")
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
    public GENERICRESPONSE futuresV1LatestFundingRateTick(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/futures/v1/latest/instrument/metadata")
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
    public GENERICRESPONSE futuresV1LatestInstrumentMetadata(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/futures/v1/latest/open-interest/tick")
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
    public GENERICRESPONSE futuresV1LatestOpenInterestTick(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/futures/v1/latest/tick")
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
    public GENERICRESPONSE futuresV1LatestTick(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/futures/v1/markets")
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
    public GENERICRESPONSE futuresV1Markets(@QueryParam("market") @DefaultValue("")String market);

    @GET
    @Path("/futures/v1/markets/instruments")
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
    public GENERICRESPONSE futuresV1MarketsInstruments(@QueryParam("market") @DefaultValue("")String market, @QueryParam("instrument") @DefaultValue("")String instrument, @QueryParam("instrument_status") List<String> instrumentStatus);

    @GET
    @Path("/futures/v1/markets/instruments/unmapped")
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
    public GENERICRESPONSE futuresV1MarketsInstrumentsUnmapped(@QueryParam("market") @DefaultValue("")String market, @QueryParam("instrument") @DefaultValue("")String instrument, @QueryParam("instrument_status") List<String> instrumentStatus);

    @GET
    @Path("/index/v1/historical/days")
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
    public GENERICRESPONSE indexV1HistoricalDays(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/index/v1/historical/hours")
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
    public GENERICRESPONSE indexV1HistoricalHours(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/index/v1/historical/messages")
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
    public GENERICRESPONSE indexV1HistoricalMessages(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("after_ts") Integer afterTs, @QueryParam("last_ccseq") @DefaultValue("0")Integer lastCcseq, @QueryParam("limit") @DefaultValue("100")Integer limit, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/index/v1/historical/messages/hour")
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
    public GENERICRESPONSE indexV1HistoricalMessagesHour(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("hour_ts") Integer hourTs, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false")Boolean return404OnEmptyResponse);

    @GET
    @Path("/index/v1/historical/minutes")
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
    public GENERICRESPONSE indexV1HistoricalMinutes(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30")Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1")Integer aggregate, @QueryParam("fill") @DefaultValue("true")Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON")String responseFormat);

    @GET
    @Path("/index/v1/latest/instrument/metadata")
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
    public GENERICRESPONSE indexV1LatestInstrumentMetadata(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/index/v1/latest/tick")
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
    public GENERICRESPONSE indexV1LatestTick(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST")String mappingPriority);

    @GET
    @Path("/index/v1/markets")
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
    public GENERICRESPONSE indexV1Markets(@QueryParam("market") @DefaultValue("")String market);

    @GET
    @Path("/index/v1/markets/instruments")
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
    public GENERICRESPONSE indexV1MarketsInstruments(@QueryParam("market") @DefaultValue("")String market, @QueryParam("instrument") @DefaultValue("")String instrument, @QueryParam("instrument_status") List<String> instrumentStatus);

    @GET
    @Path("/index/v1/markets/instruments/unmapped")
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
    public GENERICRESPONSE indexV1MarketsInstrumentsUnmapped(@QueryParam("market") @DefaultValue("")String market, @QueryParam("instrument") @DefaultValue("")String instrument, @QueryParam("instrument_status") List<String> instrumentStatus);
}
