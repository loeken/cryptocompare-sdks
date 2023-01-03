(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err-other-info :refer :all]
            )
  (:import (java.io File)))


(def spot-instrument-market-data-response-err-data
  {
   (ds/opt :message) string?
   (ds/opt :other_info) spot-instrument-market-data-response-err-other-info-spec
   (ds/opt :type) int?
   })

(def spot-instrument-market-data-response-err-spec
  (ds/spec
    {:name ::spot-instrument-market-data-response-err
     :spec spot-instrument-market-data-response-err-data}))
