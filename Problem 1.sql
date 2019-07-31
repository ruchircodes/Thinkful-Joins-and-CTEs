SELECT 
	trips.trip_id, 
	trips.duration, 
	trips.start_date, 
	weather.date, 
	weather.events 
FROM 
	trips 
JOIN 
weather 
ON CAST (trips.start_date AS DATE) = CAST (weather.date AS DATE) 
WHERE weather.events LIKE 'Rain' 
ORDER BY trips.duration DESC LIMIT 3;