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
import org.openapitools.client.model.SPOTINSTRUMENTHISTODATARESPONSE;
import org.openapitools.client.model.SPOTINSTRUMENTMARKETDATARESPONSE;
import org.openapitools.client.model.SPOTINSTRUMENTMETADATARESPONSE;
import org.openapitools.client.model.SPOTINSTRUMENTTRADERESPONSE;

/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * <p>CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 */
@RegisterRestClient
@RegisterProvider(ApiExceptionMapper.class)
@Path("/spot/v1")
public interface SpotApi  {

    @GET
    @Path("/historical/days")
    @Produces({ "application/json" })
    SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalDays(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30") Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1") Integer aggregate, @QueryParam("fill") @DefaultValue("true") Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat) throws ApiException, ProcessingException;

    @GET
    @Path("/historical/hours")
    @Produces({ "application/json" })
    SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalHours(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30") Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1") Integer aggregate, @QueryParam("fill") @DefaultValue("true") Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat) throws ApiException, ProcessingException;

    @GET
    @Path("/historical/minutes")
    @Produces({ "application/json" })
    SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalMinutes(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("groups") List<String> groups, @QueryParam("limit") @DefaultValue("30") Integer limit, @QueryParam("to_ts") Integer toTs, @QueryParam("aggregate") @DefaultValue("1") Integer aggregate, @QueryParam("fill") @DefaultValue("true") Boolean fill, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat) throws ApiException, ProcessingException;

    @GET
    @Path("/historical/orderbook/l2/snapshot/minute")
    @Produces({ "application/json" })
    GENERICRESPONSE spotV1HistoricalOrderbookL2SnapshotMinute(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("minute_ts") Integer minuteTs, @QueryParam("depth") @DefaultValue("50") Integer depth, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat) throws ApiException, ProcessingException;

    @GET
    @Path("/historical/trades")
    @Produces({ "application/json" })
    SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTrades(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("after_ts") Integer afterTs, @QueryParam("last_ccseq") @DefaultValue("0") Integer lastCcseq, @QueryParam("limit") @DefaultValue("100") Integer limit, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false") Boolean return404OnEmptyResponse) throws ApiException, ProcessingException;

    @GET
    @Path("/historical/trades/hour")
    @Produces({ "application/json" })
    SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTradesHour(@QueryParam("market") String market, @QueryParam("instrument") String instrument, @QueryParam("hour_ts") Integer hourTs, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority, @QueryParam("response_format") @DefaultValue("JSON") String responseFormat, @QueryParam("return_404_on_empty_response") @DefaultValue("false") Boolean return404OnEmptyResponse) throws ApiException, ProcessingException;

    @GET
    @Path("/latest/instrument/metadata")
    @Produces({ "application/json" })
    SPOTINSTRUMENTMETADATARESPONSE spotV1LatestInstrumentMetadata(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority) throws ApiException, ProcessingException;

    @GET
    @Path("/latest/tick")
    @Produces({ "application/json" })
    SPOTINSTRUMENTMARKETDATARESPONSE spotV1LatestTick(@QueryParam("market") String market, @QueryParam("instruments") List<String> instruments, @QueryParam("groups") List<String> groups, @QueryParam("mapping_priority") @DefaultValue("CHECK_MAPPED_FIRST") String mappingPriority) throws ApiException, ProcessingException;

    @GET
    @Path("/markets")
    @Produces({ "application/json" })
    GENERICRESPONSE spotV1Markets(@QueryParam("market") @DefaultValue("") String market) throws ApiException, ProcessingException;

    @GET
    @Path("/markets/instruments")
    @Produces({ "application/json" })
    GENERICRESPONSE spotV1MarketsInstruments(@QueryParam("market") @DefaultValue("") String market, @QueryParam("instrument") @DefaultValue("") String instrument, @QueryParam("instrument_status") List<String> instrumentStatus) throws ApiException, ProcessingException;

    @GET
    @Path("/markets/instruments/unmapped")
    @Produces({ "application/json" })
    GENERICRESPONSE spotV1MarketsInstrumentsUnmapped(@QueryParam("market") @DefaultValue("") String market, @QueryParam("instrument") @DefaultValue("") String instrument, @QueryParam("instrument_status") List<String> instrumentStatus) throws ApiException, ProcessingException;
}
