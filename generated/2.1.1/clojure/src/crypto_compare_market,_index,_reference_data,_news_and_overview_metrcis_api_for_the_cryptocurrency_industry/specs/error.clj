(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs. :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err :refer :all]
            )
  (:import (java.io File)))


(def error-data
  {
   (ds/opt :Data) any?
   (ds/opt :Err) error-err-spec
   })

(def error-spec
  (ds/spec
    {:name ::error
     :spec error-data}))
