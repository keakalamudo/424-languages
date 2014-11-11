((ns functs.core
  (:gen-class))

(defn -main
  [& args]
  (println "Assignment test")))

(defn square [x] (take x(repeatedly #(*(rand) (rand)))))
