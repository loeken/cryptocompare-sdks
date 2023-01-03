# 

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

This Groovy package, using the [http-builder-ng library](https://http-builder-ng.github.io/http-builder-ng/), is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.1.1
- Package version: 2.1.1
- Build date: 2023-01-03T11:55:57.777866Z[Etc/UTC]
- Build package: org.openapitools.codegen.languages.GroovyClientCodegen
For more information, please visit [https://cryptocompare.zendesk.com/hc/en-gb/requests/new](https://cryptocompare.zendesk.com/hc/en-gb/requests/new)

## Requirements

* Groovy 2.5.7
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

## Getting Started


```groovy
def apiInstance = new AssetApi()
def address = "address_example" // String | 
def chainSymbol = "chainSymbol_example" // String | 
def groups = "" // String | 

apiInstance.assetV1DataByAddress(address, chainSymbol, groups)
    {
    // on success
    def result = (GENERICRESPONSE)it
    println result
    
}
    {
    // on failure
    statusCode, message ->
        println "${statusCode} ${message}"
};
```
