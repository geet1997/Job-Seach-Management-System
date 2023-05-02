---4)What is percentage of remote vs onsite job opportunities?

SELECT  ROUND(CAST(COUNT(CASE WHEN j.jobLocation = 'Remote' THEN 1 END) AS FLOAT) / CAST(COUNT(j.jobLocation) AS FLOAT) *100,2) AS 'Remote %',
        ROUND(CAST(COUNT(CASE WHEN j.jobLocation <> 'Remote' THEN 1 END) AS FLOAT) / CAST(COUNT(j.jobLocation) AS FLOAT) *100,2) AS 'Onsite %'
FROM [PerfectAnalyst.Job] j