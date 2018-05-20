CREATE VIEW NJ AS (SELECT MONTH(rent.pickup_date) as M, YEAR(rent.pickup_date) as Y, location.state_abbrev, count(*)as count_1 FROM rent, location
WHERE rent.location_id_from=location_id AND location.State_abbrev='NJ'
AND MONTH(rent.pickup_date)=5 AND YEAR(rent.pickup_date)
GROUP BY location.state_abbrev)

CREATE VIEW CA AS (SELECT MONTH(rent.pickup_date) as M, YEAR(rent.pickup_date) as Y, location.state_abbrev, count(*)as count_1 FROM rent, location
WHERE rent.location_id_from=location_id AND location.State_abbrev='CA'
AND MONTH(rent.pickup_date)=5 AND YEAR(rent.pickup_date)
GROUP BY location.state_abbrev)

CREATE VIEW NY AS (SELECT MONTH(rent.pickup_date) as M, YEAR(rent.pickup_date) as Y, location.state_abbrev, count(*)as count_1 FROM rent, location
WHERE rent.location_id_from=location_id AND location.State_abbrev='NY'
AND MONTH(rent.pickup_date)=5 AND YEAR(rent.pickup_date)
GROUP BY location.state_abbrev)

SELECT NJ.count_1 as'NJ', NY.count_1 as 'NY', CA.count_1 as 'CA' FROM NJ
LEFT JOIN NY ON NJ.M=NY.M AND NJ.Y=NY.Y
LEFT JOIN CA ON CA.M=NY.M AND CA.Y=NY.Y

