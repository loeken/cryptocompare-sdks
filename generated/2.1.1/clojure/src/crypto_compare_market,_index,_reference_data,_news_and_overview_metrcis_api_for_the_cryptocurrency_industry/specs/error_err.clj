(ns crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [crypto-compare-market,-index,-reference-data,-news-and-overview-metrcis-api-for-the-cryptocurrency-industry.specs.error-err-other-info :refer :all]
            )
  (:import (java.io File)))


(def error-err-data
  {
   (ds/opt :message) string?
   (ds/opt :other_info) error-err-other-info-spec
   (ds/opt :type) int?
   })

(def error-err-spec
  (ds/spec
    {:name ::error-err
     :spec error-err-data}))
