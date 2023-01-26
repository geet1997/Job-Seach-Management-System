--5)  What are the companies with openings in multipe job functions?

SELECT j.jobFunction AS 'Job Function', a.compName AS 'Company Name'
FROM (SELECT c.compId, c.compName
	  FROM [PerfectAnalyst.Job] j, [PerfectAnalyst.Company] c
	  WHERE j.compId = c.compId
	  GROUP BY c.compId, c.compName 
	  HAVING COUNT(j.jobFunction) > 1 ) a, [PerfectAnalyst.Job] j
WHERE a.compId = j.compId