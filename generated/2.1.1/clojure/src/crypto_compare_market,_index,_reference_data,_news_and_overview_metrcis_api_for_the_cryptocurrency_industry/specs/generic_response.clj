(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.generic-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.generic-response-data :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs. :refer :all]
            )
  (:import (java.io File)))


(def generic-response-data
  {
   (ds/opt :Data) generic-response-data-spec
   (ds/opt :Err) any?
   })

(def generic-response-spec
  (ds/spec
    {:name ::generic-response
     :spec generic-response-data}))
