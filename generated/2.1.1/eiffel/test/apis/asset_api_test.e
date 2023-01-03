note
    description: "API tests for ASSET_API"
    date: "$Date$"
    revision: "$Revision$"


class ASSET_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_asset_v1_data_by_address
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_address: STRING_32
            l_chain_symbol: STRING_32
            l_groups: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_address
            -- l_chain_symbol

            -- l_response := api.asset_v1_data_by_address(l_address, l_chain_symbol, l_groups)
            assert ("not_implemented", False)
        end

    test_asset_v1_data_by_id
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_asset_id: INTEGER_32
            l_groups: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id

            -- l_response := api.asset_v1_data_by_id(l_asset_id, l_groups)
            assert ("not_implemented", False)
        end

    test_asset_v1_data_by_symbol
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_asset_symbol: STRING_32
            l_groups: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_symbol

            -- l_response := api.asset_v1_data_by_symbol(l_asset_symbol, l_groups)
            assert ("not_implemented", False)
        end

    test_asset_v1_top_list
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_page: INTEGER_32
            l_page_size: INTEGER_32
            l_asset_type: STRING_32
            l_sort_by: STRING_32
            l_sort_direction: STRING_32
            l_groups: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.asset_v1_top_list(l_page, l_page_size, l_asset_type, l_sort_by, l_sort_direction, l_groups)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ASSET_API
            -- Create an object instance of `ASSET_API'.
        once
            create { ASSET_API } Result
        end

end
