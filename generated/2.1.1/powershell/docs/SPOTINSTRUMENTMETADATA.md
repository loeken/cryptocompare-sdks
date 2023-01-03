# SPOTINSTRUMENTMETADATA
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FIRSTSEENONBLOBTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**FIRSTSEENONFIXTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType FIX. | [optional] 
**FIRSTSEENONHARDCODEDTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**FIRSTSEENONINDEXCOMPOSITIONTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**FIRSTSEENONNSQTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**FIRSTSEENONPOLLINGTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**FIRSTSEENONSTREAMINGTS** | **Int32** | This is the first time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**FIRSTTRADESPOTFROMBACKFILL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMBACKFILLEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMBLOB** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMBLOBEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMCALCULATED** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMCALCULATEDEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMFIX** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMFIXEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMGO** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMGOEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMPOLLING** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMPOLLINGEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRSTTRADESPOTFROMSTREAMING** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRSTTRADESPOTFROMSTREAMINGEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**HOSTMIGRATIONDESTINATION** | **String** | The migration destination vm hostname. | [optional] 
**HOSTMIGRATIONSOURCE** | **String** | The migration source vm hostname. | [optional] 
**HOSTMIGRATIONSTATUS** | **String** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED | [optional] 
**INSTRUMENT** | **String** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? | [optional] 
**INSTRUMENTEXTERNALDATA** | **String** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. | [optional] 
**INSTRUMENTMAPPING** | [**SystemCollectionsHashtable**](.md) | The current mapping information for this instrument | [optional] 
**INSTRUMENTMAPPINGHISTORY** | **String[]** | Historical mapping information for this instrument | [optional] 
**INSTRUMENTSOURCEBACKFILL** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCEBLOB** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCECALCULATED** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCEFIX** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCEGO** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCEPOLLING** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSOURCESTREAMING** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENTSTATUS** | **String** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. | [optional] [default to "ACTIVE"]
**INSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST** | [**SystemCollectionsHashtable**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS** | **Int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS** | **Int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS** | **Int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION** | **Boolean** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. | [optional] [default to $false]
**INSTRUMENTTRADESPOTRESTURI** | **String** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. | [optional] 
**INSTRUMENTTRADESPOTRESTURL** | **String** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION** | **String** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. | [optional] 
**LASTCONCURRENTBATCHOFTRADESSPOTMS** | **Int32** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter | [optional] 
**LASTSEENONBLOBTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**LASTSEENONFIXTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType FIX. | [optional] 
**LASTSEENONHARDCODEDTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**LASTSEENONINDEXCOMPOSITIONTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**LASTSEENONNSQTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**LASTSEENONPOLLINGTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**LASTSEENONSTREAMINGTS** | **Int32** | This is the last time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**LASTTRADESPOTFROMBACKFILL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMBACKFILLEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMBLOB** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMBLOBEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMCALCULATED** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMCALCULATEDEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMFIX** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMFIXEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMGO** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMGOEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMPOLLING** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMPOLLINGEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LASTTRADESPOTFROMSTREAMING** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LASTTRADESPOTFROMSTREAMINGEXTERNAL** | [**SystemCollectionsHashtable**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**METADATAVERSION** | **Int32** | The version of metadata, used for version conversions/migrates. | [optional] [default to 4]
**PROCESSINGTRADESFROMBLOBSTATUS** | **String** | This states the status of blob migration for this intrument on this exchange. | [optional] 
**TOTALTRADESSPOT** | **Int32** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument | [optional] 
**UNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA** | [**SystemCollectionsHashtable**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTMETADATA = Initialize-PSOpenAPIToolsSPOTINSTRUMENTMETADATA  -FIRSTSEENONBLOBTS null `
 -FIRSTSEENONFIXTS null `
 -FIRSTSEENONHARDCODEDTS null `
 -FIRSTSEENONINDEXCOMPOSITIONTS null `
 -FIRSTSEENONNSQTS null `
 -FIRSTSEENONPOLLINGTS null `
 -FIRSTSEENONSTREAMINGTS null `
 -FIRSTTRADESPOTFROMBACKFILL null `
 -FIRSTTRADESPOTFROMBACKFILLEXTERNAL null `
 -FIRSTTRADESPOTFROMBLOB null `
 -FIRSTTRADESPOTFROMBLOBEXTERNAL null `
 -FIRSTTRADESPOTFROMCALCULATED null `
 -FIRSTTRADESPOTFROMCALCULATEDEXTERNAL null `
 -FIRSTTRADESPOTFROMFIX null `
 -FIRSTTRADESPOTFROMFIXEXTERNAL null `
 -FIRSTTRADESPOTFROMGO null `
 -FIRSTTRADESPOTFROMGOEXTERNAL null `
 -FIRSTTRADESPOTFROMPOLLING null `
 -FIRSTTRADESPOTFROMPOLLINGEXTERNAL null `
 -FIRSTTRADESPOTFROMSTREAMING null `
 -FIRSTTRADESPOTFROMSTREAMINGEXTERNAL null `
 -HOSTMIGRATIONDESTINATION null `
 -HOSTMIGRATIONSOURCE null `
 -HOSTMIGRATIONSTATUS null `
 -INSTRUMENT null `
 -INSTRUMENTEXTERNALDATA null `
 -INSTRUMENTMAPPING {} `
 -INSTRUMENTMAPPINGHISTORY [] `
 -INSTRUMENTSOURCEBACKFILL null `
 -INSTRUMENTSOURCEBLOB null `
 -INSTRUMENTSOURCECALCULATED null `
 -INSTRUMENTSOURCEFIX null `
 -INSTRUMENTSOURCEGO null `
 -INSTRUMENTSOURCEPOLLING null `
 -INSTRUMENTSOURCESTREAMING null `
 -INSTRUMENTSTATUS ACTIVE `
 -INSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST null `
 -INSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS null `
 -INSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS null `
 -INSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS null `
 -INSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION false `
 -INSTRUMENTTRADESPOTRESTURI null `
 -INSTRUMENTTRADESPOTRESTURL null `
 -INSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION null `
 -LASTCONCURRENTBATCHOFTRADESSPOTMS null `
 -LASTSEENONBLOBTS null `
 -LASTSEENONFIXTS null `
 -LASTSEENONHARDCODEDTS null `
 -LASTSEENONINDEXCOMPOSITIONTS null `
 -LASTSEENONNSQTS null `
 -LASTSEENONPOLLINGTS null `
 -LASTSEENONSTREAMINGTS null `
 -LASTTRADESPOTFROMBACKFILL null `
 -LASTTRADESPOTFROMBACKFILLEXTERNAL null `
 -LASTTRADESPOTFROMBLOB null `
 -LASTTRADESPOTFROMBLOBEXTERNAL null `
 -LASTTRADESPOTFROMCALCULATED null `
 -LASTTRADESPOTFROMCALCULATEDEXTERNAL null `
 -LASTTRADESPOTFROMFIX null `
 -LASTTRADESPOTFROMFIXEXTERNAL null `
 -LASTTRADESPOTFROMGO null `
 -LASTTRADESPOTFROMGOEXTERNAL null `
 -LASTTRADESPOTFROMPOLLING null `
 -LASTTRADESPOTFROMPOLLINGEXTERNAL null `
 -LASTTRADESPOTFROMSTREAMING null `
 -LASTTRADESPOTFROMSTREAMINGEXTERNAL null `
 -METADATAVERSION 4 `
 -PROCESSINGTRADESFROMBLOBSTATUS null `
 -TOTALTRADESSPOT null `
 -UNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA null `
 -UNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTMETADATA | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

