<?php
declare(strict_types=1);

namespace App;

use Articus\DataTransfer as DT;
use OpenAPIGenerator\APIClient as OAGAC;
use Psr\Http\Client\ClientExceptionInterface;
use Psr\Http\Message\ResponseInterface;

/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 * The version of the OpenAPI document: 2.1.1
 */
class ApiClient extends OAGAC\AbstractApiClient
{
    //region assetV1DataByAddress
    /**
     * @param \App\DTO\AssetV1DataByAddressParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function assetV1DataByAddressRaw(
        \App\DTO\AssetV1DataByAddressParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/asset/v1/data/by/address', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\AssetV1DataByAddressParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function assetV1DataByAddress(
        \App\DTO\AssetV1DataByAddressParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->assetV1DataByAddressRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\AssetV1DataByAddressParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function assetV1DataByAddressResult(
        \App\DTO\AssetV1DataByAddressParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->assetV1DataByAddress($parameters, $responseMediaType));
    }
    //endregion

    //region assetV1DataById
    /**
     * @param \App\DTO\AssetV1DataByIdParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function assetV1DataByIdRaw(
        \App\DTO\AssetV1DataByIdParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/asset/v1/data/by/id', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\AssetV1DataByIdParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function assetV1DataById(
        \App\DTO\AssetV1DataByIdParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->assetV1DataByIdRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\AssetV1DataByIdParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function assetV1DataByIdResult(
        \App\DTO\AssetV1DataByIdParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->assetV1DataById($parameters, $responseMediaType));
    }
    //endregion

    //region assetV1DataBySymbol
    /**
     * @param \App\DTO\AssetV1DataBySymbolParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function assetV1DataBySymbolRaw(
        \App\DTO\AssetV1DataBySymbolParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/asset/v1/data/by/symbol', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\AssetV1DataBySymbolParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function assetV1DataBySymbol(
        \App\DTO\AssetV1DataBySymbolParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->assetV1DataBySymbolRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\AssetV1DataBySymbolParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function assetV1DataBySymbolResult(
        \App\DTO\AssetV1DataBySymbolParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->assetV1DataBySymbol($parameters, $responseMediaType));
    }
    //endregion

    //region assetV1TopList
    /**
     * @param \App\DTO\AssetV1TopListParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function assetV1TopListRaw(
        \App\DTO\AssetV1TopListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/asset/v1/top/list', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\AssetV1TopListParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function assetV1TopList(
        \App\DTO\AssetV1TopListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->assetV1TopListRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\AssetV1TopListParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function assetV1TopListResult(
        \App\DTO\AssetV1TopListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->assetV1TopList($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalDays
    /**
     * @param \App\DTO\FuturesV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalDaysRaw(
        \App\DTO\FuturesV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalDays(
        \App\DTO\FuturesV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalDaysResult(
        \App\DTO\FuturesV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalDays($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalFundingRateDays
    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalFundingRateDaysRaw(
        \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/funding-rate/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalFundingRateDays(
        \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalFundingRateDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalFundingRateDaysResult(
        \App\DTO\FuturesV1HistoricalFundingRateDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalFundingRateDays($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalFundingRateHours
    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalFundingRateHoursRaw(
        \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/funding-rate/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalFundingRateHours(
        \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalFundingRateHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalFundingRateHoursResult(
        \App\DTO\FuturesV1HistoricalFundingRateHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalFundingRateHours($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalFundingRateMessages
    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalFundingRateMessagesRaw(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/funding-rate-messages', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalFundingRateMessages(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalFundingRateMessagesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalFundingRateMessagesResult(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalFundingRateMessages($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalFundingRateMessagesHour
    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalFundingRateMessagesHourRaw(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/funding-rate-messages/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalFundingRateMessagesHour(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalFundingRateMessagesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalFundingRateMessagesHourResult(
        \App\DTO\FuturesV1HistoricalFundingRateMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalFundingRateMessagesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalFundingRateMinutes
    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalFundingRateMinutesRaw(
        \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/funding-rate/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalFundingRateMinutes(
        \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalFundingRateMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalFundingRateMinutesResult(
        \App\DTO\FuturesV1HistoricalFundingRateMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalFundingRateMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalHours
    /**
     * @param \App\DTO\FuturesV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalHoursRaw(
        \App\DTO\FuturesV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalHours(
        \App\DTO\FuturesV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalHoursResult(
        \App\DTO\FuturesV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalHours($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalMinutes
    /**
     * @param \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalMinutesRaw(
        \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalMinutes(
        \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalMinutesResult(
        \App\DTO\FuturesV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalOpenInterestDays
    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalOpenInterestDaysRaw(
        \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/open-interest/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalOpenInterestDays(
        \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalOpenInterestDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalOpenInterestDaysResult(
        \App\DTO\FuturesV1HistoricalOpenInterestDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalOpenInterestDays($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalOpenInterestHours
    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalOpenInterestHoursRaw(
        \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/open-interest/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalOpenInterestHours(
        \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalOpenInterestHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalOpenInterestHoursResult(
        \App\DTO\FuturesV1HistoricalOpenInterestHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalOpenInterestHours($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalOpenInterestMessages
    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalOpenInterestMessagesRaw(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/open-interest-messages', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalOpenInterestMessages(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalOpenInterestMessagesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalOpenInterestMessagesResult(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalOpenInterestMessages($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalOpenInterestMessagesHour
    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalOpenInterestMessagesHourRaw(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/open-interest-messages/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalOpenInterestMessagesHour(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalOpenInterestMessagesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalOpenInterestMessagesHourResult(
        \App\DTO\FuturesV1HistoricalOpenInterestMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalOpenInterestMessagesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalOpenInterestMinutes
    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalOpenInterestMinutesRaw(
        \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/open-interest/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalOpenInterestMinutes(
        \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalOpenInterestMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalOpenInterestMinutesResult(
        \App\DTO\FuturesV1HistoricalOpenInterestMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalOpenInterestMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalTrades
    /**
     * @param \App\DTO\FuturesV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalTradesRaw(
        \App\DTO\FuturesV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/trades', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalTrades(
        \App\DTO\FuturesV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalTradesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalTradesResult(
        \App\DTO\FuturesV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalTrades($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1HistoricalTradesHour
    /**
     * @param \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1HistoricalTradesHourRaw(
        \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/historical/trades/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1HistoricalTradesHour(
        \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1HistoricalTradesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1HistoricalTradesHourResult(
        \App\DTO\FuturesV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1HistoricalTradesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region futuresV1LatestFundingRateTick
    /**
     * @param \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1LatestFundingRateTickRaw(
        \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/latest/funding-rate/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1LatestFundingRateTick(
        \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1LatestFundingRateTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1LatestFundingRateTickResult(
        \App\DTO\FuturesV1LatestFundingRateTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1LatestFundingRateTick($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1LatestInstrumentMetadata
    /**
     * @param \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1LatestInstrumentMetadataRaw(
        \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/latest/instrument/metadata', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1LatestInstrumentMetadata(
        \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1LatestInstrumentMetadataRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1LatestInstrumentMetadataResult(
        \App\DTO\FuturesV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1LatestInstrumentMetadata($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1LatestOpenInterestTick
    /**
     * @param \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1LatestOpenInterestTickRaw(
        \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/latest/open-interest/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1LatestOpenInterestTick(
        \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1LatestOpenInterestTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1LatestOpenInterestTickResult(
        \App\DTO\FuturesV1LatestOpenInterestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1LatestOpenInterestTick($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1LatestTick
    /**
     * @param \App\DTO\FuturesV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1LatestTickRaw(
        \App\DTO\FuturesV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/latest/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1LatestTick(
        \App\DTO\FuturesV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1LatestTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1LatestTickResult(
        \App\DTO\FuturesV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1LatestTick($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1Markets
    /**
     * @param \App\DTO\FuturesV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1MarketsRaw(
        \App\DTO\FuturesV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/markets', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1Markets(
        \App\DTO\FuturesV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1MarketsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1MarketsResult(
        \App\DTO\FuturesV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1Markets($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1MarketsInstruments
    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1MarketsInstrumentsRaw(
        \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/markets/instruments', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1MarketsInstruments(
        \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1MarketsInstrumentsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1MarketsInstrumentsResult(
        \App\DTO\FuturesV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1MarketsInstruments($parameters, $responseMediaType));
    }
    //endregion

    //region futuresV1MarketsInstrumentsUnmapped
    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function futuresV1MarketsInstrumentsUnmappedRaw(
        \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/futures/v1/markets/instruments/unmapped', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function futuresV1MarketsInstrumentsUnmapped(
        \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->futuresV1MarketsInstrumentsUnmappedRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function futuresV1MarketsInstrumentsUnmappedResult(
        \App\DTO\FuturesV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->futuresV1MarketsInstrumentsUnmapped($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1HistoricalDays
    /**
     * @param \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1HistoricalDaysRaw(
        \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/historical/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1HistoricalDays(
        \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1HistoricalDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1HistoricalDaysResult(
        \App\DTO\IndexCcV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1HistoricalDays($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1HistoricalHours
    /**
     * @param \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1HistoricalHoursRaw(
        \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/historical/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1HistoricalHours(
        \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1HistoricalHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1HistoricalHoursResult(
        \App\DTO\IndexCcV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1HistoricalHours($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1HistoricalMessages
    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1HistoricalMessagesRaw(
        \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/historical/messages', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1HistoricalMessages(
        \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1HistoricalMessagesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1HistoricalMessagesResult(
        \App\DTO\IndexCcV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1HistoricalMessages($parameters, $security, $responseMediaType));
    }
    //endregion

    //region indexCcV1HistoricalMessagesHour
    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1HistoricalMessagesHourRaw(
        \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/historical/messages/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1HistoricalMessagesHour(
        \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1HistoricalMessagesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1HistoricalMessagesHourResult(
        \App\DTO\IndexCcV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1HistoricalMessagesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region indexCcV1HistoricalMinutes
    /**
     * @param \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1HistoricalMinutesRaw(
        \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/historical/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1HistoricalMinutes(
        \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1HistoricalMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1HistoricalMinutesResult(
        \App\DTO\IndexCcV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1HistoricalMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1LatestInstrumentMetadata
    /**
     * @param \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1LatestInstrumentMetadataRaw(
        \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/latest/instrument/metadata', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1LatestInstrumentMetadata(
        \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1LatestInstrumentMetadataRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1LatestInstrumentMetadataResult(
        \App\DTO\IndexCcV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1LatestInstrumentMetadata($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1LatestTick
    /**
     * @param \App\DTO\IndexCcV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1LatestTickRaw(
        \App\DTO\IndexCcV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/latest/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1LatestTick(
        \App\DTO\IndexCcV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1LatestTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1LatestTickResult(
        \App\DTO\IndexCcV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1LatestTick($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1Markets
    /**
     * @param \App\DTO\IndexCcV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1MarketsRaw(
        \App\DTO\IndexCcV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/markets', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1Markets(
        \App\DTO\IndexCcV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1MarketsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1MarketsResult(
        \App\DTO\IndexCcV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1Markets($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1MarketsInstruments
    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1MarketsInstrumentsRaw(
        \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/markets/instruments', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1MarketsInstruments(
        \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1MarketsInstrumentsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1MarketsInstrumentsResult(
        \App\DTO\IndexCcV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1MarketsInstruments($parameters, $responseMediaType));
    }
    //endregion

    //region indexCcV1MarketsInstrumentsUnmapped
    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexCcV1MarketsInstrumentsUnmappedRaw(
        \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/cc/v1/markets/instruments/unmapped', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexCcV1MarketsInstrumentsUnmapped(
        \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexCcV1MarketsInstrumentsUnmappedRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexCcV1MarketsInstrumentsUnmappedResult(
        \App\DTO\IndexCcV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexCcV1MarketsInstrumentsUnmapped($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1HistoricalDays
    /**
     * @param \App\DTO\IndexV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1HistoricalDaysRaw(
        \App\DTO\IndexV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/historical/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1HistoricalDays(
        \App\DTO\IndexV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1HistoricalDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1HistoricalDaysResult(
        \App\DTO\IndexV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1HistoricalDays($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1HistoricalHours
    /**
     * @param \App\DTO\IndexV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1HistoricalHoursRaw(
        \App\DTO\IndexV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/historical/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1HistoricalHours(
        \App\DTO\IndexV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1HistoricalHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1HistoricalHoursResult(
        \App\DTO\IndexV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1HistoricalHours($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1HistoricalMessages
    /**
     * @param \App\DTO\IndexV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1HistoricalMessagesRaw(
        \App\DTO\IndexV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/historical/messages', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1HistoricalMessages(
        \App\DTO\IndexV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1HistoricalMessagesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMessagesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1HistoricalMessagesResult(
        \App\DTO\IndexV1HistoricalMessagesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1HistoricalMessages($parameters, $security, $responseMediaType));
    }
    //endregion

    //region indexV1HistoricalMessagesHour
    /**
     * @param \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1HistoricalMessagesHourRaw(
        \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/historical/messages/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1HistoricalMessagesHour(
        \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1HistoricalMessagesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1HistoricalMessagesHourResult(
        \App\DTO\IndexV1HistoricalMessagesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1HistoricalMessagesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region indexV1HistoricalMinutes
    /**
     * @param \App\DTO\IndexV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1HistoricalMinutesRaw(
        \App\DTO\IndexV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/historical/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1HistoricalMinutes(
        \App\DTO\IndexV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1HistoricalMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1HistoricalMinutesResult(
        \App\DTO\IndexV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1HistoricalMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1LatestInstrumentMetadata
    /**
     * @param \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1LatestInstrumentMetadataRaw(
        \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/latest/instrument/metadata', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1LatestInstrumentMetadata(
        \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1LatestInstrumentMetadataRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1LatestInstrumentMetadataResult(
        \App\DTO\IndexV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1LatestInstrumentMetadata($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1LatestTick
    /**
     * @param \App\DTO\IndexV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1LatestTickRaw(
        \App\DTO\IndexV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/latest/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1LatestTick(
        \App\DTO\IndexV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1LatestTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1LatestTickResult(
        \App\DTO\IndexV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1LatestTick($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1Markets
    /**
     * @param \App\DTO\IndexV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1MarketsRaw(
        \App\DTO\IndexV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/markets', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1Markets(
        \App\DTO\IndexV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1MarketsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1MarketsResult(
        \App\DTO\IndexV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1Markets($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1MarketsInstruments
    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1MarketsInstrumentsRaw(
        \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/markets/instruments', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1MarketsInstruments(
        \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1MarketsInstrumentsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1MarketsInstrumentsResult(
        \App\DTO\IndexV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1MarketsInstruments($parameters, $responseMediaType));
    }
    //endregion

    //region indexV1MarketsInstrumentsUnmapped
    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function indexV1MarketsInstrumentsUnmappedRaw(
        \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/index/v1/markets/instruments/unmapped', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function indexV1MarketsInstrumentsUnmapped(
        \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->indexV1MarketsInstrumentsUnmappedRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function indexV1MarketsInstrumentsUnmappedResult(
        \App\DTO\IndexV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->indexV1MarketsInstrumentsUnmapped($parameters, $responseMediaType));
    }
    //endregion

    //region newsV1ArticleList
    /**
     * @param \App\DTO\NewsV1ArticleListParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function newsV1ArticleListRaw(
        \App\DTO\NewsV1ArticleListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/news/v1/article/list', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\NewsV1ArticleListParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function newsV1ArticleList(
        \App\DTO\NewsV1ArticleListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->newsV1ArticleListRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\NewsV1ArticleListParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function newsV1ArticleListResult(
        \App\DTO\NewsV1ArticleListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->newsV1ArticleList($parameters, $responseMediaType));
    }
    //endregion

    //region newsV1CategoryList
    /**
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function newsV1CategoryListRaw(
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/news/v1/category/list', [], []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function newsV1CategoryList(
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->newsV1CategoryListRaw($responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function newsV1CategoryListResult(
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->newsV1CategoryList($responseMediaType));
    }
    //endregion

    //region newsV1SourceList
    /**
     * @param \App\DTO\NewsV1SourceListParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function newsV1SourceListRaw(
        \App\DTO\NewsV1SourceListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/news/v1/source/list', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\NewsV1SourceListParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function newsV1SourceList(
        \App\DTO\NewsV1SourceListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->newsV1SourceListRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\NewsV1SourceListParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function newsV1SourceListResult(
        \App\DTO\NewsV1SourceListParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->newsV1SourceList($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1HistoricalMarketcapAllAssetsDays
    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1HistoricalMarketcapAllAssetsDaysRaw(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/historical/marketcap/all/assets/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1HistoricalMarketcapAllAssetsDays(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1HistoricalMarketcapAllAssetsDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1HistoricalMarketcapAllAssetsDaysResult(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1HistoricalMarketcapAllAssetsDays($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1HistoricalMarketcapAllAssetsHours
    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1HistoricalMarketcapAllAssetsHoursRaw(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/historical/marketcap/all/assets/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1HistoricalMarketcapAllAssetsHours(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1HistoricalMarketcapAllAssetsHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1HistoricalMarketcapAllAssetsHoursResult(
        \App\DTO\OverviewV1HistoricalMarketcapAllAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1HistoricalMarketcapAllAssetsHours($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1HistoricalMarketcapFtwAssetsDays
    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1HistoricalMarketcapFtwAssetsDaysRaw(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/historical/marketcap/ftw/assets/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1HistoricalMarketcapFtwAssetsDays(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1HistoricalMarketcapFtwAssetsDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1HistoricalMarketcapFtwAssetsDaysResult(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1HistoricalMarketcapFtwAssetsDays($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1HistoricalMarketcapFtwAssetsHours
    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1HistoricalMarketcapFtwAssetsHoursRaw(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/historical/marketcap/ftw/assets/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1HistoricalMarketcapFtwAssetsHours(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1HistoricalMarketcapFtwAssetsHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1HistoricalMarketcapFtwAssetsHoursResult(
        \App\DTO\OverviewV1HistoricalMarketcapFtwAssetsHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1HistoricalMarketcapFtwAssetsHours($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1LatestMarketcapAllTick
    /**
     * @param \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1LatestMarketcapAllTickRaw(
        \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/latest/marketcap/all/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1LatestMarketcapAllTick(
        \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1LatestMarketcapAllTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1LatestMarketcapAllTickResult(
        \App\DTO\OverviewV1LatestMarketcapAllTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1LatestMarketcapAllTick($parameters, $responseMediaType));
    }
    //endregion

    //region overviewV1LatestMarketcapFtwTick
    /**
     * @param \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function overviewV1LatestMarketcapFtwTickRaw(
        \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/overview/v1/latest/marketcap/ftw/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function overviewV1LatestMarketcapFtwTick(
        \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->overviewV1LatestMarketcapFtwTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function overviewV1LatestMarketcapFtwTickResult(
        \App\DTO\OverviewV1LatestMarketcapFtwTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->overviewV1LatestMarketcapFtwTick($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalDays
    /**
     * @param \App\DTO\SpotV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalDaysRaw(
        \App\DTO\SpotV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/days', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalDays(
        \App\DTO\SpotV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalDaysRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalDaysParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalDaysResult(
        \App\DTO\SpotV1HistoricalDaysParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalDays($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalHours
    /**
     * @param \App\DTO\SpotV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalHoursRaw(
        \App\DTO\SpotV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/hours', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalHours(
        \App\DTO\SpotV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalHoursRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalHoursParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalHoursResult(
        \App\DTO\SpotV1HistoricalHoursParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalHours($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalMinutes
    /**
     * @param \App\DTO\SpotV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalMinutesRaw(
        \App\DTO\SpotV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/minutes', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalMinutes(
        \App\DTO\SpotV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalMinutesRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalMinutesParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalMinutesResult(
        \App\DTO\SpotV1HistoricalMinutesParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTHISTODATARESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalMinutes($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalOrderbookL2SnapshotMinute
    /**
     * @param \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalOrderbookL2SnapshotMinuteRaw(
        \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/orderbook/l2/snapshot/minute', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalOrderbookL2SnapshotMinute(
        \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalOrderbookL2SnapshotMinuteRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalOrderbookL2SnapshotMinuteResult(
        \App\DTO\SpotV1HistoricalOrderbookL2SnapshotMinuteParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalOrderbookL2SnapshotMinute($parameters, $security, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalTrades
    /**
     * @param \App\DTO\SpotV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalTradesRaw(
        \App\DTO\SpotV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/trades', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalTrades(
        \App\DTO\SpotV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalTradesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTTRADERESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalTradesParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTTRADERESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalTradesResult(
        \App\DTO\SpotV1HistoricalTradesParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTTRADERESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalTrades($parameters, $security, $responseMediaType));
    }
    //endregion

    //region spotV1HistoricalTradesHour
    /**
     * @param \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1HistoricalTradesHourRaw(
        \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/historical/trades/hour', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1HistoricalTradesHour(
        \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1HistoricalTradesHourRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTTRADERESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters
     * @param iterable|string[][] $security
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTTRADERESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1HistoricalTradesHourResult(
        \App\DTO\SpotV1HistoricalTradesHourParameterData $parameters,
        iterable $security = ['api_key_header' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTTRADERESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1HistoricalTradesHour($parameters, $security, $responseMediaType));
    }
    //endregion

    //region spotV1LatestInstrumentMetadata
    /**
     * @param \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1LatestInstrumentMetadataRaw(
        \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/latest/instrument/metadata', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1LatestInstrumentMetadata(
        \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1LatestInstrumentMetadataRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTMETADATARESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTMETADATARESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1LatestInstrumentMetadataResult(
        \App\DTO\SpotV1LatestInstrumentMetadataParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTMETADATARESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1LatestInstrumentMetadata($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1LatestTick
    /**
     * @param \App\DTO\SpotV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1LatestTickRaw(
        \App\DTO\SpotV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/latest/tick', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1LatestTick(
        \App\DTO\SpotV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1LatestTickRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\SPOTINSTRUMENTMARKETDATARESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1LatestTickParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\SPOTINSTRUMENTMARKETDATARESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1LatestTickResult(
        \App\DTO\SpotV1LatestTickParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\SPOTINSTRUMENTMARKETDATARESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1LatestTick($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1Markets
    /**
     * @param \App\DTO\SpotV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1MarketsRaw(
        \App\DTO\SpotV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/markets', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1Markets(
        \App\DTO\SpotV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1MarketsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1MarketsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1MarketsResult(
        \App\DTO\SpotV1MarketsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1Markets($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1MarketsInstruments
    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1MarketsInstrumentsRaw(
        \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/markets/instruments', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1MarketsInstruments(
        \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1MarketsInstrumentsRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1MarketsInstrumentsResult(
        \App\DTO\SpotV1MarketsInstrumentsParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1MarketsInstruments($parameters, $responseMediaType));
    }
    //endregion

    //region spotV1MarketsInstrumentsUnmapped
    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function spotV1MarketsInstrumentsUnmappedRaw(
        \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/spot/v1/markets/instruments/unmapped', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function spotV1MarketsInstrumentsUnmapped(
        \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->spotV1MarketsInstrumentsUnmappedRaw($parameters, $responseMediaType);
        $responseContent = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Success response from the API. */
                $responseContent = new \App\DTO\GENERICRESPONSE();
                break;
            case 400:
                /* The 400 error occurs when some of the data sent is malformed. */
                $responseContent = new \App\DTO\Error();
                break;
            case 401:
                /* The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 403:
                /* The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication. */
                $responseContent = new \App\DTO\Error();
                break;
            case 404:
                /* The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid */
                $responseContent = new \App\DTO\Error();
                break;
            case 405:
                /* The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. */
                $responseContent = new \App\DTO\Error();
                break;
            case 429:
                /* The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. */
                $responseContent = new \App\DTO\Error();
                break;
            case 500:
                /* The 500 error occurs our API is up but does not know how to / can't handle the request. */
                $responseContent = new \App\DTO\Error();
                break;
            case 502:
                /* The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. */
                $responseContent = new \App\DTO\Error();
                break;
            case 503:
                /* The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer. */
                $responseContent = new \App\DTO\Error();
                break;
        }
        $this->parseBody($response, $responseContent);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters
     * @param string $responseMediaType
     * @return \App\DTO\GENERICRESPONSE
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function spotV1MarketsInstrumentsUnmappedResult(
        \App\DTO\SpotV1MarketsInstrumentsUnmappedParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): \App\DTO\GENERICRESPONSE
    {
        return $this->getSuccessfulContent(...$this->spotV1MarketsInstrumentsUnmapped($parameters, $responseMediaType));
    }
    //endregion
}

