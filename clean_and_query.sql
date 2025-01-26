/* Delete invalid records */
DELETE FROM taxi_trips WHERE total_amount = 0 OR trip_distance = 0;

/* Find average taxi cost */
SELECT AVG(total_amount) AS average_taxi_cost FROM taxi_trips;

/* find max and min total amount */
SELECT MAX(total_amount) AS max_total, MIN(total_amount) AS min_total FROM taxi_trips;

/* find the driver with the highest number of rides */
SELECT hack_license, COUNT(*) AS ride_count 
FROM taxi_trips 
GROUP BY hack_license 
ORDER BY ride_count DESC 
LIMIT 1;

/* compare cash vs cash tip amounts */
SELECT payment_type, AVG(tip_amount) AS avg_tip 
FROM taxi_trips 
GROUP BY payment_type;