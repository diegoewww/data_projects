/*
 Question: What skills are required for the top-paying data analyst jobs?
 - Use the top 10 highest-paying Data Analyst jobs from first query
 - Add the specific skills required for these roles
 - Why? It provides a detailed look at which high-paying jobs demand certain skills, 
 helping job seekers understand which skills to develop that align with top salaries
 */
WITH top_paying_job as (
    SELECT job_id,
        name as company_name,
        job_title,
        salary_year_avg
    FROM job_postings_fact
        LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Data Analyst'
        AND job_work_from_home = true
        AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT top_paying_job.*,
    skills
FROM skills_job_dim
    INNER JOIN top_paying_job ON skills_job_dim.job_id = top_paying_job.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY salary_year_avg DESC;
/*
 Conteo de habilidades:
 SQL: 10 veces (aparece en todos los trabajos).
 
 Python: 9 veces.
 
 Tableau: 7 veces.
 
 R: 6 veces.
 
 Excel: 4 veces.
 
 Azure: 3 veces.
 
 AWS: 3 veces.
 
 Snowflake: 3 veces.
 
 Pandas: 3 veces.
 
 Git / GitLab / Bitbucket: 3 veces.
 
 Power BI: 2 veces.
 
 Databricks: 2 veces.
 
 Jira: 2 veces.
 
 Confluence: 2 veces.
 
 Atlassian: 2 veces.
 
 Go: 2 veces.
 
 Numpy: 2 veces.
 
 Oracle: 2 veces.
 
 Hadoop: 1 vez.
 
 Crystal: 1 vez.
 
 Flow: 1 vez.
 
 SAP: 1 vez.
 
 Jenkins: 1 vez.
 
 Jupyter: 1 vez.
 
 PowerPoint: 1 vez.
 
 PySpark: 1 vez.
 
 Análisis de habilidades más demandadas:
 SQL es la habilidad más crítica, ya que aparece en todos los trabajos (10/10). Esto confirma que es fundamental para cualquier rol de Data Analyst.
 
 Python es la segunda habilidad más demandada, apareciendo en 9 de los 10 trabajos. Es esencial para el análisis de datos, automatización y machine learning.
 
 Tableau es la herramienta de visualización más popular, apareciendo en 7 de los 10 trabajos. Esto resalta la importancia de la visualización de datos en roles analíticos.
 
 R es relevante en 6 de los 10 trabajos, especialmente en roles más enfocados en análisis estadístico.
 
 Excel sigue siendo una herramienta básica pero importante, apareciendo en 4 de los 10 trabajos.
 
 Las habilidades en cloud computing (Azure, AWS, Snowflake) son cada vez más relevantes, apareciendo en 3 trabajos cada una.
 
 Herramientas de control de versiones (Git, GitLab, Bitbucket) y gestión de proyectos (Jira, Confluence, Atlassian) son importantes en roles que involucran colaboración y liderazgo.
 
 [
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "sql"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "python"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "r"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "azure"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "databricks"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "aws"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "pandas"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "pyspark"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "jupyter"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "excel"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "tableau"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "power bi"
 },
 {
 "job_id": 552322,
 "company_name": "AT&T",
 "job_title": "Associate Director- Data Insights",
 "salary_year_avg": "255829.5",
 "skills": "powerpoint"
 },
 {
 "job_id": 99305,
 "company_name": "Pinterest Job Advertisements",
 "job_title": "Data Analyst, Marketing",
 "salary_year_avg": "232423.0",
 "skills": "sql"
 },
 {
 "job_id": 99305,
 "company_name": "Pinterest Job Advertisements",
 "job_title": "Data Analyst, Marketing",
 "salary_year_avg": "232423.0",
 "skills": "python"
 },
 {
 "job_id": 99305,
 "company_name": "Pinterest Job Advertisements",
 "job_title": "Data Analyst, Marketing",
 "salary_year_avg": "232423.0",
 "skills": "r"
 },
 {
 "job_id": 99305,
 "company_name": "Pinterest Job Advertisements",
 "job_title": "Data Analyst, Marketing",
 "salary_year_avg": "232423.0",
 "skills": "hadoop"
 },
 {
 "job_id": 99305,
 "company_name": "Pinterest Job Advertisements",
 "job_title": "Data Analyst, Marketing",
 "salary_year_avg": "232423.0",
 "skills": "tableau"
 },
 {
 "job_id": 1021647,
 "company_name": "Uclahealthcareers",
 "job_title": "Data Analyst (Hybrid/Remote)",
 "salary_year_avg": "217000.0",
 "skills": "sql"
 },
 {
 "job_id": 1021647,
 "company_name": "Uclahealthcareers",
 "job_title": "Data Analyst (Hybrid/Remote)",
 "salary_year_avg": "217000.0",
 "skills": "crystal"
 },
 {
 "job_id": 1021647,
 "company_name": "Uclahealthcareers",
 "job_title": "Data Analyst (Hybrid/Remote)",
 "salary_year_avg": "217000.0",
 "skills": "oracle"
 },
 {
 "job_id": 1021647,
 "company_name": "Uclahealthcareers",
 "job_title": "Data Analyst (Hybrid/Remote)",
 "salary_year_avg": "217000.0",
 "skills": "tableau"
 },
 {
 "job_id": 1021647,
 "company_name": "Uclahealthcareers",
 "job_title": "Data Analyst (Hybrid/Remote)",
 "salary_year_avg": "217000.0",
 "skills": "flow"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "sql"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "python"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "go"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "snowflake"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "pandas"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "numpy"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "excel"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "tableau"
 },
 {
 "job_id": 168310,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst (Remote)",
 "salary_year_avg": "205000.0",
 "skills": "gitlab"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "sql"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "python"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "azure"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "aws"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "oracle"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "snowflake"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "tableau"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "power bi"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "sap"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "jenkins"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "bitbucket"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "atlassian"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "jira"
 },
 {
 "job_id": 731368,
 "company_name": "Inclusively",
 "job_title": "Director, Data Analyst - HYBRID",
 "salary_year_avg": "189309.0",
 "skills": "confluence"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "sql"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "python"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "r"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "git"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "bitbucket"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "atlassian"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "jira"
 },
 {
 "job_id": 310660,
 "company_name": "Motional",
 "job_title": "Principal Data Analyst, AV Performance Analysis",
 "salary_year_avg": "189000.0",
 "skills": "confluence"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "sql"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "python"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "go"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "snowflake"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "pandas"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "numpy"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "excel"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "tableau"
 },
 {
 "job_id": 1749593,
 "company_name": "SmartAsset",
 "job_title": "Principal Data Analyst",
 "salary_year_avg": "186000.0",
 "skills": "gitlab"
 },
 {
 "job_id": 387860,
 "company_name": "Get It Recruit - Information Technology",
 "job_title": "ERM Data Analyst",
 "salary_year_avg": "184000.0",
 "skills": "sql"
 },
 {
 "job_id": 387860,
 "company_name": "Get It Recruit - Information Technology",
 "job_title": "ERM Data Analyst",
 "salary_year_avg": "184000.0",
 "skills": "python"
 },
 {
 "job_id": 387860,
 "company_name": "Get It Recruit - Information Technology",
 "job_title": "ERM Data Analyst",
 "salary_year_avg": "184000.0",
 "skills": "r"
 }
 ]
 
 
 /*