#
# CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
# CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
# Version: 2.1.1
# Contact: data@cryptocompare.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER SourceIds
Get articles from specific sources; either by their ids or keys

.PARAMETER Lang
The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)

.PARAMETER Categories
News article categories to return

.PARAMETER ExcludeCategories
News article categories to exclude from results

.PARAMETER ToTs
Articles published on or before this timestamp

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GENERICRESPONSE
#>
function New-sV1ArticleList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${SourceIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("EN", "ES", "PT", "")]
        [String]
        ${Lang},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "")]
        [String[]]
        ${Categories},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "")]
        [String[]]
        ${ExcludeCategories},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${ToTs},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-sV1ArticleList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/news/v1/article/list'

        if ($SourceIds) {
            $LocalVarQueryParameters['source_ids'] = $SourceIds
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Categories) {
            $LocalVarQueryParameters['categories'] = $Categories
        }

        if ($ExcludeCategories) {
            $LocalVarQueryParameters['exclude_categories'] = $ExcludeCategories
        }

        if ($ToTs) {
            $LocalVarQueryParameters['to_ts'] = $ToTs
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "GENERICRESPONSE" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GENERICRESPONSE
#>
function New-sV1CategoryList {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-sV1CategoryList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/news/v1/category/list'

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "GENERICRESPONSE" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Lang
The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)

.PARAMETER Type
RSS, API, TWITTER

.PARAMETER Status
The status for the  article source entry. Allowed values: ACTIVE, INACTIVE

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GENERICRESPONSE
#>
function New-sV1SourceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("EN", "ES", "PT", "")]
        [String]
        ${Lang},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("RSS", "API", "TWITTER", "")]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ACTIVE", "INACTIVE", "")]
        [String]
        ${Status},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-sV1SourceList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/news/v1/source/list'

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Type) {
            $LocalVarQueryParameters['type'] = $Type
        }

        if ($Status) {
            $LocalVarQueryParameters['status'] = $Status
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "GENERICRESPONSE" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

