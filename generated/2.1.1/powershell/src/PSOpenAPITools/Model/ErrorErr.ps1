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

.PARAMETER Message
A message describing the error
.PARAMETER OtherInfo
No description available.
.PARAMETER Type
A public facing error type. If you want to treat a specific error use the type.
.OUTPUTS

ErrorErr<PSCustomObject>
#>

function Initialize-ErrorErr {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OtherInfo},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ErrorErr' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "other_info" = ${OtherInfo}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ErrorErr<PSCustomObject>

.DESCRIPTION

Convert from JSON to ErrorErr<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ErrorErr<PSCustomObject>
#>
function ConvertFrom-JsonToErrorErr {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ErrorErr' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ErrorErr
        $AllProperties = ("message", "other_info", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "other_info"))) { #optional property not found
            $OtherInfo = $null
        } else {
            $OtherInfo = $JsonParameters.PSobject.Properties["other_info"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "other_info" = ${OtherInfo}
            "type" = ${Type}
        }

        return $PSO
    }

}

