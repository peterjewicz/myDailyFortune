(ns fortune-cookie.routes.home
  (:require [fortune-cookie.layout :as layout]
            [compojure.core :refer [defroutes GET]]
            [compojure.core :refer [defroutes GET POST]]
            [fortune-cookie.db.core :as db]
            [ring.util.http-response :as response]
            [clojure.java.io :as io]))

(defn home-page []
  (layout/render
    "home.html" {:fortune (first (db/get-fortune))}))

(defn privacy-page []
    (layout/render "privacy.html"))



  (defn get-fortune []
      (db/get-fortune))



(defroutes home-routes
  (GET "/" [] (home-page))
  (GET "/privacy" [] (privacy-page))
  (POST "/fortune" [] (get-fortune)))
