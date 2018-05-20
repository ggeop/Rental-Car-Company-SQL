SELECT MONTH(rent.pickup_date) as Month, car.category_id as Category,
COUNT(rent.Reservation_id) as TOTAL FROM rent, car
WHERE rent.vin=car.vin
GROUP BY MONTH(rent.pickup_date), car.category_id
ORDER BY MONTH(rent.pickup_date)
