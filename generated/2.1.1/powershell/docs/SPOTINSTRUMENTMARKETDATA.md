# SPOTINSTRUMENTMARKETDATA
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | **String** | The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped. | [optional] 
**CCSEQ** | **Int32** | Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send. | [optional] 
**CURRENTDAYHIGH** | **Int32** | The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENTDAYLOW** | **Int32** | The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENTDAYOPEN** | **Int32** | The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset. | [optional] 
**CURRENTDAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENTDAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENTDAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENTDAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset. | [optional] 
**CURRENTDAYTOTALTRADES** | **Int32** | The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENTDAYTOTALTRADESBUY** | **Int32** | The total number of buy trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENTDAYTOTALTRADESSELL** | **Int32** | The total number of sell trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENTDAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC). | [optional] 
**CURRENTDAYVOLUME** | **Int32** | The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENTDAYVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENTDAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENTDAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset. | [optional] 
**CURRENTHOURHIGH** | **Int32** | The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENTHOURLOW** | **Int32** | The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset. | [optional] 
**CURRENTHOUROPEN** | **Int32** | The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset. | [optional] 
**CURRENTHOURQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENTHOURQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENTHOURQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENTHOURQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset. | [optional] 
**CURRENTHOURTOTALTRADES** | **Int32** | The total number of trades that have occurred since the start of the current hour. | [optional] 
**CURRENTHOURTOTALTRADESBUY** | **Int32** | The total number of buy trades since the start of the current hour. | [optional] 
**CURRENTHOURTOTALTRADESSELL** | **Int32** | The total number of sell trades since the start of the current hour. | [optional] 
**CURRENTHOURTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades since the start of the current hour. | [optional] 
**CURRENTHOURVOLUME** | **Int32** | The sum of all trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENTHOURVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENTHOURVOLUMESELL** | **Int32** | The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENTHOURVOLUMEUNKNOWN** | **Int32** | The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset. | [optional] 
**CURRENTMONTHHIGH** | **Int32** | The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. | [optional] 
**CURRENTMONTHLOW** | **Int32** | The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset. | [optional] 
**CURRENTMONTHOPEN** | **Int32** | The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset. | [optional] 
**CURRENTMONTHQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTMONTHQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTMONTHQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTMONTHQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTMONTHTOTALTRADES** | **Int32** | The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENTMONTHTOTALTRADESBUY** | **Int32** | The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENTMONTHTOTALTRADESSELL** | **Int32** | The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENTMONTHTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0. | [optional] 
**CURRENTMONTHVOLUME** | **Int32** | The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENTMONTHVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENTMONTHVOLUMESELL** | **Int32** | The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENTMONTHVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset. | [optional] 
**CURRENTWEEKHIGH** | **Int32** | The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset. | [optional] 
**CURRENTWEEKLOW** | **Int32** | The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset. | [optional] 
**CURRENTWEEKOPEN** | **Int32** | The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset. | [optional] 
**CURRENTWEEKQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTWEEKQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTWEEKQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTWEEKQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTWEEKTOTALTRADES** | **Int32** | The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENTWEEKTOTALTRADESBUY** | **Int32** | The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENTWEEKTOTALTRADESSELL** | **Int32** | The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENTWEEKTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. | [optional] 
**CURRENTWEEKVOLUME** | **Int32** | The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENTWEEKVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENTWEEKVOLUMESELL** | **Int32** | The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENTWEEKVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset. | [optional] 
**CURRENTYEARHIGH** | **Int32** | The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. | [optional] 
**CURRENTYEARLOW** | **Int32** | The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset. | [optional] 
**CURRENTYEAROPEN** | **Int32** | The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset. | [optional] 
**CURRENTYEARQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTYEARQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTYEARQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTYEARQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset. | [optional] 
**CURRENTYEARTOTALTRADES** | **Int32** | The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENTYEARTOTALTRADESBUY** | **Int32** | The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENTYEARTOTALTRADESSELL** | **Int32** | The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENTYEARTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. | [optional] 
**CURRENTYEARVOLUME** | **Int32** | The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENTYEARVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENTYEARVOLUMESELL** | **Int32** | The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**CURRENTYEARVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset. | [optional] 
**INSTRUMENT** | **String** | The unmapped instrument ID | [optional] 
**LASTPROCESSEDTRADECCSEQ** | **String** | The CCSEQ of the latest trade. | [optional] 
**LASTPROCESSEDTRADEPRICE** | **Int32** | The price in the quote asset of the last trade processed, as reported by the market / exchange. | [optional] 
**LASTPROCESSEDTRADEQUANTITY** | **Int32** | The quantity of the last processed trade in the from symbol (base / coin). | [optional] 
**LASTPROCESSEDTRADEQUOTEQUANTITY** | **Int32** | The  volume of the last processed trade in the to asset / quote. | [optional] 
**LASTPROCESSEDTRADESIDE** | **String** | The side of the last processed trade. | [optional] 
**LASTPROCESSEDTRADETS** | **Int32** | The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned. | [optional] 
**LASTTRADECCSEQ** | **String** | The CCSEQ of the latest trade. | [optional] 
**LASTTRADEID** | **String** | The ID of the latest trade. | [optional] 
**LASTTRADEQUANTITY** | **Int32** | The quantity of the latest trade in the from symbol (base / coin). | [optional] 
**LASTTRADEQUOTEQUANTITY** | **Int32** | The volume of the latest trade in the to asset / quote. | [optional] 
**LASTTRADESIDE** | **String** | The side of the latest trade. | [optional] 
**LIFETIMEFIRSTTRADETS** | **Int32** | The timestamp of the first trade ever recorded for the instrument | [optional] 
**LIFETIMEHIGH** | **Int32** | The price of the highest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIMEHIGHTS** | **Int32** | The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIMELOW** | **Int32** | The price of the lowest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIMELOWTS** | **Int32** | The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset. | [optional] 
**LIFETIMEOPEN** | **Int32** | The price of the first trade of the instrument. Given in the quote asset. | [optional] 
**LIFETIMEQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIMEQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIMEQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIMEQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset. | [optional] 
**LIFETIMETOTALTRADES** | **Int32** | The total number of all trades that have ever been executed for this instrument. | [optional] 
**LIFETIMETOTALTRADESBUY** | **Int32** | The total number of all buy trades that have ever been executed for this instrument. | [optional] 
**LIFETIMETOTALTRADESSELL** | **Int32** | The total number of all sell trades that have ever been executed for this instrument. | [optional] 
**LIFETIMETOTALTRADESUNKNOWN** | **Int32** | The total number of all unknown trades that have ever been executed for this instrument. | [optional] 
**LIFETIMEVOLUME** | **Int32** | The sum of all trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIMEVOLUMEBUY** | **Int32** | The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIMEVOLUMESELL** | **Int32** | The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**LIFETIMEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset. | [optional] 
**MAPPEDINSTRUMENT** | **String** | The mapped instrument ID, derived from our mapping rules. This takes the form: &quot;&quot;BASE-QUOTE&quot;&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**MARKET** | **String** | The market / exchange under consideration (e.g. coinbase, kraken, etc). | [optional] 
**MOVING180DAYHIGH** | **Int32** | The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYOPEN** | **Int32** | The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset. | [optional] 
**MOVING180DAYTOTALTRADES** | **Int32** | The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total). | [optional] 
**MOVING180DAYVOLUME** | **Int32** | The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMEBUY** | **Int32** | The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING180DAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset. | [optional] 
**MOVING24HOURHIGH** | **Int32** | The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOUROPEN** | **Int32** | The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset. | [optional] 
**MOVING24HOURTOTALTRADES** | **Int32** | The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total). | [optional] 
**MOVING24HOURVOLUME** | **Int32** | The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING24HOURVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset. | [optional] 
**MOVING30DAYHIGH** | **Int32** | The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYOPEN** | **Int32** | The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset. | [optional] 
**MOVING30DAYTOTALTRADES** | **Int32** | The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total). | [optional] 
**MOVING30DAYVOLUME** | **Int32** | The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING30DAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset. | [optional] 
**MOVING365DAYHIGH** | **Int32** | The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYOPEN** | **Int32** | The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset. | [optional] 
**MOVING365DAYTOTALTRADES** | **Int32** | The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total). | [optional] 
**MOVING365DAYVOLUME** | **Int32** | The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMEBUY** | **Int32** | The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING365DAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset. | [optional] 
**MOVING7DAYHIGH** | **Int32** | The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYOPEN** | **Int32** | The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset. | [optional] 
**MOVING7DAYTOTALTRADES** | **Int32** | The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total). | [optional] 
**MOVING7DAYVOLUME** | **Int32** | The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMEBUY** | **Int32** | The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING7DAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset. | [optional] 
**MOVING90DAYHIGH** | **Int32** | The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYLOW** | **Int32** | The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYOPEN** | **Int32** | The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUME** | **Int32** | The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMEBUY** | **Int32** | The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMESELL** | **Int32** | The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYQUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset. | [optional] 
**MOVING90DAYTOTALTRADES** | **Int32** | The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESBUY** | **Int32** | The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESSELL** | **Int32** | The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYTOTALTRADESUNKNOWN** | **Int32** | The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total). | [optional] 
**MOVING90DAYVOLUME** | **Int32** | The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMEBUY** | **Int32** | The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMESELL** | **Int32** | The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**MOVING90DAYVOLUMEUNKNOWN** | **Int32** | The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset. | [optional] 
**PRICE** | **Int32** | The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD). | [optional] 
**PRICEFLAG** | **String** | The flag indicating whether the price has increased, decreased, or not changed | [optional] 
**PRICELASTUPDATETS** | **Int32** | The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned. | [optional] 
**QUOTE** | **String** | The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped. | [optional] 
**TOPASKLASTUPDATETS** | **Int32** | The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. | [optional] 
**TOPASKPRICE** | **Int32** | The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC. | [optional] 
**TOPASKQUANTITY** | **Int32** | The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price. | [optional] 
**TOPBIDLASTUPDATETS** | **Int32** | The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned. | [optional] 
**TOPBIDPRICE** | **Int32** | The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC. | [optional] 
**TOPBIDQUANTITY** | **Int32** | The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price. | [optional] 
**TYPE** | **String** | The type of the message. | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTMARKETDATA = Initialize-PSOpenAPIToolsSPOTINSTRUMENTMARKETDATA  -BASE null `
 -CCSEQ null `
 -CURRENTDAYHIGH null `
 -CURRENTDAYLOW null `
 -CURRENTDAYOPEN null `
 -CURRENTDAYQUOTEVOLUME null `
 -CURRENTDAYQUOTEVOLUMEBUY null `
 -CURRENTDAYQUOTEVOLUMESELL null `
 -CURRENTDAYQUOTEVOLUMEUNKNOWN null `
 -CURRENTDAYTOTALTRADES null `
 -CURRENTDAYTOTALTRADESBUY null `
 -CURRENTDAYTOTALTRADESSELL null `
 -CURRENTDAYTOTALTRADESUNKNOWN null `
 -CURRENTDAYVOLUME null `
 -CURRENTDAYVOLUMEBUY null `
 -CURRENTDAYVOLUMESELL null `
 -CURRENTDAYVOLUMEUNKNOWN null `
 -CURRENTHOURHIGH null `
 -CURRENTHOURLOW null `
 -CURRENTHOUROPEN null `
 -CURRENTHOURQUOTEVOLUME null `
 -CURRENTHOURQUOTEVOLUMEBUY null `
 -CURRENTHOURQUOTEVOLUMESELL null `
 -CURRENTHOURQUOTEVOLUMEUNKNOWN null `
 -CURRENTHOURTOTALTRADES null `
 -CURRENTHOURTOTALTRADESBUY null `
 -CURRENTHOURTOTALTRADESSELL null `
 -CURRENTHOURTOTALTRADESUNKNOWN null `
 -CURRENTHOURVOLUME null `
 -CURRENTHOURVOLUMEBUY null `
 -CURRENTHOURVOLUMESELL null `
 -CURRENTHOURVOLUMEUNKNOWN null `
 -CURRENTMONTHHIGH null `
 -CURRENTMONTHLOW null `
 -CURRENTMONTHOPEN null `
 -CURRENTMONTHQUOTEVOLUME null `
 -CURRENTMONTHQUOTEVOLUMEBUY null `
 -CURRENTMONTHQUOTEVOLUMESELL null `
 -CURRENTMONTHQUOTEVOLUMEUNKNOWN null `
 -CURRENTMONTHTOTALTRADES null `
 -CURRENTMONTHTOTALTRADESBUY null `
 -CURRENTMONTHTOTALTRADESSELL null `
 -CURRENTMONTHTOTALTRADESUNKNOWN null `
 -CURRENTMONTHVOLUME null `
 -CURRENTMONTHVOLUMEBUY null `
 -CURRENTMONTHVOLUMESELL null `
 -CURRENTMONTHVOLUMEUNKNOWN null `
 -CURRENTWEEKHIGH null `
 -CURRENTWEEKLOW null `
 -CURRENTWEEKOPEN null `
 -CURRENTWEEKQUOTEVOLUME null `
 -CURRENTWEEKQUOTEVOLUMEBUY null `
 -CURRENTWEEKQUOTEVOLUMESELL null `
 -CURRENTWEEKQUOTEVOLUMEUNKNOWN null `
 -CURRENTWEEKTOTALTRADES null `
 -CURRENTWEEKTOTALTRADESBUY null `
 -CURRENTWEEKTOTALTRADESSELL null `
 -CURRENTWEEKTOTALTRADESUNKNOWN null `
 -CURRENTWEEKVOLUME null `
 -CURRENTWEEKVOLUMEBUY null `
 -CURRENTWEEKVOLUMESELL null `
 -CURRENTWEEKVOLUMEUNKNOWN null `
 -CURRENTYEARHIGH null `
 -CURRENTYEARLOW null `
 -CURRENTYEAROPEN null `
 -CURRENTYEARQUOTEVOLUME null `
 -CURRENTYEARQUOTEVOLUMEBUY null `
 -CURRENTYEARQUOTEVOLUMESELL null `
 -CURRENTYEARQUOTEVOLUMEUNKNOWN null `
 -CURRENTYEARTOTALTRADES null `
 -CURRENTYEARTOTALTRADESBUY null `
 -CURRENTYEARTOTALTRADESSELL null `
 -CURRENTYEARTOTALTRADESUNKNOWN null `
 -CURRENTYEARVOLUME null `
 -CURRENTYEARVOLUMEBUY null `
 -CURRENTYEARVOLUMESELL null `
 -CURRENTYEARVOLUMEUNKNOWN null `
 -INSTRUMENT null `
 -LASTPROCESSEDTRADECCSEQ null `
 -LASTPROCESSEDTRADEPRICE null `
 -LASTPROCESSEDTRADEQUANTITY null `
 -LASTPROCESSEDTRADEQUOTEQUANTITY null `
 -LASTPROCESSEDTRADESIDE null `
 -LASTPROCESSEDTRADETS null `
 -LASTTRADECCSEQ null `
 -LASTTRADEID null `
 -LASTTRADEQUANTITY null `
 -LASTTRADEQUOTEQUANTITY null `
 -LASTTRADESIDE null `
 -LIFETIMEFIRSTTRADETS null `
 -LIFETIMEHIGH null `
 -LIFETIMEHIGHTS null `
 -LIFETIMELOW null `
 -LIFETIMELOWTS null `
 -LIFETIMEOPEN null `
 -LIFETIMEQUOTEVOLUME null `
 -LIFETIMEQUOTEVOLUMEBUY null `
 -LIFETIMEQUOTEVOLUMESELL null `
 -LIFETIMEQUOTEVOLUMEUNKNOWN null `
 -LIFETIMETOTALTRADES null `
 -LIFETIMETOTALTRADESBUY null `
 -LIFETIMETOTALTRADESSELL null `
 -LIFETIMETOTALTRADESUNKNOWN null `
 -LIFETIMEVOLUME null `
 -LIFETIMEVOLUMEBUY null `
 -LIFETIMEVOLUMESELL null `
 -LIFETIMEVOLUMEUNKNOWN null `
 -MAPPEDINSTRUMENT null `
 -MARKET null `
 -MOVING180DAYHIGH null `
 -MOVING180DAYLOW null `
 -MOVING180DAYOPEN null `
 -MOVING180DAYQUOTEVOLUME null `
 -MOVING180DAYQUOTEVOLUMEBUY null `
 -MOVING180DAYQUOTEVOLUMESELL null `
 -MOVING180DAYQUOTEVOLUMEUNKNOWN null `
 -MOVING180DAYTOTALTRADES null `
 -MOVING180DAYTOTALTRADESBUY null `
 -MOVING180DAYTOTALTRADESSELL null `
 -MOVING180DAYTOTALTRADESUNKNOWN null `
 -MOVING180DAYVOLUME null `
 -MOVING180DAYVOLUMEBUY null `
 -MOVING180DAYVOLUMESELL null `
 -MOVING180DAYVOLUMEUNKNOWN null `
 -MOVING24HOURHIGH null `
 -MOVING24HOURLOW null `
 -MOVING24HOUROPEN null `
 -MOVING24HOURQUOTEVOLUME null `
 -MOVING24HOURQUOTEVOLUMEBUY null `
 -MOVING24HOURQUOTEVOLUMESELL null `
 -MOVING24HOURQUOTEVOLUMEUNKNOWN null `
 -MOVING24HOURTOTALTRADES null `
 -MOVING24HOURTOTALTRADESBUY null `
 -MOVING24HOURTOTALTRADESSELL null `
 -MOVING24HOURTOTALTRADESUNKNOWN null `
 -MOVING24HOURVOLUME null `
 -MOVING24HOURVOLUMEBUY null `
 -MOVING24HOURVOLUMESELL null `
 -MOVING24HOURVOLUMEUNKNOWN null `
 -MOVING30DAYHIGH null `
 -MOVING30DAYLOW null `
 -MOVING30DAYOPEN null `
 -MOVING30DAYQUOTEVOLUME null `
 -MOVING30DAYQUOTEVOLUMEBUY null `
 -MOVING30DAYQUOTEVOLUMESELL null `
 -MOVING30DAYQUOTEVOLUMEUNKNOWN null `
 -MOVING30DAYTOTALTRADES null `
 -MOVING30DAYTOTALTRADESBUY null `
 -MOVING30DAYTOTALTRADESSELL null `
 -MOVING30DAYTOTALTRADESUNKNOWN null `
 -MOVING30DAYVOLUME null `
 -MOVING30DAYVOLUMEBUY null `
 -MOVING30DAYVOLUMESELL null `
 -MOVING30DAYVOLUMEUNKNOWN null `
 -MOVING365DAYHIGH null `
 -MOVING365DAYLOW null `
 -MOVING365DAYOPEN null `
 -MOVING365DAYQUOTEVOLUME null `
 -MOVING365DAYQUOTEVOLUMEBUY null `
 -MOVING365DAYQUOTEVOLUMESELL null `
 -MOVING365DAYQUOTEVOLUMEUNKNOWN null `
 -MOVING365DAYTOTALTRADES null `
 -MOVING365DAYTOTALTRADESBUY null `
 -MOVING365DAYTOTALTRADESSELL null `
 -MOVING365DAYTOTALTRADESUNKNOWN null `
 -MOVING365DAYVOLUME null `
 -MOVING365DAYVOLUMEBUY null `
 -MOVING365DAYVOLUMESELL null `
 -MOVING365DAYVOLUMEUNKNOWN null `
 -MOVING7DAYHIGH null `
 -MOVING7DAYLOW null `
 -MOVING7DAYOPEN null `
 -MOVING7DAYQUOTEVOLUME null `
 -MOVING7DAYQUOTEVOLUMEBUY null `
 -MOVING7DAYQUOTEVOLUMESELL null `
 -MOVING7DAYQUOTEVOLUMEUNKNOWN null `
 -MOVING7DAYTOTALTRADES null `
 -MOVING7DAYTOTALTRADESBUY null `
 -MOVING7DAYTOTALTRADESSELL null `
 -MOVING7DAYTOTALTRADESUNKNOWN null `
 -MOVING7DAYVOLUME null `
 -MOVING7DAYVOLUMEBUY null `
 -MOVING7DAYVOLUMESELL null `
 -MOVING7DAYVOLUMEUNKNOWN null `
 -MOVING90DAYHIGH null `
 -MOVING90DAYLOW null `
 -MOVING90DAYOPEN null `
 -MOVING90DAYQUOTEVOLUME null `
 -MOVING90DAYQUOTEVOLUMEBUY null `
 -MOVING90DAYQUOTEVOLUMESELL null `
 -MOVING90DAYQUOTEVOLUMEUNKNOWN null `
 -MOVING90DAYTOTALTRADES null `
 -MOVING90DAYTOTALTRADESBUY null `
 -MOVING90DAYTOTALTRADESSELL null `
 -MOVING90DAYTOTALTRADESUNKNOWN null `
 -MOVING90DAYVOLUME null `
 -MOVING90DAYVOLUMEBUY null `
 -MOVING90DAYVOLUMESELL null `
 -MOVING90DAYVOLUMEUNKNOWN null `
 -PRICE null `
 -PRICEFLAG null `
 -PRICELASTUPDATETS null `
 -QUOTE null `
 -TOPASKLASTUPDATETS null `
 -TOPASKPRICE null `
 -TOPASKQUANTITY null `
 -TOPBIDLASTUPDATETS null `
 -TOPBIDPRICE null `
 -TOPBIDQUANTITY null `
 -TYPE null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTMARKETDATA | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

