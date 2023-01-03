(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err :refer :all]
            )
  (:import (java.io File)))


(def spot-instrument-market-data-response-data
  {
   (ds/opt :Data) (s/map-of string? spot-instrument-market-data-spec)
   (ds/opt :Err) spot-instrument-market-data-response-err-spec
   })

(def spot-instrument-market-data-response-spec
  (ds/spec
    {:name ::spot-instrument-market-data-response
     :spec spot-instrument-market-data-response-data}))
