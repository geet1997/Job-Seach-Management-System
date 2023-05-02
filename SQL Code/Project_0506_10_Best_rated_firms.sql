--3)What are top 10 overall best-rated firms as per reviews from Glassdoor and Indeed?

SELECT TOP 10 c.compName, FORMAT(AVG(r.ratOverallRating),'N2') AS 'Overall Average', 
						  FORMAT(AVG(r.ratCareerOpportunities),'N2') AS 'Career Opportunties Average', 
						  FORMAT(AVG(r.ratCompBenefits),'N2') AS 'Compensation Benefits Average',
						  FORMAT(AVG(r.ratCultureValue),'N2') AS 'Culture & Value Average' ,
						  FORMAT(AVG(r.ratSeniorManagement),'N2') AS 'Senior Management Average',
						  FORMAT(AVG(r.ratWorkLifeBalance),'N2') AS 'Work Life Balance Average'
FROM [PerfectAnalyst.Company] c, [PerfectAnalyst.Rating] r
WHERE c.compId = r.compId
GROUP BY c.compName
ORDER BY AVG(r.ratOverallRating) DESC, c.compName DESC