(ns fortune-cookie.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[fortune-cookie started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[fortune-cookie has shut down successfully]=-"))
   :middleware identity})
