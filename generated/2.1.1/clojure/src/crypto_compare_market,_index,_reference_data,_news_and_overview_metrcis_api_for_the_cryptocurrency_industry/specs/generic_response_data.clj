(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.generic-response-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def generic-response-data-data
  {
   (ds/opt :NO_DATA) string?
   })

(def generic-response-data-spec
  (ds/spec
    {:name ::generic-response-data
     :spec generic-response-data-data}))
