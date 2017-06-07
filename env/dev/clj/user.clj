(ns user
  (:require [mount.core :as mount]
            fortune-cookie.core))

(defn start []
  (mount/start-without #'fortune-cookie.core/repl-server))

(defn stop []
  (mount/stop-except #'fortune-cookie.core/repl-server))

(defn restart []
  (stop)
  (start))


