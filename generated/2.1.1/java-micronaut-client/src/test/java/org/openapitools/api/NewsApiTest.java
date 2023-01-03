package org.openapitools.api;

import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import jakarta.inject.Inject;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashSet;


/**
 * API tests for NewsApi
 */
@MicronautTest
public class NewsApiTest {

    @Inject
    NewsApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void newsV1ArticleListTest() {
        // given
        List<String> sourceIds = Arrays.asList("example");
        String lang = "EN";
        List<String> categories = Arrays.asList("example");
        List<String> excludeCategories = Arrays.asList("example");
        Integer toTs = -1;

        // when
        GENERICRESPONSE body = api.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs).block();

        // then
        // TODO implement the newsV1ArticleListTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void newsV1CategoryListTest() {
        // given

        // when
        GENERICRESPONSE body = api.newsV1CategoryList().block();

        // then
        // TODO implement the newsV1CategoryListTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void newsV1SourceListTest() {
        // given
        String lang = "EN";
        String type = "RSS";
        String status = "ACTIVE";

        // when
        GENERICRESPONSE body = api.newsV1SourceList(lang, type, status).block();

        // then
        // TODO implement the newsV1SourceListTest()
    }

    
}
