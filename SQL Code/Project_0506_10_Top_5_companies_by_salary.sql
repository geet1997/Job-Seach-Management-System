---1) What are the top 5 companies by salary within each job function?

SELECT a.jobFunction AS 'Job Function', a.compName AS 'Company Name' ,a.[jobSalary (in $ per year)] AS 'Salary (in $ per year)'
FROM (SELECT j.jobFunction, c.compName ,j.[jobSalary (in $ per year)],
		     ROW_NUMBER() OVER (PARTITION BY j.jobFunction ORDER BY j.[jobSalary (in $ per year)] DESC) as 'Rnk'
	  FROM [PerfectAnalyst.Job] j , [PerfectAnalyst.Company] c
	  WHERE j.compId = c.compId
     ) a WHERE Rnk<= 5