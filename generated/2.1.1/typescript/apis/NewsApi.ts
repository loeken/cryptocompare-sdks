// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { GENERICRESPONSE } from '../models/GENERICRESPONSE';

/**
 * no description
 */
export class NewsApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * @param sourceIds Get articles from specific sources; either by their ids or keys
     * @param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param categories News article categories to return
     * @param excludeCategories News article categories to exclude from results
     * @param toTs Articles published on or before this timestamp
     */
    public async newsV1ArticleList(sourceIds?: Array<string>, lang?: 'EN' | 'ES' | 'PT' | '', categories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, excludeCategories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, toTs?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;






        // Path Params
        const localVarPath = '/news/v1/article/list';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (sourceIds !== undefined) {
            requestContext.setQueryParam("source_ids", ObjectSerializer.serialize(sourceIds, "Array<string>", ""));
        }

        // Query Params
        if (lang !== undefined) {
            requestContext.setQueryParam("lang", ObjectSerializer.serialize(lang, "'EN' | 'ES' | 'PT' | ''", ""));
        }

        // Query Params
        if (categories !== undefined) {
            requestContext.setQueryParam("categories", ObjectSerializer.serialize(categories, "Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>", ""));
        }

        // Query Params
        if (excludeCategories !== undefined) {
            requestContext.setQueryParam("exclude_categories", ObjectSerializer.serialize(excludeCategories, "Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>", ""));
        }

        // Query Params
        if (toTs !== undefined) {
            requestContext.setQueryParam("to_ts", ObjectSerializer.serialize(toTs, "number", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     */
    public async newsV1CategoryList(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/news/v1/category/list';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param type RSS, API, TWITTER
     * @param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
     */
    public async newsV1SourceList(lang?: 'EN' | 'ES' | 'PT' | '', type?: 'RSS' | 'API' | 'TWITTER' | '', status?: 'ACTIVE' | 'INACTIVE' | '', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/news/v1/source/list';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (lang !== undefined) {
            requestContext.setQueryParam("lang", ObjectSerializer.serialize(lang, "'EN' | 'ES' | 'PT' | ''", ""));
        }

        // Query Params
        if (type !== undefined) {
            requestContext.setQueryParam("type", ObjectSerializer.serialize(type, "'RSS' | 'API' | 'TWITTER' | ''", ""));
        }

        // Query Params
        if (status !== undefined) {
            requestContext.setQueryParam("status", ObjectSerializer.serialize(status, "'ACTIVE' | 'INACTIVE' | ''", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class NewsApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to newsV1ArticleList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async newsV1ArticleList(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to newsV1CategoryList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async newsV1CategoryList(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to newsV1SourceList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async newsV1SourceList(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
