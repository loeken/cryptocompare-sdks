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

.PARAMETER VarData
No description available.
.PARAMETER Err
No description available.
.OUTPUTS

SPOTINSTRUMENTMARKETDATARESPONSE<PSCustomObject>
#>

function Initialize-SPOTINSTRUMENTMARKETDATARESPONSE {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarData},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Err}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => SPOTINSTRUMENTMARKETDATARESPONSE' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Data" = ${VarData}
            "Err" = ${Err}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SPOTINSTRUMENTMARKETDATARESPONSE<PSCustomObject>

.DESCRIPTION

Convert from JSON to SPOTINSTRUMENTMARKETDATARESPONSE<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SPOTINSTRUMENTMARKETDATARESPONSE<PSCustomObject>
#>
function ConvertFrom-JsonToSPOTINSTRUMENTMARKETDATARESPONSE {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => SPOTINSTRUMENTMARKETDATARESPONSE' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SPOTINSTRUMENTMARKETDATARESPONSE
        $AllProperties = ("Data", "Err")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["Data"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Err"))) { #optional property not found
            $Err = $null
        } else {
            $Err = $JsonParameters.PSobject.Properties["Err"].value
        }

        $PSO = [PSCustomObject]@{
            "Data" = ${VarData}
            "Err" = ${Err}
        }

        return $PSO
    }

}

