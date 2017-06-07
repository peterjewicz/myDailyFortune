(ns fortune-cookie.handler
  (:require [compojure.core :refer [routes wrap-routes]]
            [fortune-cookie.layout :refer [error-page]]
            [fortune-cookie.routes.home :refer [home-routes]]
            [compojure.route :as route]
            [fortune-cookie.env :refer [defaults]]
            [ring.middleware.json :refer [wrap-json-response]]
            [ring.util.response :refer [response]]
            [ring.middleware.cors :refer [wrap-cors]]
            [mount.core :as mount]
            [fortune-cookie.middleware :as middleware]))

(mount/defstate init-app
                :start ((or (:init defaults) identity))
                :stop  ((or (:stop defaults) identity)))

(def app-routes
  (routes
    (-> #'home-routes
        (wrap-routes wrap-json-response)
        (wrap-routes wrap-cors :access-control-allow-origin [#".*"]
        :access-control-allow-methods [:post])
        (wrap-routes middleware/wrap-formats))
    (route/not-found
      (:body
        (error-page {:status 404
                     :title "page not found"})))))

; (def handler
;     (wrap-cors app-routes :access-control-allow-origin ["*"]
;     :access-control-allow-methods [:post]))

(defn app [] (middleware/wrap-base #'app-routes))
