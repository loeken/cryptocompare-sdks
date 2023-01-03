--  CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
--  CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
--
--  The version of the OpenAPI document: 2.1.1
--  Contact: data@cryptocompare.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 6.3.0-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is
   pragma Style_Checks ("-mr");

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  
   procedure Asset_V1Data_By_Address
      (Client : in out Client_Type;
       Address : in Swagger.UString;
       Chain_Symbol : in Swagger.UString;
       Groups : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Asset_V1Data_By_Id
      (Client : in out Client_Type;
       Asset_Id : in Integer;
       Groups : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Asset_V1Data_By_Symbol
      (Client : in out Client_Type;
       Asset_Symbol : in Swagger.UString;
       Groups : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Asset_V1Top_List
      (Client : in out Client_Type;
       Page : in Swagger.Nullable_Integer;
       Page_Size : in Swagger.Nullable_Integer;
       Asset_Type : in Swagger.Nullable_UString;
       Sort_By : in Swagger.Nullable_UString;
       Sort_Direction : in Swagger.Nullable_UString;
       Groups : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Funding_Rate_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Funding_Rate_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Funding_Rate_Messages
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Limit : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Funding_Rate_Messages_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Funding_Rate_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Open_Interest_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Open_Interest_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Open_Interest_Messages
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Limit : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Open_Interest_Messages_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Open_Interest_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Trades
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Limit : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Historical_Trades_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Latest_Funding_Rate_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Latest_Instrument_Metadata
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Latest_Open_Interest_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Latest_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Markets
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Markets_Instruments
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Futures_V1Markets_Instruments_Unmapped
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Historical_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Historical_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Historical_Messages
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Limit : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Historical_Messages_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Historical_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Latest_Instrument_Metadata
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Latest_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Markets
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Markets_Instruments
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_V1Markets_Instruments_Unmapped
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure News_V1Article_List
      (Client : in out Client_Type;
       Source_Ids : in Swagger.UString_Vectors.Vector;
       Lang : in Swagger.Nullable_UString;
       Categories : in Swagger.UString_Vectors.Vector;
       Exclude_Categories : in Swagger.UString_Vectors.Vector;
       To_Ts : in Swagger.Nullable_Integer;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure News_V1Category_List
      (Client : in out Client_Type;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure News_V1Source_List
      (Client : in out Client_Type;
       Lang : in Swagger.Nullable_UString;
       P_Type : in Swagger.Nullable_UString;
       Status : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Historical_Marketcap_All_Assets_Days
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Historical_Marketcap_All_Assets_Hours
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Historical_Marketcap_Ftw_Assets_Days
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Historical_Marketcap_Ftw_Assets_Hours
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Latest_Marketcap_All_Tick
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Overview_V1Latest_Marketcap_Ftw_Tick
      (Client : in out Client_Type;
       Groups : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Historical_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Historical_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Historical_Messages
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Limit : in Swagger.Nullable_Integer;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Historical_Messages_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Historical_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Latest_Instrument_Metadata
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Latest_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Markets
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Markets_Instruments
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Index_Cc_V1Markets_Instruments_Unmapped
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Spot_V1Historical_Days
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.SPOTINSTRUMENTHISTODATARESPONSE_Type);

   --  
   procedure Spot_V1Historical_Hours
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.SPOTINSTRUMENTHISTODATARESPONSE_Type);

   --  
   procedure Spot_V1Historical_Minutes
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Groups : in Swagger.UString_Vectors.Vector;
       Limit : in Swagger.Nullable_Integer;
       To_Ts : in Swagger.Nullable_Integer;
       Aggregate : in Swagger.Nullable_Integer;
       Fill : in Swagger.Nullable_Boolean;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.SPOTINSTRUMENTHISTODATARESPONSE_Type);

   --  
   procedure Spot_V1Historical_Orderbook_L2Snapshot_Minute
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Minute_Ts : in Integer;
       Depth : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Spot_V1Historical_Trades
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       After_Ts : in Swagger.Nullable_Integer;
       Last_Ccseq : in Swagger.Nullable_Integer;
       Limit : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.SPOTINSTRUMENTTRADERESPONSE_Type);

   --  
   procedure Spot_V1Historical_Trades_Hour
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instrument : in Swagger.UString;
       Hour_Ts : in Swagger.Nullable_Integer;
       Mapping_Priority : in Swagger.Nullable_UString;
       Response_Format : in Swagger.Nullable_UString;
       Return_404On_Empty_Response : in Swagger.Nullable_Boolean;
       Result : out .Models.SPOTINSTRUMENTTRADERESPONSE_Type);

   --  
   procedure Spot_V1Latest_Instrument_Metadata
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.SPOTINSTRUMENTMETADATARESPONSE_Type);

   --  
   procedure Spot_V1Latest_Tick
      (Client : in out Client_Type;
       Market : in Swagger.UString;
       Instruments : in Swagger.UString_Vectors.Vector;
       Groups : in Swagger.UString_Vectors.Vector;
       Mapping_Priority : in Swagger.Nullable_UString;
       Result : out .Models.SPOTINSTRUMENTMARKETDATARESPONSE_Type);

   --  
   procedure Spot_V1Markets
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Spot_V1Markets_Instruments
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

   --  
   procedure Spot_V1Markets_Instruments_Unmapped
      (Client : in out Client_Type;
       Market : in Swagger.Nullable_UString;
       Instrument : in Swagger.Nullable_UString;
       Instrument_Status : in Swagger.UString_Vectors.Vector;
       Result : out .Models.GENERICRESPONSE_Type);

end .Clients;
