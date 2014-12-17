(ns transactions.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))



(def refaccount1 (ref 1000))
(def refaccount2 (ref 2000))
(def transCompleted (agent 1))

(defn transfer [from to amount futurenum waitingTime] 
 (dosync  
  (println "Trying")
  (println " " futurenum)
  (println "Delay Time:" waitingTime)
  (alter from  - amount)
  (Thread/sleep waitingTime)
  (alter to + amount)
  (send-off transCompleted(do(println "Transfer:" @transCompleted " from:" @from " to:" @to) inc))))

(def thread1 (Thread. #(dotimes [n 10] (transfer refaccount1 refaccount2 20 1 (rand 100)))))
(def thread2 (Thread. #(dotimes [n 10] (transfer refaccount1 refaccount2 15 2 (rand 40)))))

(.start thread1)
(.start thread2)
(.join thread1)
(.join thread2)

(println "refaccount1:" @refaccount1)
(println "refaccount2:" @refaccount2)
