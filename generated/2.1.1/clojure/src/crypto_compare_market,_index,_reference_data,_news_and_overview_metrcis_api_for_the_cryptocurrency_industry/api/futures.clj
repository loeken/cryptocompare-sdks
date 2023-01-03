(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.api.futures
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


(defn-spec futures-v1-historical-days-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-days-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-days generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-days market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-days-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-funding-rate-days-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-days-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/funding-rate/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-funding-rate-days generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-days market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-funding-rate-days-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-funding-rate-hours-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-hours-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/funding-rate/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-funding-rate-hours generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-hours market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-funding-rate-hours-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-funding-rate-messages-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-messages-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/funding-rate-messages" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "after_ts" after_ts "last_ccseq" last_ccseq "limit" limit "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-funding-rate-messages generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-messages market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-funding-rate-messages-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-funding-rate-messages-hour-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-messages-hour-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [hour_ts mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/funding-rate-messages/hour" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "hour_ts" hour_ts "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-funding-rate-messages-hour generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-messages-hour market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-funding-rate-messages-hour-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-funding-rate-minutes-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-minutes-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/funding-rate/minutes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-funding-rate-minutes generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-funding-rate-minutes market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-funding-rate-minutes-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-hours-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-hours-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-hours generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-hours market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-hours-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-minutes-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-minutes-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/minutes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-minutes generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-minutes market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-minutes-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-open-interest-days-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-days-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/open-interest/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-open-interest-days generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-days market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-open-interest-days-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-open-interest-hours-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-hours-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/open-interest/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-open-interest-hours generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-hours market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-open-interest-hours-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-open-interest-messages-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-messages-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/open-interest-messages" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "after_ts" after_ts "last_ccseq" last_ccseq "limit" limit "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-open-interest-messages generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-messages market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-open-interest-messages-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-open-interest-messages-hour-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-messages-hour-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [hour_ts mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/open-interest-messages/hour" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "hour_ts" hour_ts "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-open-interest-messages-hour generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-messages-hour market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-open-interest-messages-hour-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-open-interest-minutes-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-minutes-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/open-interest/minutes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-historical-open-interest-minutes generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-open-interest-minutes market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-open-interest-minutes-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-trades-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-trades-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/trades" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "after_ts" after_ts "last_ccseq" last_ccseq "limit" limit "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-trades generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-trades market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-trades-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-historical-trades-hour-with-http-info any?
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-trades-hour-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [hour_ts mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/futures/v1/historical/trades/hour" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "hour_ts" hour_ts "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec futures-v1-historical-trades-hour generic-response-spec
  ""
  ([market string?, instrument string?, ] (futures-v1-historical-trades-hour market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (futures-v1-historical-trades-hour-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-latest-funding-rate-tick-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-funding-rate-tick-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/futures/v1/latest/funding-rate/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-latest-funding-rate-tick generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-funding-rate-tick market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (futures-v1-latest-funding-rate-tick-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-latest-instrument-metadata-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-instrument-metadata-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/futures/v1/latest/instrument/metadata" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-latest-instrument-metadata generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-instrument-metadata market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (futures-v1-latest-instrument-metadata-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-latest-open-interest-tick-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-open-interest-tick-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/futures/v1/latest/open-interest/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-latest-open-interest-tick generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-open-interest-tick market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (futures-v1-latest-open-interest-tick-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-latest-tick-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-tick-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/futures/v1/latest/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-latest-tick generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (futures-v1-latest-tick market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (futures-v1-latest-tick-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-markets-with-http-info any?
  ""
  ([] (futures-v1-markets-with-http-info nil))
  ([{:keys [market]} (s/map-of keyword? any?)]
   (call-api "/futures/v1/markets" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-markets generic-response-spec
  ""
  ([] (futures-v1-markets nil))
  ([optional-params any?]
   (let [res (:data (futures-v1-markets-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-markets-instruments-with-http-info any?
  ""
  ([] (futures-v1-markets-instruments-with-http-info nil))
  ([{:keys [market instrument instrument_status]} (s/map-of keyword? any?)]
   (call-api "/futures/v1/markets/instruments" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "instrument_status" (with-collection-format instrument_status :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-markets-instruments generic-response-spec
  ""
  ([] (futures-v1-markets-instruments nil))
  ([optional-params any?]
   (let [res (:data (futures-v1-markets-instruments-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec futures-v1-markets-instruments-unmapped-with-http-info any?
  ""
  ([] (futures-v1-markets-instruments-unmapped-with-http-info nil))
  ([{:keys [market instrument instrument_status]} (s/map-of keyword? any?)]
   (call-api "/futures/v1/markets/instruments/unmapped" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "instrument_status" (with-collection-format instrument_status :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec futures-v1-markets-instruments-unmapped generic-response-spec
  ""
  ([] (futures-v1-markets-instruments-unmapped nil))
  ([optional-params any?]
   (let [res (:data (futures-v1-markets-instruments-unmapped-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-historical-days-with-http-info any?
  ""
  ([market string?, instrument string?, ] (index-v1-historical-days-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/index/v1/historical/days" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-historical-days generic-response-spec
  ""
  ([market string?, instrument string?, ] (index-v1-historical-days market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (index-v1-historical-days-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-historical-hours-with-http-info any?
  ""
  ([market string?, instrument string?, ] (index-v1-historical-hours-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/index/v1/historical/hours" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-historical-hours generic-response-spec
  ""
  ([market string?, instrument string?, ] (index-v1-historical-hours market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (index-v1-historical-hours-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-historical-messages-with-http-info any?
  ""
  ([market string?, instrument string?, ] (index-v1-historical-messages-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [after_ts last_ccseq limit mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/index/v1/historical/messages" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "after_ts" after_ts "last_ccseq" last_ccseq "limit" limit "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec index-v1-historical-messages generic-response-spec
  ""
  ([market string?, instrument string?, ] (index-v1-historical-messages market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (index-v1-historical-messages-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-historical-messages-hour-with-http-info any?
  ""
  ([market string?, instrument string?, ] (index-v1-historical-messages-hour-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [hour_ts mapping_priority response_format return_404_on_empty_response]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/index/v1/historical/messages/hour" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "hour_ts" hour_ts "mapping_priority" mapping_priority "response_format" response_format "return_404_on_empty_response" return_404_on_empty_response }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["api_key_header" "api_key_query"]})))

(defn-spec index-v1-historical-messages-hour generic-response-spec
  ""
  ([market string?, instrument string?, ] (index-v1-historical-messages-hour market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (index-v1-historical-messages-hour-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-historical-minutes-with-http-info any?
  ""
  ([market string?, instrument string?, ] (index-v1-historical-minutes-with-http-info market instrument nil))
  ([market string?, instrument string?, {:keys [groups limit to_ts aggregate fill mapping_priority response_format]} (s/map-of keyword? any?)]
   (check-required-params market instrument)
   (call-api "/index/v1/historical/minutes" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "groups" (with-collection-format groups :csv) "limit" limit "to_ts" to_ts "aggregate" aggregate "fill" fill "mapping_priority" mapping_priority "response_format" response_format }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-historical-minutes generic-response-spec
  ""
  ([market string?, instrument string?, ] (index-v1-historical-minutes market instrument nil))
  ([market string?, instrument string?, optional-params any?]
   (let [res (:data (index-v1-historical-minutes-with-http-info market instrument optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-latest-instrument-metadata-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (index-v1-latest-instrument-metadata-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/index/v1/latest/instrument/metadata" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-latest-instrument-metadata generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (index-v1-latest-instrument-metadata market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (index-v1-latest-instrument-metadata-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-latest-tick-with-http-info any?
  ""
  ([market string?, instruments (s/coll-of string?), ] (index-v1-latest-tick-with-http-info market instruments nil))
  ([market string?, instruments (s/coll-of string?), {:keys [groups mapping_priority]} (s/map-of keyword? any?)]
   (check-required-params market instruments)
   (call-api "/index/v1/latest/tick" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instruments" (with-collection-format instruments :csv) "groups" (with-collection-format groups :csv) "mapping_priority" mapping_priority }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-latest-tick generic-response-spec
  ""
  ([market string?, instruments (s/coll-of string?), ] (index-v1-latest-tick market instruments nil))
  ([market string?, instruments (s/coll-of string?), optional-params any?]
   (let [res (:data (index-v1-latest-tick-with-http-info market instruments optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-markets-with-http-info any?
  ""
  ([] (index-v1-markets-with-http-info nil))
  ([{:keys [market]} (s/map-of keyword? any?)]
   (call-api "/index/v1/markets" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-markets generic-response-spec
  ""
  ([] (index-v1-markets nil))
  ([optional-params any?]
   (let [res (:data (index-v1-markets-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-markets-instruments-with-http-info any?
  ""
  ([] (index-v1-markets-instruments-with-http-info nil))
  ([{:keys [market instrument instrument_status]} (s/map-of keyword? any?)]
   (call-api "/index/v1/markets/instruments" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "instrument_status" (with-collection-format instrument_status :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-markets-instruments generic-response-spec
  ""
  ([] (index-v1-markets-instruments nil))
  ([optional-params any?]
   (let [res (:data (index-v1-markets-instruments-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec index-v1-markets-instruments-unmapped-with-http-info any?
  ""
  ([] (index-v1-markets-instruments-unmapped-with-http-info nil))
  ([{:keys [market instrument instrument_status]} (s/map-of keyword? any?)]
   (call-api "/index/v1/markets/instruments/unmapped" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"market" market "instrument" instrument "instrument_status" (with-collection-format instrument_status :csv) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec index-v1-markets-instruments-unmapped generic-response-spec
  ""
  ([] (index-v1-markets-instruments-unmapped nil))
  ([optional-params any?]
   (let [res (:data (index-v1-markets-instruments-unmapped-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


