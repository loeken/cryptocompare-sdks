(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-trade-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-trade :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs. :refer :all]
            )
  (:import (java.io File)))


(def spot-instrument-trade-response-data
  {
   (ds/opt :Data) (s/coll-of spot-instrument-trade-spec)
   (ds/opt :Err) any?
   })

(def spot-instrument-trade-response-spec
  (ds/spec
    {:name ::spot-instrument-trade-response
     :spec spot-instrument-trade-response-data}))
