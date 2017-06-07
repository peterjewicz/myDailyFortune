(ns fortune-cookie.routes.home
  (:require [fortune-cookie.layout :as layout]
            [compojure.core :refer [defroutes GET]]
            [compojure.core :refer [defroutes GET POST]]
            [fortune-cookie.db.core :as db]
            [ring.util.http-response :as response]
            [clojure.java.io :as io]))

(defn home-page []
  (layout/render
    "home.html" {:docs (-> "docs/docs.md" io/resource slurp)}))



  (defn get-fortune []
      (db/get-fortune))



(defroutes home-routes
  (GET "/" [] (home-page))
  (POST "/fortune" [] (get-fortune)))
