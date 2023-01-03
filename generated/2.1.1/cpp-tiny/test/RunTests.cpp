
#include "ErrorTest.cpp"

#include "Error_ErrTest.cpp"

#include "Error_Err_other_infoTest.cpp"

#include "GENERIC_RESPONSETest.cpp"

#include "GENERIC_RESPONSE_DataTest.cpp"

#include "SPOT_INSTRUMENT_HISTO_DATATest.cpp"

#include "SPOT_INSTRUMENT_HISTO_DATA_RESPONSETest.cpp"

#include "SPOT_INSTRUMENT_MARKET_DATATest.cpp"

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSETest.cpp"

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_ErrTest.cpp"

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_infoTest.cpp"

#include "SPOT_INSTRUMENT_METADATATest.cpp"

#include "SPOT_INSTRUMENT_METADATA_RESPONSETest.cpp"

#include "SPOT_INSTRUMENT_TRADETest.cpp"

#include "SPOT_INSTRUMENT_TRADE_RESPONSETest.cpp"



void setUp(){}

void tearDown(){}

void runTests(){
    
    
    
    
    
    RUN_TEST(test_Error_Err_message_is_assigned_from_json);
    
    
    
    RUN_TEST(test_Error_Err_type_is_assigned_from_json);
    
    
    
    RUN_TEST(test_Error_Err_other_info_param_is_assigned_from_json);
    
    
    
    
    
    
    
    RUN_TEST(test_GENERIC_RESPONSE_Data_nO_DATA_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_bASE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_cLOSE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_TIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_TIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_iNSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_TIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_TIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_mAPPED_INSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_mARKET_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_oPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tYPE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_uNIT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_UNKNOWN_is_assigned_from_json);
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_bASE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cCSEQ_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_iNSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_CCSEQ_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUOTE_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_SIDE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_CCSEQ_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_ID_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUOTE_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_SIDE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_FIRST_TRADE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mAPPED_INSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mARKET_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_HIGH_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_LOW_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_OPEN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_BUY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_SELL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_UNKNOWN_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_FLAG_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_LAST_UPDATE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_qUOTE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_LAST_UPDATE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_LAST_UPDATE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_PRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tYPE_is_assigned_from_json);
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_message_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_type_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_param_is_assigned_from_json);
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_BLOB_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_FIX_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_HARDCODED_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_INDEX_COMPOSITION_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_NSQ_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_POLLING_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_STREAMING_TS_is_assigned_from_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_DESTINATION_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_SOURCE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_STATUS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_EXTERNAL_DATA_is_assigned_from_json);
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BACKFILL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BLOB_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_CALCULATED_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_FIX_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_GO_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_POLLING_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_STREAMING_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_STATUS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URI_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URL_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_BLOB_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_FIX_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_HARDCODED_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_INDEX_COMPOSITION_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_NSQ_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_POLLING_TS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_STREAMING_TS_is_assigned_from_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_mETADATA_VERSION_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_pROCESSING_TRADES_FROM_BLOB_STATUS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_tOTAL_TRADES_SPOT_is_assigned_from_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_bASE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_cCSEQ_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_iD_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_iNSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_mAPPED_INSTRUMENT_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_mARKET_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_pRICE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUOTE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUOTE_QUANTITY_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_NS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_sIDE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_sOURCE_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_NS_is_assigned_from_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tYPE_is_assigned_from_json);
    
    
    
    
    

    
    
    
    
    
    RUN_TEST(test_Error_Err_message_is_converted_to_json);
    
    
    
    RUN_TEST(test_Error_Err_type_is_converted_to_json);
    
    
    
    RUN_TEST(test_Error_Err_other_info_param_is_converted_to_json);
    
    
    
    
    
    
    
    RUN_TEST(test_GENERIC_RESPONSE_Data_nO_DATA_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_bASE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_cLOSE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_TIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_TIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_iNSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_TIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_TIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_mAPPED_INSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_mARKET_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_oPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_tYPE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_uNIT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_UNKNOWN_is_converted_to_json);
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_bASE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cCSEQ_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_iNSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_CCSEQ_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUOTE_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_SIDE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_CCSEQ_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_ID_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUOTE_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_SIDE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_FIRST_TRADE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mAPPED_INSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mARKET_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_HIGH_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_LOW_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_OPEN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_BUY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_SELL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_UNKNOWN_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_FLAG_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_LAST_UPDATE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_qUOTE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_LAST_UPDATE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_LAST_UPDATE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_PRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_tYPE_is_converted_to_json);
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_message_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_type_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_param_is_converted_to_json);
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_BLOB_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_FIX_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_HARDCODED_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_INDEX_COMPOSITION_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_NSQ_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_POLLING_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_STREAMING_TS_is_converted_to_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_DESTINATION_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_SOURCE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_STATUS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_EXTERNAL_DATA_is_converted_to_json);
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BACKFILL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BLOB_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_CALCULATED_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_FIX_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_GO_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_POLLING_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_STREAMING_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_STATUS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URI_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URL_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_BLOB_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_FIX_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_HARDCODED_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_INDEX_COMPOSITION_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_NSQ_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_POLLING_TS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_STREAMING_TS_is_converted_to_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_mETADATA_VERSION_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_pROCESSING_TRADES_FROM_BLOB_STATUS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_METADATA_tOTAL_TRADES_SPOT_is_converted_to_json);
    
    
    
    
    
    
    
    
    
    
    
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_bASE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_cCSEQ_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_iD_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_iNSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_mAPPED_INSTRUMENT_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_mARKET_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_pRICE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUOTE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_qUOTE_QUANTITY_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_NS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_sIDE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_sOURCE_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_NS_is_converted_to_json);
    
    
    RUN_TEST(test_SPOT_INSTRUMENT_TRADE_tYPE_is_converted_to_json);
    
    
    
    
    


}

int main(void) {
    UNITY_BEGIN();
    runTests();
    return UNITY_END();
}

void setup() {
    UNITY_BEGIN();
    runTests();
    UNITY_END();
}

void loop() {

}
