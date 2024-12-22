DROP VIEW IF EXISTS default.countries_update;
CREATE VIEW IF NOT EXISTS default.countries_update AS 
SELECT 
	id,
	countries,
	start_date,
	end_date,
	DATE_DIFF('day', start_date, end_date) AS days,
	NOW() AS triggered_time
FROM default.countries c 