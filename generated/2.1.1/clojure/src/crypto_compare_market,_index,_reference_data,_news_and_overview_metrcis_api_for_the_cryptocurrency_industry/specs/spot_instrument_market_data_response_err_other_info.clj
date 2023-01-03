(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-market-data-response-err-other-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def spot-instrument-market-data-response-err-other-info-data
  {
   (ds/opt :param) string?
   (ds/opt :values) (s/coll-of string?)
   })

(def spot-instrument-market-data-response-err-other-info-spec
  (ds/spec
    {:name ::spot-instrument-market-data-response-err-other-info
     :spec spot-instrument-market-data-response-err-other-info-data}))
