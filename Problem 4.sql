SELECT
	weather.date,
	MAX(trips.duration)
FROM
	weather
JOIN
	trips
ON CAST (trips.start_date AS DATE) = CAST (weather.date AS DATE)
WHERE weather.events LIKE 'Rain'
GROUP BY weather.date;