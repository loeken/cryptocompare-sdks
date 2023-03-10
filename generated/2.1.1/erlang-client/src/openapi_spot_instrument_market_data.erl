-module(openapi_spot_instrument_market_data).

-export([encode/1]).

-export_type([openapi_spot_instrument_market_data/0]).

-type openapi_spot_instrument_market_data() ::
    #{ 'BASE' => binary(),
       'CCSEQ' => integer(),
       'CURRENT_DAY_HIGH' => integer(),
       'CURRENT_DAY_LOW' => integer(),
       'CURRENT_DAY_OPEN' => integer(),
       'CURRENT_DAY_QUOTE_VOLUME' => integer(),
       'CURRENT_DAY_QUOTE_VOLUME_BUY' => integer(),
       'CURRENT_DAY_QUOTE_VOLUME_SELL' => integer(),
       'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'CURRENT_DAY_TOTAL_TRADES' => integer(),
       'CURRENT_DAY_TOTAL_TRADES_BUY' => integer(),
       'CURRENT_DAY_TOTAL_TRADES_SELL' => integer(),
       'CURRENT_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'CURRENT_DAY_VOLUME' => integer(),
       'CURRENT_DAY_VOLUME_BUY' => integer(),
       'CURRENT_DAY_VOLUME_SELL' => integer(),
       'CURRENT_DAY_VOLUME_UNKNOWN' => integer(),
       'CURRENT_HOUR_HIGH' => integer(),
       'CURRENT_HOUR_LOW' => integer(),
       'CURRENT_HOUR_OPEN' => integer(),
       'CURRENT_HOUR_QUOTE_VOLUME' => integer(),
       'CURRENT_HOUR_QUOTE_VOLUME_BUY' => integer(),
       'CURRENT_HOUR_QUOTE_VOLUME_SELL' => integer(),
       'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN' => integer(),
       'CURRENT_HOUR_TOTAL_TRADES' => integer(),
       'CURRENT_HOUR_TOTAL_TRADES_BUY' => integer(),
       'CURRENT_HOUR_TOTAL_TRADES_SELL' => integer(),
       'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN' => integer(),
       'CURRENT_HOUR_VOLUME' => integer(),
       'CURRENT_HOUR_VOLUME_BUY' => integer(),
       'CURRENT_HOUR_VOLUME_SELL' => integer(),
       'CURRENT_HOUR_VOLUME_UNKNOWN' => integer(),
       'CURRENT_MONTH_HIGH' => integer(),
       'CURRENT_MONTH_LOW' => integer(),
       'CURRENT_MONTH_OPEN' => integer(),
       'CURRENT_MONTH_QUOTE_VOLUME' => integer(),
       'CURRENT_MONTH_QUOTE_VOLUME_BUY' => integer(),
       'CURRENT_MONTH_QUOTE_VOLUME_SELL' => integer(),
       'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN' => integer(),
       'CURRENT_MONTH_TOTAL_TRADES' => integer(),
       'CURRENT_MONTH_TOTAL_TRADES_BUY' => integer(),
       'CURRENT_MONTH_TOTAL_TRADES_SELL' => integer(),
       'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN' => integer(),
       'CURRENT_MONTH_VOLUME' => integer(),
       'CURRENT_MONTH_VOLUME_BUY' => integer(),
       'CURRENT_MONTH_VOLUME_SELL' => integer(),
       'CURRENT_MONTH_VOLUME_UNKNOWN' => integer(),
       'CURRENT_WEEK_HIGH' => integer(),
       'CURRENT_WEEK_LOW' => integer(),
       'CURRENT_WEEK_OPEN' => integer(),
       'CURRENT_WEEK_QUOTE_VOLUME' => integer(),
       'CURRENT_WEEK_QUOTE_VOLUME_BUY' => integer(),
       'CURRENT_WEEK_QUOTE_VOLUME_SELL' => integer(),
       'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN' => integer(),
       'CURRENT_WEEK_TOTAL_TRADES' => integer(),
       'CURRENT_WEEK_TOTAL_TRADES_BUY' => integer(),
       'CURRENT_WEEK_TOTAL_TRADES_SELL' => integer(),
       'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN' => integer(),
       'CURRENT_WEEK_VOLUME' => integer(),
       'CURRENT_WEEK_VOLUME_BUY' => integer(),
       'CURRENT_WEEK_VOLUME_SELL' => integer(),
       'CURRENT_WEEK_VOLUME_UNKNOWN' => integer(),
       'CURRENT_YEAR_HIGH' => integer(),
       'CURRENT_YEAR_LOW' => integer(),
       'CURRENT_YEAR_OPEN' => integer(),
       'CURRENT_YEAR_QUOTE_VOLUME' => integer(),
       'CURRENT_YEAR_QUOTE_VOLUME_BUY' => integer(),
       'CURRENT_YEAR_QUOTE_VOLUME_SELL' => integer(),
       'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN' => integer(),
       'CURRENT_YEAR_TOTAL_TRADES' => integer(),
       'CURRENT_YEAR_TOTAL_TRADES_BUY' => integer(),
       'CURRENT_YEAR_TOTAL_TRADES_SELL' => integer(),
       'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN' => integer(),
       'CURRENT_YEAR_VOLUME' => integer(),
       'CURRENT_YEAR_VOLUME_BUY' => integer(),
       'CURRENT_YEAR_VOLUME_SELL' => integer(),
       'CURRENT_YEAR_VOLUME_UNKNOWN' => integer(),
       'INSTRUMENT' => binary(),
       'LAST_PROCESSED_TRADE_CCSEQ' => binary(),
       'LAST_PROCESSED_TRADE_PRICE' => integer(),
       'LAST_PROCESSED_TRADE_QUANTITY' => integer(),
       'LAST_PROCESSED_TRADE_QUOTE_QUANTITY' => integer(),
       'LAST_PROCESSED_TRADE_SIDE' => binary(),
       'LAST_PROCESSED_TRADE_TS' => integer(),
       'LAST_TRADE_CCSEQ' => binary(),
       'LAST_TRADE_ID' => binary(),
       'LAST_TRADE_QUANTITY' => integer(),
       'LAST_TRADE_QUOTE_QUANTITY' => integer(),
       'LAST_TRADE_SIDE' => binary(),
       'LIFETIME_FIRST_TRADE_TS' => integer(),
       'LIFETIME_HIGH' => integer(),
       'LIFETIME_HIGH_TS' => integer(),
       'LIFETIME_LOW' => integer(),
       'LIFETIME_LOW_TS' => integer(),
       'LIFETIME_OPEN' => integer(),
       'LIFETIME_QUOTE_VOLUME' => integer(),
       'LIFETIME_QUOTE_VOLUME_BUY' => integer(),
       'LIFETIME_QUOTE_VOLUME_SELL' => integer(),
       'LIFETIME_QUOTE_VOLUME_UNKNOWN' => integer(),
       'LIFETIME_TOTAL_TRADES' => integer(),
       'LIFETIME_TOTAL_TRADES_BUY' => integer(),
       'LIFETIME_TOTAL_TRADES_SELL' => integer(),
       'LIFETIME_TOTAL_TRADES_UNKNOWN' => integer(),
       'LIFETIME_VOLUME' => integer(),
       'LIFETIME_VOLUME_BUY' => integer(),
       'LIFETIME_VOLUME_SELL' => integer(),
       'LIFETIME_VOLUME_UNKNOWN' => integer(),
       'MAPPED_INSTRUMENT' => binary(),
       'MARKET' => binary(),
       'MOVING_180_DAY_HIGH' => integer(),
       'MOVING_180_DAY_LOW' => integer(),
       'MOVING_180_DAY_OPEN' => integer(),
       'MOVING_180_DAY_QUOTE_VOLUME' => integer(),
       'MOVING_180_DAY_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_180_DAY_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_180_DAY_TOTAL_TRADES' => integer(),
       'MOVING_180_DAY_TOTAL_TRADES_BUY' => integer(),
       'MOVING_180_DAY_TOTAL_TRADES_SELL' => integer(),
       'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_180_DAY_VOLUME' => integer(),
       'MOVING_180_DAY_VOLUME_BUY' => integer(),
       'MOVING_180_DAY_VOLUME_SELL' => integer(),
       'MOVING_180_DAY_VOLUME_UNKNOWN' => integer(),
       'MOVING_24_HOUR_HIGH' => integer(),
       'MOVING_24_HOUR_LOW' => integer(),
       'MOVING_24_HOUR_OPEN' => integer(),
       'MOVING_24_HOUR_QUOTE_VOLUME' => integer(),
       'MOVING_24_HOUR_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_24_HOUR_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_24_HOUR_TOTAL_TRADES' => integer(),
       'MOVING_24_HOUR_TOTAL_TRADES_BUY' => integer(),
       'MOVING_24_HOUR_TOTAL_TRADES_SELL' => integer(),
       'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_24_HOUR_VOLUME' => integer(),
       'MOVING_24_HOUR_VOLUME_BUY' => integer(),
       'MOVING_24_HOUR_VOLUME_SELL' => integer(),
       'MOVING_24_HOUR_VOLUME_UNKNOWN' => integer(),
       'MOVING_30_DAY_HIGH' => integer(),
       'MOVING_30_DAY_LOW' => integer(),
       'MOVING_30_DAY_OPEN' => integer(),
       'MOVING_30_DAY_QUOTE_VOLUME' => integer(),
       'MOVING_30_DAY_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_30_DAY_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_30_DAY_TOTAL_TRADES' => integer(),
       'MOVING_30_DAY_TOTAL_TRADES_BUY' => integer(),
       'MOVING_30_DAY_TOTAL_TRADES_SELL' => integer(),
       'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_30_DAY_VOLUME' => integer(),
       'MOVING_30_DAY_VOLUME_BUY' => integer(),
       'MOVING_30_DAY_VOLUME_SELL' => integer(),
       'MOVING_30_DAY_VOLUME_UNKNOWN' => integer(),
       'MOVING_365_DAY_HIGH' => integer(),
       'MOVING_365_DAY_LOW' => integer(),
       'MOVING_365_DAY_OPEN' => integer(),
       'MOVING_365_DAY_QUOTE_VOLUME' => integer(),
       'MOVING_365_DAY_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_365_DAY_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_365_DAY_TOTAL_TRADES' => integer(),
       'MOVING_365_DAY_TOTAL_TRADES_BUY' => integer(),
       'MOVING_365_DAY_TOTAL_TRADES_SELL' => integer(),
       'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_365_DAY_VOLUME' => integer(),
       'MOVING_365_DAY_VOLUME_BUY' => integer(),
       'MOVING_365_DAY_VOLUME_SELL' => integer(),
       'MOVING_365_DAY_VOLUME_UNKNOWN' => integer(),
       'MOVING_7_DAY_HIGH' => integer(),
       'MOVING_7_DAY_LOW' => integer(),
       'MOVING_7_DAY_OPEN' => integer(),
       'MOVING_7_DAY_QUOTE_VOLUME' => integer(),
       'MOVING_7_DAY_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_7_DAY_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_7_DAY_TOTAL_TRADES' => integer(),
       'MOVING_7_DAY_TOTAL_TRADES_BUY' => integer(),
       'MOVING_7_DAY_TOTAL_TRADES_SELL' => integer(),
       'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_7_DAY_VOLUME' => integer(),
       'MOVING_7_DAY_VOLUME_BUY' => integer(),
       'MOVING_7_DAY_VOLUME_SELL' => integer(),
       'MOVING_7_DAY_VOLUME_UNKNOWN' => integer(),
       'MOVING_90_DAY_HIGH' => integer(),
       'MOVING_90_DAY_LOW' => integer(),
       'MOVING_90_DAY_OPEN' => integer(),
       'MOVING_90_DAY_QUOTE_VOLUME' => integer(),
       'MOVING_90_DAY_QUOTE_VOLUME_BUY' => integer(),
       'MOVING_90_DAY_QUOTE_VOLUME_SELL' => integer(),
       'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN' => integer(),
       'MOVING_90_DAY_TOTAL_TRADES' => integer(),
       'MOVING_90_DAY_TOTAL_TRADES_BUY' => integer(),
       'MOVING_90_DAY_TOTAL_TRADES_SELL' => integer(),
       'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN' => integer(),
       'MOVING_90_DAY_VOLUME' => integer(),
       'MOVING_90_DAY_VOLUME_BUY' => integer(),
       'MOVING_90_DAY_VOLUME_SELL' => integer(),
       'MOVING_90_DAY_VOLUME_UNKNOWN' => integer(),
       'PRICE' => integer(),
       'PRICE_FLAG' => binary(),
       'PRICE_LAST_UPDATE_TS' => integer(),
       'QUOTE' => binary(),
       'TOP_ASK_LAST_UPDATE_TS' => integer(),
       'TOP_ASK_PRICE' => integer(),
       'TOP_ASK_QUANTITY' => integer(),
       'TOP_BID_LAST_UPDATE_TS' => integer(),
       'TOP_BID_PRICE' => integer(),
       'TOP_BID_QUANTITY' => integer(),
       'TYPE' => binary()
     }.

