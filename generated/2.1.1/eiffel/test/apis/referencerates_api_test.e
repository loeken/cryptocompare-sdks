note
    description: "API tests for REFERENCERATES_API"
    date: "$Date$"
    revision: "$Revision$"


class REFERENCERATES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_index_cc_v1_historical_days
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_mapping_priority: STRING_32
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_market
            -- l_instrument

            -- l_response := api.index_cc_v1_historical_days(l_market, l_instrument, l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_mapping_priority, l_response_format)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_historical_hours
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_mapping_priority: STRING_32
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_market
            -- l_instrument

            -- l_response := api.index_cc_v1_historical_hours(l_market, l_instrument, l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_mapping_priority, l_response_format)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_historical_messages
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_after_ts: INTEGER_32
            l_last_ccseq: INTEGER_32
            l_mapping_priority: STRING_32
            l_limit: INTEGER_32
            l_response_format: STRING_32
            l_return_404_on_empty_response: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_market
            -- l_instrument

            -- l_response := api.index_cc_v1_historical_messages(l_market, l_instrument, l_after_ts, l_last_ccseq, l_mapping_priority, l_limit, l_response_format, l_return_404_on_empty_response)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_historical_messages_hour
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_hour_ts: INTEGER_32
            l_mapping_priority: STRING_32
            l_response_format: STRING_32
            l_return_404_on_empty_response: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_market
            -- l_instrument

            -- l_response := api.index_cc_v1_historical_messages_hour(l_market, l_instrument, l_hour_ts, l_mapping_priority, l_response_format, l_return_404_on_empty_response)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_historical_minutes
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_mapping_priority: STRING_32
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_market
            -- l_instrument

            -- l_response := api.index_cc_v1_historical_minutes(l_market, l_instrument, l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_mapping_priority, l_response_format)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_latest_instrument_metadata
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instruments: LIST [STRING_32]
            l_groups: LIST [STRING_32]
            l_mapping_priority: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_market
            -- create {ARRAYED_LIST [STRING_32]} l_instruments.make (2)

            -- l_response := api.index_cc_v1_latest_instrument_metadata(l_market, l_instruments, l_groups, l_mapping_priority)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_latest_tick
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instruments: LIST [STRING_32]
            l_groups: LIST [STRING_32]
            l_mapping_priority: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_market
            -- create {ARRAYED_LIST [STRING_32]} l_instruments.make (2)

            -- l_response := api.index_cc_v1_latest_tick(l_market, l_instruments, l_groups, l_mapping_priority)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_markets
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.index_cc_v1_markets(l_market)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_markets_instruments
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_instrument_status: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.index_cc_v1_markets_instruments(l_market, l_instrument, l_instrument_status)
            assert ("not_implemented", False)
        end

    test_index_cc_v1_markets_instruments_unmapped
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_market: STRING_32
            l_instrument: STRING_32
            l_instrument_status: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.index_cc_v1_markets_instruments_unmapped(l_market, l_instrument, l_instrument_status)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: REFERENCERATES_API
            -- Create an object instance of `REFERENCERATES_API'.
        once
            create { REFERENCERATES_API } Result
        end

end
