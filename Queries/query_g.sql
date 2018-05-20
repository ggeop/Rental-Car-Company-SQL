
/*Run seperate this view */
CREATE VIEW v( mon, avgmonth) AS SELECT MONTH(rent.pickup_date), avg(rent.amount)
FROM rent
WHERE YEAR(rent.pickup_date)=2015
GROUP BY MONTH(rent.pickup_date)

/*First create the view and after run this SELECT*/
SELECT MONTH(rent.pickup_date), count(rent.reservation_id) as Counter FROM rent, v
WHERE rent.amount>v.avgmonth
AND MONTH(rent.pickup_date)=v.mon