(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.api.news
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


(defn-spec news-v1-article-list-with-http-info any?
  ""
  ([] (news-v1-article-list-with-http-info nil))
  ([{:keys [source_ids lang categories exclude_categories to_ts]} (s/map-of keyword? any?)]
   (call-api "/news/v1/article/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"source_ids" (with-collection-format source_ids :csv) "lang" lang "categories" (with-collection-format categories :csv) "exclude_categories" (with-collection-format exclude_categories :csv) "to_ts" to_ts }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec news-v1-article-list generic-response-spec
  ""
  ([] (news-v1-article-list nil))
  ([optional-params any?]
   (let [res (:data (news-v1-article-list-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec news-v1-category-list-with-http-info any?
  ""
  []
  (call-api "/news/v1/category/list" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec news-v1-category-list generic-response-spec
  ""
  []
  (let [res (:data (news-v1-category-list-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec news-v1-source-list-with-http-info any?
  ""
  ([] (news-v1-source-list-with-http-info nil))
  ([{:keys [lang type status]} (s/map-of keyword? any?)]
   (call-api "/news/v1/source/list" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"lang" lang "type" type "status" status }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec news-v1-source-list generic-response-spec
  ""
  ([] (news-v1-source-list nil))
  ([optional-params any?]
   (let [res (:data (news-v1-source-list-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


