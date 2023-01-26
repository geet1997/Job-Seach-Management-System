--6) What is the percentage share by profile match categories?
SELECT  ROUND(CAST(COUNT(CASE WHEN p.pmCategory = 'Excellent' THEN 1 END) AS FLOAT) / CAST(COUNT(p.pmId) AS FLOAT) *100,2)
		AS 'Excellent %',
        ROUND(CAST(COUNT(CASE WHEN p.pmCategory = 'Average' THEN 1 END) AS FLOAT) / CAST(COUNT(p.pmId) AS FLOAT) *100,2) 
		AS 'Average %',
		ROUND(CAST(COUNT(CASE WHEN p.pmCategory = 'Poor' THEN 1 END) AS FLOAT) / CAST(COUNT(p.pmId) AS FLOAT) *100,2) 
		AS 'Poor %'
FROM [PerfectAnalyst.ProfileMatch] p