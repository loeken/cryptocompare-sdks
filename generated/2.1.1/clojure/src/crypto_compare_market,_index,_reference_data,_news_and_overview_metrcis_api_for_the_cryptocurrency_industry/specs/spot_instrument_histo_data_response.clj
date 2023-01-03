(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-histo-data-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-histo-data :refer :all]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs. :refer :all]
            )
  (:import (java.io File)))


(def spot-instrument-histo-data-response-data
  {
   (ds/opt :Data) (s/coll-of spot-instrument-histo-data-spec)
   (ds/opt :Err) any?
   })

(def spot-instrument-histo-data-response-spec
  (ds/spec
    {:name ::spot-instrument-histo-data-response
     :spec spot-instrument-histo-data-response-data}))
