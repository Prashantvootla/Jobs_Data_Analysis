/*
What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
skills,
ROUND(AVG(salary_year_avg)) AS Pay
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
job_title ilike '%Data Analyst%' AND salary_year_avg IS NOT NULL 
GROUP BY skills
ORDER BY Pay
LIMIT 10;



/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- High Demand for Big Data & ML Skills: Top salaries are commanded by analysts skilled in big data technologies (PySpark, Couchbase), machine learning tools (DataRobot, Jupyter), and Python libraries (Pandas, NumPy), reflecting the industry's high valuation of data processing and predictive modeling capabilities.
- Software Development & Deployment Proficiency: Knowledge in development and deployment tools (GitLab, Kubernetes, Airflow) indicates a lucrative crossover between data analysis and engineering, with a premium on skills that facilitate automation and efficient data pipeline management.
- Cloud Computing Expertise: Familiarity with cloud and data engineering tools (Elasticsearch, Databricks, GCP) underscores the growing importance of cloud-based analytics environments, suggesting that cloud proficiency significantly boosts earning potential in data analytics.

[
  {
    "skills": "ruby on rails",
    "pay": "58530"
  },
  {
    "skills": "laravel",
    "pay": "60000"
  },
  {
    "skills": "vue",
    "pay": "65000"
  },
  {
    "skills": "trello",
    "pay": "65193"
  },
  {
    "skills": "colocation",
    "pay": "67500"
  },
  {
    "skills": "smartsheet",
    "pay": "67579"
  },
  {
    "skills": "sass",
    "pay": "67699"
  },
  {
    "skills": "opencv",
    "pay": "67818"
  },
  {
    "skills": "macos",
    "pay": "68582"
  },
  {
    "skills": "vb.net",
    "pay": "69600"
  }
]