(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.api.overview
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


(defn-spec overview-v1-historical-marketcap-all-assets-days-with-http-info any?
  ""
  ([] (overview-v1-historical-marketcap-all-assets-days-with-http-info nil))
  ([{:keys [groups limit to_ts aggregate fill response_format]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/historical/marketcap/all/assets/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-historical-marketcap-all-assets-days generic-response-spec
  ""
  ([] (overview-v1-historical-marketcap-all-assets-days nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-historical-marketcap-all-assets-days-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec overview-v1-historical-marketcap-all-assets-hours-with-http-info any?
  ""
  ([] (overview-v1-historical-marketcap-all-assets-hours-with-http-info nil))
  ([{:keys [groups limit to_ts aggregate fill response_format]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/historical/marketcap/all/assets/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-historical-marketcap-all-assets-hours generic-response-spec
  ""
  ([] (overview-v1-historical-marketcap-all-assets-hours nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-historical-marketcap-all-assets-hours-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec overview-v1-historical-marketcap-ftw-assets-days-with-http-info any?
  ""
  ([] (overview-v1-historical-marketcap-ftw-assets-days-with-http-info nil))
  ([{:keys [groups limit to_ts aggregate fill response_format]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/historical/marketcap/ftw/assets/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-historical-marketcap-ftw-assets-days generic-response-spec
  ""
  ([] (overview-v1-historical-marketcap-ftw-assets-days nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-historical-marketcap-ftw-assets-days-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec overview-v1-historical-marketcap-ftw-assets-hours-with-http-info any?
  ""
  ([] (overview-v1-historical-marketcap-ftw-assets-hours-with-http-info nil))
  ([{:keys [groups limit to_ts aggregate fill response_format]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/historical/marketcap/ftw/assets/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-historical-marketcap-ftw-assets-hours generic-response-spec
  ""
  ([] (overview-v1-historical-marketcap-ftw-assets-hours nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-historical-marketcap-ftw-assets-hours-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec overview-v1-latest-marketcap-all-tick-with-http-info any?
  ""
  ([] (overview-v1-latest-marketcap-all-tick-with-http-info nil))
  ([{:keys [groups]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/latest/marketcap/all/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-latest-marketcap-all-tick generic-response-spec
  ""
  ([] (overview-v1-latest-marketcap-all-tick nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-latest-marketcap-all-tick-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec overview-v1-latest-marketcap-ftw-tick-with-http-info any?
  ""
  ([] (overview-v1-latest-marketcap-ftw-tick-with-http-info nil))
  ([{:keys [groups]} (s/map-of keyword? any?)]
   (call-api "/overview/v1/latest/marketcap/ftw/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"groups" (with-collection-format groups :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec overview-v1-latest-marketcap-ftw-tick generic-response-spec
  ""
  ([] (overview-v1-latest-marketcap-ftw-tick nil))
  ([optional-params any?]
   (let [res (:data (overview-v1-latest-marketcap-ftw-tick-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


