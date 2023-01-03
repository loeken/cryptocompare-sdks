(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-trade
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def spot-instrument-trade-data
  {
   (ds/opt :BASE) string?
   (ds/opt :CCSEQ) int?
   (ds/opt :ID) string?
   (ds/opt :INSTRUMENT) string?
   (ds/opt :MAPPED_INSTRUMENT) string?
   (ds/opt :MARKET) string?
   (ds/opt :PRICE) int?
   (ds/opt :QUANTITY) int?
   (ds/opt :QUOTE) string?
   (ds/opt :QUOTE_QUANTITY) int?
   (ds/opt :RECEIVED_TIMESTAMP) int?
   (ds/opt :RECEIVED_TIMESTAMP_NS) int?
   (ds/opt :SIDE) string?
   (ds/opt :SOURCE) string?
   (ds/opt :TIMESTAMP) int?
   (ds/opt :TIMESTAMP_NS) int?
   (ds/opt :TYPE) string?
   })

(def spot-instrument-trade-spec
  (ds/spec
    {:name ::spot-instrument-trade
     :spec spot-instrument-trade-data}))
