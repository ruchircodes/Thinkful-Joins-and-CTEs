SELECT
	stations.name,
	stations.dockcount,
	COUNT(stations.name) AS number_of_trips
FROM
	trips
JOIN
	stations
ON trips.start_station = stations.name
GROUP BY stations.name, stations.dockcount
ORDER BY stations.dockcount;