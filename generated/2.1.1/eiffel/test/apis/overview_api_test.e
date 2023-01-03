note
    description: "API tests for OVERVIEW_API"
    date: "$Date$"
    revision: "$Revision$"


class OVERVIEW_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_overview_v1_historical_marketcap_all_assets_days
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_historical_marketcap_all_assets_days(l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_response_format)
            assert ("not_implemented", False)
        end

    test_overview_v1_historical_marketcap_all_assets_hours
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_historical_marketcap_all_assets_hours(l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_response_format)
            assert ("not_implemented", False)
        end

    test_overview_v1_historical_marketcap_ftw_assets_days
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_historical_marketcap_ftw_assets_days(l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_response_format)
            assert ("not_implemented", False)
        end

    test_overview_v1_historical_marketcap_ftw_assets_hours
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
            l_limit: INTEGER_32
            l_to_ts: INTEGER_32
            l_aggregate: INTEGER_32
            l_fill: BOOLEAN
            l_response_format: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_historical_marketcap_ftw_assets_hours(l_groups, l_limit, l_to_ts, l_aggregate, l_fill, l_response_format)
            assert ("not_implemented", False)
        end

    test_overview_v1_latest_marketcap_all_tick
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_latest_marketcap_all_tick(l_groups)
            assert ("not_implemented", False)
        end

    test_overview_v1_latest_marketcap_ftw_tick
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_groups: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.overview_v1_latest_marketcap_ftw_tick(l_groups)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: OVERVIEW_API
            -- Create an object instance of `OVERVIEW_API'.
        once
            create { OVERVIEW_API } Result
        end

end
