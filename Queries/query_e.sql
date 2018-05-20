
/*Firstly you run the create view and after the SELECT*/
CREATE VIEW V1 AS (SELECT location.State_abbrev, car.Category_id,
COUNT(*) AS SUMA FROM rent, car, location
WHERE rent.Location_id_from=location.location_id  and rent.vin=car.vin
GROUP BY location.State_abbrev, car.Category_id)


SELECT State_abbrev, Category_id FROM V1 AS E1
WHERE SUMA >= ALL( SELECT SUMA FROM V1 AS E2
				  WHERE E1.Category_id <> E2.Category_id
                  AND	E1.state_abbrev = E2.state_abbrev)
