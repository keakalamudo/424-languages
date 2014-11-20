(ns freq.core
  (:gen-class))

(defn -main [] (println "Hello, World!"))

(defn freq [](spit "Results.txt" (sort-by last > (frequencies(re-seq #"[A-z]+" (clojure.string/lower-case(slurp "emma.txt")))))))
