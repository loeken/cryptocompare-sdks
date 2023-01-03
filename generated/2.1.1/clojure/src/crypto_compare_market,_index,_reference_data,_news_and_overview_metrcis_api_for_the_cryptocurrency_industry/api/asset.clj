(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.api.asset
  (:require [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-histo-data :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.generic-response-data :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-metadata-response :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-trade-response :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.generic-response :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-metadata :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-trade :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-histo-data-response :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err-other-info :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err-other-info :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data :refer :all]
            )
  (:import (java.io File)))


(defn-spec asset-v1-data-by-address-with-http-info any?
  ""
  ([address string?, chain_symbol string?, ] (asset-v1-data-by-address-with-http-info address chain_symbol nil))
  ([address string?, chain_symbol string?, {:keys [groups]} (s/map-of keyword? any?)]
   (check-required-params address chain_symbol)
   (call-api "/asset/v1/data/by/address" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"address" address "chain_symbol" chain_symbol "groups" groups }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec asset-v1-data-by-address generic-response-spec
  ""
  ([address string?, chain_symbol string?, ] (asset-v1-data-by-address address chain_symbol nil))
  ([address string?, chain_symbol string?, optional-params any?]
   (let [res (:data (asset-v1-data-by-address-with-http-info address chain_symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec asset-v1-data-by-id-with-http-info any?
  ""
  ([asset_id int?, ] (asset-v1-data-by-id-with-http-info asset_id nil))
  ([asset_id int?, {:keys [groups]} (s/map-of keyword? any?)]
   (check-required-params asset_id)
   (call-api "/asset/v1/data/by/id" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"asset_id" asset_id "groups" groups }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec asset-v1-data-by-id generic-response-spec
  ""
  ([asset_id int?, ] (asset-v1-data-by-id asset_id nil))
  ([asset_id int?, optional-params any?]
   (let [res (:data (asset-v1-data-by-id-with-http-info asset_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec asset-v1-data-by-symbol-with-http-info any?
  ""
  ([asset_symbol string?, ] (asset-v1-data-by-symbol-with-http-info asset_symbol nil))
  ([asset_symbol string?, {:keys [groups]} (s/map-of keyword? any?)]
   (check-required-params asset_symbol)
   (call-api "/asset/v1/data/by/symbol" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"asset_symbol" asset_symbol "groups" groups }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec asset-v1-data-by-symbol generic-response-spec
  ""
  ([asset_symbol string?, ] (asset-v1-data-by-symbol asset_symbol nil))
  ([asset_symbol string?, optional-params any?]
   (let [res (:data (asset-v1-data-by-symbol-with-http-info asset_symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec asset-v1-top-list-with-http-info any?
  ""
  ([] (asset-v1-top-list-with-http-info nil))
  ([{:keys [page page_size asset_type sort_by sort_direction groups]} (s/map-of keyword? any?)]
   (call-api "/asset/v1/top/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "page_size" page_size "asset_type" asset_type "sort_by" sort_by "sort_direction" sort_direction "groups" groups }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec asset-v1-top-list generic-response-spec
  ""
  ([] (asset-v1-top-list nil))
  ([optional-params any?]
   (let [res (:data (asset-v1-top-list-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