encode(#{ 'BASE' := BASE,
          'CCSEQ' := CCSEQ,
          'CURRENT_DAY_HIGH' := CURRENTDAYHIGH,
          'CURRENT_DAY_LOW' := CURRENTDAYLOW,
          'CURRENT_DAY_OPEN' := CURRENTDAYOPEN,
          'CURRENT_DAY_QUOTE_VOLUME' := CURRENTDAYQUOTEVOLUME,
          'CURRENT_DAY_QUOTE_VOLUME_BUY' := CURRENTDAYQUOTEVOLUMEBUY,
          'CURRENT_DAY_QUOTE_VOLUME_SELL' := CURRENTDAYQUOTEVOLUMESELL,
          'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN' := CURRENTDAYQUOTEVOLUMEUNKNOWN,
          'CURRENT_DAY_TOTAL_TRADES' := CURRENTDAYTOTALTRADES,
          'CURRENT_DAY_TOTAL_TRADES_BUY' := CURRENTDAYTOTALTRADESBUY,
          'CURRENT_DAY_TOTAL_TRADES_SELL' := CURRENTDAYTOTALTRADESSELL,
          'CURRENT_DAY_TOTAL_TRADES_UNKNOWN' := CURRENTDAYTOTALTRADESUNKNOWN,
          'CURRENT_DAY_VOLUME' := CURRENTDAYVOLUME,
          'CURRENT_DAY_VOLUME_BUY' := CURRENTDAYVOLUMEBUY,
          'CURRENT_DAY_VOLUME_SELL' := CURRENTDAYVOLUMESELL,
          'CURRENT_DAY_VOLUME_UNKNOWN' := CURRENTDAYVOLUMEUNKNOWN,
          'CURRENT_HOUR_HIGH' := CURRENTHOURHIGH,
          'CURRENT_HOUR_LOW' := CURRENTHOURLOW,
          'CURRENT_HOUR_OPEN' := CURRENTHOUROPEN,
          'CURRENT_HOUR_QUOTE_VOLUME' := CURRENTHOURQUOTEVOLUME,
          'CURRENT_HOUR_QUOTE_VOLUME_BUY' := CURRENTHOURQUOTEVOLUMEBUY,
          'CURRENT_HOUR_QUOTE_VOLUME_SELL' := CURRENTHOURQUOTEVOLUMESELL,
          'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN' := CURRENTHOURQUOTEVOLUMEUNKNOWN,
          'CURRENT_HOUR_TOTAL_TRADES' := CURRENTHOURTOTALTRADES,
          'CURRENT_HOUR_TOTAL_TRADES_BUY' := CURRENTHOURTOTALTRADESBUY,
          'CURRENT_HOUR_TOTAL_TRADES_SELL' := CURRENTHOURTOTALTRADESSELL,
          'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN' := CURRENTHOURTOTALTRADESUNKNOWN,
          'CURRENT_HOUR_VOLUME' := CURRENTHOURVOLUME,
          'CURRENT_HOUR_VOLUME_BUY' := CURRENTHOURVOLUMEBUY,
          'CURRENT_HOUR_VOLUME_SELL' := CURRENTHOURVOLUMESELL,
          'CURRENT_HOUR_VOLUME_UNKNOWN' := CURRENTHOURVOLUMEUNKNOWN,
          'CURRENT_MONTH_HIGH' := CURRENTMONTHHIGH,
          'CURRENT_MONTH_LOW' := CURRENTMONTHLOW,
          'CURRENT_MONTH_OPEN' := CURRENTMONTHOPEN,
          'CURRENT_MONTH_QUOTE_VOLUME' := CURRENTMONTHQUOTEVOLUME,
          'CURRENT_MONTH_QUOTE_VOLUME_BUY' := CURRENTMONTHQUOTEVOLUMEBUY,
          'CURRENT_MONTH_QUOTE_VOLUME_SELL' := CURRENTMONTHQUOTEVOLUMESELL,
          'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN' := CURRENTMONTHQUOTEVOLUMEUNKNOWN,
          'CURRENT_MONTH_TOTAL_TRADES' := CURRENTMONTHTOTALTRADES,
          'CURRENT_MONTH_TOTAL_TRADES_BUY' := CURRENTMONTHTOTALTRADESBUY,
          'CURRENT_MONTH_TOTAL_TRADES_SELL' := CURRENTMONTHTOTALTRADESSELL,
          'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN' := CURRENTMONTHTOTALTRADESUNKNOWN,
          'CURRENT_MONTH_VOLUME' := CURRENTMONTHVOLUME,
          'CURRENT_MONTH_VOLUME_BUY' := CURRENTMONTHVOLUMEBUY,
          'CURRENT_MONTH_VOLUME_SELL' := CURRENTMONTHVOLUMESELL,
          'CURRENT_MONTH_VOLUME_UNKNOWN' := CURRENTMONTHVOLUMEUNKNOWN,
          'CURRENT_WEEK_HIGH' := CURRENTWEEKHIGH,
          'CURRENT_WEEK_LOW' := CURRENTWEEKLOW,
          'CURRENT_WEEK_OPEN' := CURRENTWEEKOPEN,
          'CURRENT_WEEK_QUOTE_VOLUME' := CURRENTWEEKQUOTEVOLUME,
          'CURRENT_WEEK_QUOTE_VOLUME_BUY' := CURRENTWEEKQUOTEVOLUMEBUY,
          'CURRENT_WEEK_QUOTE_VOLUME_SELL' := CURRENTWEEKQUOTEVOLUMESELL,
          'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN' := CURRENTWEEKQUOTEVOLUMEUNKNOWN,
          'CURRENT_WEEK_TOTAL_TRADES' := CURRENTWEEKTOTALTRADES,
          'CURRENT_WEEK_TOTAL_TRADES_BUY' := CURRENTWEEKTOTALTRADESBUY,
          'CURRENT_WEEK_TOTAL_TRADES_SELL' := CURRENTWEEKTOTALTRADESSELL,
          'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN' := CURRENTWEEKTOTALTRADESUNKNOWN,
          'CURRENT_WEEK_VOLUME' := CURRENTWEEKVOLUME,
          'CURRENT_WEEK_VOLUME_BUY' := CURRENTWEEKVOLUMEBUY,
          'CURRENT_WEEK_VOLUME_SELL' := CURRENTWEEKVOLUMESELL,
          'CURRENT_WEEK_VOLUME_UNKNOWN' := CURRENTWEEKVOLUMEUNKNOWN,
          'CURRENT_YEAR_HIGH' := CURRENTYEARHIGH,
          'CURRENT_YEAR_LOW' := CURRENTYEARLOW,
          'CURRENT_YEAR_OPEN' := CURRENTYEAROPEN,
          'CURRENT_YEAR_QUOTE_VOLUME' := CURRENTYEARQUOTEVOLUME,
          'CURRENT_YEAR_QUOTE_VOLUME_BUY' := CURRENTYEARQUOTEVOLUMEBUY,
          'CURRENT_YEAR_QUOTE_VOLUME_SELL' := CURRENTYEARQUOTEVOLUMESELL,
          'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN' := CURRENTYEARQUOTEVOLUMEUNKNOWN,
          'CURRENT_YEAR_TOTAL_TRADES' := CURRENTYEARTOTALTRADES,
          'CURRENT_YEAR_TOTAL_TRADES_BUY' := CURRENTYEARTOTALTRADESBUY,
          'CURRENT_YEAR_TOTAL_TRADES_SELL' := CURRENTYEARTOTALTRADESSELL,
          'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN' := CURRENTYEARTOTALTRADESUNKNOWN,
          'CURRENT_YEAR_VOLUME' := CURRENTYEARVOLUME,
          'CURRENT_YEAR_VOLUME_BUY' := CURRENTYEARVOLUMEBUY,
          'CURRENT_YEAR_VOLUME_SELL' := CURRENTYEARVOLUMESELL,
          'CURRENT_YEAR_VOLUME_UNKNOWN' := CURRENTYEARVOLUMEUNKNOWN,
          'INSTRUMENT' := INSTRUMENT,
          'LAST_PROCESSED_TRADE_CCSEQ' := LASTPROCESSEDTRADECCSEQ,
          'LAST_PROCESSED_TRADE_PRICE' := LASTPROCESSEDTRADEPRICE,
          'LAST_PROCESSED_TRADE_QUANTITY' := LASTPROCESSEDTRADEQUANTITY,
          'LAST_PROCESSED_TRADE_QUOTE_QUANTITY' := LASTPROCESSEDTRADEQUOTEQUANTITY,
          'LAST_PROCESSED_TRADE_SIDE' := LASTPROCESSEDTRADESIDE,
          'LAST_PROCESSED_TRADE_TS' := LASTPROCESSEDTRADETS,
          'LAST_TRADE_CCSEQ' := LASTTRADECCSEQ,
          'LAST_TRADE_ID' := LASTTRADEID,
          'LAST_TRADE_QUANTITY' := LASTTRADEQUANTITY,
          'LAST_TRADE_QUOTE_QUANTITY' := LASTTRADEQUOTEQUANTITY,
          'LAST_TRADE_SIDE' := LASTTRADESIDE,
          'LIFETIME_FIRST_TRADE_TS' := LIFETIMEFIRSTTRADETS,
          'LIFETIME_HIGH' := LIFETIMEHIGH,
          'LIFETIME_HIGH_TS' := LIFETIMEHIGHTS,
          'LIFETIME_LOW' := LIFETIMELOW,
          'LIFETIME_LOW_TS' := LIFETIMELOWTS,
          'LIFETIME_OPEN' := LIFETIMEOPEN,
          'LIFETIME_QUOTE_VOLUME' := LIFETIMEQUOTEVOLUME,
          'LIFETIME_QUOTE_VOLUME_BUY' := LIFETIMEQUOTEVOLUMEBUY,
          'LIFETIME_QUOTE_VOLUME_SELL' := LIFETIMEQUOTEVOLUMESELL,
          'LIFETIME_QUOTE_VOLUME_UNKNOWN' := LIFETIMEQUOTEVOLUMEUNKNOWN,
          'LIFETIME_TOTAL_TRADES' := LIFETIMETOTALTRADES,
          'LIFETIME_TOTAL_TRADES_BUY' := LIFETIMETOTALTRADESBUY,
          'LIFETIME_TOTAL_TRADES_SELL' := LIFETIMETOTALTRADESSELL,
          'LIFETIME_TOTAL_TRADES_UNKNOWN' := LIFETIMETOTALTRADESUNKNOWN,
          'LIFETIME_VOLUME' := LIFETIMEVOLUME,
          'LIFETIME_VOLUME_BUY' := LIFETIMEVOLUMEBUY,
          'LIFETIME_VOLUME_SELL' := LIFETIMEVOLUMESELL,
          'LIFETIME_VOLUME_UNKNOWN' := LIFETIMEVOLUMEUNKNOWN,
          'MAPPED_INSTRUMENT' := MAPPEDINSTRUMENT,
          'MARKET' := MARKET,
          'MOVING_180_DAY_HIGH' := MOVING180DAYHIGH,
          'MOVING_180_DAY_LOW' := MOVING180DAYLOW,
          'MOVING_180_DAY_OPEN' := MOVING180DAYOPEN,
          'MOVING_180_DAY_QUOTE_VOLUME' := MOVING180DAYQUOTEVOLUME,
          'MOVING_180_DAY_QUOTE_VOLUME_BUY' := MOVING180DAYQUOTEVOLUMEBUY,
          'MOVING_180_DAY_QUOTE_VOLUME_SELL' := MOVING180DAYQUOTEVOLUMESELL,
          'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN' := MOVING180DAYQUOTEVOLUMEUNKNOWN,
          'MOVING_180_DAY_TOTAL_TRADES' := MOVING180DAYTOTALTRADES,
          'MOVING_180_DAY_TOTAL_TRADES_BUY' := MOVING180DAYTOTALTRADESBUY,
          'MOVING_180_DAY_TOTAL_TRADES_SELL' := MOVING180DAYTOTALTRADESSELL,
          'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN' := MOVING180DAYTOTALTRADESUNKNOWN,
          'MOVING_180_DAY_VOLUME' := MOVING180DAYVOLUME,
          'MOVING_180_DAY_VOLUME_BUY' := MOVING180DAYVOLUMEBUY,
          'MOVING_180_DAY_VOLUME_SELL' := MOVING180DAYVOLUMESELL,
          'MOVING_180_DAY_VOLUME_UNKNOWN' := MOVING180DAYVOLUMEUNKNOWN,
          'MOVING_24_HOUR_HIGH' := MOVING24HOURHIGH,
          'MOVING_24_HOUR_LOW' := MOVING24HOURLOW,
          'MOVING_24_HOUR_OPEN' := MOVING24HOUROPEN,
          'MOVING_24_HOUR_QUOTE_VOLUME' := MOVING24HOURQUOTEVOLUME,
          'MOVING_24_HOUR_QUOTE_VOLUME_BUY' := MOVING24HOURQUOTEVOLUMEBUY,
          'MOVING_24_HOUR_QUOTE_VOLUME_SELL' := MOVING24HOURQUOTEVOLUMESELL,
          'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN' := MOVING24HOURQUOTEVOLUMEUNKNOWN,
          'MOVING_24_HOUR_TOTAL_TRADES' := MOVING24HOURTOTALTRADES,
          'MOVING_24_HOUR_TOTAL_TRADES_BUY' := MOVING24HOURTOTALTRADESBUY,
          'MOVING_24_HOUR_TOTAL_TRADES_SELL' := MOVING24HOURTOTALTRADESSELL,
          'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN' := MOVING24HOURTOTALTRADESUNKNOWN,
          'MOVING_24_HOUR_VOLUME' := MOVING24HOURVOLUME,
          'MOVING_24_HOUR_VOLUME_BUY' := MOVING24HOURVOLUMEBUY,
          'MOVING_24_HOUR_VOLUME_SELL' := MOVING24HOURVOLUMESELL,
          'MOVING_24_HOUR_VOLUME_UNKNOWN' := MOVING24HOURVOLUMEUNKNOWN,
          'MOVING_30_DAY_HIGH' := MOVING30DAYHIGH,
          'MOVING_30_DAY_LOW' := MOVING30DAYLOW,
          'MOVING_30_DAY_OPEN' := MOVING30DAYOPEN,
          'MOVING_30_DAY_QUOTE_VOLUME' := MOVING30DAYQUOTEVOLUME,
          'MOVING_30_DAY_QUOTE_VOLUME_BUY' := MOVING30DAYQUOTEVOLUMEBUY,
          'MOVING_30_DAY_QUOTE_VOLUME_SELL' := MOVING30DAYQUOTEVOLUMESELL,
          'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN' := MOVING30DAYQUOTEVOLUMEUNKNOWN,
          'MOVING_30_DAY_TOTAL_TRADES' := MOVING30DAYTOTALTRADES,
          'MOVING_30_DAY_TOTAL_TRADES_BUY' := MOVING30DAYTOTALTRADESBUY,
          'MOVING_30_DAY_TOTAL_TRADES_SELL' := MOVING30DAYTOTALTRADESSELL,
          'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN' := MOVING30DAYTOTALTRADESUNKNOWN,
          'MOVING_30_DAY_VOLUME' := MOVING30DAYVOLUME,
          'MOVING_30_DAY_VOLUME_BUY' := MOVING30DAYVOLUMEBUY,
          'MOVING_30_DAY_VOLUME_SELL' := MOVING30DAYVOLUMESELL,
          'MOVING_30_DAY_VOLUME_UNKNOWN' := MOVING30DAYVOLUMEUNKNOWN,
          'MOVING_365_DAY_HIGH' := MOVING365DAYHIGH,
          'MOVING_365_DAY_LOW' := MOVING365DAYLOW,
          'MOVING_365_DAY_OPEN' := MOVING365DAYOPEN,
          'MOVING_365_DAY_QUOTE_VOLUME' := MOVING365DAYQUOTEVOLUME,
          'MOVING_365_DAY_QUOTE_VOLUME_BUY' := MOVING365DAYQUOTEVOLUMEBUY,
          'MOVING_365_DAY_QUOTE_VOLUME_SELL' := MOVING365DAYQUOTEVOLUMESELL,
          'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN' := MOVING365DAYQUOTEVOLUMEUNKNOWN,
          'MOVING_365_DAY_TOTAL_TRADES' := MOVING365DAYTOTALTRADES,
          'MOVING_365_DAY_TOTAL_TRADES_BUY' := MOVING365DAYTOTALTRADESBUY,
          'MOVING_365_DAY_TOTAL_TRADES_SELL' := MOVING365DAYTOTALTRADESSELL,
          'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN' := MOVING365DAYTOTALTRADESUNKNOWN,
          'MOVING_365_DAY_VOLUME' := MOVING365DAYVOLUME,
          'MOVING_365_DAY_VOLUME_BUY' := MOVING365DAYVOLUMEBUY,
          'MOVING_365_DAY_VOLUME_SELL' := MOVING365DAYVOLUMESELL,
          'MOVING_365_DAY_VOLUME_UNKNOWN' := MOVING365DAYVOLUMEUNKNOWN,
          'MOVING_7_DAY_HIGH' := MOVING7DAYHIGH,
          'MOVING_7_DAY_LOW' := MOVING7DAYLOW,
          'MOVING_7_DAY_OPEN' := MOVING7DAYOPEN,
          'MOVING_7_DAY_QUOTE_VOLUME' := MOVING7DAYQUOTEVOLUME,
          'MOVING_7_DAY_QUOTE_VOLUME_BUY' := MOVING7DAYQUOTEVOLUMEBUY,
          'MOVING_7_DAY_QUOTE_VOLUME_SELL' := MOVING7DAYQUOTEVOLUMESELL,
          'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN' := MOVING7DAYQUOTEVOLUMEUNKNOWN,
          'MOVING_7_DAY_TOTAL_TRADES' := MOVING7DAYTOTALTRADES,
          'MOVING_7_DAY_TOTAL_TRADES_BUY' := MOVING7DAYTOTALTRADESBUY,
          'MOVING_7_DAY_TOTAL_TRADES_SELL' := MOVING7DAYTOTALTRADESSELL,
          'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN' := MOVING7DAYTOTALTRADESUNKNOWN,
          'MOVING_7_DAY_VOLUME' := MOVING7DAYVOLUME,
          'MOVING_7_DAY_VOLUME_BUY' := MOVING7DAYVOLUMEBUY,
          'MOVING_7_DAY_VOLUME_SELL' := MOVING7DAYVOLUMESELL,
          'MOVING_7_DAY_VOLUME_UNKNOWN' := MOVING7DAYVOLUMEUNKNOWN,
          'MOVING_90_DAY_HIGH' := MOVING90DAYHIGH,
          'MOVING_90_DAY_LOW' := MOVING90DAYLOW,
          'MOVING_90_DAY_OPEN' := MOVING90DAYOPEN,
          'MOVING_90_DAY_QUOTE_VOLUME' := MOVING90DAYQUOTEVOLUME,
          'MOVING_90_DAY_QUOTE_VOLUME_BUY' := MOVING90DAYQUOTEVOLUMEBUY,
          'MOVING_90_DAY_QUOTE_VOLUME_SELL' := MOVING90DAYQUOTEVOLUMESELL,
          'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN' := MOVING90DAYQUOTEVOLUMEUNKNOWN,
          'MOVING_90_DAY_TOTAL_TRADES' := MOVING90DAYTOTALTRADES,
          'MOVING_90_DAY_TOTAL_TRADES_BUY' := MOVING90DAYTOTALTRADESBUY,
          'MOVING_90_DAY_TOTAL_TRADES_SELL' := MOVING90DAYTOTALTRADESSELL,
          'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN' := MOVING90DAYTOTALTRADESUNKNOWN,
          'MOVING_90_DAY_VOLUME' := MOVING90DAYVOLUME,
          'MOVING_90_DAY_VOLUME_BUY' := MOVING90DAYVOLUMEBUY,
          'MOVING_90_DAY_VOLUME_SELL' := MOVING90DAYVOLUMESELL,
          'MOVING_90_DAY_VOLUME_UNKNOWN' := MOVING90DAYVOLUMEUNKNOWN,
          'PRICE' := PRICE,
          'PRICE_FLAG' := PRICEFLAG,
          'PRICE_LAST_UPDATE_TS' := PRICELASTUPDATETS,
          'QUOTE' := QUOTE,
          'TOP_ASK_LAST_UPDATE_TS' := TOPASKLASTUPDATETS,
          'TOP_ASK_PRICE' := TOPASKPRICE,
          'TOP_ASK_QUANTITY' := TOPASKQUANTITY,
          'TOP_BID_LAST_UPDATE_TS' := TOPBIDLASTUPDATETS,
          'TOP_BID_PRICE' := TOPBIDPRICE,
          'TOP_BID_QUANTITY' := TOPBIDQUANTITY,
          'TYPE' := TYPE
        }) ->
    #{ 'BASE' => BASE,
       'CCSEQ' => CCSEQ,
       'CURRENT_DAY_HIGH' => CURRENTDAYHIGH,
       'CURRENT_DAY_LOW' => CURRENTDAYLOW,
       'CURRENT_DAY_OPEN' => CURRENTDAYOPEN,
       'CURRENT_DAY_QUOTE_VOLUME' => CURRENTDAYQUOTEVOLUME,
       'CURRENT_DAY_QUOTE_VOLUME_BUY' => CURRENTDAYQUOTEVOLUMEBUY,
       'CURRENT_DAY_QUOTE_VOLUME_SELL' => CURRENTDAYQUOTEVOLUMESELL,
       'CURRENT_DAY_QUOTE_VOLUME_UNKNOWN' => CURRENTDAYQUOTEVOLUMEUNKNOWN,
       'CURRENT_DAY_TOTAL_TRADES' => CURRENTDAYTOTALTRADES,
       'CURRENT_DAY_TOTAL_TRADES_BUY' => CURRENTDAYTOTALTRADESBUY,
       'CURRENT_DAY_TOTAL_TRADES_SELL' => CURRENTDAYTOTALTRADESSELL,
       'CURRENT_DAY_TOTAL_TRADES_UNKNOWN' => CURRENTDAYTOTALTRADESUNKNOWN,
       'CURRENT_DAY_VOLUME' => CURRENTDAYVOLUME,
       'CURRENT_DAY_VOLUME_BUY' => CURRENTDAYVOLUMEBUY,
       'CURRENT_DAY_VOLUME_SELL' => CURRENTDAYVOLUMESELL,
       'CURRENT_DAY_VOLUME_UNKNOWN' => CURRENTDAYVOLUMEUNKNOWN,
       'CURRENT_HOUR_HIGH' => CURRENTHOURHIGH,
       'CURRENT_HOUR_LOW' => CURRENTHOURLOW,
       'CURRENT_HOUR_OPEN' => CURRENTHOUROPEN,
       'CURRENT_HOUR_QUOTE_VOLUME' => CURRENTHOURQUOTEVOLUME,
       'CURRENT_HOUR_QUOTE_VOLUME_BUY' => CURRENTHOURQUOTEVOLUMEBUY,
       'CURRENT_HOUR_QUOTE_VOLUME_SELL' => CURRENTHOURQUOTEVOLUMESELL,
       'CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN' => CURRENTHOURQUOTEVOLUMEUNKNOWN,
       'CURRENT_HOUR_TOTAL_TRADES' => CURRENTHOURTOTALTRADES,
       'CURRENT_HOUR_TOTAL_TRADES_BUY' => CURRENTHOURTOTALTRADESBUY,
       'CURRENT_HOUR_TOTAL_TRADES_SELL' => CURRENTHOURTOTALTRADESSELL,
       'CURRENT_HOUR_TOTAL_TRADES_UNKNOWN' => CURRENTHOURTOTALTRADESUNKNOWN,
       'CURRENT_HOUR_VOLUME' => CURRENTHOURVOLUME,
       'CURRENT_HOUR_VOLUME_BUY' => CURRENTHOURVOLUMEBUY,
       'CURRENT_HOUR_VOLUME_SELL' => CURRENTHOURVOLUMESELL,
       'CURRENT_HOUR_VOLUME_UNKNOWN' => CURRENTHOURVOLUMEUNKNOWN,
       'CURRENT_MONTH_HIGH' => CURRENTMONTHHIGH,
       'CURRENT_MONTH_LOW' => CURRENTMONTHLOW,
       'CURRENT_MONTH_OPEN' => CURRENTMONTHOPEN,
       'CURRENT_MONTH_QUOTE_VOLUME' => CURRENTMONTHQUOTEVOLUME,
       'CURRENT_MONTH_QUOTE_VOLUME_BUY' => CURRENTMONTHQUOTEVOLUMEBUY,
       'CURRENT_MONTH_QUOTE_VOLUME_SELL' => CURRENTMONTHQUOTEVOLUMESELL,
       'CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN' => CURRENTMONTHQUOTEVOLUMEUNKNOWN,
       'CURRENT_MONTH_TOTAL_TRADES' => CURRENTMONTHTOTALTRADES,
       'CURRENT_MONTH_TOTAL_TRADES_BUY' => CURRENTMONTHTOTALTRADESBUY,
       'CURRENT_MONTH_TOTAL_TRADES_SELL' => CURRENTMONTHTOTALTRADESSELL,
       'CURRENT_MONTH_TOTAL_TRADES_UNKNOWN' => CURRENTMONTHTOTALTRADESUNKNOWN,
       'CURRENT_MONTH_VOLUME' => CURRENTMONTHVOLUME,
       'CURRENT_MONTH_VOLUME_BUY' => CURRENTMONTHVOLUMEBUY,
       'CURRENT_MONTH_VOLUME_SELL' => CURRENTMONTHVOLUMESELL,
       'CURRENT_MONTH_VOLUME_UNKNOWN' => CURRENTMONTHVOLUMEUNKNOWN,
       'CURRENT_WEEK_HIGH' => CURRENTWEEKHIGH,
       'CURRENT_WEEK_LOW' => CURRENTWEEKLOW,
       'CURRENT_WEEK_OPEN' => CURRENTWEEKOPEN,
       'CURRENT_WEEK_QUOTE_VOLUME' => CURRENTWEEKQUOTEVOLUME,
       'CURRENT_WEEK_QUOTE_VOLUME_BUY' => CURRENTWEEKQUOTEVOLUMEBUY,
       'CURRENT_WEEK_QUOTE_VOLUME_SELL' => CURRENTWEEKQUOTEVOLUMESELL,
       'CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN' => CURRENTWEEKQUOTEVOLUMEUNKNOWN,
       'CURRENT_WEEK_TOTAL_TRADES' => CURRENTWEEKTOTALTRADES,
       'CURRENT_WEEK_TOTAL_TRADES_BUY' => CURRENTWEEKTOTALTRADESBUY,
       'CURRENT_WEEK_TOTAL_TRADES_SELL' => CURRENTWEEKTOTALTRADESSELL,
       'CURRENT_WEEK_TOTAL_TRADES_UNKNOWN' => CURRENTWEEKTOTALTRADESUNKNOWN,
       'CURRENT_WEEK_VOLUME' => CURRENTWEEKVOLUME,
       'CURRENT_WEEK_VOLUME_BUY' => CURRENTWEEKVOLUMEBUY,
       'CURRENT_WEEK_VOLUME_SELL' => CURRENTWEEKVOLUMESELL,
       'CURRENT_WEEK_VOLUME_UNKNOWN' => CURRENTWEEKVOLUMEUNKNOWN,
       'CURRENT_YEAR_HIGH' => CURRENTYEARHIGH,
       'CURRENT_YEAR_LOW' => CURRENTYEARLOW,
       'CURRENT_YEAR_OPEN' => CURRENTYEAROPEN,
       'CURRENT_YEAR_QUOTE_VOLUME' => CURRENTYEARQUOTEVOLUME,
       'CURRENT_YEAR_QUOTE_VOLUME_BUY' => CURRENTYEARQUOTEVOLUMEBUY,
       'CURRENT_YEAR_QUOTE_VOLUME_SELL' => CURRENTYEARQUOTEVOLUMESELL,
       'CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN' => CURRENTYEARQUOTEVOLUMEUNKNOWN,
       'CURRENT_YEAR_TOTAL_TRADES' => CURRENTYEARTOTALTRADES,
       'CURRENT_YEAR_TOTAL_TRADES_BUY' => CURRENTYEARTOTALTRADESBUY,
       'CURRENT_YEAR_TOTAL_TRADES_SELL' => CURRENTYEARTOTALTRADESSELL,
       'CURRENT_YEAR_TOTAL_TRADES_UNKNOWN' => CURRENTYEARTOTALTRADESUNKNOWN,
       'CURRENT_YEAR_VOLUME' => CURRENTYEARVOLUME,
       'CURRENT_YEAR_VOLUME_BUY' => CURRENTYEARVOLUMEBUY,
       'CURRENT_YEAR_VOLUME_SELL' => CURRENTYEARVOLUMESELL,
       'CURRENT_YEAR_VOLUME_UNKNOWN' => CURRENTYEARVOLUMEUNKNOWN,
       'INSTRUMENT' => INSTRUMENT,
       'LAST_PROCESSED_TRADE_CCSEQ' => LASTPROCESSEDTRADECCSEQ,
       'LAST_PROCESSED_TRADE_PRICE' => LASTPROCESSEDTRADEPRICE,
       'LAST_PROCESSED_TRADE_QUANTITY' => LASTPROCESSEDTRADEQUANTITY,
       'LAST_PROCESSED_TRADE_QUOTE_QUANTITY' => LASTPROCESSEDTRADEQUOTEQUANTITY,
       'LAST_PROCESSED_TRADE_SIDE' => LASTPROCESSEDTRADESIDE,
       'LAST_PROCESSED_TRADE_TS' => LASTPROCESSEDTRADETS,
       'LAST_TRADE_CCSEQ' => LASTTRADECCSEQ,
       'LAST_TRADE_ID' => LASTTRADEID,
       'LAST_TRADE_QUANTITY' => LASTTRADEQUANTITY,
       'LAST_TRADE_QUOTE_QUANTITY' => LASTTRADEQUOTEQUANTITY,
       'LAST_TRADE_SIDE' => LASTTRADESIDE,
       'LIFETIME_FIRST_TRADE_TS' => LIFETIMEFIRSTTRADETS,
       'LIFETIME_HIGH' => LIFETIMEHIGH,
       'LIFETIME_HIGH_TS' => LIFETIMEHIGHTS,
       'LIFETIME_LOW' => LIFETIMELOW,
       'LIFETIME_LOW_TS' => LIFETIMELOWTS,
       'LIFETIME_OPEN' => LIFETIMEOPEN,
       'LIFETIME_QUOTE_VOLUME' => LIFETIMEQUOTEVOLUME,
       'LIFETIME_QUOTE_VOLUME_BUY' => LIFETIMEQUOTEVOLUMEBUY,
       'LIFETIME_QUOTE_VOLUME_SELL' => LIFETIMEQUOTEVOLUMESELL,
       'LIFETIME_QUOTE_VOLUME_UNKNOWN' => LIFETIMEQUOTEVOLUMEUNKNOWN,
       'LIFETIME_TOTAL_TRADES' => LIFETIMETOTALTRADES,
       'LIFETIME_TOTAL_TRADES_BUY' => LIFETIMETOTALTRADESBUY,
       'LIFETIME_TOTAL_TRADES_SELL' => LIFETIMETOTALTRADESSELL,
       'LIFETIME_TOTAL_TRADES_UNKNOWN' => LIFETIMETOTALTRADESUNKNOWN,
       'LIFETIME_VOLUME' => LIFETIMEVOLUME,
       'LIFETIME_VOLUME_BUY' => LIFETIMEVOLUMEBUY,
       'LIFETIME_VOLUME_SELL' => LIFETIMEVOLUMESELL,
       'LIFETIME_VOLUME_UNKNOWN' => LIFETIMEVOLUMEUNKNOWN,
       'MAPPED_INSTRUMENT' => MAPPEDINSTRUMENT,
       'MARKET' => MARKET,
       'MOVING_180_DAY_HIGH' => MOVING180DAYHIGH,
       'MOVING_180_DAY_LOW' => MOVING180DAYLOW,
       'MOVING_180_DAY_OPEN' => MOVING180DAYOPEN,
       'MOVING_180_DAY_QUOTE_VOLUME' => MOVING180DAYQUOTEVOLUME,
       'MOVING_180_DAY_QUOTE_VOLUME_BUY' => MOVING180DAYQUOTEVOLUMEBUY,
       'MOVING_180_DAY_QUOTE_VOLUME_SELL' => MOVING180DAYQUOTEVOLUMESELL,
       'MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN' => MOVING180DAYQUOTEVOLUMEUNKNOWN,
       'MOVING_180_DAY_TOTAL_TRADES' => MOVING180DAYTOTALTRADES,
       'MOVING_180_DAY_TOTAL_TRADES_BUY' => MOVING180DAYTOTALTRADESBUY,
       'MOVING_180_DAY_TOTAL_TRADES_SELL' => MOVING180DAYTOTALTRADESSELL,
       'MOVING_180_DAY_TOTAL_TRADES_UNKNOWN' => MOVING180DAYTOTALTRADESUNKNOWN,
       'MOVING_180_DAY_VOLUME' => MOVING180DAYVOLUME,
       'MOVING_180_DAY_VOLUME_BUY' => MOVING180DAYVOLUMEBUY,
       'MOVING_180_DAY_VOLUME_SELL' => MOVING180DAYVOLUMESELL,
       'MOVING_180_DAY_VOLUME_UNKNOWN' => MOVING180DAYVOLUMEUNKNOWN,
       'MOVING_24_HOUR_HIGH' => MOVING24HOURHIGH,
       'MOVING_24_HOUR_LOW' => MOVING24HOURLOW,
       'MOVING_24_HOUR_OPEN' => MOVING24HOUROPEN,
       'MOVING_24_HOUR_QUOTE_VOLUME' => MOVING24HOURQUOTEVOLUME,
       'MOVING_24_HOUR_QUOTE_VOLUME_BUY' => MOVING24HOURQUOTEVOLUMEBUY,
       'MOVING_24_HOUR_QUOTE_VOLUME_SELL' => MOVING24HOURQUOTEVOLUMESELL,
       'MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN' => MOVING24HOURQUOTEVOLUMEUNKNOWN,
       'MOVING_24_HOUR_TOTAL_TRADES' => MOVING24HOURTOTALTRADES,
       'MOVING_24_HOUR_TOTAL_TRADES_BUY' => MOVING24HOURTOTALTRADESBUY,
       'MOVING_24_HOUR_TOTAL_TRADES_SELL' => MOVING24HOURTOTALTRADESSELL,
       'MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN' => MOVING24HOURTOTALTRADESUNKNOWN,
       'MOVING_24_HOUR_VOLUME' => MOVING24HOURVOLUME,
       'MOVING_24_HOUR_VOLUME_BUY' => MOVING24HOURVOLUMEBUY,
       'MOVING_24_HOUR_VOLUME_SELL' => MOVING24HOURVOLUMESELL,
       'MOVING_24_HOUR_VOLUME_UNKNOWN' => MOVING24HOURVOLUMEUNKNOWN,
       'MOVING_30_DAY_HIGH' => MOVING30DAYHIGH,
       'MOVING_30_DAY_LOW' => MOVING30DAYLOW,
       'MOVING_30_DAY_OPEN' => MOVING30DAYOPEN,
       'MOVING_30_DAY_QUOTE_VOLUME' => MOVING30DAYQUOTEVOLUME,
       'MOVING_30_DAY_QUOTE_VOLUME_BUY' => MOVING30DAYQUOTEVOLUMEBUY,
       'MOVING_30_DAY_QUOTE_VOLUME_SELL' => MOVING30DAYQUOTEVOLUMESELL,
       'MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN' => MOVING30DAYQUOTEVOLUMEUNKNOWN,
       'MOVING_30_DAY_TOTAL_TRADES' => MOVING30DAYTOTALTRADES,
       'MOVING_30_DAY_TOTAL_TRADES_BUY' => MOVING30DAYTOTALTRADESBUY,
       'MOVING_30_DAY_TOTAL_TRADES_SELL' => MOVING30DAYTOTALTRADESSELL,
       'MOVING_30_DAY_TOTAL_TRADES_UNKNOWN' => MOVING30DAYTOTALTRADESUNKNOWN,
       'MOVING_30_DAY_VOLUME' => MOVING30DAYVOLUME,
       'MOVING_30_DAY_VOLUME_BUY' => MOVING30DAYVOLUMEBUY,
       'MOVING_30_DAY_VOLUME_SELL' => MOVING30DAYVOLUMESELL,
       'MOVING_30_DAY_VOLUME_UNKNOWN' => MOVING30DAYVOLUMEUNKNOWN,
       'MOVING_365_DAY_HIGH' => MOVING365DAYHIGH,
       'MOVING_365_DAY_LOW' => MOVING365DAYLOW,
       'MOVING_365_DAY_OPEN' => MOVING365DAYOPEN,
       'MOVING_365_DAY_QUOTE_VOLUME' => MOVING365DAYQUOTEVOLUME,
       'MOVING_365_DAY_QUOTE_VOLUME_BUY' => MOVING365DAYQUOTEVOLUMEBUY,
       'MOVING_365_DAY_QUOTE_VOLUME_SELL' => MOVING365DAYQUOTEVOLUMESELL,
       'MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN' => MOVING365DAYQUOTEVOLUMEUNKNOWN,
       'MOVING_365_DAY_TOTAL_TRADES' => MOVING365DAYTOTALTRADES,
       'MOVING_365_DAY_TOTAL_TRADES_BUY' => MOVING365DAYTOTALTRADESBUY,
       'MOVING_365_DAY_TOTAL_TRADES_SELL' => MOVING365DAYTOTALTRADESSELL,
       'MOVING_365_DAY_TOTAL_TRADES_UNKNOWN' => MOVING365DAYTOTALTRADESUNKNOWN,
       'MOVING_365_DAY_VOLUME' => MOVING365DAYVOLUME,
       'MOVING_365_DAY_VOLUME_BUY' => MOVING365DAYVOLUMEBUY,
       'MOVING_365_DAY_VOLUME_SELL' => MOVING365DAYVOLUMESELL,
       'MOVING_365_DAY_VOLUME_UNKNOWN' => MOVING365DAYVOLUMEUNKNOWN,
       'MOVING_7_DAY_HIGH' => MOVING7DAYHIGH,
       'MOVING_7_DAY_LOW' => MOVING7DAYLOW,
       'MOVING_7_DAY_OPEN' => MOVING7DAYOPEN,
       'MOVING_7_DAY_QUOTE_VOLUME' => MOVING7DAYQUOTEVOLUME,
       'MOVING_7_DAY_QUOTE_VOLUME_BUY' => MOVING7DAYQUOTEVOLUMEBUY,
       'MOVING_7_DAY_QUOTE_VOLUME_SELL' => MOVING7DAYQUOTEVOLUMESELL,
       'MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN' => MOVING7DAYQUOTEVOLUMEUNKNOWN,
       'MOVING_7_DAY_TOTAL_TRADES' => MOVING7DAYTOTALTRADES,
       'MOVING_7_DAY_TOTAL_TRADES_BUY' => MOVING7DAYTOTALTRADESBUY,
       'MOVING_7_DAY_TOTAL_TRADES_SELL' => MOVING7DAYTOTALTRADESSELL,
       'MOVING_7_DAY_TOTAL_TRADES_UNKNOWN' => MOVING7DAYTOTALTRADESUNKNOWN,
       'MOVING_7_DAY_VOLUME' => MOVING7DAYVOLUME,
       'MOVING_7_DAY_VOLUME_BUY' => MOVING7DAYVOLUMEBUY,
       'MOVING_7_DAY_VOLUME_SELL' => MOVING7DAYVOLUMESELL,
       'MOVING_7_DAY_VOLUME_UNKNOWN' => MOVING7DAYVOLUMEUNKNOWN,
       'MOVING_90_DAY_HIGH' => MOVING90DAYHIGH,
       'MOVING_90_DAY_LOW' => MOVING90DAYLOW,
       'MOVING_90_DAY_OPEN' => MOVING90DAYOPEN,
       'MOVING_90_DAY_QUOTE_VOLUME' => MOVING90DAYQUOTEVOLUME,
       'MOVING_90_DAY_QUOTE_VOLUME_BUY' => MOVING90DAYQUOTEVOLUMEBUY,
       'MOVING_90_DAY_QUOTE_VOLUME_SELL' => MOVING90DAYQUOTEVOLUMESELL,
       'MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN' => MOVING90DAYQUOTEVOLUMEUNKNOWN,
       'MOVING_90_DAY_TOTAL_TRADES' => MOVING90DAYTOTALTRADES,
       'MOVING_90_DAY_TOTAL_TRADES_BUY' => MOVING90DAYTOTALTRADESBUY,
       'MOVING_90_DAY_TOTAL_TRADES_SELL' => MOVING90DAYTOTALTRADESSELL,
       'MOVING_90_DAY_TOTAL_TRADES_UNKNOWN' => MOVING90DAYTOTALTRADESUNKNOWN,
       'MOVING_90_DAY_VOLUME' => MOVING90DAYVOLUME,
       'MOVING_90_DAY_VOLUME_BUY' => MOVING90DAYVOLUMEBUY,
       'MOVING_90_DAY_VOLUME_SELL' => MOVING90DAYVOLUMESELL,
       'MOVING_90_DAY_VOLUME_UNKNOWN' => MOVING90DAYVOLUMEUNKNOWN,
       'PRICE' => PRICE,
       'PRICE_FLAG' => PRICEFLAG,
       'PRICE_LAST_UPDATE_TS' => PRICELASTUPDATETS,
       'QUOTE' => QUOTE,
       'TOP_ASK_LAST_UPDATE_TS' => TOPASKLASTUPDATETS,
       'TOP_ASK_PRICE' => TOPASKPRICE,
       'TOP_ASK_QUANTITY' => TOPASKQUANTITY,
       'TOP_BID_LAST_UPDATE_TS' => TOPBIDLASTUPDATETS,
       'TOP_BID_PRICE' => TOPBIDPRICE,
       'TOP_BID_QUANTITY' => TOPBIDQUANTITY,
       'TYPE' => TYPE
     }.
