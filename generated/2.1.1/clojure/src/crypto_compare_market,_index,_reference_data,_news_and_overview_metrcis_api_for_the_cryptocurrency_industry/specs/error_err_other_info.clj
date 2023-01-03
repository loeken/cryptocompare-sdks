(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err-other-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def error-err-other-info-data
  {
   (ds/opt :param) string?
   (ds/opt :values) (s/coll-of string?)
   })

(def error-err-other-info-spec
  (ds/spec
    {:name ::error-err-other-info
     :spec error-err-other-info-data}))
