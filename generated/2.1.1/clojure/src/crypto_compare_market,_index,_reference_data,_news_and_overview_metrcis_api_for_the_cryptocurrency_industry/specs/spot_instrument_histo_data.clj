(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.spot-instrument-histo-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def spot-instrument-histo-data-data
  {
   (ds/opt :BASE) string?
   (ds/opt :CLOSE) int?
   (ds/opt :FIRST_TRADE_PRICE) int?
   (ds/opt :FIRST_TRADE_TIMESTAMP) int?
   (ds/opt :HIGH) int?
   (ds/opt :HIGH_TRADE_PRICE) int?
   (ds/opt :HIGH_TRADE_TIMESTAMP) int?
   (ds/opt :INSTRUMENT) string?
   (ds/opt :LAST_TRADE_PRICE) int?
   (ds/opt :LAST_TRADE_TIMESTAMP) int?
   (ds/opt :LOW) int?
   (ds/opt :LOW_TRADE_PRICE) int?
   (ds/opt :LOW_TRADE_TIMESTAMP) int?
   (ds/opt :MAPPED_INSTRUMENT) string?
   (ds/opt :MARKET) string?
   (ds/opt :OPEN) int?
   (ds/opt :QUOTE) string?
   (ds/opt :QUOTE_VOLUME) int?
   (ds/opt :QUOTE_VOLUME_BUY) int?
   (ds/opt :QUOTE_VOLUME_SELL) int?
   (ds/opt :QUOTE_VOLUME_UNKNOWN) int?
   (ds/opt :TIMESTAMP) int?
   (ds/opt :TOTAL_TRADES) int?
   (ds/opt :TOTAL_TRADES_BUY) int?
   (ds/opt :TOTAL_TRADES_SELL) int?
   (ds/opt :TOTAL_TRADES_UNKNOWN) int?
   (ds/opt :TYPE) string?
   (ds/opt :UNIT) string?
   (ds/opt :VOLUME) int?
   (ds/opt :VOLUME_BUY) int?
   (ds/opt :VOLUME_SELL) int?
   (ds/opt :VOLUME_UNKNOWN) int?
   })

(def spot-instrument-histo-data-spec
  (ds/spec
    {:name ::spot-instrument-histo-data
     :spec spot-instrument-histo-data-data}))
