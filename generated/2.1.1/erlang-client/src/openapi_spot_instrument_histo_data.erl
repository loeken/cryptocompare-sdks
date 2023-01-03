-module(openapi_spot_instrument_histo_data).

-export([encode/1]).

-export_type([openapi_spot_instrument_histo_data/0]).

-type openapi_spot_instrument_histo_data() ::
    #{ 'BASE' => binary(),
       'CLOSE' => integer(),
       'FIRST_TRADE_PRICE' => integer(),
       'FIRST_TRADE_TIMESTAMP' => integer(),
       'HIGH' => integer(),
       'HIGH_TRADE_PRICE' => integer(),
       'HIGH_TRADE_TIMESTAMP' => integer(),
       'INSTRUMENT' => binary(),
       'LAST_TRADE_PRICE' => integer(),
       'LAST_TRADE_TIMESTAMP' => integer(),
       'LOW' => integer(),
       'LOW_TRADE_PRICE' => integer(),
       'LOW_TRADE_TIMESTAMP' => integer(),
       'MAPPED_INSTRUMENT' => binary(),
       'MARKET' => binary(),
       'OPEN' => integer(),
       'QUOTE' => binary(),
       'QUOTE_VOLUME' => integer(),
       'QUOTE_VOLUME_BUY' => integer(),
       'QUOTE_VOLUME_SELL' => integer(),
       'QUOTE_VOLUME_UNKNOWN' => integer(),
       'TIMESTAMP' => integer(),
       'TOTAL_TRADES' => integer(),
       'TOTAL_TRADES_BUY' => integer(),
       'TOTAL_TRADES_SELL' => integer(),
       'TOTAL_TRADES_UNKNOWN' => integer(),
       'TYPE' => binary(),
       'UNIT' => binary(),
       'VOLUME' => integer(),
       'VOLUME_BUY' => integer(),
       'VOLUME_SELL' => integer(),
       'VOLUME_UNKNOWN' => integer()
     }.

encode(#{ 'BASE' := BASE,
          'CLOSE' := CLOSE,
          'FIRST_TRADE_PRICE' := FIRSTTRADEPRICE,
          'FIRST_TRADE_TIMESTAMP' := FIRSTTRADETIMESTAMP,
          'HIGH' := HIGH,
          'HIGH_TRADE_PRICE' := HIGHTRADEPRICE,
          'HIGH_TRADE_TIMESTAMP' := HIGHTRADETIMESTAMP,
          'INSTRUMENT' := INSTRUMENT,
          'LAST_TRADE_PRICE' := LASTTRADEPRICE,
          'LAST_TRADE_TIMESTAMP' := LASTTRADETIMESTAMP,
          'LOW' := LOW,
          'LOW_TRADE_PRICE' := LOWTRADEPRICE,
          'LOW_TRADE_TIMESTAMP' := LOWTRADETIMESTAMP,
          'MAPPED_INSTRUMENT' := MAPPEDINSTRUMENT,
          'MARKET' := MARKET,
          'OPEN' := OPEN,
          'QUOTE' := QUOTE,
          'QUOTE_VOLUME' := QUOTEVOLUME,
          'QUOTE_VOLUME_BUY' := QUOTEVOLUMEBUY,
          'QUOTE_VOLUME_SELL' := QUOTEVOLUMESELL,
          'QUOTE_VOLUME_UNKNOWN' := QUOTEVOLUMEUNKNOWN,
          'TIMESTAMP' := TIMESTAMP,
          'TOTAL_TRADES' := TOTALTRADES,
          'TOTAL_TRADES_BUY' := TOTALTRADESBUY,
          'TOTAL_TRADES_SELL' := TOTALTRADESSELL,
          'TOTAL_TRADES_UNKNOWN' := TOTALTRADESUNKNOWN,
          'TYPE' := TYPE,
          'UNIT' := UNIT,
          'VOLUME' := VOLUME,
          'VOLUME_BUY' := VOLUMEBUY,
          'VOLUME_SELL' := VOLUMESELL,
          'VOLUME_UNKNOWN' := VOLUMEUNKNOWN
        }) ->
    #{ 'BASE' => BASE,
       'CLOSE' => CLOSE,
       'FIRST_TRADE_PRICE' => FIRSTTRADEPRICE,
       'FIRST_TRADE_TIMESTAMP' => FIRSTTRADETIMESTAMP,
       'HIGH' => HIGH,
       'HIGH_TRADE_PRICE' => HIGHTRADEPRICE,
       'HIGH_TRADE_TIMESTAMP' => HIGHTRADETIMESTAMP,
       'INSTRUMENT' => INSTRUMENT,
       'LAST_TRADE_PRICE' => LASTTRADEPRICE,
       'LAST_TRADE_TIMESTAMP' => LASTTRADETIMESTAMP,
       'LOW' => LOW,
       'LOW_TRADE_PRICE' => LOWTRADEPRICE,
       'LOW_TRADE_TIMESTAMP' => LOWTRADETIMESTAMP,
       'MAPPED_INSTRUMENT' => MAPPEDINSTRUMENT,
       'MARKET' => MARKET,
       'OPEN' => OPEN,
       'QUOTE' => QUOTE,
       'QUOTE_VOLUME' => QUOTEVOLUME,
       'QUOTE_VOLUME_BUY' => QUOTEVOLUMEBUY,
       'QUOTE_VOLUME_SELL' => QUOTEVOLUMESELL,
       'QUOTE_VOLUME_UNKNOWN' => QUOTEVOLUMEUNKNOWN,
       'TIMESTAMP' => TIMESTAMP,
       'TOTAL_TRADES' => TOTALTRADES,
       'TOTAL_TRADES_BUY' => TOTALTRADESBUY,
       'TOTAL_TRADES_SELL' => TOTALTRADESSELL,
       'TOTAL_TRADES_UNKNOWN' => TOTALTRADESUNKNOWN,
       'TYPE' => TYPE,
       'UNIT' => UNIT,
       'VOLUME' => VOLUME,
       'VOLUME_BUY' => VOLUMEBUY,
       'VOLUME_SELL' => VOLUMESELL,
       'VOLUME_UNKNOWN' => VOLUMEUNKNOWN
     }.