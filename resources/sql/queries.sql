-- :name get-fortune :? :*
-- :doc selects all available workouts
SELECT * FROM fortunes ORDER BY RAND() LIMIT 1;
