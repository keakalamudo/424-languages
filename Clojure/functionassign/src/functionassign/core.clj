(ns functionassign.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Function names are square, sum and numof"))

(defn square [x] (take x(repeatedly #(let [y (rand)](* y y)))))
(defn sum [x y] (map + x y))
(defn numberOf [x] (count (filter #(< % 1) x)))
