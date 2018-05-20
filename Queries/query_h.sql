/*Run seperate these two views */

CREATE VIEW V2015( mon, count2015) AS SELECT MONTH(rent.pickup_date), count(rent.Reservation_id)
FROM rent
WHERE YEAR(rent.pickup_date)=2015
GROUP BY MONTH(rent.pickup_date)

CREATE VIEW V2014( mon, count2014) AS SELECT MONTH(rent.pickup_date), count(rent.Reservation_id)
FROM rent
WHERE YEAR(rent.pickup_date)=2014
GROUP BY MONTH(rent.pickup_date)

/*IMPORTANT: WE PRESENT ONLY THE MONTHS THAT HAD RENT IN BOTH YEARS*/

/*First create the 2 views and after run this SELECT*/
SELECT months, ((count2015-count2014)/count2014*100) as percentage from

/*Due to join the v2015.mon is equal with v2014.mon so we used one of the, */
(SELECT distinct  v2015.mon as months,  count2014, count2015 FROM v2014
   INNER JOIN v2015 ON v2014.mon=v2015.mon) as a
