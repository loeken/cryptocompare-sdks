note
    description: "API tests for NEWS_API"
    date: "$Date$"
    revision: "$Revision$"


class NEWS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_news_v1_article_list
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_source_ids: LIST [STRING_32]
            l_lang: STRING_32
            l_categories: LIST [STRING_32]
            l_exclude_categories: LIST [STRING_32]
            l_to_ts: INTEGER_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.news_v1_article_list(l_source_ids, l_lang, l_categories, l_exclude_categories, l_to_ts)
            assert ("not_implemented", False)
        end

    test_news_v1_category_list
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
        do
            -- TODO: Initialize required params.

            -- l_response := api.news_v1_category_list
            assert ("not_implemented", False)
        end

    test_news_v1_source_list
            -- 
            --
            -- 
        local
            l_response: GENERIC_RESPONSE
            l_lang: STRING_32
            l_type: STRING_32
            l_status: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.news_v1_source_list(l_lang, l_type, l_status)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: NEWS_API
            -- Create an object instance of `NEWS_API'.
        once
            create { NEWS_API } Result
        end

end
