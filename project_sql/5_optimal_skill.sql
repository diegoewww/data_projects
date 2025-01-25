-- rewriting this same query more concisely
SELECT skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY skills_dim.skill_id
HAVING COUNT(skills_job_dim.job_id) > 10
ORDER BY avg_salary DESC,
    demand_count DESC
LIMIT 25;
/*Conclusiones:
 Habilidades técnicas avanzadas como Go, Hadoop, y Snowflake están entre las mejor pagadas, lo que refleja la demanda de profesionales con conocimientos en Big Data y cloud computing.
 
 Herramientas de visualización y BI como Tableau y Looker son muy demandadas y bien remuneradas.
 
 Python y R siguen siendo las habilidades más demandadas, lo que confirma su importancia en el análisis de datos.
 
 Herramientas de colaboración como Confluence también tienen salarios altos, lo que sugiere que las empresas valoran la capacidad de gestionar proyectos de manera eficiente.*