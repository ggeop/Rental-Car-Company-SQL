SELECT  rent.Location_id_from, count(rent.vin) as Total FROM rent
GROUP by location_id_from