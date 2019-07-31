SELECT 
	status.station_id,
	status.docks_available,
	stations.name,
	COUNT(stations.name)
FROM
	status
JOIN
	stations
ON
	status.station_id = stations.station_id
WHERE
	status.docks_available = 0
GROUP BY status.station_id, stations.name, status.docks_available
ORDER BY COUNT(stations.name) DESC LIMIT 1;
