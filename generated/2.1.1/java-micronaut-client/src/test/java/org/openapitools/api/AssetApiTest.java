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
 * API tests for AssetApi
 */
@MicronautTest
public class AssetApiTest {

    @Inject
    AssetApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void assetV1DataByAddressTest() {
        // given
        String address = "example";
        String chainSymbol = "example";
        String groups = "";

        // when
        GENERICRESPONSE body = api.assetV1DataByAddress(address, chainSymbol, groups).block();

        // then
        // TODO implement the assetV1DataByAddressTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void assetV1DataByIdTest() {
        // given
        Integer assetId = 56;
        String groups = "";

        // when
        GENERICRESPONSE body = api.assetV1DataById(assetId, groups).block();

        // then
        // TODO implement the assetV1DataByIdTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void assetV1DataBySymbolTest() {
        // given
        String assetSymbol = "example";
        String groups = "";

        // when
        GENERICRESPONSE body = api.assetV1DataBySymbol(assetSymbol, groups).block();

        // then
        // TODO implement the assetV1DataBySymbolTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void assetV1TopListTest() {
        // given
        Integer page = 1;
        Integer pageSize = 100;
        String assetType = "";
        String sortBy = "CREATED_ON";
        String sortDirection = "DESC";
        String groups = "";

        // when
        GENERICRESPONSE body = api.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups).block();

        // then
        // TODO implement the assetV1TopListTest()
    }

    
}
