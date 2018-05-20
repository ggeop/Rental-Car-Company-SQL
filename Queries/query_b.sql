SELECT First_name, Last_name, mobile 
FROM customer, rent , car, car_categories  
WHERE car_categories.label='luxury' 
AND car.Category_id = car_categories.Category_id 
AND rent.vin=car.vin 
AND customer.customer_id=rent.Customer_id