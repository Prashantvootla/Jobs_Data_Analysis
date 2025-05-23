/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/


SELECT 
skills,
count(skills_job_dim.job_id) AS demand
FROM
job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
job_title ilike '%Data Analyst%'
GROUP BY skills
ORDER BY demand desc
LIMIT 5;


/*
Here's the breakdown of the most demanded skills for data analysts in 2023
SQL and Excel remain fundamental, emphasizing the need for strong foundational skills in data processing and spreadsheet manipulation.
Programming and Visualization Tools like Python, Tableau, and Power BI are essential, pointing towards the increasing importance of technical skills in data storytelling and decision support.

[
  {
    "skills": "sql",
    "demand_count": "89431"
  },
  {
    "skills": "excel",
    "demand_count": "60793"
  },
  {
    "skills": "python",
    "demand_count": "55017"
  },
  {
    "skills": "tableau",
    "demand_count": "46306"
  },
  {
    "skills": "power bi",
    "demand_count": "37279"
  }
]
*/